package com.woleapp.netpos.contactless.ui.fragments

import android.content.Context
import android.content.Intent
import android.nfc.NfcManager
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.isVisible
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.viewModels
import com.danbamitale.epmslib.utils.IsoAdapter
import com.google.gson.JsonObject
import com.pixplicity.easyprefs.library.Prefs
import com.solab.iso8583.IsoMessage
import com.solab.iso8583.MessageFactory
import com.solab.iso8583.parse.ConfigParser
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.DialogPasswordResetBinding
import com.woleapp.netpos.contactless.databinding.DialogSetNewPasswordBinding
import com.woleapp.netpos.contactless.databinding.FragmentLoginBinding
import com.woleapp.netpos.contactless.databinding.LayoutSetPasswordBinding
import com.woleapp.netpos.contactless.model.AuthenticationEventData
import com.woleapp.netpos.contactless.model.MqttEvent
import com.woleapp.netpos.contactless.model.MqttEvents
import com.woleapp.netpos.contactless.network.StormApiClient
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.ui.activities.MainActivity
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDeviceId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.initPartnerId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.passwordValidation
import com.woleapp.netpos.contactless.util.UtilityParam
import com.woleapp.netpos.contactless.util.showToast
import com.woleapp.netpos.contactless.viewmodels.AuthViewModel
import com.woleapp.netpos.contactless.viewmodels.ContactlessRegViewModel
import java.nio.charset.Charset
import java.text.ParseException

