package com.woleapp.netpos.contactless.util.encryption

import com.google.android.gms.common.util.Hex
import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec

class DataEncryptionAndDecryptionImpl @AssistedInject constructor(
    @Assisted("secretKey") private val secretKey: String,
    @Assisted("iv") private val iv: String,
) : DataEncryptionAndDecryption {

    private fun getCipher(cipherMode: Int): Cipher =
        Cipher.getInstance("AES/CBC/PKCS5PADDING").apply {
            init(
                cipherMode,
                SecretKeySpec(
                    secretKey.toByteArray(),
                    "AES",
                ),
                IvParameterSpec(this@DataEncryptionAndDecryptionImpl.iv.toByteArray()),
            )
        }

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

    override fun encryptData(data: String): String =
        Hex.bytesToStringLowercase(
            getCipher(Cipher.ENCRYPT_MODE).doFinal(data.toByteArray(StandardCharsets.UTF_8)),
        )

    override fun decryptData(encryptedData: String): String =
        String(
            getCipher(Cipher.DECRYPT_MODE).doFinal(
                Hex.stringToBytes(encryptedData),
            ),
            StandardCharsets.UTF_8,
        )
}
