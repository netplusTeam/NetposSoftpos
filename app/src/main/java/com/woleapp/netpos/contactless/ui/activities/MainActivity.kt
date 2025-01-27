@file:Suppress("DEPRECATION", "ktlint:standard:no-wildcard-imports")

package com.woleapp.netpos.contactless.ui.activities

import android.Manifest
import android.annotation.SuppressLint
import android.app.Activity
import android.app.DatePickerDialog
import android.app.ProgressDialog
import android.content.*
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.nfc.NfcAdapter
import android.nfc.Tag
import android.nfc.tech.IsoDep
import android.os.*
import android.provider.Settings
import android.util.Log
import android.view.LayoutInflater
import android.view.MenuItem
import android.view.View
import android.view.WindowManager
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.databinding.DataBindingUtil
import androidx.databinding.ViewDataBinding
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.alcineo.softpos.payment.api.interfaces.NFCListener
import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.danbamitale.epmslib.utils.IsoAccountType
import com.google.android.gms.tasks.OnCompleteListener
import com.google.android.material.bottomsheet.BottomSheetDialog
import com.google.android.material.navigation.NavigationBarView
import com.google.firebase.messaging.FirebaseMessaging
import com.google.gson.Gson
import com.payneteasy.tlv.BerTag
import com.payneteasy.tlv.BerTlvParser
import com.payneteasy.tlv.BerTlvs
import com.pixplicity.easyprefs.library.Prefs
import com.visa.app.ttpkernel.ContactlessKernel
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.app.NetPosApp
import com.woleapp.netpos.contactless.database.AppDatabase
import com.woleapp.netpos.contactless.databinding.*
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.mqtt.MqttHelper
import com.woleapp.netpos.contactless.network.StormApiClient
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.taponphone.NfcDataWrapper
import com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc.NFCManager.READER_FLAGS
import com.woleapp.netpos.contactless.taponphone.verve.TransactionViewModelFactory
import com.woleapp.netpos.contactless.taponphone.verve.VerveTransactionViewModel
import com.woleapp.netpos.contactless.taponphone.verve.model.TransactionFullDataDto
import com.woleapp.netpos.contactless.taponphone.verve.nfc.NfcVerveProvider
import com.woleapp.netpos.contactless.taponphone.visa.LiveNfcTransReceiver
import com.woleapp.netpos.contactless.taponphone.visa.NfcPaymentType
import com.woleapp.netpos.contactless.ui.dialog.LoadingDialog
import com.woleapp.netpos.contactless.ui.dialog.PasswordDialog
import com.woleapp.netpos.contactless.ui.dialog.QrPasswordPinBlockDialog
import com.woleapp.netpos.contactless.ui.fragments.*
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.AppConstants.IS_QR_TRANSACTION
import com.woleapp.netpos.contactless.util.AppConstants.STRING_FIREBASE_INTENT_ACTION
import com.woleapp.netpos.contactless.util.AppConstants.STRING_QR_READ_RESULT_BUNDLE_KEY
import com.woleapp.netpos.contactless.util.AppConstants.STRING_QR_READ_RESULT_REQUEST_KEY
import com.woleapp.netpos.contactless.util.AppConstants.TAG_NOTIFICATION_RECEIVED_FROM_BACKEND
import com.woleapp.netpos.contactless.util.AppConstants.WRITE_PERMISSION_REQUEST_CODE
import com.woleapp.netpos.contactless.util.Mappers.mapTransactionResponseToQrTransaction
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.dateStr2Long
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.divideLongBy100
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getCurrentDateTime
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponseActivity
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.showSnackBar
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.viewmodels.*
import dagger.hilt.android.AndroidEntryPoint
import pub.devrel.easypermissions.EasyPermissions
import timber.log.Timber
import java.io.File
import java.io.IOException
import java.nio.charset.StandardCharsets
import java.util.*

