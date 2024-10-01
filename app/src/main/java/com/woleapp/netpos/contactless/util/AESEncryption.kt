import android.util.Log
import org.json.JSONObject
import java.security.SecureRandom
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

object AESGCMEncryption {
    private const val AES_KEY_SIZE = 256 // bits
    private const val GCM_IV_LENGTH = 12 // bytes
    private const val GCM_TAG_LENGTH = 16 // bytes

    fun generateAndPrintSecretKey() {
        val secretKey = generateSecretKey()
        val secretKeyBase64 = Base64.getEncoder().encodeToString(secretKey.encoded)
        Log.d("Secret", "$secretKeyBase64")
    }

    fun generateSecretKey(): SecretKey {
        val keyGenerator = KeyGenerator.getInstance("AES")
        keyGenerator.init(AES_KEY_SIZE)
        return keyGenerator.generateKey()
    }

    // Function to encrypt data
    fun encryptFields(
        username: String,
        password: String,
        deviceId: String,
        base64SecretKey: String,
    ): Triple<String, String, String> {
        // Create a JSON object with the fields
        val jsonObject = JSONObject()
        jsonObject.put("username", username)
        jsonObject.put("password", password)
        jsonObject.put("deviceId", deviceId)

        // Convert the JSON object to a string
        val jsonString = jsonObject.toString()

        // Use the encrypt function to encrypt the JSON string
        return encrypt(jsonString, base64SecretKey)
    }

    fun encrypt(
        plainText: String,
        base64SecretKey: String,
    ): Triple<String, String, String> {
        // Decode the Base64 string to get the key in bytes
        val decodedKey = Base64.getDecoder().decode(base64SecretKey)

        // Convert the decoded byte array into a SecretKey object
        val secretKey = SecretKeySpec(decodedKey, 0, decodedKey.size, "AES")

        // Generate random IV
        val iv = ByteArray(GCM_IV_LENGTH)
        SecureRandom().nextBytes(iv)

        // Initialize the cipher for encryption with AES/GCM/NoPadding
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        val spec = GCMParameterSpec(GCM_TAG_LENGTH * 8, iv)
        cipher.init(Cipher.ENCRYPT_MODE, secretKey, spec)

        // Encrypt the plain text
        val encryptedBytes = cipher.doFinal(plainText.toByteArray(Charsets.UTF_8))

        // Encode the encrypted data, IV, and secret key back to Base64 for compatibility
        val encryptedDataBase64 = Base64.getEncoder().encodeToString(encryptedBytes)
        val ivBase64 = Base64.getEncoder().encodeToString(iv)
        val secretKeyBase64 = Base64.getEncoder().encodeToString(secretKey.encoded)

        return Triple(encryptedDataBase64, ivBase64, secretKeyBase64)
    }

    // Function to decrypt data
    fun decrypt(
        encryptedDataBase64: String,
        ivBase64: String,
        secretKeyBase64: String,
    ): String {
        val encryptedData = Base64.getDecoder().decode(encryptedDataBase64)
        val iv = Base64.getDecoder().decode(ivBase64)
        val secretKey = SecretKeySpec(Base64.getDecoder().decode(secretKeyBase64), "AES")

        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        val spec = GCMParameterSpec(GCM_TAG_LENGTH * 8, iv)
        cipher.init(Cipher.DECRYPT_MODE, secretKey, spec)

        val decryptedBytes = cipher.doFinal(encryptedData)
        return String(decryptedBytes, Charsets.UTF_8)
    }
}
