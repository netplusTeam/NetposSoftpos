package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.AccountNumberLookUpRequest
import com.woleapp.netpos.contactless.model.NotificationRegisterDeviceTokenModel
import com.woleapp.netpos.contactless.model.PayWithQrRequest
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class PayByTransferRepository @Inject constructor(
    private val payByTransferService: PayByTransferService,
    private val providusMerchantsAccountService: ProvidusMerchantsAccountService,
    private val fcmbMerchantsAccountService: FcmbMerchantsAccountService
) {

    fun getMerchantDetails(token: String, netPlusPayMid: String) = payByTransferService.getMerchantDetails(token, netPlusPayMid)
    fun getProvidusMerchantDetails(token: String, netPlusPayMid: String) = providusMerchantsAccountService.getMerchantDetails(token, netPlusPayMid)
    fun getFcmbMerchantDetails(token: String, netPlusPayMid: String) = fcmbMerchantsAccountService.getMerchantDetails(token, netPlusPayMid)

}