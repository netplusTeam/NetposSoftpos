package com.woleapp.netpos.contactless.cr100

import android.annotation.SuppressLint
import android.bluetooth.BluetoothDevice
import android.widget.Toast
import androidx.fragment.app.FragmentActivity
import com.dspread.xpos.CQPOSService
import com.dspread.xpos.QPOSService
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.app.NetPosApp.Companion.cr100Pos
import com.woleapp.netpos.contactless.cr100.model.BtCardInfo
import com.woleapp.netpos.contactless.cr100.utils.DUKPK2009CBC
import com.woleapp.netpos.contactless.cr100.utils.DUKPK2009CBC.extractTrack2AndPanValues
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.findTagValue
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.getCardSchemeFromAid
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.getTlvC0AndC2FromNfcBatch
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.parse
import com.woleapp.netpos.contactless.cr100.widget.BluetoothAdapter
import com.woleapp.netpos.contactless.cr100.widget.BluetoothDialog
import com.woleapp.netpos.contactless.cr100.widget.hideBluetoothDialog
import com.woleapp.netpos.contactless.cr100.widget.showBluetoothDialog
import com.woleapp.netpos.contactless.util.getBluetoothKeyIndex
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Hashtable

class MyQposClass(private val bluetoothAdapter: BluetoothAdapter, private val context: FragmentActivity) : CQPOSService() {
    private var blueTitle: String? = null
    private val job = Job()
    private val customScope = CoroutineScope(Dispatchers.Main + job)

    private var _cardInfoFlow = MutableStateFlow(BtCardInfo())
    val cardInfoFlow: StateFlow<BtCardInfo> = _cardInfoFlow

    private var _cardBatteryFlow = MutableStateFlow("")
    val cardBatteryFlow: StateFlow<String> = _cardBatteryFlow

    fun setBlueTitle(blueTitle: String) {
        this.blueTitle = blueTitle
    }

    override fun onDoTradeResult(
        result: QPOSService.DoTradeResult?,
        decodeData: Hashtable<String, String>?,
    ) {
        if (result == QPOSService.DoTradeResult.NFC_ONLINE || result == QPOSService.DoTradeResult.NFC_OFFLINE) {
            val encTrack2 = decodeData!!["encTrack2"]
            val trackKsn = decodeData["trackksn"]

            val clearPan: String =
                DUKPK2009CBC.getData(
                    trackKsn,
                    encTrack2,
                    DUKPK2009CBC.Enum_key.DATA,
                    DUKPK2009CBC.Enum_mode.CBC,
                    context,
                )

            val panTrack2Pair = extractTrack2AndPanValues(clearPan)
            val (realPan, track2) = panTrack2Pair
            _cardInfoFlow.value = _cardInfoFlow.value.copy(realPan = realPan, track2 = track2)

            customScope.launch {
                delay(200)
                if (cr100Pos!!.nfcBatchData != null) {
                    val tlv = cr100Pos!!.nfcBatchData["tlv"]

                    val (tagC0, tagC2) = getTlvC0AndC2FromNfcBatch(parse(tlv!!)!!)

                    val decryptedIcc =
                        DUKPK2009CBC.getData(
                            tagC0!!.value,
                            tagC2!!.value,
                            DUKPK2009CBC.Enum_key.DATA,
                            DUKPK2009CBC.Enum_mode.CBC,
                            context,
                        )

                    val cardTypeAid = findTagValue(decryptedIcc)

                    val cardType = getCardSchemeFromAid(cardTypeAid)

                    // Update the decryptedIcc and cardType in the StateFlow
                    _cardInfoFlow.value =
                        _cardInfoFlow.value.copy(
                            decryptedIcc = decryptedIcc,
                            cardType = cardType,
                        )
                }
            }
        } else {
            hideDialogAndShowToast(result)
        }
    }

    override fun onQposInfoResult(posInfoData: Hashtable<String, String>?) {
        val isSupportedTrack1 = posInfoData?.get("isSupportedTrack1") ?: ""
        val isSupportedTrack2 = posInfoData?.get("isSupportedTrack2") ?: ""
        val isSupportedTrack3 = posInfoData?.get("isSupportedTrack3") ?: ""
        val bootloaderVersion = posInfoData?.get("bootloaderVersion") ?: ""
        val firmwareVersion = posInfoData?.get("firmwareVersion") ?: ""
        val isUsbConnected = posInfoData?.get("isUsbConnected") ?: ""
        val isCharging = posInfoData?.get("isCharging") ?: ""
        val batteryLevel = posInfoData?.get("batteryLevel") ?: ""
        val batteryPercentage = posInfoData?.get("batteryPercentage") ?: ""
        val hardwareVersion = posInfoData?.get("hardwareVersion") ?: ""
        val SUB = posInfoData?.get("SUB") ?: ""
        val pciFirmwareVersion = posInfoData?.get("PCI_firmwareVersion") ?: ""
        val pciHardwareVersion = posInfoData?.get("PCI_hardwareVersion") ?: ""
        val compileTime = posInfoData?.get("compileTime") ?: ""

        _cardBatteryFlow.value = batteryPercentage
    }