class LoginFragment : BaseFragment() {
    private val viewModel by viewModels<AuthViewModel>()
    private val contactlessViewModel by activityViewModels<ContactlessRegViewModel>()
    private lateinit var binding: FragmentLoginBinding
    private lateinit var resetPasswordBinding: DialogPasswordResetBinding
    private lateinit var passwordResetDialog: AlertDialog
    private lateinit var confirmOTPBinding: DialogSetNewPasswordBinding
    private lateinit var confirmOTPDialog: AlertDialog
    private lateinit var setPasswordBinding: LayoutSetPasswordBinding
    private lateinit var setPasswordDialog: AlertDialog
    private lateinit var deviceId: String
    private lateinit var loader: android.app.AlertDialog
    private lateinit var partnerID: String
    private lateinit var savedAcctNumber: String
    private lateinit var dialog: AlertDialog

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        binding =
            FragmentLoginBinding.inflate(inflater, container, false).apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
                viewmodel = viewModel
            }
        resetPasswordBinding =
            DialogPasswordResetBinding.inflate(inflater, null, false).apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
                viewmodel = viewModel
            }
        passwordResetDialog =
            AlertDialog.Builder(requireContext()).apply {
                setView(resetPasswordBinding.root)
                setCancelable(false)
            }.create()

        confirmOTPBinding =
            DialogSetNewPasswordBinding.inflate(inflater, null, false).apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
            }
        confirmOTPDialog =
            AlertDialog.Builder(requireContext()).apply {
                setView(confirmOTPBinding.root)
                setCancelable(false)
            }.create()

        setPasswordBinding =
            LayoutSetPasswordBinding.inflate(inflater, null, false).apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
            }
        setPasswordDialog =
            AlertDialog.Builder(requireContext()).apply {
                setView(setPasswordBinding.root)
                setCancelable(false)
            }.create()

        confirmOTPBinding.closeDialog.setOnClickListener {
            confirmOTPDialog.dismiss()
        }
        resetPasswordBinding.closeDialog.setOnClickListener {
            passwordResetDialog.dismiss()
        }
        resetPasswordBinding.btnResetPassword.setOnClickListener {
            resetPasswordForFCMB()
        }
        val credentials = JsonObject()
        credentials.addProperty("appname", UtilityParam.APP_NAME)
        credentials.addProperty("password", UtilityParam.APP_PASSWORD)
        viewModel.apply {
            stormApiService = StormApiClient.getInstance()
            appCredentials = credentials
        }
        deviceId = getDeviceId(requireContext())
        partnerID = initPartnerId()
        //   Log.d("IMEI", uniqueNumber)
        binding.btnLogin.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("providuspos")) {
                viewModel.login(deviceId, partnerID)
//            } else if (BuildConfig.FLAVOR.contains("zenith")) {
//                viewModel.loginZenith(requireContext(), deviceId)
            } else {
                viewModel.login(deviceId)
            }
        }
        dialog =
            AlertDialog.Builder(requireContext()).setTitle("Password changed successfully")
                .setCancelable(false).setPositiveButton("Continue") { _, _ ->
                    setPasswordDialog.dismiss()
                }.setMessage("Please login to continue").create()

        binding.register.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("firstbank") || BuildConfig.FLAVOR.contains("providuspos") ||
                BuildConfig.FLAVOR.contains(
                    "providus",
                ) || BuildConfig.FLAVOR.contains("providussoftpos") || BuildConfig.FLAVOR.contains("wemabank") ||
                BuildConfig.FLAVOR.contains(
                    "easypay",
                ) || BuildConfig.FLAVOR.contains("fcmbeasypay") || BuildConfig.FLAVOR.contains("easypayfcmb") ||
                BuildConfig.FLAVOR.contains(
                    "stanbic",
                ) || BuildConfig.FLAVOR.contains("zenith") || BuildConfig.FLAVOR.contains("netpos")
            ) {
                showFragment(
                    NewOrExistingFragment(),
                    containerViewId = R.id.auth_container,
                    fragmentName = "NewOrExisting Fragment",
                )
            } else {
                showFragment(
                    RegisterFragment(),
                    containerViewId = R.id.auth_container,
                    fragmentName = "Register Fragment",
                )
            }
        }

        binding.testMyPhone.setOnClickListener {
            testNfcSupport()
        }
        binding.contactlessLogo.setOnClickListener {
            testNfcSupport()
        }
        return binding.root
    }

    private fun resetPasswordForFCMB() {
        viewModel.resetPasswordForFCMB(partnerID, deviceId)
    }

    private fun testNfcSupport() {
        val nfcManager: NfcManager =
            requireActivity().getSystemService(AppCompatActivity.NFC_SERVICE) as NfcManager
        val nfcAdapter = nfcManager.defaultAdapter
        if (nfcAdapter != null) {
            // Toast.makeText(this, "Device has NFC support", Toast.LENGTH_SHORT).show()
            if (nfcAdapter.isEnabled) {
                Toast.makeText(requireContext(), "NFC enabled", Toast.LENGTH_SHORT).show()
                android.app.AlertDialog.Builder(requireContext()).setTitle("NFC Message")
                    .setMessage("Device has NFC support and is enabled")
                    .setPositiveButton("Close") { dialog, _ ->
                        dialog.dismiss()
                    }.show()
            } else {
                android.app.AlertDialog.Builder(requireContext()).setTitle("NFC Message")
                    .setMessage("NFC is not enabled, goto device settings to enable")
                    .setPositiveButton("Settings") { dialog, _ ->
                        dialog.dismiss()
                        startActivityForResult(
                            Intent(android.provider.Settings.ACTION_NFC_SETTINGS),
                            0,
                        )
                    }.show()
            }
        } else {
            android.app.AlertDialog.Builder(requireContext()).setTitle("NFC Message")
                .setMessage("Device does not have NFC support")
                .setPositiveButton("Close") { dialog, _ ->
                    dialog.dismiss()
                    // finish()
                }.show()
        }
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)
//        val pinkKey = context?.let { processISOBitStreamWithJ8583(it, "0810023800000280080001290105050469380105050129002ISWK4199BAEECE251C7E9926A62981F7C5FE53C9BA3350000000000000000000000000000000000000000000000000000000000") }
//        Log.d("CHECKING_PINKEY", pinkKey.toString())
        // Generate a key
        val username = "testUser"
        val password = "testPassword"
        val deviceId = "testDeviceId"

        // Generate a secret key
        val secretKey = AESGCMEncryption.generateAndPrintSecretKey()

        // Encrypt the data
        val encryptedDataBase64 =
            AESGCMEncryption.encryptFields(
                username,
                password,
                deviceId,
                "p6Tff5uklnWPbrLfZZ6RU4KZghZCYioSVTygBRdN4k4=",
            )
        Log.d("Encrypted", "HELLOOO$encryptedDataBase64")

        // Decrypt the data in Kotlin (just for demonstration)
        val decryptedText =
            AESGCMEncryption.decrypt(
                "wg2T+z4jqH9jzzPZ1B5tDCvMB6VIZ0A0DJnakPZ3j7pjIyYrm25SCduEErbbFfVjU1fVXlmvMLDe",
                "B4qcsQigBww4u2ps",
                "p6Tff5uklnWPbrLfZZ6RU4KZghZCYioSVTygBRdN4k4",
            )
        Log.d("Decrypted", "$decryptedText")

        loader = alertDialog(requireContext())
        viewModel.message.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
            }
        }
        contactlessViewModel.message.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
            }
        }
        contactlessViewModel.otpMessage.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                if (message.contains("Password")) {
                    showToast(message)
                }
            }
        }
        binding.forgotPassword.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("firstbank") || BuildConfig.FLAVOR.contains("providuspos") ||
                BuildConfig.FLAVOR.contains(
                    "zenith",
                )
            ) {
                confirmOTPDialog.show()
            } else {
                passwordResetDialog.show()
            }
        }
