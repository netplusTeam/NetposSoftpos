package com.woleapp.netpos.contactless.util

import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader

class RootCheck ( var mContext: Context) {
    private val binaryPaths = arrayOf(
        "/data/local/",
        "/data/local/bin/",
        "/data/local/xbin/",
        "/sbin/",
        "/su/bin/",
        "/system/bin/",
        "/system/bin/.ext/",
        "/system/bin/failsafe/",
        "/system/sd/xbin/",
        "/system/usr/we-need-root/",
        "/system/xbin/",
        "/system/app/Superuser.apk",
        "/cache",
        "/data",
        "/dev"
    )
    private val dangerousPackages = arrayOf(
        "com.devadvance.rootcloak",
        "com.devadvance.rootcloakplus",
        "com.koushikdutta.superuser",
        "com.thirdparty.superuser",
        "com.topjohnwu.magisk",
        "org.lsposed.manager",
        "com.devadvance.rootcloak2"
    )

    fun rootBeerCheck(): String {
        return if (DetectTestKeys() || checkSuExists() || checkForBusyBoxBinary() || checkForSuBinary() || checkPackages(
                mContext
            )
        ) "DEVICE IS ROOTED!" else "DEVICE IS NOT ROOTED"
    }

    private fun DetectTestKeys(): Boolean {
        val buildTags = Build.TAGS
        return buildTags != null && buildTags.contains("test-keys")
    }

    private fun checkForBinary(filename: String): Boolean {
        for (path in binaryPaths) {
            val f = File(path, filename)
            val fileExists = f.exists()
            if (fileExists) {
                return true
            }
        }
        return false
    }

    private fun checkForSuBinary(): Boolean {
        return checkForBinary("su") //checking for su binary
    }

    private fun checkForBusyBoxBinary(): Boolean {
        return checkForBinary("busybox") //checking for busybox
    }

    private fun checkSuExists(): Boolean {
        var process: Process? = null
        return try {
            process = Runtime.getRuntime()
                .exec(arrayOf("/system /xbin/which", "su")) //Checking if su binary exists
            val `in` = BufferedReader(InputStreamReader(process.inputStream))
            val line = `in`.readLine()
            process.destroy()
            line != null
        } catch (e: Exception) {
            process?.destroy()
            false
        }
    }

    private fun checkPackages(ctx: Context): Boolean {
        val pm = ctx.packageManager
        for (name in dangerousPackages) {
            if (isPackageInstalled(name, pm)) {
                return true
            }
        }
        return false
    }

    private fun isPackageInstalled(packageName: String, packageManager: PackageManager): Boolean {
        return try {
            packageManager.getApplicationInfo(packageName, 0).enabled
        } catch (e: PackageManager.NameNotFoundException) {
            false
        }
    }

    companion object {
        private const val TAG = "RootCheck"
      //  private lateinit var mContext: Context
    }
}