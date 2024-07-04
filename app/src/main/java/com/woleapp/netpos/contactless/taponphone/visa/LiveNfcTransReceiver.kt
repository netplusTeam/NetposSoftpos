package com.woleapp.netpos.contactless.taponphone.visa

import android.nfc.tech.IsoDep
import com.visa.app.ttpkernel.NfcTransceiver
import com.woleapp.netpos.contactless.util.BytesUtils
import java.io.IOException

class LiveNfcTransReceiver(
    private val log: StringBuilder,
    private val mTagCom: IsoDep?,
    private var rawResponse: ByteArray? = null,
) : NfcTransceiver {
    override fun transceive(pCommand: ByteArray?): ByteArray {
        log.append("=================<br/>")
        log.append("<font color='green'><b>send:</b> " + BytesUtils.bytesToString(pCommand))
            .append("</font><br/>")
        var response: ByteArray? = null
        try {
            // Check if the tag is already connected
            if (!mTagCom!!.isConnected) {
                mTagCom.connect()
            }
            // send command to emv card
            response = mTagCom.transceive(pCommand)
            rawResponse = response
        } catch (e: IOException) {
            throw IOException(e.message)
        } finally {
            // Ensure the tag is closed to prevent connection issues
            if (mTagCom?.isConnected == true) {
                try {
                    mTagCom.close()
                } catch (e: IOException) {
                    // Handle potential IOException from close
                    log.append("<font color='red'><b>close error:</b> " + e.message).append("</font><br/>")
                }
            }
        }
        log.append("<font color='blue'><b>resp:</b> " + BytesUtils.bytesToString(response))
            .append("</font><br/>")
        return response!!
    }

    override fun destroy() {
        // Close the connection if it's still open
        if (mTagCom?.isConnected == true) {
            try {
                mTagCom.close()
            } catch (e: IOException) {
                log.append("<font color='red'><b>destroy close error:</b> " + e.message).append("</font><br/>")
            }
        }
    }

    override fun isCardPresent(): Boolean {
        return mTagCom != null
    }
}