//        if (BuildConfig.FLAVOR.contains("providuspos")) {
//            resetPasswordBinding.btnResetPassword.setOnClickListener {
//                viewModel.resetPasswordForProvidus(partnerID,deviceId)
//            }
//        }

        viewModel.authDone.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { authenticated ->
                if (authenticated) {
                    activity?.apply {
                        startActivity(
                            Intent(this, MainActivity::class.java).apply {
                                flags =
                                    Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                            },
                        )
                        NetPosTerminalConfig.init(applicationContext)
                        val event =
                            MqttEvent<AuthenticationEventData>().apply {
                                this.event = MqttEvents.AUTHENTICATION.event
                                this.code = "00"
                                this.timestamp = System.currentTimeMillis()
                                this.data =
                                    AuthenticationEventData(
                                        this.business_name!!,
                                        this.storm_id!!,
                                        this.deviceSerial!!,
                                    )
                                this.status = "SUCCESS"
                            }
                        finish()
                    }
                }
            }
        }

        viewModel.passwordResetSent.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (it && passwordResetDialog.isShowing) {
                    passwordResetDialog.cancel()
                }
            }
        }

        setPasswordBinding.save.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("firstbank")) {
                resetPasswordForFBN()
            } else {
                resetPassword()
            }
        }

        confirmOTPBinding.btnResetPassword.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("firstbank")) {
                confirmOTPForFBN()
            } else if (BuildConfig.FLAVOR.contains("providuspos") || BuildConfig.FLAVOR.contains("zenith")) {
                confirmOTPForProvidus()
            }
        }

