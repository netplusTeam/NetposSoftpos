package com.woleapp.netpos.contactless.model

data class PayThroughMPGSRequest(
    val amount: String,
    val cardno: String,
    val cvv: String,
    val expiry: String,
    val netpluspayMid: String,
    val netposMid: String,
    val pin: String,
    val terminalId: String
)