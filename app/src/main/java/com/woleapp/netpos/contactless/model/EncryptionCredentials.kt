package com.woleapp.netpos.contactless.model

data class EncryptionCredentials(
    val iv: String,
    val secrete: String
)