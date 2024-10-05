package com.woleapp.netpos.contactless.model

data class BankPExistingCustomerError(
    val data: List<Any>,
    val message: String,
    val status: Boolean,
)
