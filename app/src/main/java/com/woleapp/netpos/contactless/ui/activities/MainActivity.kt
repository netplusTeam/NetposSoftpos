@file:Suppress("DEPRECATION")

package com.woleapp.netpos.contactless.ui.activities

import android.Manifest
import android.annotation.SuppressLint
import android.app.Activity
import android.app.DatePickerDialog
import android.app.ProgressDialog
import android.content.DialogInterface
import android.content.Intent
import android.content.IntentFilter
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.nfc.NfcAdapter
import android.nfc.Tag
import android.nfc.tech.IsoDep
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.MenuItem
import android.view.View
import android.view.WindowManager
import android.widget.Toast
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import androidx.databinding.ViewDataBinding
import androidx.fragment.app.Fragment
import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.utils.IsoAccountType
import com.google.android.gms.tasks.OnCompleteListener
import com.google.android.material.bottomsheet.BottomSheetDialog
import com.google.android.material.navigation.NavigationBarView
import com.google.firebase.messaging.FirebaseMessaging
import com.google.gson.Gson
import com.netpluspay.netposbarcodesdk.RESULT_CODE_TEXT
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
import com.woleapp.netpos.contactless.receivers.BatteryReceiver
import com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc.NFCManager.READER_FLAGS
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
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getCurrentDateTime
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponseActivity
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.showSnackBar
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.viewmodels.NfcCardReaderViewModel
import com.woleapp.netpos.contactless.viewmodels.NotificationViewModel
import com.woleapp.netpos.contactless.viewmodels.ScanQrViewModel
import com.woleapp.netpos.contactless.viewmodels.TransactionsViewModel
import dagger.hilt.android.AndroidEntryPoint
import pub.devrel.easypermissions.EasyPermissions
import timber.log.Timber
import java.io.File
import java.util.*

