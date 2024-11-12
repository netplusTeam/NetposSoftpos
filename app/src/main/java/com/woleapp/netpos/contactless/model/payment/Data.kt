package com.woleapp.netpos.contactless.model.payment

data class Data(
    val page: Int,
    val pageSize: Int,
    val total: Int,
    val transactions: List<Transaction>
)