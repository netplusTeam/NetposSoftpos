package com.woleapp.netpos.contactless.taponphone.visa

import android.nfc.tech.IsoDep
import com.visa.app.ttpkernel.NfcTransceiver
import com.woleapp.netpos.contactless.util.BytesUtils
import java.io.IOException

class LiveNfcTransReceiver(
    private val log: StringBuilder,
    private val mTagCom: IsoDep?,
    private var rawResponse: ByteArray? = null
) : NfcTransceiver {
    override fun transceive(pCommand: ByteArray?): ByteArray {
        log.append("=================<br/>")
        log.append("<font color='green'><b>send:</b> " + BytesUtils.bytesToString(pCommand))
        log.append("<font color='green'><b>send:</b> " + BytesUtils.bytesToString(pCommand))
            .append("</font><br/>")
        var response: ByteArray? = null
        response = try {
            // send command to emv card
            mTagCom!!.transceive(pCommand)
        } catch (e: IOException) {
            throw IOException(e.message)
        }
        rawResponse = response
        log.append("<font color='blue'><b>resp:</b> " + BytesUtils.bytesToString(response))
        log.append("<font color='blue'><b>resp:</b> " + BytesUtils.bytesToString(response))
            .append("</font><br/>")
        return response!!
    }

    override fun destroy() {

    }

    override fun isCardPresent(): Boolean {
        return true
    }
}