@Suppress("DEPRECATION")
@AndroidEntryPoint
class MainActivity : AppCompatActivity(), EasyPermissions.PermissionCallbacks,
    NfcAdapter.ReaderCallback {

    private lateinit var receiptPdf: File
    private var progressDialog: ProgressDialog? = null
    private lateinit var alertDialog: AlertDialog
    private lateinit var binding: ActivityMainBinding
    private lateinit var pdfView: LayoutPosReceiptPdfBinding
    private lateinit var qrPdfView: LayoutQrReceiptPdfBinding
    private lateinit var dialogContactlessReaderBinding: DialogContatclessReaderBinding
    private val viewModel by viewModels<NfcCardReaderViewModel>()
    private val transactionViewModel by viewModels<TransactionsViewModel>()
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
    private lateinit var qrAmountDialog: androidx.appcompat.app.AlertDialog
    private lateinit var qrAmountDialogForVerveCard: androidx.appcompat.app.AlertDialog
    private val scanQrViewModel by viewModels<ScanQrViewModel>()
    private val qrPinBlock: QrPasswordPinBlockDialog = QrPasswordPinBlockDialog()
    private var amountToPayInDouble: Double? = 0.0
    private var qrData: QrScannedDataModel? = null
    private val notificationModel: NotificationViewModel by viewModels()
    private lateinit var firebaseInstance: FirebaseMessaging
    private lateinit var deviceNotSupportedAlertDialog: AlertDialog



    override fun onStart() {
        super.onStart()
        // LocalBroadcastManager.getInstance(this).registerReceiver(receiver, IntentFilter(CONFIGURATION_ACTION))
        when ( // NetPosTerminalConfig.isConfigurationInProcess -> showProgressDialog()
            NetPosTerminalConfig.configurationStatus) {
            -1 -> NetPosTerminalConfig.init(
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

    private fun startNfcPayment() {
        nfcAdapter?.enableReaderMode(
            this,
            this,
            READER_FLAGS,
            Bundle(),
        )
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
        Timber.e("resolve intent")
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
            mTagCom.connect()
            val logger = StringBuilder()
            val nfcTransReceiver = LiveNfcTransReceiver(logger, mTagCom)
            viewModel.doVisaTransaction(nfcTransReceiver, contactlessKernel)
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
        pdfView = LayoutPosReceiptPdfBinding.inflate(layoutInflater)
        qrPdfView = LayoutQrReceiptPdfBinding.inflate(layoutInflater)
        NetPosApp.INSTANCE.initMposLibrary(this)
        binding = DataBindingUtil.setContentView(this, R.layout.activity_main)
        dialogContactlessReaderBinding =
            DialogContatclessReaderBinding.inflate(layoutInflater).apply {
                executePendingBindings()
            }
        waitingDialog = AlertDialog.Builder(this).apply {
            setView(dialogContactlessReaderBinding.root)
            // setCancelable(false)
        }.create()
        receiptDialogBinding = DialogTransactionResultBinding.inflate(layoutInflater, null, false)
            .apply { executePendingBindings() }
        if (!EasyPermissions.hasPermissions(
                applicationContext,
                Manifest.permission.ACCESS_FINE_LOCATION,
                Manifest.permission.ACCESS_COARSE_LOCATION,
                Manifest.permission.WRITE_EXTERNAL_STORAGE,
                Manifest.permission.READ_EXTERNAL_STORAGE,
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
            )
        }
        progressDialog = ProgressDialog(this).apply {
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
            qrData = bundle.getParcelable<QrScannedDataModel>(STRING_QR_READ_RESULT_BUNDLE_KEY)
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
                        if (it.hasExtra(RESULT_CODE_TEXT)) {
                            val text = it.getStringExtra(RESULT_CODE_TEXT)
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
        alertDialog = AlertDialog.Builder(this).run {
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
        binding.dashboardHeader.username.text = user.business_name
        binding.dashboardBottomNavigationView.setOnItemSelectedListener(object :
            NavigationBarView.OnItemSelectedListener {
            override fun onNavigationItemSelected(item: MenuItem): Boolean {
                when (item.itemId) {
                    R.id.homeFragment -> {
                        showFragment(DashboardFragment(), "Dashboard")
                    }
                    R.id.transaction -> {
                        showFragment(TransactionsFragment(), "Transactions")
                    }
                    R.id.scanQR -> {
                        showFragment(ScanQrCodeLandingPage(), "ScanQRLandingPage")
                    }
                    R.id.endOfDay -> {
                        showFragment(TransactionsFragment(), "Transactions")
                        showCalendarDialog()
                    }
                    else -> {
                        if (BuildConfig.FLAVOR.contains("polaris")) {
                            showFragment(SettingsFragment(), "Settings")
                        } else {
                            showFragment(DisplayQrFragment(), "DisplayQR")
                        }
                    }
                }
                return true
            }
        })

        binding.dashboardHeader.logout.setOnClickListener {
            logoutConfirmation()
        }
        if (checkBillsPaymentToken().not()) {
            getBillsToken(StormApiClient.getInstance())
        }
        showFragment(DashboardFragment(), DashboardFragment::class.java.simpleName)
        viewModel.enableNfcForegroundDispatcher.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    startNfcPayment()
                } else {
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
        viewModel.showWaitingDialog.observe(this) { event ->
            event.getContentIfNotHandled()?.let {
                dialogContactlessReaderBinding.contactlessHeader.text =
                    getString(R.string.nfc_message, it.cardScheme)
                dialogContactlessReaderBinding.contactlessHeader.highlightTexts(
                    NfcPaymentType.MASTERCARD.cardScheme,
                    NfcPaymentType.VISA.cardScheme,
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
        receiptAlertDialog = AlertDialog.Builder(this).setCancelable(false).apply {
            setView(receiptDialogBinding.root)
            receiptDialogBinding.apply {
                closeBtn.setOnClickListener {
                    receiptDialogBinding.telephone.text?.clear()
                    receiptAlertDialog.dismiss()
                }
                sendButton.setOnClickListener {
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
                    Log.d("PHONENUMBER", receiptDialogBinding.transactionContent.text.toString())
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
        }

        FirebaseMessaging.getInstance().token.addOnCompleteListener(
            OnCompleteListener { task ->
                if (!task.isSuccessful) {
                    return@OnCompleteListener
                }
                val token = task.result // this is the token retrieved
                Log.d("FCM", token)
            },
        )
        qrAmoutDialogBinding = QrAmoutDialogBinding.inflate(layoutInflater, null, false).apply {
            executePendingBindings()
            lifecycleOwner = this@MainActivity
        }

        verveCardQrAmountDialogBinding =
            LayoutVerveCardQrAmountDialogBinding.inflate(layoutInflater, null, false).apply {
                executePendingBindings()
                lifecycleOwner = this@MainActivity
            }

        qrAmountDialog = androidx.appcompat.app.AlertDialog.Builder(this).apply {
            setView(qrAmoutDialogBinding.root)
        }.create()

        qrAmountDialogForVerveCard = androidx.appcompat.app.AlertDialog.Builder(this).apply {
            setView(verveCardQrAmountDialogBinding.root)
        }.create()
        deviceNotSupportedAlertDialog =
            AlertDialog.Builder(this).setTitle("NFC Message").setCancelable(false)
                .setMessage("Device does not have NFC support")
                .setPositiveButton("Close") { dialog, _ ->
                    dialog.dismiss()
                    // finish()
                }.create()
        val terminalId = Singletons.getCurrentlyLoggedInUser()?.terminal_id.toString()
        val userName = Singletons.getCurrentlyLoggedInUser()?.netplus_id.toString()
        firebaseInstance = FirebaseMessaging.getInstance()
        getFireBaseToken(firebaseInstance) {
            sendTokenToBackend(it, terminalId, userName)
        }
    }

    override fun onResume() {
        super.onResume()
        getIntentDataSentInFromFirebaseService()
        handlePdfReceiptPrinting()
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray,
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults, this)
    }

    override fun onPermissionsGranted(requestCode: Int, perms: MutableList<String>) {
        getLocationUpdates()
    }

    override fun onPermissionsDenied(requestCode: Int, perms: MutableList<String>) {
    }

    @SuppressLint("MissingPermission")
    private fun getLocationUpdates() {
        val locationManager = this.getSystemService(LOCATION_SERVICE) as LocationManager
        val locationListener: LocationListener = object : LocationListener {
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
            override fun onStatusChanged(provider: String?, status: Int, extras: Bundle?) {
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

    private fun showFragment(targetFragment: Fragment, className: String) {
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
        val dialog = AlertDialog.Builder(this).apply {
            dialogSelectAccountTypeBinding = DialogSelectAccountTypeBinding.inflate(
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
            val accountType = when (checkedId) {
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
        }
        dialogSelectAccountTypeBinding.cancelButton.setOnClickListener {
            dialog.dismiss()
            viewModel.setIccCardHelperLiveData(ICCCardHelper(error = Throwable("Operation was canceled")))
        }
        dialog.show()
    }

    override fun onTagDiscovered(tag: Tag?) {
        tag?.let {
            if (it.toString() == NFC_A_TAG || it.toString() == NFC_B_TAG) {
                runOnUiThread {
                    handleProvider(tag)
                    nfcAdapter?.disableReaderMode(this)
                }
            }
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
                    receiptDialogBinding.sendButton.text = "Download"
                    receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
                    receiptDialogBinding.sendButton.setOnClickListener {
                        downloadPflImplForQrTransaction(qrTransaction)
                        showSnackBar(
                            binding.root,
                            getString(R.string.fileDownloaded),
                        )
                    }
                }
            }
            PREF_VALUE_PRINT_SHARE -> {
                receiptPdf = createPdf(binding, this)
                receiptAlertDialog.apply {
                    receiptDialogBinding.sendButton.text = "Share"
                    receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
                    receiptDialogBinding.sendButton.setOnClickListener {
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
                                "Please enter a valid phone number",
                                Toast.LENGTH_LONG,
                            ).show()
                            return@setOnClickListener
                        }
                        viewModel.sendSmS(
                            receiptDialogBinding.transactionContent.text.toString(),
                            receiptDialogBinding.telephone.text.toString(),
                        )
                        receiptDialogBinding.progress.visibility = View.VISIBLE
                        receiptDialogBinding.sendButton.isEnabled = false
                    }
                }
            }
            else -> {
                receiptPdf = createPdf(binding, this)
                receiptAlertDialog.apply {
                    receiptDialogBinding.sendButton.text = "Download and Share"
                    receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                    receiptDialogBinding.transactionContent.text =
                        qrTransaction.buildSMSTextForQrTransaction()
                    show()
                    receiptDialogBinding.sendButton.setOnClickListener {
                        downloadPflImplForQrTransaction(qrTransaction)
                        showSnackBar(
                            binding.root,
                            getString(R.string.fileDownloaded),
                        )
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

    private fun showCalendarDialog() {
        val calendar = Calendar.getInstance()
        DatePickerDialog(
            this,
            { _, i, i2, i3 ->
                getEndOfDayTransactions(
                    Calendar.getInstance().apply { set(i, i2, i3) }.timeInMillis,
                ) {
                    showEndOfDayBottomSheetDialog(it)
                }
            },
            calendar.get(Calendar.YEAR),
            calendar.get(Calendar.MONTH),
            calendar.get(Calendar.DAY_OF_MONTH),
        ).show()
    }

    private fun getEndOfDayTransactions(
        timestamp: Long? = null,
        actionToTake: (transactions: List<TransactionResponse>) -> Unit,
    ) {
        Toast.makeText(this, "Please wait", Toast.LENGTH_LONG).show()
        val livedata =
            AppDatabase.getDatabaseInstance(this).transactionResponseDao().getEndOfDayTransaction(
                getBeginningOfDay(timestamp),
                getEndOfDayTimeStamp(timestamp),
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
        val endOfDay = LayoutPrintEndOfDayBinding.inflate(LayoutInflater.from(this), null, false)
        endOfDay.apply {
            approvedCount.text = approvedList.size.toString()
            declinedCount.text = declinedList.size.toString()
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
                            "No transactions to print",
                            Toast.LENGTH_SHORT,
                        ).show()
                    }
                }
            }
        }
        val bottomSheet = BottomSheetDialog(this, R.style.SheetDialog).apply {
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
                val qrDataToSendToBackend = PostQrToServerModel(
                    it,
                    qrData.data,
                    merchantId = UtilityParam.STRING_MERCHANT_ID,
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
            event.getContentIfNotHandled()?.let {
                when (Prefs.getString(PREF_PRINTER_SETTINGS, "nothing_is_there")) {
                    PREF_VALUE_PRINT_DOWNLOAD -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.sendButton.text = "Download"
                            receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                            receiptDialogBinding.transactionContent.text = it
                            show()
                            receiptDialogBinding.sendButton.setOnClickListener {
                                downloadPdfImpl()
                                showSnackBar(
                                    binding.root,
                                    getString(R.string.fileDownloaded),
                                )
                            }
                        }
                    }
                    PREF_VALUE_PRINT_SMS -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.transactionContent.text = it
                            show()
                            receiptDialogBinding.sendButton.setOnClickListener {
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
                                receiptDialogBinding.progress.visibility = View.VISIBLE
                                receiptDialogBinding.sendButton.isEnabled = false
                            }
                        }
                    }
                    PREF_VALUE_PRINT_SHARE -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.sendButton.text = "Share"
                            receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                            receiptDialogBinding.transactionContent.text = it
                            show()
                            receiptDialogBinding.sendButton.setOnClickListener {
                                downloadPdfImpl()
                                sharePdf(receiptPdf, this@MainActivity)
                            }
                        }
                    }
                    else -> {
                        receiptPdf = createPdf(binding, this)
                        receiptAlertDialog.apply {
                            receiptDialogBinding.sendButton.text = "Download and Share"
                            receiptDialogBinding.telephoneWrapper.visibility = View.INVISIBLE
                            receiptDialogBinding.transactionContent.text = it
                            show()
                            receiptDialogBinding.sendButton.setOnClickListener {
                                downloadPdfImpl()
                                showSnackBar(
                                    binding.root,
                                    getString(R.string.fileDownloaded),
                                )
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
            if (it.TVR.contains(IS_QR_TRANSACTION)) {
                val qrTransaction = it.copy(TVR = it.TVR.replace(IS_QR_TRANSACTION, ""))
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
        notificationModel.registerDeviceToken(token, terminalId, username)
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
                val qrDataToSendToBackend = PostQrToServerModel(
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
}
