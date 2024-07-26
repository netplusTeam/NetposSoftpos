package com.woleapp.netpos.contactless.viewmodels

import android.os.Build
import android.os.Looper
import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.alcineo.softpos.payment.model.transaction.TransactionEndStatus
import com.danbamitale.epmslib.entities.CardData
import com.danbamitale.epmslib.entities.TransactionResponse
import com.google.firebase.crashlytics.FirebaseCrashlytics
import com.google.gson.Gson
import com.mastercard.terminalsdk.listeners.PaymentDataProvider
import com.mastercard.terminalsdk.utility.ByteArrayWrapper
import com.visa.app.ttpkernel.ContactlessConfiguration
import com.visa.app.ttpkernel.ContactlessKernel
import com.visa.app.ttpkernel.TtpOutcome
import com.visa.vac.tc.emvconverter.Utils
import com.woleapp.netpos.contactless.app.NetPosApp
import com.woleapp.netpos.contactless.model.QrTransactionResponseFinalModel
import com.woleapp.netpos.contactless.taponphone.NfcDataWrapper
import com.woleapp.netpos.contactless.taponphone.mastercard.listener.TransactionListener
import com.woleapp.netpos.contactless.taponphone.tlv.BerTag
import com.woleapp.netpos.contactless.taponphone.tlv.BerTlvParser
import com.woleapp.netpos.contactless.taponphone.tlv.HexUtil
import com.woleapp.netpos.contactless.taponphone.verve.model.TransactionFullDataDto
import com.woleapp.netpos.contactless.taponphone.visa.* // ktlint-disable no-wildcard-imports
import com.woleapp.netpos.contactless.taponphone.visa.PPSEv21.PPSEManager
import com.woleapp.netpos.contactless.util.Event
import com.woleapp.netpos.contactless.util.ICCCardHelper
import com.woleapp.netpos.contactless.util.sendSMS
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.disposables.CompositeDisposable
import org.apache.commons.lang.StringUtils
import timber.log.Timber
import java.io.IOException
import java.util.Locale
import javax.inject.Inject

@HiltViewModel
class NfcCardReaderViewModel @Inject constructor() : ViewModel() {
    private val disposable = CompositeDisposable()
    private val icc = StringBuilder()

    private var _lastPosTransactionResponse: MutableLiveData<TransactionResponse> =
        MutableLiveData()
    val lastPosTransactionResponse: LiveData<TransactionResponse> get() = _lastPosTransactionResponse

    private val _enableNfcForegroundDispatcher: MutableLiveData<Event<NfcDataWrapper>> by lazy {
        MutableLiveData()
    }

    // FOR QRt
    private val _qrTransactionResponseFromWebView: MutableLiveData<QrTransactionResponseFinalModel> =
        MutableLiveData()
    val qrTransactionResponseFromWebView: LiveData<QrTransactionResponseFinalModel> get() = _qrTransactionResponseFromWebView

    val enableNfcForegroundDispatcher: LiveData<Event<NfcDataWrapper>>
        get() = _enableNfcForegroundDispatcher

    private val _iccCardHelperLiveData: MutableLiveData<Event<ICCCardHelper>> by lazy {
        MutableLiveData()
    }

    val iccCardHelperLiveData: LiveData<Event<ICCCardHelper>>
        get() = _iccCardHelperLiveData

    var iccCardHelper: ICCCardHelper = ICCCardHelper()

    private val _showAccountTypeDialog: MutableLiveData<Event<Boolean>> by lazy {
        MutableLiveData()
    }

    val showAccountTypeDialog: LiveData<Event<Boolean>>
        get() = _showAccountTypeDialog

    private val _showPinPadDialog: MutableLiveData<Event<String?>> by lazy {
        MutableLiveData()
    }

    val showPinPadDialog: LiveData<Event<String?>>
        get() = _showPinPadDialog

