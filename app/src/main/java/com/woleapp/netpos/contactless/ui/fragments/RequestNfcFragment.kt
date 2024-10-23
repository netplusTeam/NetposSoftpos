package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import androidx.viewpager2.widget.ViewPager2
import com.google.android.gms.flags.Singletons
import com.google.android.material.tabs.TabLayoutMediator
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.ImageRequestNFCAdapter
import com.woleapp.netpos.contactless.databinding.FragmentRequestNfcBinding
import com.woleapp.netpos.contactless.model.MerchantDetail
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.util.PREF_ACCOUNT_NUMBER
import com.woleapp.netpos.contactless.util.PREF_USER
import kotlinx.android.synthetic.main.fragment_request_nfc.*

class RequestNfcFragment : Fragment() {
    private lateinit var binding: FragmentRequestNfcBinding
    private lateinit var viewPager: ViewPager2
    private lateinit var images: List<Int>
    private lateinit var adapter: ImageRequestNFCAdapter
    private val handler = Handler(Looper.getMainLooper())

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
            com.woleapp.netpos.contactless.util.Singletons.gson.fromJson(
                Prefs.getString(
                    PREF_ACCOUNT_NUMBER,
                    "",
                ),
                MerchantDetail::class.java,
            )
        Log.d("ERROR", accountNumber.acctNumber)
        binding.customername.setText(user.business_name)
        binding.accountNumber.setText(accountNumber.acctNumber)
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

    override fun onDestroy() {
        super.onDestroy()
        handler.removeCallbacksAndMessages(null) // Remove callbacks when activity is destroyed
    }
}
