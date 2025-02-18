package com.woleapp.netpos.contactless.cr100

import android.annotation.SuppressLint
import android.bluetooth.BluetoothDevice
import android.provider.ContactsContract.PinnedPositions.pin
import android.util.Log
import android.widget.Toast
import androidx.fragment.app.FragmentActivity
import com.dspread.xpos.CQPOSService
import com.dspread.xpos.QPOSService
import com.dspread.xpos.Util
import com.dspread.xpos.Util.HexStringToByteArray
import com.dspread.xpos.utils.AESUtil
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.app.NetPosApp.Companion.cr100Pos
import com.woleapp.netpos.contactless.cr100.model.BtCardInfo
import com.woleapp.netpos.contactless.cr100.model.CardChannel
import com.woleapp.netpos.contactless.cr100.utils.DUKPK2009CBC
import com.woleapp.netpos.contactless.cr100.utils.DUKPK2009CBC.extractTrack2AndPanValues
import com.woleapp.netpos.contactless.cr100.utils.DUKPK2009CBC.getData
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.extractPAN
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.extractPANFromDecryptedICC
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.extractPANFromTrack2
import com.woleapp.netpos.contactless.cr100.utils.TLVParser.extractTrack2Data
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

data class PinData(val isPinSet:Boolean?= false,
    val btCardInfo: BtCardInfo?= null,
                   val pan:String="",
    val cardType: CardChannel = CardChannel.Contactless)



class MyQposClass(private val bluetoothAdapter: BluetoothAdapter, private val context: FragmentActivity) : CQPOSService() {

    private var blueTitle: String? = null
    private val job = Job()
    private val customScope = CoroutineScope(Dispatchers.Main + job)


    private var _cardInfoFlow = MutableStateFlow(BtCardInfo())
    val cardInfoFlow: StateFlow<BtCardInfo> = _cardInfoFlow


    private var _requestPinFlow = MutableStateFlow(PinData())
    val requestPinFlow: StateFlow<PinData> = _requestPinFlow

    var isDipContact:Boolean = false






    fun setBlueTitle(blueTitle: String) {
        this.blueTitle = blueTitle
    }

    override fun onDoTradeResult(
        result: QPOSService.DoTradeResult?,
        decodeData: Hashtable<String, String>?
    ) {
        Log.d("MyQposClass", "onDoTradeResult called with result: $result, decodeData: $decodeData")
        println("Reading the card, to fected Data>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$result......$decodeData")



        if (result == QPOSService.DoTradeResult.NFC_ONLINE || result == QPOSService.DoTradeResult.NFC_OFFLINE) {
            _requestPinFlow.value = _requestPinFlow.value.copy(cardType = CardChannel.Contactless)
            isDipContact = false

            val encTrack2 = decodeData!!["encTrack2"]
            val trackKsn = decodeData["trackksn"]

            val clearPan: String = getData(
                trackKsn,
                encTrack2,
                DUKPK2009CBC.Enum_key.DATA,
                DUKPK2009CBC.Enum_mode.CBC,
                context
            )

            val panTrack2Pair = extractTrack2AndPanValues(clearPan)
            val (realPan, track2) = panTrack2Pair
            _cardInfoFlow.value = _cardInfoFlow.value.copy(realPan = realPan, track2 = track2)

            customScope.launch {
                delay(200)
                if (cr100Pos!!.nfcBatchData != null) {
                    val tlv = cr100Pos!!.nfcBatchData["tlv"]

                    val (tagC0, tagC2) = getTlvC0AndC2FromNfcBatch(parse(tlv!!)!!)

                    val decryptedIcc = getData(
                        tagC0!!.value, tagC2!!.value, DUKPK2009CBC.Enum_key.DATA,
                        DUKPK2009CBC.Enum_mode.CBC, context
                    )

                    val cardTypeAid = findTagValue(decryptedIcc)

                    val cardType = getCardSchemeFromAid(cardTypeAid)

                    // Update the decryptedIcc and cardType in the StateFlow
                    _cardInfoFlow.value = _cardInfoFlow.value.copy(
                        decryptedIcc = decryptedIcc,
                        cardType = cardType
                    )

                }
            }
        } else if (result == QPOSService.DoTradeResult.ICC) {
            cr100Pos?.doEmvApp(QPOSService.EmvOption.START)
        } else {
            hideDialogAndShowToast(result)
        }
    }


