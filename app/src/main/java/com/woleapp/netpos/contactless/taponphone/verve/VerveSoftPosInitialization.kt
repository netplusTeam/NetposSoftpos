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
class VerveSoftPosInitialization(context: Context) : Observable() {
    var isDeviceReady = false
    /**
     * Initialization process
     * Tasks are ordered and should not be reorganized
     */
    init {
        Thread {
            SoftposAPI.initialize(context)
            Log.i(
                TAG,
                """
                    
                    -----------------------------------------------------
                    DUID: ${Arrays.toString(DeviceInfoAPI.getDeviceUid())}
                    SoftPOS library version: ${SoftposPropertiesAPI.getSoftposLibraryVersion()}
                    """.trimIndent() + String.format(
                    "\nAndroid version %s, security patch %s",
                    Build.VERSION.SDK_INT,
                    Build.VERSION.SECURITY_PATCH.replace("-".toRegex(), "")
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
    }
}