@Suppress("DEPRECATION")
@AndroidEntryPoint
class MainActivity :
    AppCompatActivity(),
    EasyPermissions.PermissionCallbacks,
    NfcAdapter.ReaderCallback,
    DialogDismissListener {
//    private lateinit var appUpdateManager: AppUpdateManager
//    private val updateType = AppUpdateType.IMMEDIATE

    private lateinit var receiptPdf: File
    private var progressDialog: ProgressDialog? = null
    private lateinit var alertDialog: AlertDialog
    private lateinit var binding: ActivityMainBinding
    private lateinit var notificationsLayout: ConstraintLayout
    private lateinit var unreadNotificationsCountTv: TextView
    private lateinit var pdfView: LayoutPosReceiptPdfBinding
    private lateinit var qrPdfView: LayoutQrReceiptPdfBinding
    private lateinit var dialogContactlessReaderBinding: DialogContatclessReaderBinding
    private val viewModel by viewModels<NfcCardReaderViewModel>()
    private val transactionViewModel by viewModels<TransactionsViewModel>()
    private val notificationViewModel: NotificationViewModel by viewModels()
    private val contactlessKernel: ContactlessKernel by lazy {
        ContactlessKernel.getInstance(applicationContext)
    }

    private lateinit var waitingDialog: AlertDialog
    private var nfcAdapter: NfcAdapter? = null
    private lateinit var receiptDialogBinding: DialogTransactionResultBinding
    private lateinit var receiptAlertDialog: AlertDialog
    private lateinit var resultLauncher: ActivityResultLauncher<Intent>
    private lateinit var requestNarration: String
    private lateinit var qrAmoutDialogBinding: QrAmoutDialogBinding
    private lateinit var verveCardQrAmountDialogBinding: LayoutVerveCardQrAmountDialogBinding
    private lateinit var cardTypeBinding: DialogSelectCardschemeBinding
    private lateinit var qrAmountDialog: AlertDialog
    private lateinit var qrAmountDialogForVerveCard: AlertDialog
    private val scanQrViewModel by viewModels<ScanQrViewModel>()
    private val qrPinBlock: QrPasswordPinBlockDialog = QrPasswordPinBlockDialog()
    private var amountToPayInDouble: Double? = 0.0
    private var qrData: QrScannedDataModel? = null
    private val notificationModel: NotificationViewModel by viewModels()
    private lateinit var firebaseInstance: FirebaseMessaging
    private lateinit var deviceNotSupportedAlertDialog: AlertDialog
    private lateinit var selectCardDialog: AlertDialog
    private lateinit var copyAccountNumber: String

    private lateinit var mVerveTransactionViewModel: VerveTransactionViewModel
    private var verveNfcListener: NFCListener? = null
    private val salesViewModel by viewModels<SalesViewModel>()
    private val nfcCardReaderViewModel by viewModels<NfcCardReaderViewModel>()

    private var mNfcAdapter: NfcAdapter? = null
    var context: Context? = null
    private var isVisa: Boolean = false
    private lateinit var aid: String

    // Add a flag to control processing
    private var isProcessing = false

    // Track the last processed time for each AID
    private val lastProcessedAidTime = mutableMapOf<String, Long>()
    private val aidDelayMillis = 5000L // 5 seconds delay

    override fun onStart() {
        super.onStart()
        when ( // NetPosTerminalConfig.isConfigurationInProcess -> showProgressDialog()
            NetPosTerminalConfig.configurationStatus
        ) {
            -1 ->
                NetPosTerminalConfig.init(
                    applicationContext,
                )
            1 -> {
                dismissProgressDialogIfShowing()
            }
        }
        checkTokenExpiry()
        nfcAdapter = (applicationContext as NetPosApp).nfcProvider.mNFCManager?.mNfcAdapter
        if (nfcAdapter != null) {
            // Toast.makeText(this, "Device has NFC support", Toast.LENGTH_SHORT).show()
            if (nfcAdapter?.isEnabled == false) {
                AlertDialog.Builder(this).setTitle("NFC Message")
                    .setMessage("NFC is not enabled, goto device settings to enable")
                    .setCancelable(false).setPositiveButton("Settings") { dialog, _ ->
                        dialog.dismiss()
                        startActivityForResult(
                            Intent(android.provider.Settings.ACTION_NFC_SETTINGS),
                            0,
                        )
                    }.show()
            }
        } else {
            deviceNotSupportedAlertDialog.show()
        }
    }

    private fun startNfcPayment(nfcDataWrapper: NfcDataWrapper) {
        when (nfcDataWrapper.cardType) {
            NfcPaymentType.VISA -> {
                nfcAdapter?.enableReaderMode(
                    this,
                    this,
                    READER_FLAGS,
                    Bundle(),
                )
            }
            NfcPaymentType.VERVE -> {
                nfcAdapter?.enableReaderMode(
                    this,
                    { tag: Tag? -> verveNfcListener!!.onNfcTagDiscovered(tag) },
                    READER_FLAGS,
                    null,
                )
            }
            else -> {
                nfcAdapter?.enableReaderMode(
                    this,
                    this,
                    READER_FLAGS,
                    Bundle(),
                )
            }
        }
    }

    private fun stopNfcPayment() {
        nfcAdapter?.disableReaderMode(this)
    }

    override fun onNewIntent(intent: Intent?) {
        Timber.e("on new intent")
        super.onNewIntent(intent)
        setIntent(intent)
        intent?.let {
            resolveIntent(it)
        }
    }

    private fun resolveIntent(intent: Intent) {
        // intent.action
        val tag: Tag? = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG) as? Tag
        tag?.let {
            if (it.toString() == NFC_A_TAG || it.toString() == NFC_B_TAG) {
                handleProvider(tag)
            }
        }
    }

    private fun handleProvider(tag: Tag) {
        val mTagCom = IsoDep.get(tag)
        try {
            if (isVisa) {
                // Check if another technology is connected
                if (mTagCom.isConnected) {
                    mTagCom.close() // Close the currently connected technology
                }

                // Connect to the tag
//                mTagCom.connect()

                val logger = StringBuilder()
                val nfcTransReceiver = LiveNfcTransReceiver(logger, mTagCom)

                // Start Visa transaction
                viewModel.doVisaTransaction(nfcTransReceiver, contactlessKernel)
                isVisa = false // Reset Visa processing flag
                // Once the transaction completes, disconnect the Visa tag
                if (mTagCom.isConnected) {
                    mTagCom.close()
                    isVisa = false // Reset Visa processing flag
                }
                isVisa = false // Reset Visa processing flag
            }
        } catch (e: Exception) {
            Timber.e(e)
        }
    }

    private fun logoutConfirmation() {
        AlertDialog.Builder(this)
            .setMessage(R.string.logout_confirmation_dialog_message) // Specifying a listener allows you to take an action before dismissing the dialog.
            .setPositiveButton(android.R.string.yes) { _: DialogInterface, _: Int ->
                logout()
            } // A null listener allows the button to dismiss the dialog and take no further action.
            .setNegativeButton(android.R.string.no, null).show()
    }

    private fun logout() {
        Prefs.remove(PREF_USER_TOKEN)
        Prefs.remove(PREF_AUTHENTICATED)
        Prefs.remove(PREF_KEYHOLDER)
        Prefs.remove(PREF_CONFIG_DATA)
        Prefs.remove(PREF_USER)
        MqttHelper.disconnect()
        val intent = Intent(this, AuthenticationActivity::class.java)
        intent.flags =
            Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        startActivity(intent)
        finish()
    }

    private fun checkTokenExpiry() {
        val token = Prefs.getString(PREF_USER_TOKEN, null)
        token?.let {
            if (JWTHelper.isExpired(it)) {
                logout()
            }
        }
    }

    private fun dismissProgressDialogIfShowing() {
        progressDialog?.dismiss()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
//        appUpdateManager = AppUpdateManagerFactory.create(applicationContext)
//        // First check if there is an update
//        checkForAppUpdate()
        context = applicationContext
        mNfcAdapter = NfcAdapter.getDefaultAdapter(this)

        window.setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE)
        val netPlusPayMid = Singletons.getNetPlusPayMid()
        if (BuildConfig.FLAVOR.contains("zenith")) {
            scanQrViewModel.getMerchantDetails(netPlusPayMid)
            // Log.d("CHECKINGZENITH", "CHECKING_ZENITH")
        } else if (BuildConfig.FLAVOR.contains("providuspos")) {
            scanQrViewModel.getProvidusMerchantDetails(netPlusPayMid)
            generateMerchantDetails()
        } else if (BuildConfig.FLAVOR.contains("fcmbeasypay")) {
            scanQrViewModel.getFcmbMerchantDetails(netPlusPayMid)
            generateMerchantDetails()
        }
        pdfView = LayoutPosReceiptPdfBinding.inflate(layoutInflater)
        qrPdfView = LayoutQrReceiptPdfBinding.inflate(layoutInflater)
        NetPosApp.INSTANCE.initMposLibrary(this)
        binding = DataBindingUtil.setContentView(this, R.layout.activity_main)
        initViews()

        cardTypeBinding = DialogSelectCardschemeBinding.inflate(LayoutInflater.from(context))
        selectCardDialog =
            AlertDialog.Builder(this).apply {
                setView(cardTypeBinding.root)
            }.create()

        dialogContactlessReaderBinding =
            DialogContatclessReaderBinding.inflate(layoutInflater).apply {
                executePendingBindings()
            }
        waitingDialog =
            AlertDialog.Builder(this).apply {
                setView(dialogContactlessReaderBinding.root)
                // setCancelable(false)
            }.create()
        receiptDialogBinding =
            DialogTransactionResultBinding.inflate(layoutInflater, null, false)
                .apply { executePendingBindings() }
        if (!EasyPermissions.hasPermissions(
                applicationContext,
                Manifest.permission.ACCESS_FINE_LOCATION,
                Manifest.permission.ACCESS_COARSE_LOCATION,
                Manifest.permission.WRITE_EXTERNAL_STORAGE,
                Manifest.permission.READ_EXTERNAL_STORAGE,
                Manifest.permission.BLUETOOTH, // Required for older Android versions
                Manifest.permission.BLUETOOTH_ADMIN, // Required for managing Bluetooth
            ) || (
                Build.VERSION.SDK_INT >= Build.VERSION_CODES.S &&
                    !EasyPermissions.hasPermissions(
                        applicationContext,
                        Manifest.permission.BLUETOOTH_SCAN, // Required for Android 12+
                        Manifest.permission.BLUETOOTH_CONNECT, // Required for Android 12+
                    )
            )
        ) {
            EasyPermissions.requestPermissions(
                this,
                getString(R.string.easy_perms_rationale),
                1,
                Manifest.permission.ACCESS_COARSE_LOCATION,
                Manifest.permission.ACCESS_FINE_LOCATION,
                Manifest.permission.WRITE_EXTERNAL_STORAGE,
                Manifest.permission.READ_EXTERNAL_STORAGE,
                Manifest.permission.BLUETOOTH,
                Manifest.permission.BLUETOOTH_ADMIN,
                // Conditionally request Bluetooth permissions for Android 12 and above
                *if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                    arrayOf(
                        Manifest.permission.BLUETOOTH_SCAN,
                        Manifest.permission.BLUETOOTH_CONNECT,
                    )
                } else {
                    arrayOf()
                },
            )
        }
        progressDialog =
            ProgressDialog(this).apply {
                setMessage("Configuring Terminal, Please wait")
                setCancelable(false)
            }

        val mid = Singletons.getConfigData()?.cardAcceptorIdCode ?: ""
        requestNarration =
            if (Singletons.getCurrentlyLoggedInUser()?.terminal_id?.isNotEmpty() == true) {
                "$mid:${Singletons.getCurrentlyLoggedInUser()?.terminal_id}:${UtilityParam.STRING_MPGS_TAG}"
            } else {
                ""
            }

        this.supportFragmentManager.setFragmentResultListener(
            STRING_QR_READ_RESULT_REQUEST_KEY,
            this,
        ) { _, bundle ->
            qrData = bundle.getParcelable(STRING_QR_READ_RESULT_BUNDLE_KEY)
            qrData?.let {
                if (it.card_scheme.contains(
                        "verve",
                        true,
                    )
                ) {
                    showAmountDialogForVerveCard()
                } else {
                    showAmountDialog(it)
                }
            }
        }

        supportFragmentManager.setFragmentResultListener(
            AppConstants.PIN_BLOCK_RK,
            this,
        ) { _, bundle ->
            val pinFromPinBlockDialog = bundle.getString(AppConstants.PIN_BLOCK_BK)
            pinFromPinBlockDialog?.let {
                qrData?.let { it1 -> formatPinAndSendToServer(it, amountToPayInDouble, it1) }
            }
        }

        resultLauncher =
            registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
                if (result.resultCode == Activity.RESULT_OK) {
                    val data: Intent? = result.data
                    data?.let {
                        if (it.hasExtra("RESULT_CODE_TEXT")) {
                            val text = it.getStringExtra("RESULT_CODE_TEXT")
                            Toast.makeText(
                                this,
                                getString(R.string.qr_scanned),
                                Toast.LENGTH_SHORT,
                            ).show()
                            text?.let { qrCardData ->
                                val qrReadResult =
                                    Gson().fromJson(qrCardData, QrCardReadResultModel::class.java)
                                val scannedData =
                                    QrScannedDataModel(card_scheme = "", qrReadResult.data)
//                                showAmountDialog(qrReadResult.data)
                            }
                        }
                    }
                } else {
                    Toast.makeText(this, "scan failed", Toast.LENGTH_SHORT).show()
                }
            }
        alertDialog =
            AlertDialog.Builder(this).run {
                setCancelable(false)
                title = "Message"
                setPositiveButton("Retry") { dialog, _ ->
                    NetPosTerminalConfig.init(applicationContext)
                    dialog.dismiss()
                }
                setNegativeButton("Cancel") { dialog, _ ->
                    Toast.makeText(applicationContext, "Configuration cancelled", Toast.LENGTH_LONG)
                        .show()
                    dialog.dismiss()
                }
                create()
            }
        val user = gson.fromJson(Prefs.getString(PREF_USER, ""), User::class.java)
        if (user == null) {
            val intent = Intent(this, AuthenticationActivity::class.java)
            this.startActivity(intent)
            Toast.makeText(this, getString(R.string.kindly_login), Toast.LENGTH_LONG).show()
            return
        }
        binding.dashboardHeader.username.text = user.business_name
        binding.dashboardBottomNavigationView.setOnItemSelectedListener(
            object :
                NavigationBarView.OnItemSelectedListener {
                override fun onNavigationItemSelected(item: MenuItem): Boolean {
                    when (item.itemId) {
                        R.id.homeFragment -> {
                            showFragment(DashboardFragment(), "Dashboard")
                        }
                        R.id.pay -> {
                            showFragment(TransactionsFragment(), "Transactions")
                        }
                        R.id.scanQR -> {
                            val dialogView = LayoutInflater.from(this@MainActivity).inflate(R.layout.dialog_layout, null)
                            val dialog =
                                AlertDialog.Builder(this@MainActivity)
                                    .setView(dialogView)
                                    .create()
                            dialog.window?.setBackgroundDrawableResource(android.R.color.transparent)

                            // Access items
                            val item1 = dialogView.findViewById<TextView>(R.id.item1)
                            val item2 = dialogView.findViewById<TextView>(R.id.item2)

                            // Set click listeners
                            item1.setOnClickListener {
                                // Navigate to Destination 1
                                showFragment(ScanQrCodeLandingPage(), "ScanQRLandingPage")
                                dialog.dismiss() // Dismiss the dialog if needed
                            }

                            item2.setOnClickListener {
                                // Navigate to Destination 2
                                showFragment(DisplayQrFragment(), "DisplayQR")
                                dialog.dismiss() // Dismiss the dialog if needed
                            }

                            dialog.show()
                        }
                        R.id.payment -> {
                            showFragment(PaymentFragment(), "Payments")
                        }
//                        R.id.endOfDay -> {
//                            showCalendarDialog()
//                        }
                        else -> {
                            if (BuildConfig.FLAVOR.contains("polaris")) {
                                showFragment(SettingsFragment(), "Settings")
                            } else {
                                showCalendarDialog()
                            }
                        }
                    }
                    return true
                }
            },
        )

        binding.dashboardHeader.logout.setOnClickListener {
            logoutConfirmation()
        }
        if (checkBillsPaymentToken().not()) {
            getBillsToken(StormApiClient.getInstance())
        }
        showFragment(DashboardFragment(), DashboardFragment::class.java.simpleName)
        viewModel.enableNfcForegroundDispatcher.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                if (it.enable && (it.cardType == NfcPaymentType.VISA || it.cardType == NfcPaymentType.VERVE || it.cardType == NfcPaymentType.MASTERCARD)) {
                    stopNfcPayment()
                    startNfcPayment(it)
                } else if (!it.enable && it.cardType == null) {
                    stopNfcPayment()
                }
            }
        }
        viewModel.showAccountTypeDialog.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    showSelectAccountTypeDialog()
                }
            }
        }
        viewModel.showPinPadDialog.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                Timber.e("show pin dialog")
                showPinDialog(it)
            }
        }
        dialogContactlessReaderBinding.cancel.setOnClickListener {
            waitingDialog.dismiss()
        }
        viewModel.showWaitingDialog.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                dialogContactlessReaderBinding.contactlessHeader.text =
                    getString(R.string.nfc_message, it.cardScheme)
                dialogContactlessReaderBinding.contactlessHeader.highlightTexts(
                    NfcPaymentType.MASTERCARD.cardScheme,
                    NfcPaymentType.VISA.cardScheme,
                    NfcPaymentType.VERVE.cardScheme,
                )
                dialogContactlessReaderBinding.cardScheme.setImageResource(it.icon)
                waitingDialog.show()
                return@observe
            }
            waitingDialog.dismissIfShowing()
        }
        viewModel.smsSent.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                receiptDialogBinding.progress.visibility = View.GONE
                receiptDialogBinding.sendButton.isEnabled = true
                if (it) {
                    Toast.makeText(this, "Sent Receipt", Toast.LENGTH_LONG).show()
                    receiptDialogBinding.telephone.text?.clear()
                    receiptAlertDialog.dismiss()
                } else {
                    Toast.makeText(
                        this,
                        getString(R.string.error_sending_receipt),
                        Toast.LENGTH_LONG,
                    ).show()
                    receiptDialogBinding.telephone.text?.clear()
                    receiptAlertDialog.dismiss()
                }
            }
        }
        receiptAlertDialog =
            AlertDialog.Builder(this).setCancelable(false).apply {
                setView(receiptDialogBinding.root)
                receiptDialogBinding.apply {
                    closeBtn.setOnClickListener {
                        receiptDialogBinding.telephone.text?.clear()
                        receiptAlertDialog.dismiss()
                        enableNFCReader()
                    }
                    sendButton.setOnClickListener {
                        enableNFCReader()
                        if (receiptDialogBinding.telephone.text.toString().length != 11) {
                            Toast.makeText(
                                this@MainActivity,
                                "Please enter a valid phone number",
                                Toast.LENGTH_LONG,
                            ).show()
                            return@setOnClickListener
                        }
                        viewModel.sendSmS(
                            receiptDialogBinding.transactionContent.text.toString(),
                            receiptDialogBinding.telephone.text.toString(),
                        )
                        progress.visibility = View.VISIBLE
                        sendButton.isEnabled = false
                    }
                }
            }.create()
        receiptAlertDialog.window?.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_PAN)
        viewModel.showQrPrintDialog.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                val qrTransaction = Gson().fromJson(it, QrTransactionResponseFinalModel::class.java)
                printQrTransactionUtil(qrTransaction)
            }
        }

        waitingDialog.setOnDismissListener {
            viewModel.stopNfcReader()
            waitingDialog.dismiss()
        }

        FirebaseMessaging.getInstance().token.addOnCompleteListener(
            OnCompleteListener { task ->
                if (!task.isSuccessful) {
                    return@OnCompleteListener
                }
                val token = task.result // this is the token retrieved
                // Log.d("FCM", token)
            },
        )
        qrAmoutDialogBinding =
            QrAmoutDialogBinding.inflate(layoutInflater, null, false).apply {
                executePendingBindings()
                lifecycleOwner = this@MainActivity
            }

        verveCardQrAmountDialogBinding =
            LayoutVerveCardQrAmountDialogBinding.inflate(layoutInflater, null, false).apply {
                executePendingBindings()
                lifecycleOwner = this@MainActivity
            }

        qrAmountDialog =
            AlertDialog.Builder(this).apply {
                setView(qrAmoutDialogBinding.root)
            }.create()

        qrAmountDialogForVerveCard =
            AlertDialog.Builder(this).apply {
                setView(verveCardQrAmountDialogBinding.root)
            }.create()
        deviceNotSupportedAlertDialog =
            AlertDialog.Builder(this).setTitle(getString(R.string.nfc_message_title))
                .setCancelable(false)
                .setMessage(getString(R.string.device_doesnt_have_nfc))
                .setNegativeButton(getString(R.string.close)) { dialog, _ ->
                    dialog.dismiss()
                    // finish()
                }.setPositiveButton(getString(R.string.nfc)) { dialog, _ ->
                    showFragment(RequestNfcFragment(), "RequestNfc")
                }.create()
        val terminalId = Singletons.getCurrentlyLoggedInUser()?.terminal_id.toString()
        val userName = Singletons.getCurrentlyLoggedInUser()?.netplus_id.toString()
        firebaseInstance = FirebaseMessaging.getInstance()
        getFireBaseToken(firebaseInstance) {
            sendTokenToBackend(it, terminalId, userName)
        }

        binding.dashboardHeader.merchantDetails.setOnClickListener {
            copyText()
        }

        verveNfcListener = NfcVerveProvider(this).verveNfcListener
        setUpViewModelForVerve()
        setUpObserversForVerveTransaction()
        viewModel.startVerveTransaction.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    mVerveTransactionViewModel.startTransaction(this)
                } else {
                    mVerveTransactionViewModel.cancelTransaction()
                }
            }
        }

        salesViewModel.getCardData.observe(this) { event ->
            event.getContentIfNotHandled()?.let { shouldGetCardData ->
                if (shouldGetCardData) {
                    Log.d("OK_AH", "YEPP")
                    enableNFCReader()
                    showCardDialog(
                        this,
                        this,
                        this,
                        selectCardDialog,
                        cardTypeBinding,
                    ).observe(this) { event ->
                        event.getContentIfNotHandled()?.let {
                            Timber.e(it.toString())
                            nfcCardReaderViewModel.initiateNfcPayment(
                                salesViewModel.amountLong,
                                salesViewModel.cashbackLong,
                                it,
                            )
                        }
                    }
                    showCardDialog(
                        this,
                        this,
                        this,
                        selectCardDialog,
                        cardTypeBinding,
                    ).removeObservers(this)
                }
            }
        }
    }

