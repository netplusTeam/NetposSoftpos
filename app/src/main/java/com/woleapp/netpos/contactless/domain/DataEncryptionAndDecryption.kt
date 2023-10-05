package com.woleapp.netpos.contactless.domain

import com.woleapp.netpos.contactless.model.ConfirmOTPResponse

interface DataEncryptionAndDecryption {
    fun encryptData(data: String): String
    fun decryptData(encryptedData: String): String
}