    private val _showWaitingDialog: MutableLiveData<Event<NfcPaymentType?>> by lazy {
        MutableLiveData()
    }

    val showWaitingDialog: LiveData<Event<NfcPaymentType?>>
        get() = _showWaitingDialog

    private lateinit var amountInBytes: ByteArrayWrapper
    private lateinit var cashBackAmountInBytes: ByteArrayWrapper

    private val _startVerveTransaction: MutableLiveData<Event<Boolean>> by lazy {
        MutableLiveData()
    }
    val startVerveTransaction: LiveData<Event<Boolean>>
        get() = _startVerveTransaction

    private val _message: MutableLiveData<Event<String?>> by lazy {
        MutableLiveData(null)
    }

    val message: LiveData<Event<String?>>
        get() = _message

    private val _showPrintDialog = MutableLiveData<Event<String>>()
    val showPrintDialog: LiveData<Event<String>>
        get() = _showPrintDialog

    private val _showQrPrintDialog = MutableLiveData<Event<String>>()
    val showQrPrintDialog: LiveData<Event<String>>
        get() = _showQrPrintDialog

    private val _smsSent = MutableLiveData<Event<Boolean>>()
    val smsSent: LiveData<Event<Boolean>>
        get() = _smsSent

    override fun onCleared() {
        super.onCleared()
        icc.clear()
        disposable.clear()
    }

    fun initiateNfcPayment(amount: Long, cashBackAmount: Long, nfcPaymentType: NfcPaymentType) {
        _showWaitingDialog.postValue(Event(nfcPaymentType))
        amountInBytes = ByteArrayWrapper(StringUtils.leftPad(amount.toString(), 12, '0'))
        cashBackAmountInBytes =
            ByteArrayWrapper(StringUtils.leftPad(cashBackAmount.toString(), 12, '0'))

        when (nfcPaymentType) {
            NfcPaymentType.VISA -> {
                _startVerveTransaction.postValue(Event(false))
                _enableNfcForegroundDispatcher.postValue(Event(NfcDataWrapper(true, NfcPaymentType.VISA)))
            }
            NfcPaymentType.MASTERCARD -> {
                doMasterCardTransaction()
                _startVerveTransaction.postValue(Event(false))
            }
            NfcPaymentType.VERVE -> {
                _startVerveTransaction.postValue(Event(true))
                _enableNfcForegroundDispatcher.postValue(Event(NfcDataWrapper(true, NfcPaymentType.VERVE)))
            }
        }
    }

    fun doVerveCardTransaction(transactionFullDataDto: TransactionFullDataDto) {
        _enableNfcForegroundDispatcher.postValue(Event(NfcDataWrapper(false, null)))
        val transactionResult = transactionFullDataDto.transactionResult
        val transactionEndStatus = transactionResult?.transactionEndStatus
        var iccData = ""

        //destructure transactionResult to interact with its tlv items children and filter out tags and values
        if (transactionEndStatus == TransactionEndStatus.APPROVED || transactionEndStatus == TransactionEndStatus.DECLINED) {
            val requiredTagsSet = REQUIRED_TAGS.toSet()
            //removing this tags as NIBBS rejects icc if they are there
            val unwantedTagsSet = setOf("57", "5A", "5F24", "5F20")
            val tagValueMap =
                transactionResult.transactionOutcomeTlvItems.orEmpty().flatMap { tlvItem ->
                    val tag = tlvItem.tag.toString().removePrefix("TlvTag(").removeSuffix(")")

                    // Update iccData only if the tag is in the required set and not in the unwanted set
                    if (tag in requiredTagsSet && tag !in unwantedTagsSet) {
                        iccData =
                            tlvItem.value.joinToString(separator = "") { byte -> "%02x".format(byte) }
                                .uppercase(Locale.ENGLISH)
                    }
                    sequenceOf(tlvItem) + (tlvItem.children.orEmpty().asSequence())
                }.associate {
                    val tag = it.tag.toString().removePrefix("TlvTag(").removeSuffix(")")
                    val value =
                        it.value.joinToString(separator = "") { byte -> "%02x".format(byte) }
                            .uppercase(Locale.ENGLISH)
                    tag to value
                }.filterKeys { it in requiredTagsSet }.toMutableMap()

            val track2 = tagValueMap["57"]
            val pan = track2?.split("D")?.firstOrNull()
            if (track2 != null && pan != null) {
                iccCardHelper = ICCCardHelper()
                iccCardHelper.apply {
                    cardScheme = NfcPaymentType.VERVE.name
                    customerName = "CUSTOMER"
                }

                val cardData = CardData(
                    track2,
                    iccData,
                    pan,
                    "051"
                )
                iccCardHelper.cardData = cardData
                _showWaitingDialog.postValue(Event(null))
                _showPinPadDialog.postValue(Event(pan))
                Log.d("CardTransaction", "CardData: ${Gson().toJson(cardData)}")
                _startVerveTransaction.postValue(Event(false))
            }
        } else {
            FirebaseCrashlytics.getInstance().recordException(Throwable("Error occurred while reading card. Please confirm the card brand"))
            _showWaitingDialog.postValue(Event(null))
            _startVerveTransaction.postValue(Event(false))
            _iccCardHelperLiveData.postValue(Event(ICCCardHelper(error = Throwable("Error occurred while reading card. Please confirm the card brand"))))
        }
    }



