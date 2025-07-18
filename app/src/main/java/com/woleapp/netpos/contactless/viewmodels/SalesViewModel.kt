@file:Suppress("ktlint:standard:no-wildcard-imports")

package com.woleapp.netpos.contactless.viewmodels

import android.content.Context
import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.alcineo.softpos.payment.model.transaction.TransactionParameters
import com.alcineo.utils.common.StringUtils
import com.danbamitale.epmslib.entities.*
import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.extensions.maskPan
import com.danbamitale.epmslib.processors.TransactionProcessor
import com.danbamitale.epmslib.utils.IsoAccountType
import com.danbamitale.epmslib.utils.MessageReasonCode
import com.neovisionaries.i18n.CurrencyCode
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.database.AppDatabase
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.model.payment.transactions.AllTransactionsResponseDto
import com.woleapp.netpos.contactless.network.ContactlessQrPaymentRepository
import com.woleapp.netpos.contactless.network.NetPosTransactionsService
import com.woleapp.netpos.contactless.network.RrnApiService
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.dateStr2Long
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.formattedTime
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.generateRandomRrn
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getCurrentDateTime
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDate
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.mapDanbamitaleResponseToResponseX
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.util.UtilityParam.BEARER_TOKEN_FOR_MPGS_TRANSACTION
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.Scheduler
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import timber.log.Timber
import java.math.BigDecimal
import java.nio.charset.StandardCharsets
import javax.inject.Inject
import javax.inject.Named

