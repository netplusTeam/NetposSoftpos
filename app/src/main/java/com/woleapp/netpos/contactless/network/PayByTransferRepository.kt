package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.AccountNumberLookUpRequest
import com.woleapp.netpos.contactless.model.NotificationRegisterDeviceTokenModel
import com.woleapp.netpos.contactless.model.PayWithQrRequest
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class PayByTransferRepository @Inject constructor(
    private val payByTransferService: PayByTransferService
) {

    fun getMerchantDetails(token: String, netPlusPayMid: String) = payByTransferService.getMerchantDetails(token, netPlusPayMid)

}