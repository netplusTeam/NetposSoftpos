@file:Suppress("DEPRECATION")

package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.app.ProgressDialog
import android.content.DialogInterface
import android.os.Build
import android.os.Bundle
import android.text.InputFilter
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.Toast
import androidx.fragment.app.activityViewModels
import androidx.lifecycle.lifecycleScope
import com.danbamitale.epmslib.entities.CardData
import com.danbamitale.epmslib.entities.HostConfig
import com.danbamitale.epmslib.entities.TransactionRequestData
import com.danbamitale.epmslib.entities.TransactionType
import com.danbamitale.epmslib.entities.accountBalances
import com.danbamitale.epmslib.entities.clearPinKey
import com.danbamitale.epmslib.entities.isApproved
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.danbamitale.epmslib.processors.TransactionProcessor
import com.danbamitale.epmslib.utils.IsoAccountType
import com.dsofttech.dprefs.utils.DPrefs
import com.google.android.material.snackbar.Snackbar
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.netplus.NetPosTySdk
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.ServiceAdapter
import com.woleapp.netpos.contactless.databinding.DialogPrintTypeBinding
import com.woleapp.netpos.contactless.databinding.FragmentDashboardBinding
import com.woleapp.netpos.contactless.model.AuthenticationEventData
import com.woleapp.netpos.contactless.model.MqttEvent
import com.woleapp.netpos.contactless.model.MqttEvents
import com.woleapp.netpos.contactless.model.MqttStatus
import com.woleapp.netpos.contactless.model.MqttTopics
import com.woleapp.netpos.contactless.model.Service
import com.woleapp.netpos.contactless.model.TransactionMethod
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.model.Vend
import com.woleapp.netpos.contactless.mqtt.MqttHelper
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.ui.dialog.EnterCvvNumberDialog
import com.woleapp.netpos.contactless.ui.dialog.dialogListener.PinPadDialogListener
import com.woleapp.netpos.contactless.util.AppConstants.STRING_CVV_DIALOG_TAG
import com.woleapp.netpos.contactless.util.DecimalDigitsInputFilter
import com.woleapp.netpos.contactless.util.Event
import com.woleapp.netpos.contactless.util.ICCCardHelper
import com.woleapp.netpos.contactless.util.PREF_CONFIG_DATA
import com.woleapp.netpos.contactless.util.PREF_KEYHOLDER
import com.woleapp.netpos.contactless.util.PREF_USER
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.Singletons
import com.woleapp.netpos.contactless.util.Singletons.getKeyHolder
import com.woleapp.netpos.contactless.util.UtilityParam
import com.woleapp.netpos.contactless.util.UtilityParam.PIN_KEY
import com.woleapp.netpos.contactless.util.buildSMSText
import com.woleapp.netpos.contactless.util.disposeWith
import com.woleapp.netpos.contactless.util.showCardDialog
import com.woleapp.netpos.contactless.util.showToast
import com.woleapp.netpos.contactless.viewmodels.NfcCardReaderViewModel
import com.woleapp.netpos.contactless.viewmodels.SalesViewModel
import io.reactivex.Observable
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import timber.log.Timber
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintWriter
import java.net.InetSocketAddress
import java.net.Socket
import java.util.concurrent.TimeUnit

class DashboardFragment : BaseFragment() {

    private lateinit var progressDialog: ProgressDialog
    private lateinit var binding: FragmentDashboardBinding
    private lateinit var amountEditText: EditText
    private lateinit var adapter: ServiceAdapter
    private var compositeDisposable = CompositeDisposable()
    private val nfcCardReaderViewModel by activityViewModels<NfcCardReaderViewModel>()
    private var observer: ((Event<ICCCardHelper>) -> Unit)? = null
    private val viewModel by activityViewModels<SalesViewModel>()
    private var isVend: Boolean = false
    private lateinit var transactionType: TransactionType
    private lateinit var dialogPrintTypeBinding: DialogPrintTypeBinding
    private lateinit var printTypeDialog: AlertDialog
    private lateinit var printerErrorDialog: AlertDialog
    private lateinit var loader: AlertDialog
    private lateinit var cardCvv: String
    private lateinit var user: User
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        binding = FragmentDashboardBinding.inflate(inflater, container, false)
        amountEditText = binding.priceTextbox
        amountEditText.apply {
            filters = arrayOf<InputFilter>(DecimalDigitsInputFilter(8, 2))
        }
        transactionType = TransactionType.PURCHASE
        isVend = arguments?.getBoolean("IS_VEND", false) ?: false
        viewModel.isVend(isVend)

