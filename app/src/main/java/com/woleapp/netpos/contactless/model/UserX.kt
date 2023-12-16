package com.woleapp.netpos.contactless.model

data class MerchantDetail(
    val acctNumber: String,
    val bank: String,
    val businessName: String,
    val merchantId: String,
    val partnerId: String,
    val terminalId: String
)