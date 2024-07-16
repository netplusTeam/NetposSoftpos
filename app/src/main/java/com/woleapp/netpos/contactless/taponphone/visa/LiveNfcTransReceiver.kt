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
            mTagCom?.let {
                if (!it.isConnected) {
                    it.connect()
                }
                response = it.transceive(pCommand)
            } ?: throw IOException("IsoDep is null")
        } catch (e: IOException) {
            log.append("<font color='red'><b>error:</b> " + e.message).append("</font><br/>")
            throw IOException(e.message)
        } finally {
            try {
                mTagCom?.close()
            } catch (e: IOException) {
                log.append("<font color='red'><b>error closing:</b> " + e.message).append("</font><br/>")
            }
        }
        rawResponse = response
        log.append("<font color='blue'><b>resp:</b> " + BytesUtils.bytesToString(response))
            .append("</font><br/>")
        return response!!
    }

    override fun destroy() {
        try {
            mTagCom?.close()
        } catch (e: IOException) {
            log.append("<font color='red'><b>error closing:</b> " + e.message).append("</font><br/>")
        }
    }

    override fun isCardPresent(): Boolean {
        return mTagCom != null
    }
}
