package com.woleapp.netpos.contactless.model


data class AccountDeletionRequest(
    val deviceId: String,
    val username: String
)
