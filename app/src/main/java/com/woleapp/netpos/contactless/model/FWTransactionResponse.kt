package com.woleapp.netpos.contactless.model

data class FWTransactionResponse(
    val amount: String,
    val authCode: String,
    val cardPan: String,
    val host: String,
    val isFinal: Boolean,
    val responseCode: String,
    val responseMessage: String,
    val rrn: String,
    val stan: String,
    val terminalId: String,
    val uniqueID: String
)