//    override fun onResume() {
//        super.onResume()
//        getIntentDataSentInFromFirebaseService()
//        handlePdfReceiptPrinting()
//        fetchUnreadNotifications()
//        notificationsLayout.setOnClickListener {
//            showFragment(NotificationFragment(), getString(R.string.notification))
//        }
//    }

    override fun onResume() {
        super.onResume()
        getIntentDataSentInFromFirebaseService()
        handlePdfReceiptPrinting()
        fetchUnreadNotifications()
        notificationsLayout.setOnClickListener {
            showFragment(NotificationFragment(), getString(R.string.notification))
        }
        enableNFCReader()
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray,
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults, this)
    }

    override fun onPermissionsGranted(
        requestCode: Int,
        perms: MutableList<String>,
    ) {
        getLocationUpdates()
    }

    override fun onPermissionsDenied(
        requestCode: Int,
        perms: MutableList<String>,
    ) {
    }

    @SuppressLint("MissingPermission")
    private fun getLocationUpdates() {
        val locationManager = this.getSystemService(LOCATION_SERVICE) as LocationManager
        val locationListener: LocationListener =
            object : LocationListener {
                override fun onLocationChanged(location: Location) {
                    // Called when a new location is found by the network location provider.
                    location.let {
                        Prefs.putString(PREF_LAST_LOCATION, "lat:${it.latitude} long:${it.longitude}")
                    }
                }

                @Deprecated(
                    "Deprecated from api",
                    ReplaceWith("Check documentation, mfpm"),
                )
                override fun onStatusChanged(
                    provider: String?,
                    status: Int,
                    extras: Bundle?,
                ) {
                }

                override fun onProviderEnabled(provider: String) {
                    Timber.e("On Provider enabled: $provider")
                }

                override fun onProviderDisabled(provider: String) {
                    Timber.e("On Provider disabled $provider")
                }
            }
        locationManager.requestLocationUpdates(
            LocationManager.GPS_PROVIDER,
            0L,
            0f,
            locationListener,
        )
        locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER)
    }

    private fun showPinDialog(pan: String) {
        PasswordDialog(
            this,
            pan,
            object : PasswordDialog.Listener {
                override fun onConfirm(pinBlock: String?) {
                    viewModel.setPinBlock(pinBlock)
                }

                override fun onError(message: String?) {
                    Toast.makeText(this@MainActivity, message, Toast.LENGTH_SHORT).show()
                    viewModel.setIccCardHelperLiveData(ICCCardHelper(error = Throwable(message)))
                }
            },
        ).showDialog()
    }

    private fun showFragment(
        targetFragment: Fragment,
        className: String,
    ) {
        try {
            supportFragmentManager.beginTransaction().apply {
                replace(R.id.container_main, targetFragment, className)
                setCustomAnimations(R.anim.right_to_left, android.R.anim.fade_out)
                commit()
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private fun showSelectAccountTypeDialog() {
        var dialogSelectAccountTypeBinding: DialogSelectAccountTypeBinding
        val dialog =
            AlertDialog.Builder(this).apply {
                dialogSelectAccountTypeBinding =
                    DialogSelectAccountTypeBinding.inflate(
                        LayoutInflater.from(context),
                        null,
                        false,
                    ).apply {
                        executePendingBindings()
                    }
                setView(dialogSelectAccountTypeBinding.root)
                setCancelable(false)
            }.create()
        dialogSelectAccountTypeBinding.accountTypes.setOnCheckedChangeListener { _, checkedId ->
            val accountType =
                when (checkedId) {
                    R.id.savings_account -> IsoAccountType.SAVINGS
                    R.id.current_account -> IsoAccountType.CURRENT
                    R.id.credit_account -> IsoAccountType.CREDIT
                    R.id.bonus_account -> IsoAccountType.BONUS_ACCOUNT
                    R.id.investment_account -> IsoAccountType.INVESTMENT_ACCOUNT
                    R.id.universal_account -> IsoAccountType.UNIVERSAL_ACCOUNT
                    else -> IsoAccountType.DEFAULT_UNSPECIFIED
                }
            dialog.dismiss()
            Timber.e("$checkedId")
            viewModel.iccCardHelper.apply {
                this.accountType = accountType
            }
            viewModel.finishNfcReading()
            viewModel.enableNfcForegroundDispatcher.removeObservers(this)
        }
        dialogSelectAccountTypeBinding.cancelButton.setOnClickListener {
            dialog.dismiss()
            viewModel.setIccCardHelperLiveData(ICCCardHelper(error = Throwable("Operation was canceled")))
        }
        dialog.show()
    }

//    override fun onTagDiscovered(tag: Tag?) {
//        tag?.let {
//            if (it.toString() == NFC_A_TAG || it.toString() == NFC_B_TAG) {
//                runOnUiThread {
//                    handleProvider(tag)
//                    nfcAdapter?.disableReaderMode(this)
//                }
//            }
//        }
//    }

    override fun onTagDiscovered(tag: Tag) {
        tag?.let {
            if (it.toString() == NFC_A_TAG || it.toString() == NFC_B_TAG) {
                runOnUiThread {
                    val techList = tag.techList
                    var isoDepInTechList = false
                    for (s in techList) {
                        if (s == "android.nfc.tech.IsoDep") isoDepInTechList = true
                    }

                    if (isoDepInTechList) {
                        val nfc: IsoDep? = IsoDep.get(tag)
                        if (nfc != null) {
                            try {
                                nfc.connect()
                                val ppse = "2PAY.SYS.DDF01".toByteArray(StandardCharsets.UTF_8)
                                val selectPpseCommand: ByteArray = selectApdu(ppse)
                                val selectPpseResponse = nfc.transceive(selectPpseCommand)
                                val selectPpseResponseOk: ByteArray? = checkResponse(selectPpseResponse)

                                if (selectPpseResponseOk != null) {
                                    val parser = BerTlvParser()
                                    val tlv4Fs: BerTlvs = parser.parse(selectPpseResponseOk)

                                    val tag4fList = tlv4Fs.findAll(BerTag(0x4F))
                                    if (tag4fList.isNotEmpty()) {
                                        for (i4f in tag4fList.indices) {
                                            val tlv4f = tag4fList[i4f]
                                            val tlv4fBytes = tlv4f.bytesValue
                                            val caid = bytesToHexNpe(tlv4fBytes)
                                            returnAid(caid.toString())
                                            if (caid.toString() == "a0000000031010") {
                                                // Detected Visa tag
                                                isVisa = true
                                                handleProvider(tag) // Enable Visa SDK
                                            } else {
                                                // Disconnect non-Visa tag immediately
                                                isVisa = false
                                                startEndSequence(nfc)
                                            }
                                        }
                                    }
                                }
                            } catch (e: IOException) {
                                startEndSequence(nfc) // Disconnect on error
                            }
                        }
                    }
                }
            }
        }
    }

    private fun selectApdu(data: ByteArray): ByteArray {
        val commandApdu = ByteArray(6 + data.size)
        commandApdu[0] = 0x00.toByte() // CLA
        commandApdu[1] = 0xA4.toByte() // INS
        commandApdu[2] = 0x04.toByte() // P1
        commandApdu[3] = 0x00.toByte() // P2
        commandApdu[4] = (data.size and 0x0FF).toByte() // Lc
        System.arraycopy(data, 0, commandApdu, 5, data.size)
        commandApdu[commandApdu.size - 1] = 0x00.toByte() // Le
        return commandApdu
    }

    private fun checkResponse(data: ByteArray): ByteArray? {
        // simple sanity check
        if (data.size < 5) {
            return null
        } // not ok
        val status =
            0xff and data[data.size - 2].toInt() shl 8 or (0xff and data[data.size - 1].toInt())
        return if (status != 0x9000) {
            null
        } else {
            Arrays.copyOfRange(data, 0, data.size - 2)
        }
    }

    // section for conversion utils
    fun bytesToHexNpe(bytes: ByteArray?): String? {
        return if (bytes != null) {
            val result = java.lang.StringBuilder()
            for (b in bytes) result.append(
                Integer.toString((b.toInt() and 0xff) + 0x100, 16).substring(1),
            )
            result.toString()
        } else {
            ""
        }
    }

    private fun showWirelessSettings() {
        Toast.makeText(this, "You need to enable NFC", Toast.LENGTH_SHORT).show()
        val intent = Intent(Settings.ACTION_WIRELESS_SETTINGS)
        startActivity(intent)
    }

    override fun onPause() {
        super.onPause()
        if (mNfcAdapter != null) mNfcAdapter?.disableReaderMode(this)
    }

    private fun vibrate() {
        // Initialize the Vibrator
        val v = getSystemService(VIBRATOR_SERVICE) as Vibrator
        if (v != null && v.hasVibrator()) { // Check if the device has a vibrator
            // Create a vibration pattern with timings and amplitude
            val timings = longArrayOf(0, 200) // 200 ms vibration
            val amplitudes = intArrayOf(0, VibrationEffect.DEFAULT_AMPLITUDE) // Default amplitude
            // Vibrate with the pattern once (-1 to not repeat)
            val effect = VibrationEffect.createWaveform(timings, amplitudes, -1)
            v.vibrate(effect)
        }
    }

    private fun startEndSequence(nfc: IsoDep?) {
        try {
            // Close the NFC connection if it exists
            nfc?.close()
        } catch (e: IOException) {
            Timber.e(e, "Failed to close NFC connection")
        } finally {
            // Reset processing state and other flags
            isVisa = false
            isProcessing = false
            // Optional: Provide feedback to the user
            Log.d("NFC", "NFC tag processing sequence ended.")
        }
    }

    private fun getPermissionAndCreatePdf(view: ViewDataBinding) {
        genericPermissionHandler(
            this@MainActivity,
            this,
            Manifest.permission.WRITE_EXTERNAL_STORAGE,
            WRITE_PERMISSION_REQUEST_CODE,
            getString(R.string.storage_permission_rationale_for_download),
        ) {
            receiptPdf = createPdf(view, this)
        }
    }

    private fun downloadPflImplForQrTransaction(qrTransaction: QrTransactionResponseFinalModel) {
        initViewsForPdfLayout(
            qrPdfView,
            qrTransaction,
        )
        getPermissionAndCreatePdf(qrPdfView)
    }

    private fun printQrTransactionUtil(qrTransaction: QrTransactionResponseFinalModel) {
        when (Prefs.getString(PREF_PRINTER_SETTINGS, "nothing_is_there")) {
            PREF_VALUE_PRINT_DOWNLOAD -> {
                receiptPdf = createPdf(binding, this)
                receiptAlertDialog.apply {
                    receiptDialogBinding.sendButton.text = getString(R.string.download)
                    receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
//                    receiptDialogBinding.sendButton.setOnClickListener {
//                        downloadPflImplForQrTransaction(qrTransaction)
//                        showSnackBar(
//                            binding.root,
//                            getString(R.string.fileDownloaded),
//                        )
//                    }
//                    receiptDialogBinding.shareButton.setOnClickListener {
//                        sharePdf(receiptPdf, this@MainActivity)
//                    }
                    receiptDialogBinding.sendButton.setOnClickListener { view ->
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        showSnackBar(
                            binding.root,
                            getString(R.string.fileDownloaded),
                        )
                    }
                    receiptDialogBinding.shareButton.setOnClickListener {
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        sharePdf(receiptPdf, this@MainActivity)
                    }
                }
            }
            PREF_VALUE_PRINT_SHARE -> {
                receiptPdf = createPdf(binding, this)
                receiptAlertDialog.apply {
                    receiptDialogBinding.sendButton.text = getString(R.string.share)
                    receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
//                    receiptDialogBinding.sendButton.setOnClickListener {
//                        downloadPflImplForQrTransaction(qrTransaction)
//                    }
//                    receiptDialogBinding.shareButton.setOnClickListener {
//                        sharePdf(receiptPdf, this@MainActivity)
//                    }
                    receiptDialogBinding.sendButton.setOnClickListener { view ->
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        showSnackBar(
                            binding.root,
                            getString(R.string.fileDownloaded),
                        )
                    }
                    receiptDialogBinding.shareButton.setOnClickListener {
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        sharePdf(receiptPdf, this@MainActivity)
                    }
                }
            }
            PREF_VALUE_PRINT_SMS -> {
                receiptPdf = createPdf(binding, this)
                receiptAlertDialog.apply {
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
                    receiptDialogBinding.sendButton.setOnClickListener {
                        if (receiptDialogBinding.telephone.text.toString().length != 11) {
                            Toast.makeText(
                                this@MainActivity,
                                getString(R.string.enter_valid_number),
                                Toast.LENGTH_LONG,
                            ).show()
                            return@setOnClickListener
                        }
                        viewModel.sendSmS(
                            receiptDialogBinding.transactionContent.text.toString(),
                            receiptDialogBinding.telephone.text.toString(),
                        )
                        receiptDialogBinding.progress.visibility = View.VISIBLE
//                        receiptDialogBinding.sendButton.isEnabled = false
                    }
//                    receiptDialogBinding.shareButton.setOnClickListener {
//                        sharePdf(receiptPdf, this@MainActivity)
//                    }
                    receiptDialogBinding.sendButton.setOnClickListener { view ->
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        showSnackBar(
                            binding.root,
                            getString(R.string.fileDownloaded),
                        )
                    }
                    receiptDialogBinding.shareButton.setOnClickListener {
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        sharePdf(receiptPdf, this@MainActivity)
                    }
                }
            }
            else -> {
                receiptPdf = createPdf(binding, this)
                receiptAlertDialog.apply {
                    receiptDialogBinding.sendButton.text = getString(R.string.download)
                    receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
//                    receiptDialogBinding.sendButton.setOnClickListener {
//                        downloadPflImplForQrTransaction(qrTransaction)
//                        showSnackBar(
//                            binding.root,
//                            getString(R.string.fileDownloaded),
//                        )
//                    }
//                    receiptDialogBinding.shareButton.setOnClickListener {
//                        downloadPflImplForQrTransaction(qrTransaction)
//                        sharePdf(receiptPdf, this@MainActivity)
//                    }
                    receiptDialogBinding.sendButton.setOnClickListener { view ->
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        showSnackBar(
                            binding.root,
                            getString(R.string.fileDownloaded),
                        )
                    }
                    receiptDialogBinding.shareButton.setOnClickListener {
                        cancel()
                        dismiss()
                        downloadPflImplForQrTransaction(qrTransaction)
                        sharePdf(receiptPdf, this@MainActivity)
                    }
                }
                receiptDialogBinding.apply {
                    progress.visibility = View.GONE
                    sendButton.isEnabled = true
                }
            }
        }
    }

//    private fun showCalendarDialog() {
//        val calendar = Calendar.getInstance()
//        DatePickerDialog(
//            this,
//            { _, i, i2, i3 ->
//                getEndOfDayTransactions(
//                    Calendar.getInstance().apply { set(i, i2, i3) }.timeInMillis,
//                ) {
//                    showEndOfDayBottomSheetDialog(it)
//                }
//            },
//            calendar.get(Calendar.YEAR),
//            calendar.get(Calendar.MONTH),
//            calendar.get(Calendar.DAY_OF_MONTH),
//        ).show()
//    }
//
//    private fun getEndOfDayTransactions(
//        timestamp: Long? = null,
//        actionToTake: (transactions: List<TransactionResponse>) -> Unit,
//    ) {
//        Toast.makeText(this, getString(R.string.please_wait), Toast.LENGTH_LONG).show()
//    val livedata =
//        AppDatabase.getDatabaseInstance(this).transactionResponseDao().getEndOfDayTransaction(
//            getBeginningOfDay(timestamp),
//            getEndOfDayTimeStamp(timestamp),
//            NetPosTerminalConfig.getTerminalId(),
//        )
//        livedata.observe(this) {
//            actionToTake.invoke(it)
//            livedata.removeObservers(this)
//        }
//    }

    private fun showCalendarDialog() {
        val calendar = Calendar.getInstance()

        // Show a message or dialog title for the start date selection
        DatePickerDialog(
            this,
            { _, startYear, startMonth, startDay ->
                val startCalendar = Calendar.getInstance().apply { set(startYear, startMonth, startDay) }

                // Show a message or dialog title for the end date selection
                DatePickerDialog(
                    this,
                    { _, endYear, endMonth, endDay ->
                        val endCalendar = Calendar.getInstance().apply { set(endYear, endMonth, endDay) }
                        getEndOfDayTransactions(
                            startCalendar.timeInMillis,
                            endCalendar.timeInMillis,
                        ) {
                            showEndOfDayBottomSheetDialog(it)
                        }
                    },
                    calendar.get(Calendar.YEAR),
                    calendar.get(Calendar.MONTH),
                    calendar.get(Calendar.DAY_OF_MONTH),
                ).apply {
                    setTitle("Select End Date") // Setting a title for end date selection
                }.show()
            },
            calendar.get(Calendar.YEAR),
            calendar.get(Calendar.MONTH),
            calendar.get(Calendar.DAY_OF_MONTH),
        ).apply {
            setTitle("Select Start Date") // Setting a title for start date selection
        }.show()
    }

    private fun getEndOfDayTransactions(
        startTimestamp: Long,
        endTimestamp: Long,
        actionToTake: (transactions: List<TransactionResponse>) -> Unit,
    ) {
        Toast.makeText(this, getString(R.string.please_wait), Toast.LENGTH_LONG).show()
        val livedata =
            AppDatabase.getDatabaseInstance(this)
                .transactionResponseDao()
                .getTransactionsBetweenDates(
                    getBeginningOfDay(startTimestamp),
                    getEndOfDayTimeStamp(endTimestamp),
                    NetPosTerminalConfig.getTerminalId(),
                )
        livedata.observe(this) {
            actionToTake.invoke(it)
            livedata.removeObservers(this)
        }
    }

    private fun showEndOfDayBottomSheetDialog(transactions: List<TransactionResponse>) {
        val approvedList = transactions.filter { it.responseCode == "00" }
        val declinedList = transactions.filter { it.responseCode != "00" }

        // Calculate total amounts
        val approvedAmt = approvedList.sumOf { it.amount }
        val declinedAmt = declinedList.sumOf { it.amount }

        // Calculate total amounts
        val totalApprovedAmt = "${(divideLongBy100(approvedAmt)).formatCurrencyAmount("\u20A6")}\n"
        val totalDeclinedAmt = "${(divideLongBy100(declinedAmt)).formatCurrencyAmount("\u20A6")}\n"

        val endOfDay = LayoutPrintEndOfDayBinding.inflate(LayoutInflater.from(this), null, false)
        endOfDay.apply {
            approvedCount.text = approvedList.size.toString()
            declinedCount.text = declinedList.size.toString()
            totalApprovedAmount.text = totalApprovedAmt.toString()
            totalDeclinedAmount.text = totalDeclinedAmt.toString()
            totalTransactions.text =
                getString(R.string.total_transaction_count, transactions.size.toString())
            print.setOnClickListener {
                when (chipGroup.checkedChipId) {
                    R.id.print_approved -> approvedList
                    R.id.print_declined -> declinedList
                    else -> transactions
                }.apply {
                    if (isEmpty()) {
                        Toast.makeText(
                            this@MainActivity,
                            getString(R.string.no_transactions),
                            Toast.LENGTH_SHORT,
                        ).show()
                    }
                }
            }
        }
        val bottomSheet =
            BottomSheetDialog(this, R.style.SheetDialog).apply {
                dismissWithAnimation = true
                setCancelable(false)
                setContentView(endOfDay.root)
                show()
            }
        endOfDay.view.setOnClickListener {
            transactionViewModel.setEndOfDayList(transactions)
            bottomSheet.dismiss()
            showFragment(
                TransactionHistoryFragment.newInstance(HISTORY_ACTION_EOD),
                "Transaction History",
            )
        }
        endOfDay.closeButton.setOnClickListener {
            bottomSheet.dismiss()
        }
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
//                val qrDataToSendToBackend = PostQrToServerModel(
//                    it,
//                    qrData.data,
//                    merchantId = UtilityParam.STRING_MERCHANT_ID,
//                    naration = requestNarration,
//                )
                val qrDataToSendToBackend =
                    PostQrToServerModel(
                        it,
                        qrData.data,
                        merchantId = Singletons.getCurrentlyLoggedInUser()?.netplusPayMid!!,
                        naration = requestNarration,
                    )
                scanQrViewModel.setScannedQrIsVerveCard(false)
                scanQrViewModel.postScannedQrRequestToServer(qrDataToSendToBackend)
                observeServerResponseActivity(
                    this,
                    this,
                    scanQrViewModel.sendQrToServerResponse,
                    LoadingDialog(),
                    supportFragmentManager,
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
            qrPinBlock.show(supportFragmentManager, STRING_PIN_BLOCK_DIALOG_TAG)
        }
    }

    private fun handlePdfReceiptPrinting() {
        viewModel.showPrintDialog.observe(this) { event ->
            event.getContentIfNotHandled()?.let { result ->
                when (Prefs.getString(PREF_PRINTER_SETTINGS, "nothing_is_there")) {
                    PREF_VALUE_PRINT_DOWNLOAD -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.sendButton.text = getString(R.string.download)
                            receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                            receiptDialogBinding.transactionContent.text = result
                            show()
//                            receiptDialogBinding.sendButton.setOnClickListener {
//                                downloadPdfImpl()
//                                showSnackBar(
//                                    binding.root,
//                                    getString(R.string.fileDownloaded),
//                                )
//                            }
//                            receiptDialogBinding.shareButton.setOnClickListener {
//                                sharePdf(receiptPdf, this@MainActivity)
//                            }
                            receiptDialogBinding.sendButton.setOnClickListener { view ->
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                showSnackBar(
                                    binding.root,
                                    getString(R.string.fileDownloaded),
                                )
                            }
                            receiptDialogBinding.shareButton.setOnClickListener {
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                sharePdf(receiptPdf, this@MainActivity)
                            }
                        }
                    }
                    PREF_VALUE_PRINT_SMS -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.transactionContent.text = result
                            show()
                            receiptDialogBinding.sendButton.setOnClickListener {
                                if (receiptDialogBinding.telephone.text.toString().length != 11) {
                                    Toast.makeText(
                                        this@MainActivity,
                                        getString(R.string.enter_valid_number),
                                        Toast.LENGTH_LONG,
                                    ).show()
                                    return@setOnClickListener
                                }
                                viewModel.sendSmS(
                                    receiptDialogBinding.transactionContent.text.toString(),
                                    receiptDialogBinding.telephone.text.toString(),
                                )
                                receiptDialogBinding.progress.visibility = View.VISIBLE
//                                receiptDialogBinding.sendButton.isEnabled = false
                            }
//                            receiptDialogBinding.shareButton.setOnClickListener {
//                                sharePdf(receiptPdf, this@MainActivity)
//                            }
                            receiptDialogBinding.sendButton.setOnClickListener { view ->
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                showSnackBar(
                                    binding.root,
                                    getString(R.string.fileDownloaded),
                                )
                            }
                            receiptDialogBinding.shareButton.setOnClickListener {
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                sharePdf(receiptPdf, this@MainActivity)
                            }
                        }
                    }
                    PREF_VALUE_PRINT_SHARE -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.sendButton.text = getString(R.string.share)
                            receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                            receiptDialogBinding.transactionContent.text = result
                            show()
//                            receiptDialogBinding.sendButton.setOnClickListener {
//                                downloadPdfImpl()
//                            }
//                            receiptDialogBinding.shareButton.setOnClickListener {
//                                sharePdf(receiptPdf, this@MainActivity)
//                            }
                            receiptDialogBinding.sendButton.setOnClickListener { view ->
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                showSnackBar(
                                    binding.root,
                                    getString(R.string.fileDownloaded),
                                )
                            }
                            receiptDialogBinding.shareButton.setOnClickListener {
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                sharePdf(receiptPdf, this@MainActivity)
                            }
                        }
                    }
                    else -> {
                        receiptPdf = createPdfWithRRN(pdfView, this, result)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.sendButton.text =
                                getString(R.string.download)
                            receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                            receiptDialogBinding.transactionContent.text = result.replace("Card Owner: CUSTOMER", "")
                            Log.d("DIALOG_DATA", result)
                            show()
                            receiptDialogBinding.sendButton.setOnClickListener { view ->
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                showSnackBar(
                                    binding.root,
                                    getString(R.string.fileDownloaded),
                                )
                            }
                            receiptDialogBinding.shareButton.setOnClickListener {
                                cancel()
                                dismiss()
                                downloadPdfImpl()
                                sharePdf(receiptPdf, this@MainActivity)
                            }
                        }
                        receiptDialogBinding.apply {
                            progress.visibility = View.GONE
                            sendButton.isEnabled = true
                        }
                    }
                }
            }
        }
    }

    private fun downloadPdfImpl() {
        viewModel.lastPosTransactionResponse.value?.let {
            Log.d("SIT_HEREE", "$it")
            if (it.TVR.contains(IS_QR_TRANSACTION)) {
                val qrTransaction =
                    it.copy(TVR = it.TVR.replace(IS_QR_TRANSACTION, ""))
                        .mapTransactionResponseToQrTransaction()
                initViewsForPdfLayout(
                    qrPdfView,
                    qrTransaction,
                )
                getPermissionAndCreatePdf(qrPdfView)
            } else {
                initViewsForPdfLayout(
                    pdfView,
                    viewModel.lastPosTransactionResponse.value,
                )
                getPermissionAndCreatePdf(pdfView)
            }
        }
    }

    private fun initViews() {
        with(binding) {
            notificationsLayout = dashboardHeader.notification
            unreadNotificationsCountTv = dashboardHeader.unreadNotifications
        }
    }

    private fun fetchUnreadNotifications() {
        notificationViewModel.unreadNotifications.observe(this) { unreadMessages ->
            unreadMessages?.let {
                if (it.isEmpty()) {
                    notificationsLayout.visibility = View.INVISIBLE
                } else {
                    unreadNotificationsCountTv.text = it.size.toString()
                    notificationsLayout.visibility = View.VISIBLE
                }
            }
        }
    }

    fun addFragmentWithoutRemove(
        fragment: Fragment,
        containerViewId: Int = R.id.container_main,
        fragmentName: String? = null,
    ) {
        val tag = fragment.javaClass.simpleName
        supportFragmentManager.beginTransaction().apply {
            setCustomAnimations(
                R.anim.right_to_left,
                R.anim.left_to_right,
                R.anim.right_to_left,
                R.anim.left_to_right,
            )
            add(containerViewId, fragment, fragmentName)
            addToBackStack(tag)
        }.commit()
    }

    private fun sendTokenToBackend(
        token: String,
        terminalId: String,
        username: String,
    ) {
        if (isInternetAvailable(this)) {
            notificationModel.registerDeviceToken(token, terminalId, username)
        } else {
            Toast.makeText(this, "Please connect to the internet and relaunch", Toast.LENGTH_LONG).show()
        }
    }

    private fun getFireBaseToken(
        firebaseMessagingInstance: FirebaseMessaging,
        actionToPerformWithTheReceivedToken: (received: String) -> Unit,
    ) {
        firebaseMessagingInstance.token.addOnCompleteListener(
            OnCompleteListener { task ->
                if (!task.isSuccessful) {
                    return@OnCompleteListener
                }

                val token = task.result
                actionToPerformWithTheReceivedToken(token)
            },
        )
    }

    private fun formatPinAndSendToServer(
        pin: String,
        amountDouble: Double?,
        qrData: QrScannedDataModel,
    ) {
        val formattedPadding = RandomPurposeUtil.stringToBase64(pin).removeSuffix('\n'.toString())
        if (pin.length == 4) {
            amountDouble?.let {
                qrAmountDialogForVerveCard.cancel()
                val qrDataToSendToBackend =
                    PostQrToServerModel(
                        it,
                        qrData.data,
                        merchantId = UtilityParam.STRING_MERCHANT_ID,
                        padding = formattedPadding,
                        naration = requestNarration,
                    )
                scanQrViewModel.setScannedQrIsVerveCard(true)
                scanQrViewModel.saveTheQrToSharedPrefs(qrDataToSendToBackend.copy(orderId = AppConstants.getGUID()))
                scanQrViewModel.postScannedQrRequestToServer(qrDataToSendToBackend)
                observeServerResponseActivity(
                    this,
                    this,
                    scanQrViewModel.sendQrToServerResponseVerve,
                    LoadingDialog(),
                    supportFragmentManager,
                ) {
                    addFragmentWithoutRemove(
                        EnterOtpFragment(),
                    )
                }
            }
        }
    }

    private fun getIntentDataSentInFromFirebaseService() {
        intent?.action?.let { intentAction ->
            intent.getBooleanExtra(TAG_NOTIFICATION_RECEIVED_FROM_BACKEND, false)
                .let { intentExtra ->
                    if (intentAction == STRING_FIREBASE_INTENT_ACTION) {
                        if (intentExtra) {
                            if (receiptAlertDialog.isShowing) {
                                receiptAlertDialog.dismiss()
                            }
                            val currentDateTime = getCurrentDateTime()
                            getEndOfDayTransactions(
                                dateStr2Long(
                                    currentDateTime,
                                    "yyyy-MM-dd hh:mm a",
                                ),
                                dateStr2Long(
                                    currentDateTime,
                                    "yyyy-MM-dd hh:mm a",
                                ),
                            ) {
                                transactionViewModel.setEndOfDayList(it)
                                deviceNotSupportedAlertDialog.dismiss()
                                addFragmentWithoutRemove(
                                    TransactionHistoryFragment.newInstance(
                                        HISTORY_ACTION_EOD,
                                    ),
                                )
                            }
                        }
                    }
                }
        }
    }

    private fun copyText() {
        val clipboardManager = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val clip = ClipData.newPlainText("Text copied", copyAccountNumber)
        clipboardManager.setPrimaryClip(clip)
        Toast.makeText(this, "Account number copied", Toast.LENGTH_SHORT).show()
    }

    private fun generateMerchantDetails() {
        observeServerResponseActivity(
            this,
            this,
            scanQrViewModel.payByTransfer,
            LoadingDialog(),
            supportFragmentManager,
        ) {
            scanQrViewModel.payByTransfer.value?.data?.user?.let {
                binding.dashboardHeader.parentConstraintLayout.visibility = View.VISIBLE
                binding.dashboardHeader.merchantDetails.text = it.acctNumber
                binding.dashboardHeader.bankName.text = it.bank
                copyAccountNumber = it.acctNumber
                Log.d("CHECK_ACCOUNT", it.acctNumber)
                Prefs.putString(PREF_ACCOUNT_NUMBER, gson.toJson(it))
            }
        }
    }

    private fun setUpViewModelForVerve() {
        val transactionParameters = salesViewModel.setupTransactionForVerveSDK()
        mVerveTransactionViewModel =
            ViewModelProvider(
                this,
                TransactionViewModelFactory(applicationContext, verveNfcListener!!, transactionParameters),
            )[VerveTransactionViewModel::class.java]
    }

    private fun setUpObserversForVerveTransaction() {
        mVerveTransactionViewModel.onTransactionFinishedEvent
            .observe(this) { transactionFullDataDto: TransactionFullDataDto ->
                viewModel.doVerveCardTransaction(transactionFullDataDto)
            }
    }

    override fun onDialogDismissed() {
        selectCardDialog.dismiss()
    }

    private fun enableNFCReader() {
        if (mNfcAdapter != null) {
            if (!mNfcAdapter!!.isEnabled) showWirelessSettings()
            Log.d("NFC_ENABLEDOKK", mNfcAdapter!!.isEnabled.toString())
            val options = Bundle()
            // Work around for some broken Nfc firmware implementations that poll the card too fast
            options.putInt(NfcAdapter.EXTRA_READER_PRESENCE_CHECK_DELAY, 250)
            // Enable ReaderMode for all types of card and disable platform sounds
            // the option NfcAdapter.FLAG_READER_SKIP_NDEF_CHECK is NOT set
            // to get the data of the tag after reading
            mNfcAdapter!!.enableReaderMode(
                this@MainActivity,
                this@MainActivity,
                NfcAdapter.FLAG_READER_NFC_A or NfcAdapter.FLAG_READER_NFC_B,
                null,
            )
        }
    }
}

interface DialogDismissListener {
    fun onDialogDismissed()
}
