package com.woleapp.netpos.contactless.model

data class GeneralResponse(
    val status: Boolean,
    val message: String
)
data class ResetPasswordResponseForProvidus(
    val status: Boolean,
    val message: String,
    val accountNumber: String
)
