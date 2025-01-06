@file:Suppress("DEPRECATION")

package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.app.ProgressDialog
import android.content.DialogInterface
import android.content.Intent
import android.nfc.NfcAdapter
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.text.InputFilter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.fragment.app.activityViewModels
import androidx.lifecycle.asLiveData
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.danbamitale.epmslib.entities.*
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.danbamitale.epmslib.processors.TransactionProcessor
import com.danbamitale.epmslib.utils.IsoAccountType
import com.dsofttech.dprefs.utils.DPrefs
import com.dspread.xpos.QPOSService
import com.google.android.material.snackbar.Snackbar
import com.google.gson.JsonObject
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.ServiceAdapter
import com.woleapp.netpos.contactless.app.NetPosApp
import com.woleapp.netpos.contactless.app.NetPosApp.Companion.cr100Pos
import com.woleapp.netpos.contactless.cr100.BluetoothToolsBean
import com.woleapp.netpos.contactless.cr100.MyQposClass
import com.woleapp.netpos.contactless.cr100.model.BtCardInfo
import com.woleapp.netpos.contactless.cr100.widget.BluetoothAdapter
import com.woleapp.netpos.contactless.cr100.widget.BluetoothDialog
import com.woleapp.netpos.contactless.cr100.widget.POS_TYPE
import com.woleapp.netpos.contactless.cr100.widget.showBluetoothDialog
import com.woleapp.netpos.contactless.databinding.DialogPrintTypeBinding
import com.woleapp.netpos.contactless.databinding.FragmentDashboardBinding
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.mqtt.MqttHelper
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.ui.dialog.EnterCvvNumberDialog
import com.woleapp.netpos.contactless.ui.dialog.dialogListener.PinPadDialogListener
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.AppConstants.BLUETOOTH_ADDRESS
import com.woleapp.netpos.contactless.util.AppConstants.BLUETOOTH_TITLE
import com.woleapp.netpos.contactless.util.AppConstants.STRING_CVV_DIALOG_TAG
import com.woleapp.netpos.contactless.util.BLUETOOTH
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.UtilityParam.PIN_KEY
import com.woleapp.netpos.contactless.viewmodels.NfcCardReaderViewModel
import com.woleapp.netpos.contactless.viewmodels.SalesViewModel
import io.reactivex.Observable
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import kotlinx.android.synthetic.main.item_mcc.view.*
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
    private lateinit var user: User
    private lateinit var tvMessageTv: TextView
    private lateinit var etPinEt: EditText
    private lateinit var btnConfirmBtn: Button
    private lateinit var btnClearIv: ImageView
    private lateinit var btnEscIv: TextView
    private lateinit var btn0Tv: TextView
    private lateinit var btn1Tv: TextView
    private lateinit var btn2Tv: TextView
    private lateinit var btn3Tv: TextView
    private lateinit var btn4Tv: TextView
    private lateinit var btn5Tv: TextView
    private lateinit var btn6Tv: TextView
    private lateinit var btn7Tv: TextView
    private lateinit var btn8Tv: TextView
    private lateinit var btn9Tv: TextView
    private lateinit var listener: MyQposClass
    private var nfcAdapter: NfcAdapter? = null
    private lateinit var bluetoothAdapter: BluetoothAdapter
    private var lvIndicatorBTPOS: RecyclerView? = null
    private var blueToothAddress = ""
    private var blueTitle: String? = null
    private var startTime = 0L
    private var posType: POS_TYPE = POS_TYPE.BLUETOOTH

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

        nfcAdapter = checkNfcStatus()

        isVend = arguments?.getBoolean("IS_VEND", false) ?: false
        viewModel.isVend(isVend)

        dialogPrintTypeBinding =
            DialogPrintTypeBinding.inflate(layoutInflater, null, false).apply {
                executePendingBindings()
            }
        loader = alertDialog(requireContext())

        printerErrorDialog =
            AlertDialog.Builder(requireContext()).apply {
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
//        viewModel.getCardData.observe(viewLifecycleOwner) { event ->
//            event.getContentIfNotHandled()?.let { shouldGetCardData ->
//                if (shouldGetCardData) {
//                    showCardDialog(
//                        requireActivity(),
//                        viewLifecycleOwner,
//                    ).observe(viewLifecycleOwner) { event ->
//                        event.getContentIfNotHandled()?.let {
//                            Timber.e(it.toString())
//                            nfcCardReaderViewModel.initiateNfcPayment(
//                                viewModel.amountLong,
//                                viewModel.cashbackLong,
//                                it,
//                            )
//                        }
//                    }
//                }
//            }
//        }
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

        initViews()

        val integerList = listOf("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
        integerList.shuffled()
        setNumberOnTextViews(integerList)

        val builder = StringBuilder()
        val buttons =
            arrayOf(btn0Tv, btn1Tv, btn2Tv, btn3Tv, btn4Tv, btn5Tv, btn6Tv, btn7Tv, btn8Tv, btn9Tv)
        for (i in buttons.indices) {
            buttons[i].setOnClickListener { v: View ->
                builder.append((v as TextView).text.toString())
                etPinEt.setText(builder.toString())
            }
        }
        btnEscIv.setOnClickListener {
            etPinEt.setText("")
        }
        btnClearIv.setOnClickListener {
            if (builder.isNotEmpty()) {
                builder.deleteCharAt(builder.length - 1)
                etPinEt.setText(builder.toString())
            }
        }
        btnConfirmBtn.setOnClickListener {
            if (etPinEt.text.toString().isEmpty()) {
                Toast.makeText(
                    context,
                    getString(R.string.enter_a_valid_amount),
                    Toast.LENGTH_SHORT,
                ).show()
                return@setOnClickListener
            } else {
                binding.priceTextbox.text = etPinEt.text
                if (nfcAdapter != null) {
                    viewModel.validateFieldForNFC()
                } else {
                    if (viewModel.validateFieldForBluetooth()) {
                        initIntent()
                    }
                }
            }
        }

//        binding.btnConfirm.setOnClickListener {
//            if (nfcAdapter != null) {
//                viewModel.validateFieldForNFC()
//            } else {
//                if (viewModel.validateFieldForBluetooth()) {
//                    initIntent()
//                }
//            }
//        }

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
                        EnterCvvNumberDialog(
                            object : PinPadDialogListener {
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
                            },
                        ).show(parentFragmentManager, STRING_CVV_DIALOG_TAG)
                    } else {
                        viewModel.makePayment(requireContext(), transactionType)
                    }
                }
            }
        }

        adapter =
            ServiceAdapter {
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
        val showNfcRequest =
            Singletons.gson.fromJson(Prefs.getString(PREF_USER, ""), User::class.java).nfc_interest
        nfcAdapter =
            (requireActivity().applicationContext as NetPosApp).nfcProvider.mNFCManager?.mNfcAdapter
        if (nfcAdapter != null) {
            // Toast.makeText(this, "Device has NFC support", Toast.LENGTH_SHORT).show()
            if (nfcAdapter?.isEnabled == false) {
                androidx.appcompat.app.AlertDialog.Builder(requireContext()).setTitle("NFC Message")
                    .setMessage("NFC is not enabled, goto device settings to enable")
                    .setCancelable(false).setPositiveButton("Settings") { dialog, _ ->
                        dialog.dismiss()
                        startActivityForResult(
                            Intent(Settings.ACTION_NFC_SETTINGS),
                            0,
                        )
                    }.show()
            }
        } else if (showNfcRequest == "0") {
            binding.requestADevice.visibility = View.VISIBLE
        }

        binding.requestADevice.setOnClickListener {
            showFragment(
                RequestNfcFragment(),
                containerViewId = R.id.container_main,
                fragmentName = "RequestNfcFragment",
            )
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

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)
        setServices()
        vend()
        lvIndicatorBTPOS = view.findViewById(R.id.lv_indicator_BTPOS)
        bluetoothAdapter = BluetoothAdapter(requireActivity(), null)

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
        val listOfServices =
            ArrayList<Service>().apply {
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
            val progressBar =
                ProgressDialog(context).apply {
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
                val out =
                    JsonObject().apply {
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
                // Timber.e("vend: $it")
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

        val hostConfig =
            HostConfig(
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

                    val messageString =
                        if (it.isApproved) {
                            "Account Balance:\n " +
                                it.accountBalances.joinToString("\n") { accountBalance ->
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

    private fun showMessage(
        s: String,
        vararg messageString: String,
    ) {
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
        AlertDialog.Builder(requireActivity()).setTitle("Choose Transaction Method")
            .setSingleChoiceItems(methods, -1) { dialog, which ->
                dialog.dismiss()
                when (which) {
                    0 -> onMethodSelected(TransactionMethod.CONTACTLESS)
                    1 -> onMethodSelected(TransactionMethod.CONTACT)
                }
            }.setNegativeButton("Cancel") { dialog, _ -> dialog.dismiss() }.show()
    }

    private fun showAccountTypeDialogForContact(onAccountTypeSelected: (IsoAccountType) -> Unit) {
        val accountTypes = arrayOf("Savings", "Current", "Default")
        AlertDialog.Builder(requireActivity()).setTitle("Choose Account Type")
            .setSingleChoiceItems(accountTypes, -1) { dialog, which ->
                dialog.dismiss()
                when (which) {
                    0 -> onAccountTypeSelected(IsoAccountType.SAVINGS)
                    1 -> onAccountTypeSelected(IsoAccountType.CURRENT)
                    2 -> onAccountTypeSelected(IsoAccountType.DEFAULT_UNSPECIFIED)
                }
            }.setNegativeButton("Cancel") { dialog, _ -> dialog.dismiss() }.show()
    }

    private fun openCr100(mode: QPOSService.CommunicationMode) {
        listener = MyQposClass(bluetoothAdapter, requireActivity())
        cr100Pos = QPOSService.getInstance(mode)

        if (cr100Pos == null) {
            showToast("Unknown communication mode")
            return
        }

        cr100Pos!!.setConext(requireActivity())
        val handler = Looper.myLooper()?.let { Handler(it) }
        cr100Pos!!.initListener(handler, listener)

        val cardInfoLiveData = listener.cardInfoFlow.asLiveData()

        cardInfoLiveData.observe(viewLifecycleOwner) { cardInfo ->
            if (cardInfo.isValid()) {
                nfcCardReaderViewModel.doCr100Transaction(cardInfo)
                listener.resetCardInfoFlow()
            }
        }

//        val batteryPercentage = listener.cr100BatteryPercentageFlow.asLiveData()
//        batteryPercentage.observe(viewLifecycleOwner) { batteryLevel ->
//            if (batteryLevel.isNotEmpty())
//                {
//                    Log.d("BATTERY_LEVEL1", "$batteryPercentage")
//                }
//        }
//        Log.d("BATTERY_LEVEL", "$batteryPercentage")
    }

    private fun deviceType(type: Int) {
        if (BluetoothDialog.manualExitDialog != null) {
            BluetoothDialog.manualExitDialog.dismiss()
        }

        requireActivity().showBluetoothDialog(bluetoothAdapter)

        if (type == BLUETOOTH) {
            if (cr100Pos == null) {
                openCr100(QPOSService.CommunicationMode.BLUETOOTH)
            }
            posType = POS_TYPE.BLUETOOTH
            cr100Pos?.scanQPos2Mode(requireActivity(), 10)
        } else {
            if (cr100Pos == null) {
                openCr100(QPOSService.CommunicationMode.BLUETOOTH_BLE)
            }
            posType = POS_TYPE.BLUETOOTH_BLE
            cr100Pos?.startScanQposBLE(10)
        }

        refreshAdapter()
        bluetoothAdapter.notifyDataSetChanged()
    }

//    private fun initIntent() {
//        scanBlue()
//        openCr100(QPOSService.CommunicationMode.BLUETOOTH)
//
//        if (cr100Pos!!.bluetoothState) {
//            BluetoothDialog.manualExitDialog(
//                requireActivity(),
//                "Do you want to continue with the previous connection?",
//                object : BluetoothDialog.OnMyClickListener {
//                    override fun onCancel() {
//                        cr100Pos?.disconnectBT()
//                        lvIndicatorBTPOS?.adapter = bluetoothAdapter
//                        deviceType(BLUETOOTH)
//                        refreshAdapter()
//                        bluetoothAdapter.notifyDataSetChanged()
//                        BluetoothDialog.manualExitDialog.dismiss()
//                    }
//
//                    override fun onConfirm() {
//                        if (BluetoothToolsBean.getBlueToothName() != null) {
//                            showToast(BluetoothToolsBean.getBlueToothName())
//                        }
//
//                        val keyIndex: Int = getBluetoothKeyIndex()
//                        cr100Pos?.doTrade(keyIndex, 60)
//                        BluetoothDialog.manualExitDialog.dismiss()
//                    }
//                },
//            )
//        } else {
//            lvIndicatorBTPOS?.adapter = bluetoothAdapter
//            deviceType(BLUETOOTH)
//            refreshAdapter()
//            bluetoothAdapter.notifyDataSetChanged()
//        }
//    }

    private fun initIntent() {
        scanBlue()
        openCr100(QPOSService.CommunicationMode.BLUETOOTH)

        if (cr100Pos!!.bluetoothState) {
            if (BluetoothToolsBean.getBlueToothName() != null) {
                showToast(BluetoothToolsBean.getBlueToothName())
            }

            val keyIndex: Int = getBluetoothKeyIndex()
            cr100Pos?.doTrade(keyIndex, 60)
        } else {
            Prefs.getString(BLUETOOTH_TITLE, null)?.let {
                listener.setBlueTitle(it)
            }
            Prefs.getString(BLUETOOTH_ADDRESS, null)?.let {
                cr100Pos?.connectBluetoothDevice(true, 60, it)
            } ?: run {
                lvIndicatorBTPOS?.adapter = bluetoothAdapter
                deviceType(BLUETOOTH)
                refreshAdapter()
                bluetoothAdapter.notifyDataSetChanged()
            }
        }
    }

    private fun scanBlue() {
        lvIndicatorBTPOS?.layoutManager =
            LinearLayoutManager(
                requireActivity(),
                LinearLayoutManager.VERTICAL,
                false,
            )

        bluetoothAdapter.setOnBluetoothItemClickListener { position, itemData ->
            onBTPosSelected(itemData)
            BluetoothDialog.loading(requireActivity(), getString(R.string.str_connecting))
            BluetoothToolsBean.setConectedState("CONNECTED")
        }
    }

//    private fun onBTPosSelected(itemData: Map<String?, *>) {
//        cr100Pos?.stopScanQPos2Mode()
//        startTime = System.currentTimeMillis()
//        blueToothAddress = itemData["ADDRESS"]!! as String
//        blueTitle = itemData["TITLE"] as String?
//        blueTitle =
//            blueTitle?.split("\\(".toRegex())?.dropLastWhile { it.isEmpty() }?.toTypedArray()
//                ?.get(0)
//        cr100Pos?.connectBluetoothDevice(true, 60, blueToothAddress)
//        blueTitle?.let { listener.setBlueTitle(it) }
//    }

    private fun onBTPosSelected(itemData: Map<String?, *>) {
        cr100Pos?.stopScanQPos2Mode()
        startTime = System.currentTimeMillis()
        blueToothAddress = itemData["ADDRESS"]!! as String
        blueTitle = itemData["TITLE"] as String?
        blueTitle =
            blueTitle?.split("\\(".toRegex())?.dropLastWhile { it.isEmpty() }?.toTypedArray()
                ?.get(0)
        cr100Pos?.connectBluetoothDevice(true, 60, blueToothAddress)
        Prefs.putString(BLUETOOTH_ADDRESS, blueToothAddress)
        blueTitle?.let {
            listener.setBlueTitle(it)
            Prefs.putString(BLUETOOTH_TITLE, blueTitle)
        }
    }

    private fun refreshAdapter() {
        bluetoothAdapter.clearData()
        val data = java.util.ArrayList<Map<String, *>>()
        bluetoothAdapter.setListData(data)
    }

    private fun BtCardInfo.isValid(): Boolean {
        return realPan.isNotEmpty() && track2.isNotEmpty() && decryptedIcc.isNotEmpty() && cardType != null
    }

    override fun onDestroy() {
        super.onDestroy()

        if (cr100Pos != null) {
            listener.cleanup()
            cr100Pos!!.cancelTrade()
            cr100Pos!!.disconnectBT()
        }
    }

    private fun initViews() {
        with(binding) {
            tvMessageTv = tvMessage
            etPinEt = etPin
            btnConfirmBtn = btnConfirm
            btnClearIv = btnClear
            btnEscIv = btnEsc
            btn0Tv = btn0
            btn1Tv = btn1
            btn2Tv = btn2
            btn3Tv = btn3
            btn4Tv = btn4
            btn5Tv = btn5
            btn6Tv = btn6
            btn7Tv = btn7
            btn8Tv = btn8
            btn9Tv = btn9
        }
    }

    private fun setNumberOnTextViews(integerList: List<String>) {
        btn0Tv.text = integerList[0]
        btn1Tv.text = integerList[1]
        btn2Tv.text = integerList[2]
        btn3Tv.text = integerList[3]
        btn4Tv.text = integerList[4]
        btn5Tv.text = integerList[5]
        btn6Tv.text = integerList[6]
        btn7Tv.text = integerList[7]
        btn8Tv.text = integerList[8]
        btn9Tv.text = integerList[9]
    }
}
