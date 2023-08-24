package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.content.Context
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.InputMethodManager
import android.widget.TextView
import android.widget.Toast
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
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.UtilityParam
import com.woleapp.netpos.contactless.viewmodels.ContactlessRegViewModel

class RegistrationOTPFragment : BaseFragment() {
    private lateinit var binding: FragmentRegistrationOTPBinding
    private lateinit var resendCode: TextView
    private lateinit var otpView: PinView
    private lateinit var otpResentConfirmationText: TextView
    private val viewModel by activityViewModels<ContactlessRegViewModel>()
    private lateinit var loader: AlertDialog
    private lateinit var newAccountNumber: String
    private lateinit var partnerID: String

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        // Inflate the layout for this fragment
        binding = DataBindingUtil.inflate(
            inflater,
            R.layout.fragment_registration_o_t_p,
            container,
            false,
        )
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initPartnerID()
        viewModel.otpMessage.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
            }
        }
        val newPoneNumber =
            DPrefs.getString(AppConstants.SAVE_PHONE_NUMBER, "")
        val phoneNumber = newPoneNumber.substring(1, newPoneNumber.length - 1)

        val newActNumber =
            DPrefs.getString(AppConstants.SAVED_ACCOUNT_NUM_SIGNED_UP, "")
        newAccountNumber = newActNumber.substring(1, newActNumber.length - 1)

        loader = alertDialog(requireContext())
        initViews()
        otpView.requestFocus()
        val inputMethodManager =
            requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
        inputMethodManager.toggleSoftInput(
            InputMethodManager.SHOW_FORCED,
            InputMethodManager.HIDE_IMPLICIT_ONLY,
        )
        otpView.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {
            }

            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                s?.let {
                    if (it.length == 6) {
                        RandomPurposeUtil.closeSoftKeyboard(requireContext(), requireActivity())
                        if (BuildConfig.FLAVOR.contains("providuspos") || BuildConfig.FLAVOR.contains(
                                "providus",
                            ) || BuildConfig.FLAVOR.contains("providussoftpos")
                        ) {
                            viewModel.confirmOTP("", newAccountNumber, s.toString(), partnerID)
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
                        } else {
                            viewModel.confirmOTP(phoneNumber, newAccountNumber, s.toString(), "")
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
        })
    }

    private fun initViews() {
        with(binding) {
            resendCode = resendOtp
            otpView = pinView
            otpResentConfirmationText = otpResent
        }
    }

    private fun initPartnerID() {
        val bankList = mapOf(
            "firstbank" to UtilityParam.STRING_PARTNER_ID_FIRST_B,
            "easypay" to UtilityParam.STRING_PARTNER_ID_EASY_PAY,
            "fcmbeasypay" to UtilityParam.STRING_PARTNER_ID_FCMB_EASY_PAY,
            "easypayfcmb" to UtilityParam.STRING_PARTNER_ID_EASY_PAY_FCMB,
            "providuspos" to UtilityParam.STRING_PARTNER_ID_PROVIDUS_POS,
            "stanbic" to UtilityParam.STRING_PARTNER_ID_STANBIC, // the partnerID is for Providus, change to Stanbic later
            "providus" to UtilityParam.STRING_PARTNER_ID_PROVIDUS,
            "providussoftpos" to UtilityParam.STRING_PARTNER_ID_PROVIDUS_SOFT_POS,
            "wemabank" to UtilityParam.STRING_PARTNER_ID_WEMA_B,
            "zenith" to UtilityParam.STRING_PARTNER_ID_ZENITH,
        )

        for (element in bankList) {
            if (element.key == BuildConfig.FLAVOR) {
                partnerID = element.value
            }
        }
    }
}
