package com.woleapp.netpos.contactless.taponphone.verve

import android.annotation.SuppressLint
import android.content.Context
import android.os.Build
import android.util.Log
import com.alcineo.softpos.payment.api.DeviceInfoAPI
import com.alcineo.softpos.payment.api.SoftposAPI
import com.alcineo.softpos.payment.api.SoftposPropertiesAPI
import java.util.Arrays
import java.util.Observable

@SuppressLint("LogNotTimber")
class VerveSoftPosInitialization private constructor(context: Context) : Observable() {

    var isDeviceReady = false

    init {
        initializeSoftPos(context)
    }

    private fun initializeSoftPos(context: Context) {
        Thread {
            synchronized(this) {
                if (!isInitialized) {
                    SoftposAPI.initialize(context)
                    isInitialized = true
                } else {
                    Log.i(TAG, "SoftposAPI is already initialized")
                }
            }

            Log.i(
                TAG,
                """
                    -----------------------------------------------------
                    DUID: ${Arrays.toString(DeviceInfoAPI.getDeviceUid())}
                    SoftPOS library version: ${SoftposPropertiesAPI.getSoftposLibraryVersion()}
                    """.trimIndent() + String.format(
                    "\nAndroid version %s, security patch %s",
                    Build.VERSION.SDK_INT,
                    Build.VERSION.SECURITY_PATCH.replace("-", "")
                ) +
                        "\n--------------------------------------------------------------------------"
            )
            setChanged()
            isDeviceReady = true
            notifyObservers(true)
        }.start()
    }

    companion object {
        private val TAG = VerveSoftPosInitialization::class.java.simpleName
        @Volatile
        private var isInitialized = false

        @Volatile
        private var instance: VerveSoftPosInitialization? = null

        fun getInstance(context: Context): VerveSoftPosInitialization {
            return instance ?: synchronized(this) {
                instance ?: VerveSoftPosInitialization(context).also { instance = it }
            }
        }
    }
}