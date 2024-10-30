package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import androidx.viewpager2.widget.ViewPager2
import com.google.android.material.tabs.TabLayoutMediator
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.ImageRequestNFCAdapter
import com.woleapp.netpos.contactless.databinding.FragmentRequestNfcBinding
import com.woleapp.netpos.contactless.model.MerchantDetail
import com.woleapp.netpos.contactless.model.RequestNfcRequest
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDeviceId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.initPartnerId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.viewmodels.NotificationViewModel
import dagger.hilt.android.AndroidEntryPoint
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import kotlinx.android.synthetic.main.fragment_request_nfc.*
import javax.inject.Inject
import javax.inject.Named

@AndroidEntryPoint
class RequestNfcFragment : Fragment() {
    private lateinit var binding: FragmentRequestNfcBinding
    private lateinit var viewPager: ViewPager2
    private lateinit var images: List<Int>
    private lateinit var adapter: ImageRequestNFCAdapter
    private val handler = Handler(Looper.getMainLooper())
    private val viewModel by activityViewModels<NotificationViewModel>()
    private lateinit var deviceId: String
    private lateinit var loader: AlertDialog

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
        // Inflate the layout for this fragment
        binding = DataBindingUtil.inflate(inflater, R.layout.fragment_request_nfc, container, false)
        return binding.root
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)

        viewPager = binding.viewPager2

        // Add images from your drawable folder
        images =
            arrayListOf(
                R.drawable.nfc_img_1,
                R.drawable.nfc_img_2,
                R.drawable.nfc_img_3,
            )

        adapter = ImageRequestNFCAdapter(requireContext(), images)
        viewPager.adapter = adapter

        // Attach TabLayout to ViewPager2 using TabLayoutMediator
        TabLayoutMediator(tabLayout, viewPager) { _, _ -> }.attach()

        // Auto-scroll
        autoSwipeViewPager()
        val user =
            com.woleapp.netpos.contactless.util.Singletons.gson.fromJson(
                Prefs.getString(
                    PREF_USER,
                    "",
                ),
                User::class.java,
            )
        val accountNumber =
            Singletons.gson.fromJson(
                Prefs.getString(
                    PREF_ACCOUNT_NUMBER,
                    "",
                ),
                MerchantDetail::class.java,
            )
        binding.customername.setText(user.business_name)
        binding.accountNumber.setText(accountNumber.acctNumber)

        binding.requestBtn.setOnClickListener {
            requestDevice()
        }

        loader = alertDialog(requireContext(), true)
        deviceId = getDeviceId(requireContext())
    }

    private fun autoSwipeViewPager() {
        val delayTimeMillis: Long = 3000 // 3 seconds delay between swipes
        var currentPage = 0

        val runnable =
            object : Runnable {
                override fun run() {
                    if (currentPage == adapter.itemCount) {
                        currentPage = 0
                    }
                    viewPager.setCurrentItem(currentPage++, true)
                    handler.postDelayed(this, delayTimeMillis)
                }
            }

        handler.post(runnable)
    }

    private fun requestDevice() {
        if (binding.customername.text?.isNotEmpty() == true || binding.accountNumber.text?.isNotEmpty() == true) {
            requestNfcDevice()
        }
    }

    private fun requestNfcDevice() {
        loader.show()

        val email =
            Singletons.gson.fromJson(Prefs.getString(PREF_USER, ""), User::class.java).email
        val nfcRequest =
            RequestNfcRequest(
                email.toString(),
            )
        observeServerResponse(
            viewModel.requestNfcDevice(
                nfcRequest,
                initPartnerId(),
                deviceId,
            ),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            requireActivity().supportFragmentManager.popBackStack()
            showToast("Request received successfully!")
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        handler.removeCallbacksAndMessages(null) // Remove callbacks when activity is destroyed
    }
}
