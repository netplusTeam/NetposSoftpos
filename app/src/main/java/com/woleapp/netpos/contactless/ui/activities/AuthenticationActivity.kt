@file:Suppress("ktlint:standard:no-wildcard-imports")

package com.woleapp.netpos.contactless.ui.activities

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.nfc.NfcAdapter
import android.nfc.NfcManager
import android.nfc.Tag
import android.os.Bundle
import android.provider.Settings
import android.util.Log
import android.view.WindowManager
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.ActivityAuthenticationBinding
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.ui.fragments.LandingFragment
import com.woleapp.netpos.contactless.ui.fragments.LoginFragment
import com.woleapp.netpos.contactless.ui.fragments.NewOrExistingFragment
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.isDebuggableModeEnabled
import dagger.hilt.android.AndroidEntryPoint

@Suppress("DEPRECATION")
@AndroidEntryPoint
class AuthenticationActivity : AppCompatActivity(), NfcAdapter.ReaderCallback {
    private lateinit var binding: ActivityAuthenticationBinding
    private var nfcAdapter: NfcAdapter? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setTheme(R.style.AppTheme)
        binding = DataBindingUtil.setContentView(this, R.layout.activity_authentication)
        Log.e("TAG", "onCreate: Reached here")

        val nfcManager: NfcManager = getSystemService(NFC_SERVICE) as NfcManager
        nfcAdapter = nfcManager.defaultAdapter

        window.setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE)
        if (nfcAdapter != null) {
            // Toast.makeText(this, "Device has NFC support", Toast.LENGTH_SHORT).show()
            if (nfcAdapter?.isEnabled == false) {
                nfcNotEnabledDialog()
            } else {
                Prefs.putBoolean(PREF_NFC_ENABLED, true)
            }
        }
        val debuggableModeEnabled = isDebuggableModeEnabled(applicationContext)

        if (RootUtil.isDeviceRooted) {
            Toast.makeText(this, getString(R.string.device_is_rooted), Toast.LENGTH_SHORT).show()
            finish()
        }
//        if (debuggableModeEnabled) {
//            Toast.makeText(this, getString(R.string.device_is_a_debug_device), Toast.LENGTH_SHORT)
//                .show()
//            finish()
//        }
        if (Prefs.getBoolean(PREF_AUTHENTICATED, false) && tokenValid()) {
            startActivity(
                Intent(this, MainActivity::class.java).apply {
                    flags =
                        Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                },
            )
            NetPosTerminalConfig.init(applicationContext)
            finish()
        }
        Log.e("TAG", "onCreate>>: ${BuildConfig.FLAVOR}")
        if (BuildConfig.FLAVOR.contains("providuspos")) {
            showFragment(LandingFragment())
        } else {
            showFragment(LoginFragment())
        }
        if (ActivityCompat.checkSelfPermission(
                this,
                Manifest.permission.READ_PHONE_STATE,
            ) != PackageManager.PERMISSION_GRANTED
        ) {
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.READ_PHONE_STATE),
                AppConstants.READ_PHONE_STATE_REQUEST_CODE,
            )
        }

        if (intent.getBooleanExtra("navigateToFragment", false)) {
            // Navigate to the Fragment
            supportFragmentManager.beginTransaction()
                .replace(R.id.auth_container, NewOrExistingFragment())
                .commit()
        }
    }

    private fun nfcNotEnabledDialog() {
        android.app.AlertDialog.Builder(this)
            .setTitle("NFC Check")
            .setMessage("Your NFC is not yet enabled. Would you like to continue with the external device to process transactions?")
            .setCancelable(false)
            .setPositiveButton("Yes") { dialog, _ ->
                Prefs.putBoolean(PREF_NFC_ENABLED, false)
                dialog.dismiss()
            }
            .setNegativeButton("No") { _, _ ->
                // Save preference to never show this dialog again
                androidx.appcompat.app.AlertDialog.Builder(this).setTitle("NFC Message")
                    .setMessage("NFC is not enabled, goto device settings to enable")
                    .setCancelable(false).setPositiveButton("Settings") { dialog, _ ->
                        dialog.dismiss()
                        startActivityForResult(
                            Intent(Settings.ACTION_NFC_SETTINGS),
                            0,
                        )
                    }.show()
            }
            .show()
    }

    private fun tokenValid(): Boolean {
        val token = Prefs.getString(PREF_USER_TOKEN, null)
        return !(token.isNullOrEmpty() || JWTHelper.isExpired(token))
    }

    private fun showFragment(targetFragment: Fragment) {
        try {
            supportFragmentManager.beginTransaction()
                .apply {
                    replace(
                        R.id.auth_container,
                        targetFragment,
                        targetFragment.javaClass.simpleName,
                    )
                    setCustomAnimations(R.anim.right_to_left, android.R.anim.fade_out)
                    commit()
                }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    override fun onTagDiscovered(tag: Tag?) {
        tag?.let {
            if (it.toString() == NFC_A_TAG || it.toString() == NFC_B_TAG) {
                runOnUiThread {
                    nfcAdapter?.disableReaderMode(this)
                }
            }
        }
    }
}
