package com.woleapp.netpos.contactless.util

import java.security.SecureRandom
import java.util.*
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec


object EncryptionUtils {


    fun encrypt(data: String, secretKey: SecretKey): Triple<String, String, String> {
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")

        // Generate a 12-byte IV for AES-GCM
        val iv = ByteArray(12)
        SecureRandom().nextBytes(iv)
        val gcmParameterSpec = GCMParameterSpec(128, iv)

        cipher.init(Cipher.ENCRYPT_MODE, secretKey, gcmParameterSpec)

        val encryptedBytes = cipher.doFinal(data.toByteArray(Charsets.UTF_8))

        // Get the Authentication Tag (important for GCM)
        val authTag = cipher.iv.copyOfRange(cipher.iv.size - 16, cipher.iv.size)

        val encryptedData = Base64.getEncoder().encodeToString(encryptedBytes)
        val ivString = Base64.getEncoder().encodeToString(iv)
        val authTagString = Base64.getEncoder().encodeToString(authTag)

        return Triple(encryptedData, ivString, authTagString)
    }

    
    fun generateSecretKey(): SecretKey {
        val keyGenerator = KeyGenerator.getInstance("AES")
        keyGenerator.init(256) // 256-bit AES key
        return keyGenerator.generateKey()
    }


    fun decrypt(encryptedData: String, ivString: String, authTagString: String, secretKey: SecretKey): String {
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")

        // Decode the Base64 IV and Authentication Tag
        val iv = Base64.getDecoder().decode(ivString)
        val authTag = Base64.getDecoder().decode(authTagString)

        val gcmParameterSpec = GCMParameterSpec(128, iv)
        cipher.init(Cipher.DECRYPT_MODE, secretKey, gcmParameterSpec)

        // Set the Authentication Tag
        cipher.updateAAD(authTag)

        val decodedData = Base64.getDecoder().decode(encryptedData)
        val decryptedBytes = cipher.doFinal(decodedData)

        return String(decryptedBytes, Charsets.UTF_8)
    }


}
