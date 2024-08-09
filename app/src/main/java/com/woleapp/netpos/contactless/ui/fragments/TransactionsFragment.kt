package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.app.ProgressDialog
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.text.Spannable
import android.text.SpannableStringBuilder
import android.text.style.ForegroundColorSpan
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.activityViewModels
import androidx.recyclerview.widget.GridLayoutManager
import com.danbamitale.epmslib.entities.*
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.danbamitale.epmslib.processors.TransactionProcessor
import com.danbamitale.epmslib.utils.IsoAccountType
import com.dsofttech.dprefs.utils.DPrefs
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.ServiceAdapter
import com.woleapp.netpos.contactless.databinding.*
import com.woleapp.netpos.contactless.model.PostQrToServerModel
import com.woleapp.netpos.contactless.model.QrScannedDataModel
import com.woleapp.netpos.contactless.model.Service
import com.woleapp.netpos.contactless.model.Status
import com.woleapp.netpos.contactless.mqtt.MqttHelper
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.ui.activities.AuthenticationActivity
import com.woleapp.netpos.contactless.ui.activities.MainActivity
import com.woleapp.netpos.contactless.ui.dialog.LoadingDialog
import com.woleapp.netpos.contactless.ui.dialog.QrPasswordPinBlockDialog
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.AppConstants.DELETE_ACCOUNT
import com.woleapp.netpos.contactless.util.AppConstants.getGUID
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDeviceId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.stringToBase64
import com.woleapp.netpos.contactless.viewmodels.NfcCardReaderViewModel
import com.woleapp.netpos.contactless.viewmodels.NotificationViewModel
import com.woleapp.netpos.contactless.viewmodels.ScanQrViewModel
import dagger.hilt.android.AndroidEntryPoint
import io.reactivex.Scheduler
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.rxkotlin.addTo
import io.reactivex.schedulers.Schedulers
import kotlinx.android.synthetic.main.item_mcc.view.*
import kotlinx.android.synthetic.main.layout_account_deletion_dialog.*
import timber.log.Timber
import javax.inject.Inject
import javax.inject.Named

@AndroidEntryPoint
class TransactionsFragment : BaseFragment() {

    private lateinit var adapter: ServiceAdapter
    private var _binding: FragmentTransactionsBinding? = null
    private val binding get() = _binding!!

    private val scanQrViewModel by activityViewModels<ScanQrViewModel>()
    private lateinit var qrAmoutDialogBinding: QrAmoutDialogBinding
    private lateinit var verveCardQrAmountDialogBinding: LayoutVerveCardQrAmountDialogBinding
    private lateinit var qrAmountDialog: androidx.appcompat.app.AlertDialog
    private lateinit var qrAmountDialogForVerveCard: androidx.appcompat.app.AlertDialog
    private lateinit var requestNarration: String
    private lateinit var progressDialog: ProgressDialog
    private val nfcCardReaderViewModel by activityViewModels<NfcCardReaderViewModel>()
    private val accountDeletionViewModel by activityViewModels<NotificationViewModel>()
    private var observer: ((Event<ICCCardHelper>) -> Unit)? = null
    private val qrPinBlock: QrPasswordPinBlockDialog = QrPasswordPinBlockDialog()
    private var amountToPayInDouble: Double? = 0.0
    private var qrData: QrScannedDataModel? = null
    private lateinit var layoutAccountBinding: LayoutAccountDeletionDialogBinding
    private lateinit var layoutAccountDialog: androidx.appcompat.app.AlertDialog
    private lateinit var loader: AlertDialog


    @Inject
    lateinit var compositeDisposable: CompositeDisposable

    @Inject
    @Named("io-scheduler")
    lateinit var ioScheduler: Scheduler

    @Inject
    @Named("main-scheduler")
    lateinit var mainThreadScheduler: Scheduler


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        requestNarration = Singletons.getCurrentlyLoggedInUser()?.mid?.let {
            "$it:${Singletons.getCurrentlyLoggedInUser()?.terminal_id}:${UtilityParam.STRING_MPGS_TAG}"
        } ?: ""
        loader = alertDialog(requireContext(), false)

    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        _binding = FragmentTransactionsBinding.inflate(inflater, container, false)
        adapter = ServiceAdapter {
            val nextFrag: Any? = when (it.id) {
                0 -> {
                    showFragment(SalesFragment.newInstance())
                }
                1 -> {
                    showFragment(TransactionHistoryFragment.newInstance(action = HISTORY_ACTION_REFUND))
                }
                8 -> showFragment(TransactionHistoryFragment.newInstance(action = HISTORY_ACTION_REVERSAL))
                7 -> {
                    showFragment(SalesFragment.newInstance(TransactionType.PURCHASE_WITH_CASH_BACK))
                }
                2 -> {
                    showPreAuthDialog()
                    null
                }
                4 -> {
                    getBalance()
                    null
                }
                5 -> showFragment(ReprintFragment())

                3 -> {
                    parentFragmentManager.beginTransaction()
                        .replace(R.id.container_main, SettingsFragment()).addToBackStack(null)
                        .commit()
                }
                6 -> showFragment(SalesFragment.newInstance(isVend = true))
                9 -> showFragment(NotificationFragment())
                10 -> showFragment(PayByTransferFragment())
                11 -> {
                    layoutAccountDialog.show()
                    layoutAccountBinding.loadingDialogLayout.visibility = View.VISIBLE
                    layoutAccountBinding.enterPhoneNumberLayout.visibility = View.GONE
                }
                else -> showFragment(SalesFragment.newInstance(TransactionType.CASH_ADVANCE))
            }
        }