        dialogPrintTypeBinding = DialogPrintTypeBinding.inflate(layoutInflater, null, false).apply {
            executePendingBindings()
        }
        loader = alertDialog(requireContext())

        printerErrorDialog = AlertDialog.Builder(requireContext()).apply {
            setTitle(getString(R.string.printer_error))
            setIcon(R.drawable.ic_warning)
            setPositiveButton(getString(R.string.send_receipt_2)) { d, _ ->
                d.cancel()
                viewModel.showReceiptDialog()
            }
            setNegativeButton(getString(R.string.dismiss)) { d, _ ->
                d.cancel()
                viewModel.finish()
            }
        }.create()
        binding.apply {
            viewmodel = viewModel
            lifecycleOwner = viewLifecycleOwner
            executePendingBindings()
            type = transactionType.name
        }
        viewModel.message.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { s ->
                showSnackBar(s)
            }
        }
        viewModel.getCardData.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let { shouldGetCardData ->
                if (shouldGetCardData) {
                    if (NetPosTySdk.isCardExists() != 0) {
                        showCardDialog(
                            requireActivity(),
                            viewLifecycleOwner,
                        ).observe(viewLifecycleOwner) { event ->
                            event.getContentIfNotHandled()?.let {
                                Timber.e(it.toString())
                                nfcCardReaderViewModel.initiateNfcPayment(
                                    viewModel.amountLong,
                                    viewModel.cashbackLong,
                                    it,
                                )
                            }
                        }
                    } else {
                        val keyHolder = getKeyHolder()
                        if (keyHolder?.clearPinKey == null) {
                            showToast("Key Holder or Clear Pin Key is null")
                            return@let
                        }

                        loader.show()
                        lifecycleScope.launch(Dispatchers.IO) {
                            NetPosTySdk.launchEmvProcess(viewModel.amountLong.toString())

                            val cardDataAndPinBlockPair =
                                NetPosTySdk.getCardDataAndPinBlock(keyHolder.clearPinKey)
                            Log.d("Card_Data",
                                "${Gson().toJson(cardDataAndPinBlockPair)}, clearPin:${keyHolder.clearPinKey}"
                            )

                            val cardData = cardDataAndPinBlockPair.first
                            if (cardData == null) {
                                withContext(Dispatchers.Main) {
                                    showToast("Card data is null")
                                }
                                return@launch
                            }

                            withContext(Dispatchers.Main) {
                                loader.dismiss()
                                showAccountTypeDialogForContact { accountType ->
                                    nfcCardReaderViewModel.iccCardHelper.let { iccCardHelper ->
                                        iccCardHelper.accountType = accountType
                                        iccCardHelper.cardData = CardData(
                                            cardData.track2Data,
                                            cardData.nibssIccSubset,
                                            cardData.panSequenceNumber.removeSuffix("f"),
                                            cardData.posEntryMode
                                        ).apply {
                                            pinBlock = cardDataAndPinBlockPair.second
                                        }
                                        iccCardHelper.cardScheme = "${cardData.cardType}"
                                        nfcCardReaderViewModel.setIccCardHelperLiveData(
                                            iccCardHelper
                                        )
                                    }
                                }
                            }
                        }
                    }

                }
            }
        }
        viewModel.showReceiptType.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                printTypeDialog.show()
            }
        }

        viewModel.toastMessage.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                Toast.makeText(requireContext(), it, Toast.LENGTH_LONG).show()
            }
        }
        viewModel.finish.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    requireActivity().onBackPressed()
                }
            }
        }
        viewModel.showPrinterError.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (printTypeDialog.isShowing) {
                    printTypeDialog.cancel()
                }
                if (printerErrorDialog.isShowing) {
                    printerErrorDialog.cancel()
                }
                printerErrorDialog.apply {
                    setMessage(it)
                }.show()
            }
        }

        viewModel.showPrintDialog.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                nfcCardReaderViewModel.setLastPosTransactionResponse(viewModel.lastPosTransaction.value!!)
                nfcCardReaderViewModel.prepareSMS(it)
            }
        }

        viewModel.shouldRefreshNibssKeys.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    NetPosTerminalConfig.init(
                        requireContext().applicationContext,
                        configureSilently = true,
                    )
                }
            }
        }
        binding.process.setOnClickListener {
            viewModel.validateField()
        }

        // toast the error messages
        viewModel.payThroughMPGSMessage.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                showToast(message)
            }
        }

        // user object to get netposmid and netplusmid
        user = Singletons.gson.fromJson(Prefs.getString(PREF_USER, ""), User::class.java)

        nfcCardReaderViewModel.iccCardHelperLiveData.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                it.error?.let { error ->
                    Timber.e(error)
                    Toast.makeText(
                        requireContext(),
                        error.message,
                        Toast.LENGTH_LONG,
                    ).show()
                }
                it.cardData?.let { card ->
                    viewModel.setCardScheme(it.cardScheme!!)
                    viewModel.setCustomerName(it.customerName ?: "Customer")
                    viewModel.setAccountType(it.accountType!!)
                    viewModel.cardData = it.cardData
                    if (!user.userType!!.contains("regular", true)) {
                        EnterCvvNumberDialog(object : PinPadDialogListener {
                            override fun onError(errorMessage: String) {
                                showToast(errorMessage)
                                return
                            }

                            override fun onConfirm(data: String) {
                                viewModel.setTransactionStateToStarted()
                                viewModel.payThroughMPGS(
                                    card.pan,
                                    data,
                                    card.expiryDate,
                                    user.netplusPayMid.toString(),
                                    DPrefs.getString(PIN_KEY, ""),
                                )
                            }
                        }).show(parentFragmentManager, STRING_CVV_DIALOG_TAG)
                    } else {
                        viewModel.makePayment(requireContext(), transactionType)
                    }
                }
            }
        }

        adapter = ServiceAdapter {
            when (it.id) {
                0 -> showFragment(TransactionsFragment())
                2 -> showFragment(NipNotificationFragment.newInstance())
                3 -> showFragment(BillsFragment())
                5 -> {
                    parentFragmentManager.beginTransaction()
                        .replace(R.id.container_main, SettingsFragment()).addToBackStack(null)
                        .commit()
                }

                else -> {
                    sendPayload()
                }
            }
        }

        progressDialog = ProgressDialog(requireContext())
        return binding.root
    }

    private fun sendPayload() {
        val event = MqttEvent<AuthenticationEventData>()
        val authEventData =
            AuthenticationEventData(event.business_name!!, event.storm_id!!, event.deviceSerial!!)
        event.apply {
            this.event = MqttEvents.AUTHENTICATION.event
            this.status = MqttStatus.SUCCESS.name
            this.code = MqttStatus.SUCCESS.code
            timestamp = System.currentTimeMillis()
            this.geo = "lat:51.507351-long:-0.127758"
            this.data = authEventData
        }
        MqttHelper.sendPayload(MqttTopics.AUTHENTICATION, event)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setServices()
        vend()
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

        observeServerResponse(
            viewModel.payThroughMPGSResponse,
            loader,
            requireActivity().supportFragmentManager,
        ) {
            if (viewModel.payThroughMPGSResponse.value?.data == null) {
                showSnackBar(getString(R.string.an_error_occurred))
            } else {
                showFragment(
                    CompleteQrPaymentWebViewFragment(),
                    containerViewId = R.id.container_main,
                    fragmentName = "CompletePaymentThroughMPGS Fragment",
                )
            }
        }
    }

    private fun setServices() {
        val listOfServices = ArrayList<Service>().apply {
            add(Service(0, "Transaction", R.drawable.ic_trans))
            add(Service(1, "Balance Inquiry", R.drawable.ic_write))
            add(Service(4, "View End Of Day Transactions", R.drawable.ic_print))
            add(Service(5, "Settings", R.drawable.ic_baseline_settings))
        }
        adapter.submitList(listOfServices)
    }

    private fun vend() {
        if (isVend) {
            var count = 0
            val progressBar = ProgressDialog(context).apply {
                this.setCancelable(false)
                this.setButton(DialogInterface.BUTTON_NEGATIVE, "Cancel") { dialog, _ ->
                    dialog.cancel()
                    compositeDisposable.clear()
                    requireActivity().onBackPressed()
                }
                this.setMessage("Waiting for amount.")
                show()
            }
            val socket = Socket()
            var printWriter: PrintWriter? = null
            var reader: BufferedReader? = null
            Observable.fromCallable {
                socket.soTimeout = 120_000
                socket.connect(
                    InetSocketAddress(
                        UtilityParam.VEND_IP,
                        UtilityParam.VEND_PORT.toInt(),
                    ),
                )
                printWriter = PrintWriter(socket.getOutputStream(), true)
                reader = BufferedReader(InputStreamReader(socket.getInputStream()))
                val firstData = reader?.readLine()
                Timber.e(firstData)
            }.flatMap {
                Observable.interval(0, 5, TimeUnit.SECONDS)
            }.flatMap {
                val out = JsonObject().apply {
                    addProperty("serial_number", Build.ID)
                    addProperty("status", "")
                }.toString()
                printWriter?.println(out)
                try {
                    val s = reader?.readLine()
                    Timber.e(s)
                    val vend = Singletons.gson.fromJson(s, Vend::class.java)
                    // socket.close()
                    Observable.just(vend)
                } catch (e: Exception) {
                    Observable.just(Vend(0.0))
                }
            }.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe({
                //Timber.e("vend: $it")
                count++
                if (it.amount > 0.0) {
                    progressBar.dismiss()
                    Toast.makeText(context, "received", Toast.LENGTH_SHORT).show()
                    Toast.makeText(context, it.amount.toString(), Toast.LENGTH_LONG).show()
                    binding.priceTextbox.setText(it.amount.toLong().toString())
                    compositeDisposable.clear()
                } else if (count > 12) {
                    progressBar.dismiss()
                    Toast.makeText(
                        context,
                        "Did not receive amount after waiting",
                        Toast.LENGTH_LONG,
                    ).show()
                    compositeDisposable.clear()
                    requireActivity().onBackPressed()
                }
            }, {
                progressBar.dismiss()
                Toast.makeText(
                    requireContext(),
                    "Error ${it.localizedMessage}",
                    Toast.LENGTH_SHORT,
                ).show()
                // Timber.e("Error: ${it.localizedMessage}")
                requireActivity().onBackPressed()
            }).disposeWith(compositeDisposable)
        }
    }

    private fun showSnackBar(message: String) {
        if (message == "Transaction not approved") {
            AlertDialog.Builder(requireContext()).apply {
                setTitle("Response")
                setMessage(message)
                show()
            }
        }

        Snackbar.make(
            requireActivity().findViewById(
                R.id.container_main,
            ),
            message,
            Snackbar.LENGTH_LONG,
        ).show()
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
        processor.processTransaction(requireContext(), requestData, cardData)
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
            }.disposeWith(compositeDisposable)
    }

    private fun showMessage(s: String, vararg messageString: String) {
        AlertDialog.Builder(requireContext()).apply {
            setTitle(s)
            setMessage(messageString.first())
            setPositiveButton("Ok") { dialog, _ ->
                dialog.dismiss()
                nfcCardReaderViewModel.prepareSMS(messageString.reversed().joinToString("\n"))
            }
            create().show()
        }
    }

    private fun showTransactionMethodDialog(onMethodSelected: (TransactionMethod) -> Unit) {
        val methods = arrayOf("Contactless", "Contact")
        AlertDialog.Builder(requireActivity())
            .setTitle("Choose Transaction Method")
            .setSingleChoiceItems(methods, -1) { dialog, which ->
                dialog.dismiss()
                when (which) {
                    0 -> onMethodSelected(TransactionMethod.CONTACTLESS)
                    1 -> onMethodSelected(TransactionMethod.CONTACT)
                }
            }
            .setNegativeButton("Cancel") { dialog, _ -> dialog.dismiss() }
            .show()
    }

    private fun showAccountTypeDialogForContact(onAccountTypeSelected: (IsoAccountType) -> Unit) {
        val accountTypes = arrayOf("Savings", "Current", "Default")
        AlertDialog.Builder(requireActivity())
            .setTitle("Choose Account Type")
            .setSingleChoiceItems(accountTypes, -1) { dialog, which ->
                dialog.dismiss()
                when (which) {
                    0 -> onAccountTypeSelected(IsoAccountType.SAVINGS)
                    1 -> onAccountTypeSelected(IsoAccountType.CURRENT)
                    2 -> onAccountTypeSelected(IsoAccountType.DEFAULT_UNSPECIFIED)
                }
            }
            .setNegativeButton("Cancel") { dialog, _ -> dialog.dismiss() }
            .show()
    }


}
