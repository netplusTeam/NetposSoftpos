package com.woleapp.netpos.contactless.taponphone.verve

import android.nfc.Tag
import android.nfc.tech.IsoDep
import android.util.Log
import com.alcineo.softpos.payment.api.interfaces.NFCListener
import com.alcineo.softpos.payment.model.CardStatus
import com.alcineo.utils.common.StringUtils
import com.google.firebase.crashlytics.FirebaseCrashlytics
import java.io.IOException

class VerveNFCListenerImpl : NFCListener {
    private var lastTagRead: IsoDep? = null

    override fun activateNFC() {}

    override fun deactivateNFC() {
        lastTagRead?.let {
            try {
                it.close()
            } catch (e: IOException) {
                Log.e(TAG, "deactivateNFC: ", e)
            }
        }
        lastTagRead = null
    }

    override fun getCardStatus(): CardStatus {
        return lastTagRead?.let {
            if (it.isConnected) CardStatus.PRESENT_ON_FIELD else CardStatus.ABSENT_OFF_FIELD
        } ?: CardStatus.ABSENT_OFF_FIELD
    }

    @Throws(Exception::class)
    override fun transceiveApdu(capdu: ByteArray): ByteArray {
        val isoDep = lastTagRead ?: throw IllegalStateException("lastTagRead is null!")
        val rapdu = isoDep.transceive(capdu)
        Log.i("C-APDU", StringUtils.convertBytesToHex(capdu))
        Log.i("R-APDU", StringUtils.convertBytesToHex(rapdu))
        return rapdu
    }

    override fun resetNFCField(): Boolean {
        deactivateNFC()
        activateNFC()
        return true
    }

    override fun setTimeout(timeout: Int) {
        lastTagRead?.timeout = timeout
    }

    override fun onNfcTagDiscovered(tag: Tag) {
        Log.d(TAG, "onNfcTagDiscovered: $tag")
        lastTagRead?.let {
            try {
                it.close()
            } catch (e: IOException) {
                Log.e(TAG, "onNfcTagDiscovered - closing previous tag: ", e)
                FirebaseCrashlytics.getInstance().setCustomKey("onNfcTagDiscovered - closing previous tag:", e.message ?: "Unknown error")
            }
        }

        lastTagRead = IsoDep.get(tag)
        lastTagRead?.let {
            try {
                it.connect()
                it.timeout = 3000
            } catch (e: IOException) {
                FirebaseCrashlytics.getInstance().setCustomKey("onNfcTagDiscovered - closing previous tag:", e.message ?: "Unknown error")
                try {
                    it.close()
                } catch (closeException: IOException) {
                    Log.e(TAG, "Error closing IsoDep: ", closeException)
                    FirebaseCrashlytics.getInstance().setCustomKey("Error closing IsoDep:", e.message ?: "Unknown error")
                }
                lastTagRead = null
            }
        }
    }

    companion object {
        private val TAG = VerveNFCListenerImpl::class.java.simpleName
    }
}