@HiltViewModel
class SalesViewModel
    @Inject
    constructor() : ViewModel() {
        private var isVend: Boolean = false
        var cardData: CardData? = null

        private val user: User? = Singletons.getCurrentlyLoggedInUser()

        @Inject
        lateinit var contactlessQrPaymentRepository: ContactlessQrPaymentRepository

        @Inject
        lateinit var compositeDisposable: CompositeDisposable

        @Inject
        @Named("io-scheduler")
        lateinit var ioScheduler: Scheduler

        @Inject
        @Named("main-scheduler")
        lateinit var mainThreadScheduler: Scheduler
        val transactionState = MutableLiveData(STATE_PAYMENT_STAND_BY)

        @Inject
        lateinit var rrnApiService: RrnApiService

        @Inject
        lateinit var netposTransactionApiService: NetPosTransactionsService
        private val lastTransactionResponse = MutableLiveData<TransactionResponse>()
        val lastPosTransaction: LiveData<TransactionResponse> get() = lastTransactionResponse
        val amount: MutableLiveData<String> = MutableLiveData<String>("")
        val cashback: MutableLiveData<String> = MutableLiveData<String>("")
        var amountLong = 0L
        var cashbackLong = 0L
        var pin = MutableLiveData("")
        val customerName = MutableLiveData("")
        val remark = MutableLiveData("")
        private var isoAccountType: IsoAccountType? = null
        private var cardScheme: String? = null
        private val _showPrintDialog = MutableLiveData<Event<String>>()
        val showPrintDialog: LiveData<Event<String>>
            get() = _showPrintDialog
        private var amountDbl: Double = 0.0
        private val _shouldRefreshNibssKeys = MutableLiveData<Event<Boolean>>()
        val shouldRefreshNibssKeys: LiveData<Event<Boolean>>
            get() = _shouldRefreshNibssKeys
        private val _finish = MutableLiveData<Event<Boolean>>()
        private val _showPrinterError = MutableLiveData<Event<String>>()

        val showProgressDialog = MutableLiveData<Boolean>()

        val showPrinterError: LiveData<Event<String>>
            get() = _showPrinterError

        val finish: LiveData<Event<Boolean>>
            get() = _finish
        private val _message: MutableLiveData<Event<String>> by lazy {
            MutableLiveData<Event<String>>()
        }

        private val _toastMessage = MutableLiveData<Event<String>>()
        val toastMessage: LiveData<Event<String>>
            get() = _toastMessage
        private val _getCardData = MutableLiveData<Event<Boolean>>()

        val getCardData: LiveData<Event<Boolean>>
            get() = _getCardData

        val message: LiveData<Event<String>>
            get() = _message

        private val _showReceiptTypeMutableLiveData = MutableLiveData<Event<Boolean>>()

        val showReceiptType: LiveData<Event<Boolean>>
            get() = _showReceiptTypeMutableLiveData

        private val _payThroughMPGSResponse: MutableLiveData<Resource<PayThroughMPGSResponse>> =
            MutableLiveData()
        val payThroughMPGSResponse: LiveData<Resource<PayThroughMPGSResponse>> get() = _payThroughMPGSResponse

        private val _paymentTransactionsResponse: MutableLiveData<Resource<AllTransactionsResponseDto>> =
            MutableLiveData()
        val paymentTransactionsResponse: LiveData<Resource<AllTransactionsResponseDto>> get() = _paymentTransactionsResponse

        private val _paymentTransactionResponse: MutableLiveData<Resource<AllTransactionsResponseDto>> =
            MutableLiveData()
        val paymentTransactionResponse: LiveData<Resource<AllTransactionsResponseDto>> get() = _paymentTransactionResponse

        private val _payThroughMPGSMessage = MutableLiveData<Event<String>>()
        val payThroughMPGSMessage: LiveData<Event<String>>
            get() = _payThroughMPGSMessage

        fun setCustomerName(name: String) {
            customerName.value = name
        }

        private fun validateAmountAndCashback(): Boolean {
            amountDbl = (
                amount.value!!.toDoubleOrNull() ?: run {
                    _message.value = Event("Enter a valid amount")
                    return false
                }
            ) * 100
            this.amountLong = amountDbl.toLong()
            this.cashbackLong = cashback.value?.toDoubleOrNull()?.times(100)?.toLong() ?: 0L
            return true
        }

        fun validateFieldForNFC() {
            if (validateAmountAndCashback()) {
                _getCardData.value = Event(true)
            }
        }

        fun validateFieldForBluetooth(): Boolean {
            return validateAmountAndCashback()
        }

        fun payThroughMPGS(
            cardNumber: String,
            cvv: String,
            expiry: String,
            netpluspayMid: String,
            cardPin: String,
        ) {
            val expirationMonth = expiry.takeLast(2)
            val expirationYear = expiry.take(2)
            val formattedExpirationDate = "$expirationMonth/$expirationYear"

            Log.e("Test", "payThroughMPGS: $cardNumber......$cvv........$expiry......$netpluspayMid......$cardPin")
            contactlessQrPaymentRepository.payThroughMPGS(
                BEARER_TOKEN_FOR_MPGS_TRANSACTION,
                amountDbl.toString(),
                cardNumber,
                cvv,
                formattedExpirationDate,
                netpluspayMid,
                Singletons.getConfigData()?.cardAcceptorIdCode ?: "",
                cardPin,
                NetPosTerminalConfig.getTerminalId(),
            ).subscribeOn(ioScheduler).observeOn(mainThreadScheduler).subscribe { data, error ->
                data?.let {
                    if (it.isSuccessful) {
                        val response =
                            gson.fromJson(it.body(), PayThroughMPGSResponse::class.java)
                        response?.let {
                            transactionState.postValue(STATE_PAYMENT_APPROVED)
                            _payThroughMPGSResponse.postValue(Resource.success(response))
                        }
                    } else {
                        setTransactionStateToStandBy()
                        _payThroughMPGSResponse.postValue(Resource.error(null))
                    }
                }

                error?.let {
                    setTransactionStateToStandBy()
                    _payThroughMPGSResponse.postValue(Resource.error(null))
                }
            }.disposeWith(compositeDisposable)
        }

        fun getPaymentTransaction(
            token: String,
            apiKey: String,
            terminalId: String,
            transactionType: String,
            startDate: String?,
            endDate: String?,
            transactionStatus: String?,
            page: Int,
            pageSize: Int?,
        ) = netposTransactionApiService.getPaymentTransaction(
            token,
            apiKey,
            terminalId,
            transactionType,
            startDate,
            endDate,
            transactionStatus,
            page,
            pageSize ?: 10,
        ).flatMap {
            if (it.isSuccessful) {
                _paymentTransactionsResponse.postValue(Resource.success(it.body()))
//                Log.d("OKAUAJ", "${it.body()}")
                Single.just(Resource.success(it.body()))
            } else {
                Single.just(Resource.error(it.errorBody()))
            }
        }

        fun getPaymentTransactions(
            token: String,
            apiKey: String,
            terminalId: String,
            transactionType: String,
            startDate: String?,
            endDate: String?,
            transactionStatus: String?,
            page: Int,
            pageSize: Int?,
        ) {
            netposTransactionApiService.getPaymentTransaction(
                token,
                apiKey,
                terminalId,
                transactionType,
                startDate,
                endDate,
                transactionStatus,
                page,
                pageSize ?: 10,
            ).subscribeOn(Schedulers.io()) // Perform API call in background thread
                .observeOn(AndroidSchedulers.mainThread()) // Observe result on main thread
                .subscribe({ response ->
                    if (response.isSuccessful) {
                        _paymentTransactionResponse.postValue(Resource.success(response.body()))
                    } else {
                        _paymentTransactionResponse.postValue(Resource.error(response.body()))
                    }
                }, { error ->
//                _paymentTransactionsResponse.postValue(Resource.error(error.message))
                }).also { disposable ->
                    compositeDisposable.add(disposable) // Add to disposables to prevent memory leaks
                }
        }

        fun setTransactionStateToStarted() {
            transactionState.value = STATE_PAYMENT_STARTED
            showProgressDialog.postValue(true) // Show progress dialog
        }

        fun setTransactionStateToStandBy() {
            transactionState.value = STATE_PAYMENT_STAND_BY
            showProgressDialog.postValue(false)
        }

        fun makePayment(
            context: Context,
            transactionType: TransactionType = TransactionType.PURCHASE,
        ) {
            Timber.e(cardData.toString())
            showProgressDialog.postValue(true)
            val configData =
                NetPosTerminalConfig.getConfigData() ?: kotlin.run {
                    _message.value =
                        Event("Terminal has not been configured, restart the application to configure")
                    showProgressDialog.postValue(false)
                    return
                }
            val keyHolder = NetPosTerminalConfig.getKeyHolder()!!
            Timber.e("terminal id for transaction ${NetPosTerminalConfig.getTerminalId()}")
            val hostConfig =
                HostConfig(
                    NetPosTerminalConfig.getTerminalId(),
                    NetPosTerminalConfig.connectionData,
                    keyHolder,
                    configData,
                )
            // IsoAccountType.
            this.amountLong = amountDbl.toLong()
            val requestData: TransactionRequestData =
                TransactionRequestData(
                    transactionType,
                    amountLong,
                    cashbackLong,
                    accountType = isoAccountType!!,
                )

            val customStan = generateRandomRrn(6)
            val customRrn = generateRandomRrn(12)

            val transTime = formattedTime.replace(":", "")
            val transDateTime = getCurrentDateTime()
            val processor: TransactionProcessor = TransactionProcessor(hostConfig)
            transactionState.value = STATE_PAYMENT_STARTED

            rrnApiService.getRrn().subscribeOn(ioScheduler).flatMap {
                if (it.isSuccessful) {
                    it.body()?.let { rrn ->
                        logTransactionBeforeConnectingToNibss(
                            cardData,
                            customStan,
                            transTime,
                            requestData,
                            transDateTime,
                            rrn,
                        )
                    }
                } else {
                    logTransactionBeforeConnectingToNibss(
                        cardData,
                        customStan,
                        transTime,
                        requestData,
                        transDateTime,
                        customRrn,
                    )
                }
                Single.just(it)
            }.flatMap {
                if (it.isSuccessful) {
                    it.body()?.let { rrn ->
                        makePaymentViaNibss(context, requestData, processor, rrn, customStan)
                    }
                } else {
                    makePaymentViaNibss(context, requestData, processor, customRrn, customStan)
                }
                Single.just(it)
            }.observeOn(AndroidSchedulers.mainThread()).subscribe { data, error ->
                data?.let { d -> d.body()?.let { Timber.d(it) } }
                error?.let { Timber.d(it.localizedMessage) }
            }.disposeWith(compositeDisposable)
        }

        private fun logTransactionBeforeConnectingToNibss(
            cardData: CardData?,
            stan: String,
            transTime: String,
            requestData: TransactionRequestData,
            transDateTime: String,
            rrn: String,
        ) {
            logTransactionFirstImpl(
                cardData,
                rrn,
                stan,
                transTime,
                requestData,
                transDateTime,
            ).observeOn(AndroidSchedulers.mainThread()).subscribe { t1, t2 ->
                t1?.let {
                    // Timber.d(it.message)
                }
                t2?.let {
                    // Timber.d(it.localizedMessage)
                }
            }.disposeWith(compositeDisposable)
        }

        private fun logTransactionFirstImpl(
            cardData: CardData?,
            rrn: String,
            stan: String,
            transTime: String,
            requestData: TransactionRequestData,
            transDateTime: String,
        ): Single<ResponseBodyAfterLoginToBackend> {
            val data = createTransToLog(cardData, rrn, stan, transTime, requestData, transDateTime)

            return netposTransactionApiService.logTransactionBeforeConnectingToNibss(data!!)
                .subscribeOn(Schedulers.io())
        }

        private fun makePaymentViaNibss(
            context: Context,
            requestData: TransactionRequestData,
            processor: TransactionProcessor,
            rrn: String,
            stan: String,
        ) {
            println("RequestData......$requestData")

            val modifiedRequestData =
                requestData.apply {
                    this.RRN = rrn
                    this.STAN = stan
                }
            processor.processTransaction(context, modifiedRequestData, cardData!!).onErrorResumeNext {
                processor.rollback(context, MessageReasonCode.Timeout)
            }.flatMap {
                handleUpdateOfTransactionPayloadInBackend(it, rrn)
                Single.just(it)
            }.flatMap {
                println("Response......$it")
                it.amount = amountLong
                if (it.responseCode == "A3") {
                    Prefs.remove(PREF_CONFIG_DATA)
                    Prefs.remove(PREF_KEYHOLDER)
                    _shouldRefreshNibssKeys.postValue(Event(true))
                }
                it.cardHolder = customerName.value!!
                it.cardLabel = cardScheme!!
                lastTransactionResponse.postValue(it)
                // Timber.e(it.toString())
                // Timber.tag("AMOUNT_RETURNED").d(it.amount.toString())
                // Timber.e(it.responseCode)
                // Timber.e(it.responseMessage)
                _message.postValue(Event(if (it.responseCode == "00") "Transaction Approved" else "Transaction Not approved"))
                printReceipt(it)

                AppDatabase.getDatabaseInstance(context).transactionResponseDao()
                    .insertNewTransaction(it)
            }.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doFinally {
                transactionState.value = STATE_PAYMENT_STAND_BY
                showProgressDialog.postValue(false)
            }.subscribe { t1, throwable ->
                t1?.let {}
                throwable?.let {
                    _message.value = Event("Error: ${it.localizedMessage}")
                    // Timber.e(it)
                }
            }.disposeWith(compositeDisposable)
        }

        private fun createTransToLog(
            cardData: CardData?,
            customRrn: String,
            customStan: String,
            transTime: String,
            requestData: TransactionRequestData,
            transDateTime: String,
        ): TransactionToLogBeforeConnectingToNibbs? =
            cardData?.expiryDate?.let {
                customerName.value?.let { it1 ->
                    Singletons.getConfigData()?.cardAcceptorIdCode?.let { it2 ->
                        val newAmount = amountLong.toDouble() // amount.value!!.toDoubleOrNull()
                        TransactionToLogBeforeConnectingToNibbs(
                            status = "PENDING",
                            TransactionResponseX(
                                AID = "",
                                rrn = customRrn,
                                STAN = customStan,
                                TSI = "",
                                TVR = "",
                                accountType = isoAccountType!!.name,
                                acquiringInstCode = "",
                                additionalAmount_54 = "",
                                amount = newAmount.toInt() ?: amount.value!!.toInt(),
                                appCryptogram = "",
                                authCode = "",
                                cardExpiry = it,
                                cardHolder = it1,
                                cardLabel = cardScheme.toString(),
                                id = 0,
                                localDate_13 = getDate(),
                                localTime_12 = transTime,
                                maskedPan = cardData.pan.maskPan(),
                                merchantId = it2,
                                originalForwardingInstCode = "",
                                otherAmount = requestData.otherAmount.toInt(),
                                otherId = "",
                                responseCode = "99",
                                responseDE55 = "",
                                terminalId = user!!.terminal_id!!,
                                transactionTimeInMillis = dateStr2Long(transDateTime),
                                transactionType = requestData.transactionType.name,
                                transmissionDateTime = transDateTime,
                                agentName = user.email!!,
                            ),
                        )
                    }
                }
            }

        override fun onCleared() {
            super.onCleared()
            compositeDisposable.clear()
        }

        fun setAccountType(accountType: IsoAccountType) {
            this.isoAccountType = accountType
        }

        fun setCardScheme(cardScheme: String?) {
            this.cardScheme = if (cardScheme.equals("no match", true)) "VERVE" else cardScheme
        }

        fun showReceiptDialog() {
            _showPrintDialog.value =
                Event(
                    lastTransactionResponse.value!!.buildSMSText(remark.value ?: "").toString(),
                )
        }

        private fun printReceipt(transactionResponse: TransactionResponse) {
            transactionResponse.apply {
                this.cardExpiry = ""
                this.cardHolder = customerName.value ?: ""
            }
            // Timber.e(transactionResponse.toString())
            _showPrintDialog.postValue(
                Event(transactionResponse.buildSMSText(remark.value ?: "").toString()),
            )
        }

        fun finish() {
            _finish.value = Event(true)
        }

        fun isVend(vend: Boolean) {
            isVend = vend
        }

        private fun handleUpdateOfTransactionPayloadInBackend(
            transactionResp: TransactionResponse,
            rrn: String,
        ) {
            if (transactionResp.responseCode == "00") {
                logTransactionAfterConnectingToNibss(
                    rrn,
                    mapDanbamitaleResponseToResponseX(transactionResp),
                    "APPROVED",
                )
            } else {
                logTransactionAfterConnectingToNibss(
                    rrn = rrn,
                    transactionResponse = mapDanbamitaleResponseToResponseX(transactionResp),
                    status = transactionResp.responseMessage,
                )
            }
        }

        fun setupTransactionForVerveSDK(): TransactionParameters {
            val cardInteractionWaitingTime = 15
            val transactionRefund = null
            val balanceBefore = null
            val balanceAfter = null
            val transactionType = com.alcineo.transaction.TransactionType.PURCHASE
            val transactionCategoryCode = "F"
            val transactionMerchantData =
                StringUtils.convertBytesToHex(
                    "NetPlus".toByteArray(
                        StandardCharsets.UTF_8,
                    ),
                )
            return TransactionParameters(
                cardInteractionWaitingTime,
                BigDecimal("1.00"),
                transactionRefund,
                balanceBefore,
                balanceAfter,
                transactionType,
                CurrencyCode.NGN,
                transactionCategoryCode,
                transactionMerchantData,
            )
        }

        private fun logTransactionAfterConnectingToNibss(
            rrn: String,
            transactionResponse: TransactionResponseX,
            status: String,
        ) {
            val dataToLog = DataToLogAfterConnectingToNibss(status, transactionResponse, rrn)
            netposTransactionApiService.updateLogAfterConnectingToNibss(rrn, dataToLog).doOnError {
                val data = TransactionResponseXForTracking(rrn, transactionResponse, status)
            }.flatMap {
                if (!(it.code() in 200..299 || it.code() in 400..499)) {
                    val data = TransactionResponseXForTracking(rrn, transactionResponse, status)
                }
                Single.just(it.body())
            }.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe { _, _ ->
            }.disposeWith(compositeDisposable)
        }
    }
