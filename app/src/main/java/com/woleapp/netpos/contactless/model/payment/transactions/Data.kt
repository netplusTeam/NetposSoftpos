package com.woleapp.netpos.contactless.model.payment.transactions

data class Data(
    val page: Int,
    val pageSize: Int,
    val pbt_total: Int,
    val pos_total: Int,
    val transactions: List<Transaction>
)