        qrAmoutDialogBinding = QrAmoutDialogBinding.inflate(inflater, null, false).apply {
            executePendingBindings()
            lifecycleOwner = viewLifecycleOwner
        }

        verveCardQrAmountDialogBinding =
            LayoutVerveCardQrAmountDialogBinding.inflate(inflater, null, false).apply {
                executePendingBindings()
                lifecycleOwner = viewLifecycleOwner
            }

        qrAmountDialog = androidx.appcompat.app.AlertDialog.Builder(requireContext()).apply {
            setView(qrAmoutDialogBinding.root)
        }.create()

        qrAmountDialogForVerveCard =
            androidx.appcompat.app.AlertDialog.Builder(requireContext()).apply {
                setView(verveCardQrAmountDialogBinding.root)
            }.create()

        layoutAccountBinding = LayoutAccountDeletionDialogBinding.inflate(inflater, null, false).apply {
            lifecycleOwner = viewLifecycleOwner
            executePendingBindings()
        }
        layoutAccountDialog = androidx.appcompat.app.AlertDialog.Builder(requireContext()).apply {
            setView(layoutAccountBinding.root)
            setCancelable(true)
        }.create()

        layoutAccountBinding.yesBtn.setOnClickListener {
            layoutAccountBinding.loadingDialogLayout.visibility = View.GONE
            layoutAccountBinding.enterPhoneNumberLayout.visibility = View.VISIBLE
        }

        layoutAccountBinding.submitRequest.setOnClickListener {
            loader.show()
            val username = layoutAccountBinding.username.text.toString().trim()
            if (username.isEmpty()){
                showToast("Email cannot be empty")
                return@setOnClickListener
            }
            // Call the deleteAccount function from your repository or viewmodel
            accountDeletionViewModel.deleteAccount(username, getDeviceId(requireContext()))
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { resource ->
                    when (resource.status) {
                        Status.SUCCESS -> {
                            // Handle successful deletion if needed
                            loader.dismiss()
                            layoutAccountDialog.dismiss()
                            showToast("Account deleted successfully!")
                            logout()
                        }
                        Status.ERROR -> {
                            loader.dismiss()
                            // Handle error state - show error message to the user
                            val errorMessage = DPrefs.getString(DELETE_ACCOUNT)
                            showToast(errorMessage)
                        }
                        else -> {
                            loader.dismiss()
                        }
                    }
                }
                .addTo(compositeDisposable) // Add to compositeDisposable to handle disposal
        }

        layoutAccountBinding.noBtn.setOnClickListener {
            layoutAccountDialog.dismiss()
        }
        progressDialog = ProgressDialog(requireContext())

