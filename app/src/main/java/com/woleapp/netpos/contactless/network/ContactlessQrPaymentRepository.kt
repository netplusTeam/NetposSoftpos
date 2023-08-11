package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.PayThroughMPGSRequest
import com.woleapp.netpos.contactless.model.PayWithQrRequest
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ContactlessQrPaymentRepository @Inject constructor(
    private val qrPaymentService: QrPaymentService,
) {
    fun payWithQr(
        payWithQrRequest: PayWithQrRequest,
    ) = qrPaymentService.payWithQr(
        payWithQrRequest,
    )
    fun payThroughMPGS(amount: String, cardno: String, cvv: String, expiry: String, netpluspayMid: String, netposMid: String, pin: String,
                       terminalId: String
    ) = qrPaymentService.payThroughMPGS(
        PayThroughMPGSRequest(amount, cardno, cvv, expiry, netpluspayMid, netposMid, pin, terminalId),
    )
}
