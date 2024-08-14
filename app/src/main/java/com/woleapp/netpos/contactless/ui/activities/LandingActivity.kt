package com.woleapp.netpos.contactless.ui.activities

import android.content.Intent
import android.content.SharedPreferences
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.view.Window
import android.view.WindowManager
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.Button
import android.widget.TextView
import androidx.viewpager.widget.ViewPager
import com.google.android.material.tabs.TabLayout
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.OnBoardingViewPagerAdapter
import com.woleapp.netpos.contactless.databinding.ActivityLandingBinding
import com.woleapp.netpos.contactless.model.onboarding.OnBoardingData
import java.util.ArrayList

class LandingActivity : AppCompatActivity() {

    private var _binding: ActivityLandingBinding? = null
    private val binding get() = _binding!!

    private lateinit var sliderDot: TabLayout
    private var onBoardingViewPagerAdapter: OnBoardingViewPagerAdapter? = null
    private var onBoardingViewPager: ViewPager? = null
    private lateinit var button: Button
    private lateinit var loginBtn: Button
    private lateinit var signupBtn: Button
    private var position = 0
    private lateinit var onBoardingDataList: MutableList<OnBoardingData>
    private lateinit var buttonAnimation : Animation

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setTheme(R.style.AppTheme)
        if (BuildConfig.FLAVOR.contains("providuspos")){
            _binding = ActivityLandingBinding.inflate(layoutInflater)
        }else{
            startActivity(
                Intent(this, AuthenticationActivity::class.java).apply {
                    flags =
                        Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                }
            )
        }

        //when this activity is about to be launched we need to check if
        // the activity has been seen by the user
        if(restorePrefData()){
            val intent= Intent(applicationContext, MainActivity::class.java)
            startActivity(intent)
            finish()
        }
        setContentView(binding.root)

        // initializing the views
        onBoardingViewPager = binding.screenPager
        sliderDot = binding.onBoardingActivityTabLayout
        button = binding.activityNextButton
        loginBtn = binding.btnLogin
        signupBtn = binding.btnSignup
        buttonAnimation = AnimationUtils.loadAnimation(applicationContext, R.anim.button_animation)


        loginBtn.setOnClickListener {
            startActivity(
                Intent(this, AuthenticationActivity::class.java).apply {
                    flags =
                        Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                },
            )
        }

        signupBtn.setOnClickListener {
            val intent = Intent(this, AuthenticationActivity::class.java)
            intent.flags =
                Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            intent.putExtra("navigateToFragment", true)
            startActivity(intent)
        }

        setOnBoardingViewPagerAdapter()

        // Next button click listener
        button.setOnClickListener {
            position = onBoardingViewPager!!.currentItem
            if (position < onBoardingDataList.size) {
                position++
                onBoardingViewPager!!.currentItem = position
            }
            if(position == onBoardingDataList.size - 1) { //when we reach the last screen
                loadLastScreen()
            }
        }

        //Tab indicator listener
        sliderDot.addOnTabSelectedListener(object : TabLayout.OnTabSelectedListener {
            override fun onTabSelected(tab: TabLayout.Tab?) {
                if(tab!!.position == onBoardingDataList.size - 1){
                    loadLastScreen()
                }
            }

            override fun onTabUnselected(tab: TabLayout.Tab?) {

            }

            override fun onTabReselected(tab: TabLayout.Tab?) {

            }

        })

    }

    private fun restorePrefData(): Boolean {
        val pref: SharedPreferences = application.getSharedPreferences("MyPref", MODE_PRIVATE)
        val isIntroActivitySeenBefore: Boolean = pref.getBoolean("IsIntroActivityOpened", false)
        return isIntroActivitySeenBefore

    }

    private fun startNewActivity() {
        //open new activity
        val intent = Intent(this, MainActivity::class.java)
        startActivity(intent)

        //we need to save a value to storage so next time the user run the app
        // we could know that he already checked the intro activity
        // I will will use shared preferences for this.
        sharedPrefsData()
        finish()

    }

    private fun sharedPrefsData() {
        val pref: SharedPreferences = application.getSharedPreferences("MyPref", MODE_PRIVATE)
        val editor: SharedPreferences.Editor = pref.edit()
        editor.putBoolean("IsIntroActivityOpened", true)
        editor.commit()
    }

    // create a function outside the onCreate to bind the variables to the actual views
    private fun setOnBoardingViewPagerAdapter() {
        onBoardingDataList = ArrayList()
        onBoardingDataList.add(OnBoardingData("Tap card to make payments", "Make payment conveniently with your NFC enabled cards with just a tap", R.drawable.onboarding_img_1))
        onBoardingDataList.add(OnBoardingData("Scan QR codes to make payments", "Perform transactions conveniently with scan to pay", R.drawable.onboarding_img_2))

        onBoardingViewPagerAdapter = OnBoardingViewPagerAdapter(this, onBoardingDataList)
        onBoardingViewPager!!.adapter = onBoardingViewPagerAdapter
        sliderDot.setupWithViewPager(onBoardingViewPager, true)
    }

    private fun loadLastScreen() {
        button.visibility = View.INVISIBLE
        sliderDot.visibility = View.INVISIBLE

    }


}
