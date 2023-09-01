package com.woleapp.netpos.contactless.model

data class AccountNumberLookUpResponse(
    val status: Boolean,
    val phone: String,
    val account_number: String,
    val message: String,
)
