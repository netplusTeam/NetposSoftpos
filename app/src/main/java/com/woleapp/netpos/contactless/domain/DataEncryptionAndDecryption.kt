package com.woleapp.netpos.contactless.domain

interface DataEncryptionAndDecryption {
    fun encryptData(data: String): String
    fun decryptData(encryptedData: String): String
}
