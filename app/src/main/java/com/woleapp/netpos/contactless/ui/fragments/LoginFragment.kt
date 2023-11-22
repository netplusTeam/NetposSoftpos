package com.woleapp.netpos.contactless.ui.fragments

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
import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.JsonObject
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
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class LoginFragment : BaseFragment() {

    private val viewModel by activityViewModels<AuthViewModel>()
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
        binding = FragmentLoginBinding.inflate(inflater, container, false).apply {
            lifecycleOwner = viewLifecycleOwner
            executePendingBindings()
            viewmodel = viewModel
        }
        resetPasswordBinding = DialogPasswordResetBinding.inflate(inflater, null, false)
            .apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
                viewmodel = viewModel
            }
        passwordResetDialog = AlertDialog.Builder(requireContext())
            .apply {
                setView(resetPasswordBinding.root)
                setCancelable(false)
            }.create()

        confirmOTPBinding = DialogSetNewPasswordBinding.inflate(inflater, null, false)
            .apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
            }
        confirmOTPDialog = AlertDialog.Builder(requireContext())
            .apply {
                setView(confirmOTPBinding.root)
                setCancelable(false)
            }.create()

        setPasswordBinding = LayoutSetPasswordBinding.inflate(inflater, null, false)
            .apply {
                lifecycleOwner = viewLifecycleOwner
                executePendingBindings()
            }
        setPasswordDialog = AlertDialog.Builder(requireContext())
            .apply {
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
        binding.btnLogin.setOnClickListener {
            viewModel.login(deviceId)
        }
        dialog = AlertDialog.Builder(requireContext())
            .setTitle("Password changed successfully")
            .setCancelable(false)
            .setPositiveButton("Continue") { _, _ ->
                setPasswordDialog.dismiss()
            }
            .setMessage("Please login to continue")
            .create()

        binding.register.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("firstbank") || BuildConfig.FLAVOR.contains("providuspos") || BuildConfig.FLAVOR.contains(
                    "providus",
                ) || BuildConfig.FLAVOR.contains("providussoftpos") ||
                BuildConfig.FLAVOR.contains("wemabank") ||
                BuildConfig.FLAVOR.contains("easypay") || BuildConfig.FLAVOR.contains("fcmbeasypay") ||
                BuildConfig.FLAVOR.contains("easypayfcmb") ||
                BuildConfig.FLAVOR.contains("stanbic") ||
                BuildConfig.FLAVOR.contains("zenith") || BuildConfig.FLAVOR.contains("netpos")
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
                android.app.AlertDialog.Builder(requireContext())
                    .setTitle("NFC Message")
                    .setMessage("Device has NFC support and is enabled")
                    .setPositiveButton("Close") { dialog, _ ->
                        dialog.dismiss()
                    }.show()
            } else {
                android.app.AlertDialog.Builder(requireContext())
                    .setTitle("NFC Message")
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
            android.app.AlertDialog.Builder(requireContext())
                .setTitle("NFC Message")
                .setMessage("Device does not have NFC support")
                .setPositiveButton("Close") { dialog, _ ->
                    dialog.dismiss()
                    // finish()
                }.show()
        }
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
       // Log.d("FIRSTPAYLOAD",UtilityParam.STRING_NOTIFICATION_BASE_URL_NO_API)
//        Log.d("FIRSTRESPONSE",UtilityParam.FIRSTRESPONSE)
//        Log.d("SECONDPAYLOAD",UtilityParam.SECONDPAYLOAD)
//        Log.d("FIRSTRESPONSE",UtilityParam.SECONDRESPONSE)
//        "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ7XCJhY2NvdW50TnVtYmVyXCI6XCIzMDUwMjc3MzE2XCJ9In0.IkcvojQx-AiO4Y-M3LwL-sARs1T-3DeBFabYPQn-9_Q"
//
//        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1wic3RhdHVzXCI6dHJ1ZSxcIm1lc3NhZ2VcIjpcIk9UUCBzZW50XCIsXCJkYXRhXCI6e1wiYnVzaW5lc3NOYW1lXCI6XCJNVVNUQVBIQSBIQUxJTUEgU1VMRU1BTlwiLFwiYWRkcmVzc1wiOlwiXCIsXCJmdWxsTmFtZVwiOlwiTVVTVEFQSEEgSEFMSU1BIFNVTEVNQU5cIixcImFjY291bnROdW1iZXJcIjpcIjMwNTAyNzczMTZcIixcImVtYWlsXCI6bnVsbCxcInBob25lXCI6XCIrMjM0KDcwOCk2MTQ2NzcxXCJ9fSIsImlhdCI6MTY5OTM3NDg1MSwiZXhwIjoxNjk5Mzc4NDUxfQ.i-5Kiw_N03eF_wKezgAwEikZ_6FZNN3QUoRoiLeXl1M"
//
//
//        "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ7XCJhY2NvdW50TnVtYmVyXCI6XCJcXFwiMzA1MDI3NzMxNlxcXCJcIn0ifQ.pW2tu1bbjtRbc6rfNiye6afJx9hoo-WUvr_awHV34rM"
//
//        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1wic3RhdHVzXCI6ZmFsc2UsXCJtZXNzYWdlXCI6XCJJbnZhbGlkIGFjY291bnQgbnVtYmVyIHByb3ZpZGVkXCJ9IiwiaWF0IjoxNjk5Mzc0OTQwLCJleHAiOjE2OTkzNzg1NDB9.fRrCcoFDVRHA3l6VHUHWOPeha5vzi2K9LokPGrLheH4"
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
        binding.forgotPassword.setOnClickListener {
            if (BuildConfig.FLAVOR.contains("firstbank") || BuildConfig.FLAVOR.contains("providuspos")) {
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
                        val event = MqttEvent<AuthenticationEventData>().apply {
                            this.event = MqttEvents.AUTHENTICATION.event
                            this.code = "00"
                            this.timestamp = System.currentTimeMillis()
                            this.data = AuthenticationEventData(
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
            } else if (BuildConfig.FLAVOR.contains("providuspos")) {
                confirmOTPForProvidus()
            }
        }
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
            contactlessViewModel.confirmOTPForFBN("", savedAcctNumber, otp, partnerID, "")
            observeServerResponse(
                contactlessViewModel.confirmOTPResponse,
                loader,
                requireActivity().supportFragmentManager
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
            val payload = JsonObject().apply {
                addProperty("email", email)
            }
            //           closeSoftKeyboard(requireContext(), this.requireActivity())
            contactlessViewModel.resetPasswordForProvidus(payload, initPartnerId(), deviceId)
            observeServerResponse(
                contactlessViewModel.resetPasswordForProvidusResponse,
                loader,
                requireActivity().supportFragmentManager,
            ) {
                val acctNumber = DPrefs.getString(AppConstants.ACCOUNT_NUMBER_FOR_PROVIDUS, "")
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
            val payload = JsonObject().apply {
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
            val payload = JsonObject().apply {
                addProperty("email", email)
            }
            //           closeSoftKeyboard(requireContext(), this.requireActivity())
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
            showToast("The password's length must be more than 7 digits and must contain small letters, capital letters and special characters")
            return
        }
        val payload = JsonObject().apply {
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
        val payload = JsonObject().apply {
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
}
