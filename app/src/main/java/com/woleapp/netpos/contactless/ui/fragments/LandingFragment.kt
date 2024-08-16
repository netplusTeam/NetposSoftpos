package com.woleapp.netpos.contactless.ui.fragments

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.Button
import androidx.viewpager.widget.ViewPager
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.OnBoardingViewPagerAdapter
import com.woleapp.netpos.contactless.databinding.FragmentLandingBinding
import com.woleapp.netpos.contactless.databinding.FragmentLoginBinding
import com.woleapp.netpos.contactless.model.onboarding.OnBoardingData
import com.woleapp.netpos.contactless.ui.activities.AuthenticationActivity
import java.util.ArrayList


class LandingFragment : BaseFragment() {

    private lateinit var binding: FragmentLandingBinding
    private var onBoardingViewPagerAdapter: OnBoardingViewPagerAdapter? = null
    private var onBoardingViewPager: ViewPager? = null
    private lateinit var loginBtn: Button
    private lateinit var signupBtn: Button
    private lateinit var onBoardingDataList: MutableList<OnBoardingData>
    private lateinit var buttonAnimation : Animation

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        // Inflate the layout for this fragment
        binding = FragmentLandingBinding.inflate(inflater, container, false).apply {
            lifecycleOwner = viewLifecycleOwner
            executePendingBindings()
        }
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // initializing the views
        onBoardingViewPager = binding.screenPager
        loginBtn = binding.btnLogin
        signupBtn = binding.btnSignup
        buttonAnimation = AnimationUtils.loadAnimation(requireContext(), R.anim.button_animation)

        setOnBoardingViewPagerAdapter()

        loginBtn.setOnClickListener {
            showFragment(
                LoginFragment(),
                containerViewId = R.id.auth_container,
                fragmentName = "Login Fragment",
            )
        }

        signupBtn.setOnClickListener {
            showFragment(
                NewOrExistingFragment(),
                containerViewId = R.id.auth_container,
                fragmentName = "NewOrExisting Fragment",
            )
        }
    }

    // create a function outside the onCreate to bind the variables to the actual views
    private fun setOnBoardingViewPagerAdapter() {
        onBoardingDataList = ArrayList()
        onBoardingDataList.add(OnBoardingData("Tap card to make payments", "Make payment conveniently with your NFC enabled cards with just a tap", R.drawable.onboarding_img_1))
        onBoardingDataList.add(OnBoardingData("Scan QR codes to make payments", "Perform transactions conveniently with scan to pay", R.drawable.onboarding_img_2))

        onBoardingViewPagerAdapter = OnBoardingViewPagerAdapter(requireContext(), onBoardingDataList)
        onBoardingViewPager!!.adapter = onBoardingViewPagerAdapter
    }


}