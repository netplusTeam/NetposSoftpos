package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.activity.OnBackPressedCallback
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.activityViewModels
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.FragmentNewOrExistingBinding
import com.woleapp.netpos.contactless.util.RandomPurposeUtil
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDeviceId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.initPartnerId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.showAlertDialog
import com.woleapp.netpos.contactless.viewmodels.ContactlessRegViewModel
import dagger.hilt.android.AndroidEntryPoint
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject
import javax.inject.Named

@AndroidEntryPoint
class NewOrExistingFragment : BaseFragment() {

    private lateinit var binding: FragmentNewOrExistingBinding
    private val viewModel by activityViewModels<ContactlessRegViewModel>()
    private lateinit var loader: AlertDialog
    private lateinit var newPartnerId: String
    private lateinit var deviceSerialID: String
    private lateinit var account: String

    @Inject
    lateinit var compositeDisposable: CompositeDisposable

    @Inject
    @Named("io-scheduler")
    lateinit var ioScheduler: Scheduler

    @Inject
    @Named("main-scheduler")
    lateinit var mainThreadScheduler: Scheduler

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        binding =
            DataBindingUtil.inflate(inflater, R.layout.fragment_new_or_existing, container, false)
        // Handle Back Press
        activity?.onBackPressedDispatcher?.addCallback(
            viewLifecycleOwner,
            object : OnBackPressedCallback(true) {
                override fun handleOnBackPressed() {
                    requireActivity().supportFragmentManager.popBackStack()
                }
            }
        )
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        newPartnerId = initPartnerId()
        deviceSerialID = getDeviceId(requireContext())
        viewModel.message.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { message ->
                if (message.contains("OTP")) {
                    showAlertDialog(requireContext(), message, "OK") {
                        showFragment(
                            RegistrationOTPFragment(),
                            containerViewId = R.id.auth_container,
                            fragmentName = "RegisterOTP Fragment",
                        )
                    }
                } else {
                    showAlertDialog(requireContext(), message, "OK") {}
                }
            }
        }

        loader = RandomPurposeUtil.alertDialog(requireContext())

        binding.confirmationTvNo.setOnClickListener {
            showFragment(
                RegisterFragment(),
                containerViewId = R.id.auth_container,
                fragmentName = "Register Fragment"
            )
        }

        binding.confirmationTvYes.setOnClickListener {
            enterAccountNumberDialog()
        }

        if (BuildConfig.FLAVOR.contains("zenith")) {
            enterAccountNumberDialog()
            binding.newOrExistingCardview.visibility = View.GONE
        }
    }

    private fun enterAccountNumberDialog() {
        activity?.getFragmentManager()?.popBackStack()
        val inflater = LayoutInflater.from(requireContext())
        val dialogView = inflater.inflate(R.layout.dialog_account_number_layout, null)
        val dialogBuilder: AlertDialog.Builder = AlertDialog.Builder(requireContext())
        dialogBuilder.setView(dialogView)

        val alertDialog: AlertDialog = dialogBuilder.create()
        alertDialog.show()
        dialogView.findViewById<Button>(R.id.dialog_account_number_proceed).setOnClickListener {
            alertDialog.dismiss()
            account =
                dialogView.findViewById<EditText>(R.id.dialog_account_number_editText).text.toString()
            if (account.isNullOrEmpty()) {
                Toast.makeText(
                    requireContext(),
                    "Please, enter your account number",
                    Toast.LENGTH_SHORT,
                ).show()
            } else if (account.length < 10) {
                Toast.makeText(
                    requireContext(),
                    "Please, enter valid account number",
                    Toast.LENGTH_SHORT,
                ).show()
            } else {
                if (BuildConfig.FLAVOR.contains("firstbank") || BuildConfig.FLAVOR.contains("zenith") || BuildConfig.FLAVOR.contains(
                        "wemabank"
                    )
                ) {
                    viewModel.findAccountForFirstBankUser(account, newPartnerId, deviceSerialID)
                    observeServerResponse(
                        viewModel.firstBankAccountNumberResponse,
                        loader,
                        requireActivity().supportFragmentManager,
                    ) {
//                            showFragment(
//                                ExistingCustomersRegistrationFragment(),
//                                containerViewId = R.id.auth_container,
//                                fragmentName = "ExistingCustomersRegistration Fragment",
//                            )
                        viewModel.clearLiveData()
                    }
                } else {
                    otherBanks()
                }
            }
        }
    }


    private fun otherBanks() {
        loader.show()
        observeServerResponse(
            viewModel.accountLookUp(account, newPartnerId, deviceSerialID),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            showFragment(
                RegistrationOTPFragment(),
                containerViewId = R.id.auth_container,
                fragmentName = "RegisterOTP Fragment",
            )
        }
    }

}

