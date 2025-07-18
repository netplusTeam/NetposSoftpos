package com.woleapp.netpos.contactless.util

import android.app.Activity
import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Build
import android.os.Build.VERSION_CODES
import android.os.VibrationEffect
import android.os.Vibrator
import android.text.Html
import androidx.annotation.RequiresApi
import androidx.fragment.app.Fragment
import androidx.lifecycle.LifecycleOwner
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.util.AppConstants.LONG_150
import pub.devrel.easypermissions.EasyPermissions

data class DialogHelper(
    val dialogType: DialogType,
    val message: String,
    val actionName: String = "Retry",
    val action: (() -> Unit)? = null,
)

enum class DialogType(val title: String, val icon: Int) {
    SUCCESS(
        "Success",
        R.drawable.ic_success,
    ),
    FAILURE("Failure", R.drawable.ic_error),
    CONFIRMATION("Confirm", R.drawable.ic_warning),
}

private fun checkForPermission(context: Context, perms: String) =
    EasyPermissions.hasPermissions(
        context,
        perms,
    )

fun genericPermissionHandler(
    host: LifecycleOwner,
    context: Context,
    perm: String,
    permCode: Int,
    permRationale: String,
    fn: () -> Unit,
) {
    if (checkForPermission(context, perm)) {
        fn()
    } else {
        requestForPermission(
            host,
            permCode,
            permRationale,
            perm,
        )
    }
}

private fun requestForPermission(
    host: LifecycleOwner,
    requestCode: Int,
    permissionRationale: String,
    permissionToRequest: String,
) {
    if (host is Fragment) {
        EasyPermissions.requestPermissions(
            host,
            permissionRationale,
            requestCode,
            permissionToRequest,
        )
    } else {
        host as Activity
        EasyPermissions.requestPermissions(
            host,
            permissionRationale,
            requestCode,
            permissionToRequest,
        )
    }
}

fun vibrateThePhone(context: Context, duration: Long = LONG_150) {
    if (Build.VERSION.SDK_INT >= 26) {
        (context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator).vibrate(
            VibrationEffect.createOneShot(
                duration,
                VibrationEffect.DEFAULT_AMPLITUDE,
            ),
        )
    } else {
        (context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator).vibrate(duration)
    }
}

fun isInternetAvailable(context: Context): Boolean {
    val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager

    // For Android Q and above (API level 29 and above)
    return if (Build.VERSION.SDK_INT >= VERSION_CODES.Q) {
        val capabilities = connectivityManager.getNetworkCapabilities(connectivityManager.activeNetwork)
        capabilities?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) ?: false
    } else {
        // For below Android Q (API level 29)
        @Suppress("DEPRECATION")
        val activeNetworkInfo = connectivityManager.activeNetworkInfo
        activeNetworkInfo != null && activeNetworkInfo.isConnected
    }
}


@RequiresApi(VERSION_CODES.N)
fun formatStringsContainHtmlTags(input: String): String =
    Html.fromHtml(input, Html.FROM_HTML_MODE_COMPACT).toString()
