package com.woleapp.netpos.contactless.util.encryption

import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject
import java.security.MessageDigest
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec

class DataEncryptionAndDecryptionImpl @AssistedInject constructor(
    @Assisted("secretKey") private val secretKey: String,
    @Assisted("iv") private val iv: String,
) : DataEncryptionAndDecryption {

    private fun getEncryptionKey(secreteKey: String): ByteArray {
        val digest = MessageDigest.getInstance("SHA-512")
        val keyBytes = digest.digest(secreteKey.toByteArray())
        return keyBytes.copyOfRange(0, 32)
    }

    private fun getEncryptionIV(iv: String): ByteArray {
        val digest = MessageDigest.getInstance("SHA-512")
        val ivBytes = digest.digest(iv.toByteArray())
        return ivBytes.copyOfRange(0, 16)
    }

    override fun encryptData(data: String): String {
        try {
            val key = SecretKeySpec(getEncryptionKey(secretKey), "AES")
            val encryptionIV = IvParameterSpec(getEncryptionIV(iv))
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
            val key = SecretKeySpec(getEncryptionKey(secretKey), "AES")
            val encryptionIV = IvParameterSpec(getEncryptionIV(iv))
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
