package com.woleapp.netpos.contactless.model.payment

data class PaymentResponseDto(
    val `data`: Data,
    val message: String,
    val status: Boolean
)