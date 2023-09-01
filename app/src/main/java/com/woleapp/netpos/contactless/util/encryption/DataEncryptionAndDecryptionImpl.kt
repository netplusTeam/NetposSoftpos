package com.woleapp.netpos.contactless.util.encryption

import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_SECRET_IV
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_SECRET_KEY
import java.security.MessageDigest
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec
import javax.inject.Inject

class DataEncryptionAndDecryptionImpl @Inject constructor() : DataEncryptionAndDecryption {

    private fun getEncryptionKey(): ByteArray {
        val digest = MessageDigest.getInstance("SHA-512")
        val keyBytes = digest.digest(STRING_SECRET_KEY.toByteArray())
        return keyBytes.copyOfRange(0, 32)
    }

    private fun getEncryptionIV(): ByteArray {
        val digest = MessageDigest.getInstance("SHA-512")
        val ivBytes = digest.digest(STRING_SECRET_IV.toByteArray())
        return ivBytes.copyOfRange(0, 16)
    }

    override fun encryptData(data: String): String {
        try {
            val key = SecretKeySpec(getEncryptionKey(), "AES")
            val encryptionIV = IvParameterSpec(getEncryptionIV())
            val cipher = Cipher.getInstance("AES/CBC/PKCS5Padding")
            cipher.init(Cipher.ENCRYPT_MODE, key, encryptionIV)
            val encryptedBytes = cipher.doFinal(data.toByteArray())
            return encryptedBytes.joinToString("") { "%02x".format(it) }
        } catch (err: Exception) {
            println(err)
        }
        return ""
    }

    override fun decryptData(encryptedData: String): String {
        try {
            val key = SecretKeySpec(getEncryptionKey(), "AES")
            val encryptionIV = IvParameterSpec(getEncryptionIV())
            val cipher = Cipher.getInstance("AES/CBC/PKCS5Padding")
            cipher.init(Cipher.DECRYPT_MODE, key, encryptionIV)
            val encryptedBytes =
                encryptedData.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
            val decryptedBytes = cipher.doFinal(encryptedBytes)
            return String(decryptedBytes)
        } catch (err: Exception) {
            println(err)
        }
        return ""
    }
}
