package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.content.Context
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.InputMethodManager
import android.widget.TextView
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.activityViewModels
import com.chaos.view.PinView
import com.dsofttech.dprefs.utils.DPrefs
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.FragmentRegistrationOTPBinding
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.RandomPurposeUtil
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDeviceId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.initPartnerId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.showAlertDialog
import com.woleapp.netpos.contactless.viewmodels.ContactlessRegViewModel
import java.util.*

class RegistrationOTPFragment : BaseFragment() {
    private lateinit var binding: FragmentRegistrationOTPBinding
    private lateinit var resendCode: TextView
    private lateinit var otpView: PinView
    private lateinit var otpResentConfirmationText: TextView
    private val viewModel by activityViewModels<ContactlessRegViewModel>()
    private lateinit var loader: AlertDialog
    private lateinit var newAccountNumber: String
    private lateinit var newOtpId: String
    private lateinit var partnerID: String
    private lateinit var deviceSerialID: String
    private var timeSeconds = 120L

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        // Inflate the layout for this fragment
        binding =
            DataBindingUtil.inflate(
                inflater,
                R.layout.fragment_registration_o_t_p,
                container,
                false,
            )
        return binding.root
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)
        partnerID = initPartnerId()
        deviceSerialID = getDeviceId(requireContext())
        initViews()
        startResendTimer()
        viewModel.otpMessage.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                if (message == "Account verified successfully") {
                    showAlertDialog(requireContext(), message, "OK") {
                        showFragment(
                            ExistingCustomersRegistrationFragment(),
                            containerViewId = R.id.auth_container,
                            fragmentName = "Register Existing Customer Fragment",
                        )
                    }
                } else {
                    showAlertDialog(requireContext(), message, "OK") {}
                }
            }
        }
//        viewModel.otpMessage.observe(viewLifecycleOwner) {
//            it.getContentIfNotHandled()?.let { message ->
//                if (message.contains("OTP")) {
//                    showAlertDialog(requireContext(), message, "OK") {
//                        showFragment(
//                            ExistingCustomersRegistrationFragment(),
//                            containerViewId = R.id.auth_container,
//                            fragmentName = "Register Existing Customer Fragment",
//                        )
//                    }
//                } else {
//                    showAlertDialog(requireContext(), message, "OK") {}
//                }
//            }
//        }
        val newPoneNumber = DPrefs.getString(AppConstants.SAVE_PHONE_NUMBER, "")
        val phoneNumber = newPoneNumber.substring(0, newPoneNumber.length)
        Log.d("NUMBERCHECK", phoneNumber)
        val newActNumber = DPrefs.getString(AppConstants.SAVED_ACCOUNT_NUM_SIGNED_UP, "")
        newAccountNumber = newActNumber.substring(1, newActNumber.length - 1)
        Log.d("ACCOUNTNUMBER", newAccountNumber)
        val otpId = DPrefs.getString(AppConstants.SAVED_OTP_ID, "")
        newOtpId = otpId.substring(1, otpId.length - 1)
        Log.d("otpId", otpId)
        loader = alertDialog(requireContext())
        resendCode.setOnClickListener {
            resendOtp()
            binding.otpResent.visibility = View.GONE
        }
        otpView.requestFocus()
        val inputMethodManager =
            requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
        inputMethodManager.toggleSoftInput(
            InputMethodManager.SHOW_FORCED,
            InputMethodManager.HIDE_IMPLICIT_ONLY,
        )
        otpView.addTextChangedListener(
            object : TextWatcher {
                override fun beforeTextChanged(
                    s: CharSequence?,
                    start: Int,
                    count: Int,
                    after: Int,
                ) {
                }

                override fun onTextChanged(
                    s: CharSequence?,
                    start: Int,
                    before: Int,
                    count: Int,
                ) {
                    s?.let {
                        if (it.length == 6) {
                            RandomPurposeUtil.closeSoftKeyboard(requireContext(), requireActivity())
                            if (BuildConfig.FLAVOR.contains("providuspos") ||
                                BuildConfig.FLAVOR.contains(
                                    "providus",
                                ) || BuildConfig.FLAVOR.contains("providussoftpos")
                            ) {
                                viewModel.confirmOTPForFBN("", newAccountNumber, newOtpId, s.toString(), partnerID)
                                observeServerResponse(
                                    viewModel.confirmOTPResponse,
                                    loader,
                                    requireActivity().supportFragmentManager,
                                ) {
                                    showFragment(
                                        ExistingCustomersRegistrationFragment(),
                                        containerViewId = R.id.auth_container,
                                        fragmentName = "Register Existing Customer Fragment",
                                    )
                                    viewModel.clearOTPResponseLiveData()
                                }
                            } else if (BuildConfig.FLAVOR.contains("firstbank")) {
                                viewModel.confirmOTPForFBN(
                                    phoneNumber,
                                    newAccountNumber,
                                    newOtpId,
                                    s.toString(),
                                    partnerID,
                                )
                                observeServerResponse(
                                    viewModel.confirmOTPResponse,
                                    loader,
                                    requireActivity().supportFragmentManager,
                                ) {
                                    viewModel.clearOTPResponseLiveData()
                                }
                            } else {
                                viewModel.confirmOTPForFBN(phoneNumber, newAccountNumber, s.toString(), "", "")
                                observeServerResponse(
                                    viewModel.confirmOTPResponse,
                                    loader,
                                    requireActivity().supportFragmentManager,
                                ) {
                                    showFragment(
                                        ExistingCustomersRegistrationFragment(),
                                        containerViewId = R.id.auth_container,
                                        fragmentName = "Register Existing Customer Fragment",
                                    )
                                    viewModel.clearOTPResponseLiveData()
                                }
                            }
                        }
                    }
                }

                override fun afterTextChanged(s: Editable?) {
                }
            },
        )
    }

    private fun resendOtp() {
        viewModel.findAccountForFirstBankUser(newAccountNumber, partnerID, deviceSerialID)
        observeServerResponse(
            viewModel.firstBankAccountNumberResponse,
            loader,
            requireActivity().supportFragmentManager,
        ) {
            startResendTimer()
            binding.otpResent.visibility = View.VISIBLE
            viewModel.clearLiveData()
            newOtpId = viewModel.firstBankAccountNumberResponse.value?.data?.data?.otpId!!
            Log.d("JUSTCHECKING", newOtpId)
        }
    }

    private fun initViews() {
        with(binding) {
            resendCode = resendOtp
            otpView = pinView
            otpResentConfirmationText = otpResent
        }
    }

    private fun startResendTimer() {
        resendCode.isEnabled = false
        val timer = Timer()

        // Schedule a task to run repeatedly at a fixed rate
        timer.scheduleAtFixedRate(
            object : TimerTask() {
                override fun run() {
                    // Code to run repeatedly at a fixed rate
                    timeSeconds--
                    activity?.runOnUiThread {
                        resendCode.text = "Resend OTP in $timeSeconds seconds"
                    }
                    if (timeSeconds <= 0) {
                        timeSeconds = 120L
                        timer.cancel()
                        activity?.runOnUiThread {
                            resendCode.isEnabled = true
                            resendCode.text = getString(R.string.resend_code)
                        }
                    }
                }
            },
            0,
            1000,
        ) // run 1000 milliseconds (1 second)

        // To stop the timer, cancel it after a specified number of milliseconds
//        timer.schedule(object : TimerTask() {
//            override fun run() {
//                // Cancel the timer
//                timer.cancel()
//                println("Timer canceled")
//            }
//        }, 5000) // 5000 milliseconds (5 seconds)
    }
}