    override fun onRequestTransactionResult(transactionResult: QPOSService.TransactionResult?) {
        var msg = ""
        when (transactionResult) {
            QPOSService.TransactionResult.APPROVED -> {}
            QPOSService.TransactionResult.TERMINATED -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.DECLINED -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.CANCEL -> {
            }
            QPOSService.TransactionResult.CAPK_FAIL -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.NOT_ICC -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.SELECT_APP_FAIL -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.DEVICE_ERROR -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.TRADE_LOG_FULL -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.CARD_NOT_SUPPORTED -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.MISSING_MANDATORY_DATA -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.CARD_BLOCKED_OR_NO_EMV_APPS -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.INVALID_ICC_DATA -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.FALLBACK -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.NFC_TERMINATED -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.CARD_REMOVED -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.CONTACTLESS_TRANSACTION_NOT_ALLOW -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.CARD_BLOCKED -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.TRANS_TOKEN_INVALID -> hideDialogAndShowToast(transactionResult)
            QPOSService.TransactionResult.APP_BLOCKED -> hideDialogAndShowToast(transactionResult)
            else -> msg = transactionResult?.name.orEmpty()
        }
    }

    override fun onQposIdResult(posIdTable: Hashtable<String, String>?) {
        val posId = posIdTable?.get("posId") ?: ""
        val csn = posIdTable?.get("csn") ?: ""
        val psamId = posIdTable?.get("psamId") ?: ""
        val NFCId = posIdTable?.get("nfcID") ?: ""
        val content = "POS ID: $posId\ncsn: $csn\npsamId: $psamId\nNFCId: $NFCId"
    }

    override fun onRequestQposConnected() {
        hideBluetoothDialog()
        BluetoothDialog.loadingDialog?.dismiss()
        blueTitle?.let {
            BluetoothToolsBean.setBulueToothName("Bluetooth (${it.substring(0, 6)}...${it.substring(it.length - 3)})")
        }
        val keyIndex = getBluetoothKeyIndex()
        cr100Pos?.doTrade(keyIndex, 60)
    }

    override fun onRequestNoQposDetected() {
    }

    @SuppressLint("MissingPermission")
    override fun onDeviceFound(device: BluetoothDevice?) {
        device?.let {
            if (device.name != null) {
                val itm =
                    hashMapOf<String, Any>(
                        "ICON" to if (device.bondState == BluetoothDevice.BOND_BONDED) R.drawable.bluetooth_blue else R.drawable.bluetooth_blue_unbond,
                        "TITLE" to "${device.name} (${device.address})",
                        "ADDRESS" to device.address,
                    )
                bluetoothAdapter.setData(itm)
            }
        } ?: run {
        }
    }

    override fun onRequestBatchData(tlv: String?) {}

    override fun onRequestTransactionLog(tlv: String?) {}

    override fun onRequestIsServerConnected() {
        cr100Pos?.isServerConnected(true)
    }

    override fun onRequestOnlineProcess(tlv: String?) {}

    override fun onRequestTime() {
        val terminalTime =
            SimpleDateFormat("yyyyMMddHHmmss").format(
                Calendar.getInstance().time,
            )
        cr100Pos?.sendTime(terminalTime)
    }

    override fun onRequestFinalConfirm() {}

    override fun onRequestQposDisconnected() {}

    override fun onError(errorState: QPOSService.Error?) {
        hideDialogAndShowToast(errorState)
    }

    override fun onReturnReversalData(tlv: String?) {}

    override fun onReturnServerCertResult(
        serverSignCert: String?,
        serverEncryptCert: String?,
    ) {}

    override fun onReturnGetPinResult(result: Hashtable<String, String>?) {}

    override fun onReturnApduResult(
        arg0: Boolean,
        arg1: String?,
        arg2: Int,
    ) {}

    override fun onReturnPowerOffIccResult(arg0: Boolean) {}

    override fun onReturnPowerOnIccResult(
        arg0: Boolean,
        arg1: String?,
        arg2: String?,
        arg3: Int,
    ) {}

    override fun onReturnSetSleepTimeResult(isSuccess: Boolean) {}

    override fun onGetCardNoResult(cardNo: String?) {}

    override fun onRequestCalculateMac(calMac: String?) {}

    override fun onRequestSignatureResult(arg0: ByteArray?) {}

    override fun onRequestUpdateWorkKeyResult(result: QPOSService.UpdateInformationResult?) {}