    fun doVisaTransaction(
        nfcTransceiver: LiveNfcTransReceiver,
        contactlessKernel: ContactlessKernel,
    ) {
        iccCardHelper = ICCCardHelper()
        icc.clear()
        val contactlessConfiguration = ContactlessConfiguration.getInstance()

        contactlessConfiguration.terminalData["9F02"] = amountInBytes.bytes
        contactlessConfiguration.terminalData["9F03"] = cashBackAmountInBytes.bytes

        // Select PPSE
        var selectedAid: ByteArray? = null
        val ppseManager = PPSEManager()
        try {
            // Set supported AID
            ppseManager.setSupportedApps(supportedAids)

            // Perform Select PPSE
            selectedAid = ppseManager.selectPPSE(nfcTransceiver)
        } catch (e: IOException) {
            e.printStackTrace()
            FirebaseCrashlytics.getInstance().recordException(Throwable(e))
            FirebaseCrashlytics.getInstance().log(e.message.toString())
            FirebaseCrashlytics.getInstance().setCustomKey("error_message", e.message ?: "Unknown error")
        }

        var outcome: TtpOutcome = TtpOutcome.ABORTED
        var outComeResponse = ""

        while (selectedAid != null) {
            try {
                // Get the ContactlessConfiguration instance
                // Specify the terminal settings for this transaction
                val myData = contactlessConfiguration.terminalData
                myData["4F"] = selectedAid // set the selected aid
                myData["9F4E"] = byteArrayOf(
                    0x00.toByte(),
                    0x11.toByte(),
                    0x22.toByte(),
                    0x33.toByte(),
                    0x44.toByte(),
                    0x55.toByte(),
                    0x66.toByte(),
                    0x77.toByte(),
                    0x88.toByte(),
                    0x99.toByte(),
                    0xAA.toByte(),
                    0xBB.toByte(), 0xCC.toByte(), 0xDD.toByte(), 0xEE.toByte(), 0xFF.toByte(),
                )

                Timber.e("available keys")
                myData.forEach {
                    Timber.e(it.key)
                }
                // Call TTP Kernel performTransaction
                val contactlessResult =
                    contactlessKernel.performTransaction(nfcTransceiver, contactlessConfiguration)

                // Check the transaction outcome
                outcome = contactlessResult.finalOutcome
                outComeResponse = when (outcome) {
                    TtpOutcome.COMPLETED -> {
                        "Online Approval Requested"
                    }
                    TtpOutcome.DECLINED -> {
                        "Transaction Declined"
                    }
                    TtpOutcome.ABORTED -> {
                        "Transaction Terminated"
                    }
                    TtpOutcome.TRYNEXT -> {
                        "PPSE:Try Next Application"
                    }
                    TtpOutcome.SELECTAGAIN -> {
                        "GPO Returned 6986. Application Try Again."
                    }
                    else -> {
                        ""
                    }
                }

                // Display the TTP Kernel version
                contactlessKernel.kernelData

                // Display the TTP Kernel data
                val version = contactlessKernel.kernelData
                for ((key, value1) in version) {
                    if (value1 != null) {
                        val value = Utils.getHexString(value1) as String
                        Timber.e("key is $key")
                        if (key in REQUIRED_TAGS) {
                            icc.append(value)
                        }
                    }
                }

                // Display the transaction results
                val cardData = contactlessResult.data
                for ((key, value1) in cardData) {
                    Timber.e("key is $key")
                    if (value1 != null) {
                        val value = Utils.getHexString(value1) as String
                        if (key in REQUIRED_TAGS) {
                            icc.append(value)
                        }
                    }
                }
                val internalData = contactlessResult.internalData
                for ((key, value1) in internalData) {
                    if (value1 != null) {
                        val value = Utils.getHexString(value1) as String
                        Timber.e("key is $key")
                        if (key in REQUIRED_TAGS) {
                            icc.append(value)
                        }
                    }
                }

                selectedAid = if (outcome == TtpOutcome.TRYNEXT) {
                    ppseManager.nextCandidate()
                } else {
                    null
                }
            } catch (e: Exception) {
                e.printStackTrace()
                FirebaseCrashlytics.getInstance().recordException(Throwable(e))
                FirebaseCrashlytics.getInstance().log(e.message.toString())
                FirebaseCrashlytics.getInstance().setCustomKey("error_message", e.message ?: "Unknown error")
                break
            }
        }
        _enableNfcForegroundDispatcher.postValue(Event(NfcDataWrapper(false, null)))

        try {
            if (outcome == TtpOutcome.COMPLETED) {
                iccCardHelper.apply {
                    cardScheme = NfcPaymentType.VISA.name
                    customerName = "CUSTOMER"
                }
                createVisaCardData(icc)
            } else {
                Timber.e("failed.......")
                _showWaitingDialog.postValue(Event(null))
                _iccCardHelperLiveData.postValue(Event(ICCCardHelper(error = Throwable("Error occurred while reading card: $outComeResponse"))))
            }
        } catch (e: Exception) {
            e.printStackTrace()
            FirebaseCrashlytics.getInstance().recordException(Throwable(e))
            FirebaseCrashlytics.getInstance().log(e.message.toString())
            FirebaseCrashlytics.getInstance().setCustomKey("error_message", e.message ?: "Unknown error")
        }
    }



