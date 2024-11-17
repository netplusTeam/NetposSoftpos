package com.woleapp.netpos.contactless.model.payment.transactions

data class AllTransactionsResponseDto(
    val `data`: Data,
    val message: String,
    val status: Boolean
)