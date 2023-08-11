package com.woleapp.netpos.contactless.model

data class PayThroughMPGSErrorResponse(
    val amount: String,
    val code: String,
    val message: String,
    val orderId: String,
    val result: String,
    val review_status: String,
    val status: String,
    val transId: String
)