    private fun createVisaCardData(icc: StringBuilder) {
        Timber.e("create visa card")
        icc.append("9F3303E068C8")
        icc.append("9F350122")
        icc.append("9F0902008C")
        icc.append("9F3403420300")
        val buildId =
            HexDump.toHexString(Build.ID.replace("[^a-zA-Z0-9]".toRegex(), "").toByteArray())
        val buildIdHex = "9F1E${HexDump.toHexString("${buildId.length / 2}".toByte())}$buildId"
        icc.append(buildIdHex)
        val iccData = icc.toString()
        val tlvs = BerTlvParser()
            .parse(HexUtil.parseHex(iccData))
        val panSequence = tlvs.find(
            BerTag(
                "5F34",
            ),
        ).hexValue
        val track2 = tlvs.find(
            BerTag(
                "57",
            ),
        ).hexValue
        val pan = track2.split("D").first()
        val cardData = CardData(
            track2,
            iccData,
            StringUtils.leftPad(panSequence, 3, "0"),
            "051",
        )

        iccCardHelper.cardData = cardData
        _showWaitingDialog.postValue(Event(null))
        _showPinPadDialog.postValue(Event(pan))
    }

    fun setPinBlock(encryptedPinBloc: String?) {
        iccCardHelper.cardData?.apply {
            pinBlock = encryptedPinBloc
        }
        _showAccountTypeDialog.value = Event(true)
    }