    override fun onReturnCustomConfigResult(
        isSuccess: Boolean,
        result: String?,
    ) {}

    override fun onRequestSetPin() {}

    override fun onReturnSetMasterKeyResult(isSuccess: Boolean) {}

    override fun onReturnBatchSendAPDUResult(batchAPDUResult: LinkedHashMap<Int, String>?) {}

    override fun onBluetoothBondFailed() {}

    override fun onBluetoothBondTimeout() {}

    override fun onBluetoothBonded() {}

    override fun onBluetoothBonding() {}

    override fun onReturniccCashBack(result: Hashtable<String, String>?) {}

    override fun onLcdShowCustomDisplay(arg0: Boolean) {}

    override fun onUpdatePosFirmwareResult(arg0: QPOSService.UpdateInformationResult?) {}

    override fun onReturnDownloadRsaPublicKey(map: HashMap<String, String>?) {}

    override fun onGetPosComm(
        mod: Int,
        amount: String?,
        posid: String?,
    ) {}

    override fun onPinKey_TDES_Result(arg0: String?) {}

    override fun onUpdateMasterKeyResult(
        arg0: Boolean,
        arg1: Hashtable<String, String>?,
    ) {}

    override fun onEmvICCExceptionData(arg0: String?) {}

    override fun onSetParamsResult(
        arg0: Boolean,
        arg1: Hashtable<String, Any>?,
    ) {}

    override fun onGetInputAmountResult(
        arg0: Boolean,
        arg1: String?,
    ) {}

    override fun onReturnNFCApduResult(
        arg0: Boolean,
        arg1: String?,
        arg2: Int,
    ) {}

    override fun onReturnPowerOffNFCResult(arg0: Boolean) {}

    override fun onReturnPowerOnNFCResult(
        arg0: Boolean,
        arg1: String?,
        arg2: String?,
        arg3: Int,
    ) {}

    override fun onCbcMacResult(result: String?) {}

    override fun onReadBusinessCardResult(
        arg0: Boolean,
        arg1: String?,
    ) {}

    override fun onWriteBusinessCardResult(arg0: Boolean) {}

    override fun onConfirmAmountResult(arg0: Boolean) {}

    override fun onQposIsCardExist(cardIsExist: Boolean) {}

    override fun onSearchMifareCardResult(arg0: Hashtable<String, String>?) {}

    override fun onBatchReadMifareCardResult(
        msg: String?,
        cardData: Hashtable<String, List<String>>?,
    ) {}

    override fun onBatchWriteMifareCardResult(
        msg: String?,
        cardData: Hashtable<String, List<String>>?,
    ) {}

    override fun onSetBuzzerResult(arg0: Boolean) {}

    override fun onSetBuzzerTimeResult(b: Boolean) {}

    override fun onSetBuzzerStatusResult(b: Boolean) {}

    override fun onGetBuzzerStatusResult(s: String?) {}

    override fun onSetManagementKey(arg0: Boolean) {}

    override fun onReturnUpdateIPEKResult(arg0: Boolean) {}

    override fun onReturnUpdateEMVRIDResult(arg0: Boolean) {}

    override fun onReturnUpdateEMVResult(arg0: Boolean) {}

    override fun onBluetoothBoardStateResult(arg0: Boolean) {}

    override fun onGetSleepModeTime(arg0: String?) {}

    override fun onGetShutDownTime(arg0: String?) {}

    override fun onQposDoSetRsaPublicKey(arg0: Boolean) {}

    override fun onQposGenerateSessionKeysResult(arg0: Hashtable<String, String>?) {}

    override fun transferMifareData(arg0: String?) {}

    override fun onReturnRSAResult(arg0: String?) {}

    override fun onRequestNoQposDetectedUnbond() {}

    override fun onReturnDeviceCSRResult(re: String?) {}

    override fun onReturnStoreCertificatesResult(re: Boolean) {}

    override fun onReturnAnalyseDigEnvelop(result: String?) {}

    override fun onRequestWaitingUser() {
        context.showBluetoothDialog(bluetoothAdapter, true)
    }

    override fun onRequestSetAmount() {
        cr100Pos?.setAmount("10", null, "566", QPOSService.TransactionType.SERVICES)
    }

    fun resetCardInfoFlow() {
        _cardInfoFlow.value = BtCardInfo()
        _cardBatteryFlow.value = ""
        cr100Pos!!.cancelTrade()
    }

    private fun <T> hideDialogAndShowToast(errorState: T?) {
        hideBluetoothDialog()
        Toast.makeText(context, "Oops, something went wrong: $errorState", Toast.LENGTH_LONG)
            .show()
    }

    fun cleanup() {
        job.cancel()
        _cardInfoFlow.value = BtCardInfo()
    }
}