//        binding.privacyPolicy.setOnClickListener {
//            if (BuildConfig.FLAVOR.contains("providuspos")) {
//                val url = "https://www.providusbank.com/privacy-policy"
//                // Create an intent to open the URL
//                val intent =
//                    Intent(Intent.ACTION_VIEW).apply {
//                        data = Uri.parse(url)
//                    }
//                // Start the activity
//                startActivity(intent)
//            }
//        }
    }

    private fun confirmOTPForProvidus() {
        activity?.getFragmentManager()?.popBackStack()
        if (confirmOTPBinding.fragmentOtp.isVisible) {
            val email = confirmOTPBinding.etEmail.text?.trim().toString()
            val otp = confirmOTPBinding.otp.text?.trim().toString()
            if (email.isNullOrEmpty() || otp.isNullOrEmpty()) {
                showToast("All fields are required required")
                return
            }
            contactlessViewModel.confirmOTP("", savedAcctNumber, otp, partnerID)
            observeServerResponse(
                contactlessViewModel.confirmOTPResponse,
                loader,
                requireActivity().supportFragmentManager,
            ) {
                setPasswordBinding.email.setText(email)
                confirmOTPBinding.fragmentOtp.visibility = View.VISIBLE
                confirmOTPDialog.dismiss()
                setPasswordDialog.show()
            }
        } else {
            val email = confirmOTPBinding.etEmail.text?.trim().toString()
            if (email.isNullOrEmpty()) {
                showToast("Email is required")
                return
            }
            val payload =
                JsonObject().apply {
                    addProperty("email", email)
                }
            // closeSoftKeyboard(requireContext(), this.requireActivity())
            contactlessViewModel.resetPasswordForProvidus(payload, initPartnerId(), deviceId)
            observeServerResponse(
                contactlessViewModel.resetPasswordForProvidusResponse,
                loader,
                requireActivity().supportFragmentManager,
            ) {
                val acctNumber = Prefs.getString(AppConstants.ACCOUNT_NUMBER_FOR_PROVIDUS, "")
                savedAcctNumber = acctNumber.substring(1, acctNumber.length - 1)
                confirmOTPBinding.etEmail.setText(email)
                confirmOTPBinding.fragmentOtp.visibility = View.VISIBLE
                confirmOTPBinding.resetPasswordHeader.text = "ENTER OTP"
            }
        }
    }

    private fun confirmOTPForFBN() {
        activity?.getFragmentManager()?.popBackStack()
        if (confirmOTPBinding.fragmentOtp.isVisible) {
            val email = confirmOTPBinding.etEmail.text?.trim().toString()
            val otp = confirmOTPBinding.otp.text?.trim().toString()
            if (email.isNullOrEmpty() || otp.isNullOrEmpty()) {
                showToast("All fields are required required")
                return
            }
            val payload =
                JsonObject().apply {
                    addProperty("email", email)
                    addProperty("otp", otp)
                }
            contactlessViewModel.confirmOTPToSetPassword(payload, initPartnerId(), deviceId)
            observeServerResponse(
                contactlessViewModel.confirmOtpToResetPasswordResponse,
                loader,
                requireActivity().supportFragmentManager,
            ) {
                setPasswordBinding.email.setText(email)
                confirmOTPBinding.fragmentOtp.visibility = View.VISIBLE
                confirmOTPDialog.dismiss()
                setPasswordDialog.show()
            }
        } else {
            val email = confirmOTPBinding.etEmail.text?.trim().toString()
            if (email.isNullOrEmpty()) {
                showToast("Email is required")
                return
            }
            val payload =
                JsonObject().apply {
                    addProperty("email", email)
                }
            // closeSoftKeyboard(requireContext(), this.requireActivity())
            contactlessViewModel.resetPassword(payload, initPartnerId(), deviceId)
            observeServerResponse(
                contactlessViewModel.resetPasswordResponse,
                loader,
                requireActivity().supportFragmentManager,
            ) {
                confirmOTPBinding.etEmail.setText(email)
                confirmOTPBinding.fragmentOtp.visibility = View.VISIBLE
                confirmOTPBinding.resetPasswordHeader.text = "ENTER OTP"
            }
        }
    }

    private fun resetPasswordForFBN() {
        val email = setPasswordBinding.email.text?.trim().toString()
        val password = setPasswordBinding.passwordEdittext.text?.trim().toString()
        val confirmPassword = setPasswordBinding.confirmPasswordEdittext.text?.trim().toString()
        if (password != confirmPassword) {
            showToast("Password mismatch")
            return
        }
        if (email.isNullOrEmpty() || password.isNullOrEmpty()) {
            showToast("Enter your new password")
            return
        }
        if (!passwordValidation(password)) {
            showToast(
                "The password's length must be more than 7 digits and must contain small letters, capital letters and special characters",
            )
            return
        }
        val payload =
            JsonObject().apply {
                addProperty("email", email)
                addProperty("newPassword", password)
            }
        setPasswordBinding.authProgress.visibility = View.VISIBLE
        contactlessViewModel.setNewPassword(payload, initPartnerId(), deviceId)
        observeServerResponse(
            contactlessViewModel.newPasswordResponse,
            loader,
            requireActivity().supportFragmentManager,
        ) {
            setPasswordDialog.dismiss()
        }
    }

    private fun resetPassword() {
        val email = setPasswordBinding.email.text?.trim().toString()
        val password = setPasswordBinding.passwordEdittext.text?.trim().toString()
        val confirmPassword = setPasswordBinding.confirmPasswordEdittext.text?.trim().toString()
        if (password != confirmPassword) {
            showToast("Password mismatch")
            return
        }
        if (email.isNullOrEmpty()) {
            showToast("Enter your email")
            return
        }
        if (password.isNullOrEmpty()) {
            showToast("Enter your new password")
            return
        }
        val payload =
            JsonObject().apply {
                addProperty("email", email)
                addProperty("newPassword", password)
            }
        setPasswordBinding.authProgress.visibility = View.VISIBLE
        contactlessViewModel.setNewPassword(payload, initPartnerId(), deviceId)
        observeServerResponse(
            contactlessViewModel.newPasswordResponse,
            loader,
            requireActivity().supportFragmentManager,
        ) {
            dialog.show()
        }
    }

    override fun onPause() {
        super.onPause()
        // Clear sensitive data
        clearSensitiveData()
    }

    override fun onStop() {
        super.onStop()
        // Clear sensitive data
        clearSensitiveData()
    }

    private fun clearSensitiveData() {
        // Example: clearing EditText fields
        binding.etEmail.text?.clear()
        binding.etPwd.text?.clear()
        confirmOTPBinding.etEmail.text?.clear()
        confirmOTPBinding.otp.text?.clear()
        resetPasswordBinding.etEmail.text?.clear()
        setPasswordBinding.email.text?.clear()
        setPasswordBinding.passwordEdittext.text?.clear()
        setPasswordBinding.confirmPasswordEdittext.text?.clear()
    }

    fun processISOBitStreamWithJ8583(
        context: Context,
        data: String,
    ): IsoMessage {
        val outputData = data.substring(data.indexOf("0"))

        return unpackWith8583(context, outputData)
    }

    private fun unpackWith8583(
        context: Context,
        data: String,
    ): IsoMessage {
        val dataByteArray = data.toByteArray(Charset.forName("UTF-8"))
        val msgFactory = MessageFactory<IsoMessage>()
        msgFactory.ignoreLastMissingField = true

        if (com.danbamitale.epmslib.BuildConfig.DEBUG) {
            Log.d("BREAK DOWN DATA: ", data)
        }

        try {
            val xmlReader =
                context.resources.openRawResource(com.danbamitale.epmslib.R.raw.config)
                    .bufferedReader()
            xmlReader.use {
                ConfigParser.configureFromReader(msgFactory, it)
                val isoMessage = msgFactory.parseMessage(dataByteArray, 0)
                IsoAdapter.logIsoMessage(isoMessage)
                return isoMessage
            }
        } catch (e: ParseException) {
            e.printStackTrace()
            throw RuntimeException("Invalid response received")
        } catch (e: StringIndexOutOfBoundsException) {
            e.printStackTrace()
            throw RuntimeException("Invalid response received")
        } catch (e: Exception) {
            e.printStackTrace()
            throw RuntimeException(e)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
    }
}
