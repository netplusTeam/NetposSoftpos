package com.woleapp.netpos.contactless.model

data class ConfirmOTPRequest(
    val phone: String,
    val accountNumber: String,
    val otpId: String,
    val otp: String
)