        return binding.root
    }

    override fun onDetach() {
        super.onDetach()
        Timber.e("transaction detached")
    }

    override fun onStop() {
        super.onStop()
        Timber.e("on stop")
        nfcCardReaderViewModel.iccCardHelperLiveData.removeObservers(viewLifecycleOwner)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        nfcCardReaderViewModel.iccCardHelperLiveData.removeObservers(viewLifecycleOwner)
        binding.rvTransactions.layoutManager = GridLayoutManager(context, 2)
        binding.rvTransactions.adapter = adapter
        setService()
    }

    private fun setService() {
        val listOfService = ArrayList<Service>().apply {
            add(Service(0, "Purchase", R.drawable.purchase))
            if (!BuildConfig.FLAVOR.contains("providussoftpos") || !BuildConfig.FLAVOR.contains(
                    "providus",
                )
            ) {
                add(Service(7, "Purchase With Cashback", R.drawable.purchase))
            }
            if (BuildConfig.FLAVOR.contains("providuspos") || BuildConfig.FLAVOR.contains("zenith")) {
                remove(Service(7, "Purchase With Cashback", R.drawable.purchase))
            }
            add(Service(10, getString(R.string.pay_by_transfer), R.drawable.trans))
            add(Service(3, "Settings", R.drawable.ic_baseline_settings))
            if (BuildConfig.FLAVOR.contains("polaris")) {
                remove(Service(3, "Settings", R.drawable.ic_baseline_settings))
            }
            add(Service(4, "Balance Enquiry", R.drawable.ic_write))
            add(Service(11, getString(R.string.account_deletion), R.drawable.baseline_dangerous_24))
            if (BuildConfig.FLAVOR.contains("zenith")) {
                remove(Service(4, "Balance Enquiry", R.drawable.ic_write))
                remove(Service(11, getString(R.string.account_deletion), R.drawable.baseline_dangerous_24))
            }
            add(Service(5, "Reprint", R.drawable.ic_print))
            add(Service(9, getString(R.string.notification), R.drawable.ic_notification))
        }
        adapter.submitList(listOfService)
    }

    private fun showPreAuthDialog() {
        val dialog = AlertDialog.Builder(context).apply {
            setCancelable(false)
        }.create()
        val preAuthDialogBinding =
            LayoutPreauthDialogBinding.inflate(LayoutInflater.from(context), null, false).apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
                preAuthNew.setOnClickListener {
                    dialog.dismiss()
                    addFragmentWithoutRemove(SalesFragment.newInstance(TransactionType.PRE_AUTHORIZATION))
                }
                preAuthComplete.setOnClickListener {
                    dialog.dismiss()
                    addFragmentWithoutRemove(
                        TransactionHistoryFragment.newInstance(
                            HISTORY_ACTION_PREAUTH,
                        ),
                    )
                }
                cancelButton.setOnClickListener {
                    dialog.dismiss()
                }
            }
        dialog.setView(preAuthDialogBinding.root)
        dialog.show()
    }

    private fun showAmountDialog(qrData: QrScannedDataModel) {
        qrAmountDialog.show()
        qrAmoutDialogBinding.proceed.setOnClickListener {
            val amountDouble = qrAmoutDialogBinding.amount.text.toString().toDoubleOrNull()
            if (qrAmoutDialogBinding.amount.text.isNullOrEmpty()) {
                qrAmoutDialogBinding.amount.error = getString(R.string.amount_empty)
            }
            amountDouble?.let {
                qrAmoutDialogBinding.amount.text?.clear()
                qrAmountDialog.cancel()
                val qrDataToSendToBackend = PostQrToServerModel(
                    it,
                    qrData.data,
                    merchantId = UtilityParam.STRING_MERCHANT_ID,
                    naration = requestNarration,
                )
                //Log.d("QRDATA", qrDataToSendToBackend.naration)
                scanQrViewModel.setScannedQrIsVerveCard(false)
                scanQrViewModel.postScannedQrRequestToServer(qrDataToSendToBackend)
                observeServerResponse(
                    scanQrViewModel.sendQrToServerResponse,
                    LoadingDialog(),
                    childFragmentManager,
                ) {
                    addFragmentWithoutRemove(
                        CompleteQrPaymentWebViewFragment(),
                    )
                }
            }
        }
    }

    private fun showAmountDialogForVerveCard() {
        qrAmountDialogForVerveCard.show()
        verveCardQrAmountDialogBinding.proceed.setOnClickListener {
            if (verveCardQrAmountDialogBinding.amount.text.isNullOrEmpty()) {
                verveCardQrAmountDialogBinding.amount.error = getString(R.string.amount_empty)
            }
            val amountDouble =
                verveCardQrAmountDialogBinding.amount.text.toString().toDoubleOrNull()
            amountToPayInDouble = amountDouble
            verveCardQrAmountDialogBinding.amount.text?.clear()
            qrAmountDialogForVerveCard.cancel()
            qrAmountDialogForVerveCard.dismiss()
            qrPinBlock.show(requireActivity().supportFragmentManager, STRING_PIN_BLOCK_DIALOG_TAG)
        }
    }

    private fun getBalance() {
        showCardDialog(
            requireActivity(),
            viewLifecycleOwner,
        ).observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                nfcCardReaderViewModel.initiateNfcPayment(10, 0, it)
            }
        }
        observer = { event ->
            event.getContentIfNotHandled()?.let {
                it.error?.let { error ->
                    Timber.e(error)
                    Toast.makeText(requireContext(), error.localizedMessage, Toast.LENGTH_SHORT)
                        .show()
                }
                it.cardData?.let { cardData ->
                    checkBalance(cardData, it.accountType!!)
                }
            }
        }
        observer?.let {
            Timber.e("add obs")
            nfcCardReaderViewModel.iccCardHelperLiveData.observe(viewLifecycleOwner, it)
        }
    }

    private fun checkBalance(
        cardData: CardData,
        accountType: IsoAccountType = IsoAccountType.DEFAULT_UNSPECIFIED,
    ) {
        if (NetPosTerminalConfig.getKeyHolder() == null) {
            Toast.makeText(requireContext(), "Terminal not configured", Toast.LENGTH_LONG).show()
            return
        }

        val hostConfig = HostConfig(
            NetPosTerminalConfig.getTerminalId(),
            NetPosTerminalConfig.connectionData,
            NetPosTerminalConfig.getKeyHolder()!!,
            NetPosTerminalConfig.getConfigData()!!,
        )
        val requestData =
            TransactionRequestData(TransactionType.BALANCE, 0L, accountType = accountType)
        progressDialog.setMessage("Checking Balance...")
        progressDialog.show()
        val processor = TransactionProcessor(hostConfig)
        // processor.
        val disposable = processor.processTransaction(requireContext(), requestData, cardData)
            .subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread())
            .subscribe { response, error ->
                if (progressDialog.isShowing) {
                    progressDialog.dismiss()
                }
                error?.let {
                    it.printStackTrace()
                    Toast.makeText(
                        requireContext(),
                        "Error ${it.localizedMessage}",
                        Toast.LENGTH_SHORT,
                    ).show()
                }

                response?.let {
                    if (it.responseCode == "A3") {
                        Prefs.remove(PREF_CONFIG_DATA)
                        Prefs.remove(PREF_KEYHOLDER)
                        NetPosTerminalConfig.init(
                            requireContext().applicationContext,
                            configureSilently = true,
                        )
                    }

                    val me = it.buildSMSText("Account Balance Check")

                    val messageString = if (it.isApproved) {
                        "Account Balance:\n " + it.accountBalances.joinToString("\n") { accountBalance ->
                            "${accountBalance.accountType}, ${
                                accountBalance.amount.div(100).formatCurrencyAmount()
                            }"
                        }
                    } else {
                        "${it.responseMessage}(${it.responseCode})"
                    }

                    showMessage(
                        if (it.isApproved) "Approved" else "Declined",
                        messageString,
                        me.toString(),
                    )
                }
            }
    }

    private fun showMessage(s: String, vararg messageString: String) {
        androidx.appcompat.app.AlertDialog.Builder(requireContext()).apply {
            setTitle(s)
            setMessage(messageString.first())
            setPositiveButton("Ok") { dialog, _ ->
                dialog.dismiss()
                nfcCardReaderViewModel.prepareSMS(messageString.reversed().joinToString("\n"))
            }
            create().show()
        }
    }

    private fun logout() {
        Prefs.remove(PREF_USER_TOKEN)
        Prefs.remove(PREF_AUTHENTICATED)
        Prefs.remove(PREF_KEYHOLDER)
        Prefs.remove(PREF_CONFIG_DATA)
        Prefs.remove(PREF_USER)
        MqttHelper.disconnect()
        val intent = Intent(requireContext(), AuthenticationActivity::class.java)
        intent.flags =
            Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        startActivity(intent)
        requireActivity().finish()
    }
    private fun formatPinAndSendToServer(
        pin: String,
        amountDouble: Double?,
        qrData: QrScannedDataModel,
    ) {
        val formattedPadding = stringToBase64(pin).removeSuffix('\n'.toString())
        if (pin.length == 4) {
            amountDouble?.let {
                qrAmountDialogForVerveCard.cancel()
                val qrDataToSendToBackend = PostQrToServerModel(
                    it,
                    qrData.data,
                    merchantId = UtilityParam.STRING_MERCHANT_ID,
                    padding = formattedPadding,
                    naration = requestNarration,
                )
                scanQrViewModel.setScannedQrIsVerveCard(true)
                scanQrViewModel.saveTheQrToSharedPrefs(qrDataToSendToBackend.copy(orderId = getGUID()))
                scanQrViewModel.postScannedQrRequestToServer(qrDataToSendToBackend)
                observeServerResponse(
                    scanQrViewModel.sendQrToServerResponseVerve,
                    LoadingDialog(),
                    requireActivity().supportFragmentManager,
                ) {
                    addFragmentWithoutRemove(
                        EnterOtpFragment(),
                    )
                }
            }
        }
    }


    fun colorizeString(originalString: String, color: Int): SpannableStringBuilder {
        val spannableStringBuilder = SpannableStringBuilder(originalString)
        spannableStringBuilder.setSpan(
            ForegroundColorSpan(resources.getColor(R.color.colorError)),
            0,
            originalString.length,
            Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
        )
        return spannableStringBuilder
    }

    override fun onDestroy() {
        super.onDestroy()
        _binding = null
    }
}