    override fun onQposInfoResult(posInfoData: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onQposInfoResult called with posInfoData: $posInfoData")
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

        println("POSINFO>>>>>>>>>$posInfoData")
    }

    override fun onRequestTransactionResult(transactionResult: QPOSService.TransactionResult?) {
        Log.d("MyQposClass", "onRequestTransactionResult called with transactionResult: $transactionResult")

        Log.e("Transaction", "onRequestTransactionResult: ${transactionResult.toString()}")
        var msg = ""
        when (transactionResult) {
            QPOSService.TransactionResult.APPROVED -> {
                Log.d("MyQposClass", "Transaction Approved")
            }
            QPOSService.TransactionResult.TERMINATED -> {
                Log.d("MyQposClass", "Transaction Terminated")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.DECLINED -> {
                Log.d("MyQposClass", "Transaction Declined")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.CANCEL -> {
                Log.d("MyQposClass", "Transaction Cancelled")
            }

            QPOSService.TransactionResult.CAPK_FAIL -> {
                Log.d("MyQposClass", "Transaction CAPK Failed")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.NOT_ICC -> {
                Log.d("MyQposClass", "Transaction Not ICC")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.SELECT_APP_FAIL -> {
                Log.d("MyQposClass", "Transaction Select App Failed")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.DEVICE_ERROR -> {
                Log.d("MyQposClass", "Transaction Device Error")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.TRADE_LOG_FULL -> {
                Log.d("MyQposClass", "Transaction Trade Log Full")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.CARD_NOT_SUPPORTED -> {
                Log.d("MyQposClass", "Transaction Card Not Supported")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.MISSING_MANDATORY_DATA -> {
                Log.d("MyQposClass", "Transaction Missing Mandatory Data")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.CARD_BLOCKED_OR_NO_EMV_APPS -> {
                Log.d("MyQposClass", "Transaction Card Blocked Or No EMV Apps")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.INVALID_ICC_DATA -> {
                Log.d("MyQposClass", "Transaction Invalid ICC Data")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.FALLBACK -> {
                Log.d("MyQposClass", "Transaction Fallback")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.NFC_TERMINATED -> {
                Log.d("MyQposClass", "Transaction NFC Terminated")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.CARD_REMOVED -> {
                Log.d("MyQposClass", "Transaction Card Removed")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.CONTACTLESS_TRANSACTION_NOT_ALLOW -> {
                Log.d("MyQposClass", "Transaction Contactless Transaction Not Allowed")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.CARD_BLOCKED -> {
                Log.d("MyQposClass", "Transaction Card Blocked")
                hideDialogAndShowToast(transactionResult)
            }
            QPOSService.TransactionResult.TRANS_TOKEN_INVALID -> {
                Log.d("MyQposClass", "Transaction Trans Token Invalid")
                hideDialogAndShowToast(
                    transactionResult
                )
            }

            QPOSService.TransactionResult.APP_BLOCKED -> {
                Log.d("MyQposClass", "Transaction App Blocked")
                hideDialogAndShowToast(transactionResult)
            }
            else -> {
                msg = transactionResult?.name.orEmpty()
                Log.w("MyQposClass", "Unknown transaction result: $msg")
            }
        }
    }

    override fun onQposIdResult(posIdTable: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onQposIdResult called with posIdTable: $posIdTable")
        println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$posIdTable")
        val posId = posIdTable?.get("posId") ?: ""
        val csn = posIdTable?.get("csn") ?: ""
        val psamId = posIdTable?.get("psamId") ?: ""
        val NFCId = posIdTable?.get("nfcID") ?: ""
        val content = "POS ID: $posId\ncsn: $csn\npsamId: $psamId\nNFCId: $NFCId"
    }


    override fun onRequestQposConnected() {
        Log.d("MyQposClass", "onRequestQposConnected called")
        hideBluetoothDialog()
        BluetoothDialog.loadingDialog?.dismiss()
        blueTitle?.let {
            BluetoothToolsBean.setBulueToothName(
                "Bluetooth (${it.substring(0, 6)}...${
                    it.substring(
                        it.length - 3
                    )
                })"
            )
        }
        val keyIndex = getBluetoothKeyIndex()
        cr100Pos?.doTrade(keyIndex, 60)
    }

    override fun onRequestNoQposDetected() {
        Log.d("MyQposClass", "onRequestNoQposDetected called")
    }

    @SuppressLint("MissingPermission")
    override fun onDeviceFound(device: BluetoothDevice?) {
        Log.d("MyQposClass", "onDeviceFound called with device: $device")
        device?.let {
            if (device.name != null) {
                val itm = hashMapOf<String, Any>(
                    "ICON" to if (device.bondState == BluetoothDevice.BOND_BONDED) R.drawable.bluetooth_blue else R.drawable.bluetooth_blue_unbond,
                    "TITLE" to "${device.name} (${device.address})",
                    "ADDRESS" to device.address
                )
                bluetoothAdapter.setData(itm)
            }
        } ?: run {
            Log.w("MyQposClass", "Device found but device is null")
        }
    }

    override fun onRequestBatchData(tlv: String?) {
        Log.d("MyQposClass", "onRequestBatchData called with tlv: $tlv")
        println("Batch.....$tlv")

    }

    override fun onRequestTransactionLog(tlv: String?) {
        Log.d("MyQposClass", "onRequestTransactionLog called with tlv: $tlv")
        println("Transaction Log......$tlv")

    }

    override fun onRequestIsServerConnected() {
        Log.d("MyQposClass", "onRequestIsServerConnected called")
        cr100Pos?.isServerConnected(true);
    }

    override fun onRequestOnlineProcess(tlv: String?) {
        Log.d("MyQposClass", "onRequestOnlineProcess called with tlv: $tlv")
        if (isDipContact){

            customScope.launch {
                delay(200)
                val (tagC0, tagC2) = getTlvC0AndC2FromNfcBatch(parse(tlv!!)!!)

                val decryptedIcc = getData(
                    tagC0!!.value, tagC2!!.value, DUKPK2009CBC.Enum_key.DATA,
                    DUKPK2009CBC.Enum_mode.CBC, context
                )


                val cardTypeAid = findTagValue(decryptedIcc)
                println("TagValue.....${findTagValue(decryptedIcc)}")

                val track2 = extractTrack2Data(decryptedIcc) ?:""
                val pan = extractPANFromDecryptedICC(decryptedIcc = decryptedIcc)?:""
                val pan2 = extractPAN(track2)

                val pan1 = extractPANFromTrack2(track2)?:""

                val cardType = getCardSchemeFromAid(cardTypeAid)

                println("CardType: $cardType.. track...$track2..>>>>>$pan1..><<<<$pan2...pan..$pan...decrypted....$decryptedIcc")

                _requestPinFlow.value = _requestPinFlow.value.copy(isPinSet = false, btCardInfo = BtCardInfo(
                    track2 = track2,
                    realPan = pan1,
                    decryptedIcc = decryptedIcc,
                    cardType = cardType
                )
                )
            }


        }
 cr100Pos?.sendOnlineProcessResult(tlv)

    }

    override fun onRequestTime() {
        Log.d("MyQposClass", "onRequestTime called")
        val terminalTime = SimpleDateFormat("yyyyMMddHHmmss").format(
            Calendar.getInstance().time
        )
        cr100Pos?.sendTime(terminalTime)

    }

    override fun onRequestFinalConfirm() {
        Log.d("MyQposClass", "onRequestFinalConfirm called")
    }

    override fun onRequestQposDisconnected() {
        Log.d("MyQposClass", "onRequestQposDisconnected called")
    }

    override fun onError(errorState: QPOSService.Error?) {
        Log.e("MyQposClass", "onError called with errorState: $errorState")
        Log.e("Transaction Error", "onError: ${errorState.toString()}")
        hideDialogAndShowToast(errorState)
    }

    override fun onReturnReversalData(tlv: String?) {
        Log.d("MyQposClass", "onReturnReversalData called with tlv: $tlv")
        println("Data reservla......$tlv")
    }

    override fun onReturnServerCertResult(serverSignCert: String?, serverEncryptCert: String?) {
        Log.d("MyQposClass", "onReturnServerCertResult called with serverSignCert: $serverSignCert, serverEncryptCert: $serverEncryptCert")
    }

    override fun onReturnGetPinResult(result: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onReturnGetPinResult called with result: $result")
        Log.e("QPOS", "onReturnGetPinResult: ")

    }

    override fun onReturnApduResult(arg0: Boolean, arg1: String?, arg2: Int) {
        Log.d("MyQposClass", "onReturnApduResult called with arg0: $arg0, arg1: $arg1, arg2: $arg2")
    }

    override fun onReturnPowerOffIccResult(arg0: Boolean) {
        Log.d("MyQposClass", "onReturnPowerOffIccResult called with arg0: $arg0")
    }

    override fun onReturnPowerOnIccResult(arg0: Boolean, arg1: String?, arg2: String?, arg3: Int) {
        Log.d("MyQposClass", "onReturnPowerOnIccResult called with arg0: $arg0, arg1: $arg1, arg2: $arg2, arg3: $arg3")
    }

    override fun onReturnSetSleepTimeResult(isSuccess: Boolean) {
        Log.d("MyQposClass", "onReturnSetSleepTimeResult called with isSuccess: $isSuccess")
    }

    override fun onGetCardNoResult(cardNo: String?) {
        Log.d("MyQposClass", "onGetCardNoResult called with cardNo: $cardNo")

    }

    override fun onRequestCalculateMac(calMac: String?) {
        Log.d("MyQposClass", "onRequestCalculateMac called with calMac: $calMac")
    }

    override fun onRequestSignatureResult(arg0: ByteArray?) {
        Log.d("MyQposClass", "onRequestSignatureResult called")  //Omitted byte array logging
    }

    override fun onRequestUpdateWorkKeyResult(result: QPOSService.UpdateInformationResult?) {
        Log.d("MyQposClass", "onRequestUpdateWorkKeyResult called with result: $result")
    }

    override fun onReturnCustomConfigResult(isSuccess: Boolean, result: String?) {
        Log.d("MyQposClass", "onReturnCustomConfigResult called with isSuccess: $isSuccess, result: $result")
    }

    override fun onRequestSetPin() {

        try {
            cr100Pos?.setPinpad()
        }catch (ex:Exception){
            _requestPinFlow.value = _requestPinFlow.value.copy(isPinSet = true, cardType = CardChannel.Contact)
            isDipContact = true
            ex.printStackTrace()
        }


    }

    override fun onReturnSetMasterKeyResult(isSuccess: Boolean) {
        Log.d("MyQposClass", "onReturnSetMasterKeyResult called with isSuccess: $isSuccess")
    }

    override fun onReturnBatchSendAPDUResult(batchAPDUResult: LinkedHashMap<Int, String>?) {
        Log.d("MyQposClass", "onReturnBatchSendAPDUResult called with batchAPDUResult: $batchAPDUResult")
    }

    override fun onBluetoothBondFailed() {
        Log.d("MyQposClass", "onBluetoothBondFailed called")
    }

    override fun onBluetoothBondTimeout() {
        Log.d("MyQposClass", "onBluetoothBondTimeout called")
    }

    override fun onBluetoothBonded() {
        Log.d("MyQposClass", "onBluetoothBonded called")
    }

    override fun onBluetoothBonding() {
        Log.d("MyQposClass", "onBluetoothBonding called")
    }

    override fun onReturniccCashBack(result: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onReturniccCashBack called with result: $result")
        println("Data cask....${result.toString()}")
    }

    override fun onLcdShowCustomDisplay(arg0: Boolean) {
        Log.d("MyQposClass", "onLcdShowCustomDisplay called with arg0: $arg0")
    }

    override fun onUpdatePosFirmwareResult(arg0: QPOSService.UpdateInformationResult?) {
        Log.d("MyQposClass", "onUpdatePosFirmwareResult called with arg0: $arg0")
    }

    override fun onReturnDownloadRsaPublicKey(map: HashMap<String, String>?) {
        Log.d("MyQposClass", "onReturnDownloadRsaPublicKey called with map: $map")
    }

    override fun onGetPosComm(mod: Int, amount: String?, posid: String?) {
        Log.d("MyQposClass", "onGetPosComm called with mod: $mod, amount: $amount, posid: $posid")
    }

    override fun onPinKey_TDES_Result(arg0: String?) {
        Log.d("MyQposClass", "onPinKey_TDES_Result called with arg0: $arg0")
    }

    override fun onUpdateMasterKeyResult(arg0: Boolean, arg1: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onUpdateMasterKeyResult called with arg0: $arg0, arg1: $arg1")
    }

    override fun onEmvICCExceptionData(arg0: String?) {
        Log.d("MyQposClass", "onEmvICCExceptionData called with arg0: $arg0")
    }

    override fun onSetParamsResult(arg0: Boolean, arg1: Hashtable<String, Any>?) {
        Log.d("MyQposClass", "onSetParamsResult called with arg0: $arg0, arg1: $arg1")
    }

    override fun onGetInputAmountResult(arg0: Boolean, arg1: String?) {
        Log.d("MyQposClass", "onGetInputAmountResult called with arg0: $arg0, arg1: $arg1")
    }

    override fun onReturnNFCApduResult(arg0: Boolean, arg1: String?, arg2: Int) {
        Log.d("MyQposClass", "onReturnNFCApduResult called with arg0: $arg0, arg1: $arg1, arg2: $arg2")
    }

    override fun onReturnPowerOffNFCResult(arg0: Boolean) {
        Log.d("MyQposClass", "onReturnPowerOffNFCResult called with arg0: $arg0")
    }

    override fun onReturnPowerOnNFCResult(arg0: Boolean, arg1: String?, arg2: String?, arg3: Int) {
        Log.d("MyQposClass", "onReturnPowerOnNFCResult called with arg0: $arg0, arg1: $arg1, arg2: $arg2, arg3: $arg3")
    }

    override fun onCbcMacResult(result: String?) {
        Log.d("MyQposClass", "onCbcMacResult called with result: $result")
    }

    override fun onReadBusinessCardResult(arg0: Boolean, arg1: String?) {
        Log.d("MyQposClass", "onReadBusinessCardResult called with arg0: $arg0, arg1: $arg1")
    }

    override fun onWriteBusinessCardResult(arg0: Boolean) {
        Log.d("MyQposClass", "onWriteBusinessCardResult called with arg0: $arg0")
    }

    override fun onConfirmAmountResult(arg0: Boolean) {
        Log.d("MyQposClass", "onConfirmAmountResult called with arg0: $arg0")
    }

    override fun onQposIsCardExist(cardIsExist: Boolean) {
        Log.d("MyQposClass", "onQposIsCardExist called with cardIsExist: $cardIsExist")
    }

    override fun onSearchMifareCardResult(arg0: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onSearchMifareCardResult called with arg0: $arg0")
    }

    override fun onBatchReadMifareCardResult(msg: String?, cardData: Hashtable<String, List<String>>?) {
        Log.d("MyQposClass", "onBatchReadMifareCardResult called with msg: $msg, cardData: $cardData")
    }

    override fun onBatchWriteMifareCardResult(msg: String?, cardData: Hashtable<String, List<String>>?) {
        Log.d("MyQposClass", "onBatchWriteMifareCardResult called with msg: $msg, cardData: $cardData")
    }

    override fun onSetBuzzerResult(arg0: Boolean) {
        Log.d("MyQposClass", "onSetBuzzerResult called with arg0: $arg0")
    }

    override fun onSetBuzzerTimeResult(b: Boolean) {
        Log.d("MyQposClass", "onSetBuzzerTimeResult called with b: $b")
    }

    override fun onSetBuzzerStatusResult(b: Boolean) {
        Log.d("MyQposClass", "onSetBuzzerStatusResult called with b: $b")
    }

    override fun onGetBuzzerStatusResult(s: String?) {
        Log.d("MyQposClass", "onGetBuzzerStatusResult called with s: $s")
    }

    override fun onSetManagementKey(arg0: Boolean) {
        Log.d("MyQposClass", "onSetManagementKey called with arg0: $arg0")
    }

    override fun onReturnUpdateIPEKResult(arg0: Boolean) {
        Log.d("MyQposClass", "onReturnUpdateIPEKResult called with arg0: $arg0")
    }

    override fun onReturnUpdateEMVRIDResult(arg0: Boolean) {
        Log.d("MyQposClass", "onReturnUpdateEMVRIDResult called with arg0: $arg0")
    }

    override fun onReturnUpdateEMVResult(arg0: Boolean) {
        Log.d("MyQposClass", "onReturnUpdateEMVResult called with arg0: $arg0")
    }

    override fun onBluetoothBoardStateResult(arg0: Boolean) {
        Log.d("MyQposClass", "onBluetoothBoardStateResult called with arg0: $arg0")
    }

    override fun onGetSleepModeTime(arg0: String?) {
        Log.d("MyQposClass", "onGetSleepModeTime called with arg0: $arg0")
    }

    override fun onGetShutDownTime(arg0: String?) {
        Log.d("MyQposClass", "onGetShutDownTime called with arg0: $arg0")
    }

    override fun onQposDoSetRsaPublicKey(arg0: Boolean) {
        Log.d("MyQposClass", "onQposDoSetRsaPublicKey called with arg0: $arg0")
    }

    override fun onQposGenerateSessionKeysResult(arg0: Hashtable<String, String>?) {
        Log.d("MyQposClass", "onQposGenerateSessionKeysResult called with arg0: $arg0")
    }

    override fun transferMifareData(arg0: String?) {
        Log.d("MyQposClass", "transferMifareData called with arg0: $arg0")
    }

    override fun onReturnRSAResult(arg0: String?) {
        Log.d("MyQposClass", "onReturnRSAResult called with arg0: $arg0")
    }

    override fun onRequestNoQposDetectedUnbond() {
        Log.d("MyQposClass", "onRequestNoQposDetectedUnbond called")
    }

    override fun onReturnDeviceCSRResult(re: String?) {
        Log.d("MyQposClass", "onReturnDeviceCSRResult called with re: $re")
    }

    override fun onReturnStoreCertificatesResult(re: Boolean) {
        Log.d("MyQposClass", "onReturnStoreCertificatesResult called with re: $re")
    }

    override fun onReturnAnalyseDigEnvelop(result: String?) {
        Log.d("MyQposClass", "onReturnAnalyseDigEnvelop called with result: $result")
    }

    override fun onRequestWaitingUser() {
        Log.d("MyQposClass", "onRequestWaitingUser called")
        context.showBluetoothDialog(bluetoothAdapter, true)
    }

    override fun onRequestSetAmount() {
        Log.d("MyQposClass", "onRequestSetAmount called")
        cr100Pos?.setAmount("10", null, "566", QPOSService.TransactionType.SERVICES)
    }


    fun resetCardInfoFlow() {
        Log.d("MyQposClass", "resetCardInfoFlow called")
        _cardInfoFlow.value = BtCardInfo()
        _requestPinFlow.value = PinData()
        cr100Pos!!.cancelTrade()

    }



    private fun <T> hideDialogAndShowToast(errorState: T?) {
        Log.d("MyQposClass", "hideDialogAndShowToast called with errorState: $errorState")
        hideBluetoothDialog()
        Toast.makeText(context, "Oops, something went wrong: $errorState", Toast.LENGTH_LONG)
            .show()
    }

    fun cleanup() {
        Log.d("MyQposClass", "cleanup called")
        job.cancel()
        _cardInfoFlow.value = BtCardInfo()
    }
}