    private fun doMasterCardTransaction() {
        NetPosApp.INSTANCE.outcomeObserver.resetObserver(object :
            TransactionListener {
            override fun onTransactionSuccessful() {
            }

            override fun onOnlineReferral(cardData: CardData, pan: String) {
                iccCardHelper.apply {
                    this.cardData = cardData
                    cardScheme = NfcPaymentType.MASTERCARD.name
                    customerName = "CUSTOMER"
                }
                Looper.prepare()
                _showWaitingDialog.postValue(Event(null))
                _showPinPadDialog.postValue(Event(pan))
                Timber.e("on online referral")
            }

            override fun onTransactionDeclined() {
                Looper.prepare()
                _showWaitingDialog.postValue(Event(null))
            }

            override fun onApplicationEnded() {
                Looper.prepare()
                _showWaitingDialog.postValue(Event(null))
            }

            override fun onTransactionCancelled() {
                Looper.prepare()
                _showWaitingDialog.postValue(Event(null))
            }

            override fun logToScreen(s: String?) {
            }

            override fun onTransactionError(message: String?) {
                _message.value = Event(message)
            }
        })

        NetPosApp.INSTANCE.transactionsApi.initiatePayment(object :
            PaymentDataProvider {
            override fun getPaymentDataMap(): HashMap<Int, ByteArrayWrapper> {
                val map = HashMap<Int, ByteArrayWrapper>()
                map.apply {
                    put(0x9F02, amountInBytes)
                    put(
                        0x9F03,
                        cashBackAmountInBytes,
                    )
                    put(0x5F2A, ByteArrayWrapper("0566"))
                    put(0x9F1A, ByteArrayWrapper("0566"))
                }
                return map
            }

            override fun setPaymentDataEntry(p0: Int?, p1: ByteArrayWrapper?) {
            }
        })
    }

    fun setIccCardHelperLiveData(iccCardHelper: ICCCardHelper) {
        _iccCardHelperLiveData.postValue(Event(iccCardHelper))
    }

    fun stopNfcReader() {
        try {
            NetPosApp.INSTANCE.transactionsApi.abortTransaction()
            NetPosApp.INSTANCE.nfcProvider.disconnectReader()
        } catch (e: Exception) {
            FirebaseCrashlytics.getInstance().recordException(Throwable(e.message))
            FirebaseCrashlytics.getInstance().log(e.message.toString())
            FirebaseCrashlytics.getInstance().setCustomKey("error_message", e.message ?: "Unknown error")
        }
    }

    fun finishNfcReading() {
        Timber.e(iccCardHelper.toString())
        _enableNfcForegroundDispatcher.postValue(Event(NfcDataWrapper(false, null)))
        _iccCardHelperLiveData.postValue(Event(iccCardHelper))
    }

    fun prepareSMS(it: String) {
        _showPrintDialog.value = Event(it)
    }

    fun sendSmS(message: String, toString: String) {
        sendSMS(
            message,
            toString,
            _smsSent,
            compositeDisposable = disposable,
        )
    }

    // FOR QR
    fun setQrTransactionResponse(qrTransactionResponse: QrTransactionResponseFinalModel) {
        _qrTransactionResponseFromWebView.value = qrTransactionResponse
    }

    fun showReceiptDialogForQrPayment() {
        _showQrPrintDialog.value = Event(
            Gson().toJson(qrTransactionResponseFromWebView.value),
        )
    }

    fun setLastPosTransactionResponse(lastPosTrans: TransactionResponse) {
        _lastPosTransactionResponse.postValue(lastPosTrans)
    }
}
