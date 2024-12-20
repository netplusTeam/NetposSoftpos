package com.woleapp.netpos.contactless.util

import android.content.Context
import android.content.IntentFilter
import android.nfc.NfcAdapter
import android.nfc.NfcManager
import android.nfc.Tag
import android.nfc.tech.IsoDep
import android.nfc.tech.MifareClassic
import android.nfc.tech.MifareUltralight
import android.nfc.tech.NfcA
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import android.text.TextUtils
import android.util.Log
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import timber.log.Timber
import java.io.File
import java.io.FileOutputStream
import java.security.KeyStore
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.PBEKeySpec
import javax.crypto.spec.SecretKeySpec
import kotlin.experimental.and

fun dumpTagData(tag: Tag): String {
    Timber.e("dump tag")
    val sb = StringBuilder()
    val id: ByteArray = tag.id
    sb.append("ID (hex): ").append(toHex(id)).append('\n')
    sb.append("ID (reversed hex): ").append(toReversedHex(id)).append('\n')
    sb.append("ID (dec): ").append(toDec(id)).append('\n')
    sb.append("ID (reversed dec): ").append(toReversedDec(id)).append('\n')
    val prefix = "android.nfc.tech."
    sb.append("Technologies: ")
    for (tech in tag.techList) {
        sb.append(tech.substring(prefix.length))
        sb.append(", ")
    }
    sb.delete(sb.length - 2, sb.length)
    for (tech in tag.techList) {
        if (tech == MifareClassic::class.java.name) {
            sb.append('\n')
            var type = "Unknown"
            try {
                val mifareTag = MifareClassic.get(tag)
                when (mifareTag.type) {
                    MifareClassic.TYPE_CLASSIC -> type = "Classic"
                    MifareClassic.TYPE_PLUS -> type = "Plus"
                    MifareClassic.TYPE_PRO -> type = "Pro"
                }
                sb.append("Mifare Classic type: ")
                sb.append(type)
                sb.append('\n')
                sb.append("Mifare size: ")
                sb.append(mifareTag.size.toString() + " bytes")
                sb.append('\n')
                sb.append("Mifare sectors: ")
                sb.append(mifareTag.sectorCount)
                sb.append('\n')
                sb.append("Mifare blocks: ")
                sb.append(mifareTag.blockCount)
            } catch (e: Exception) {
                sb.append("Mifare classic error: " + e.message)
            }
        }
        if (tech == MifareUltralight::class.java.name) {
            sb.append('\n')
            val mifareUlTag = MifareUltralight.get(tag)
            var type = "Unknown"
            when (mifareUlTag.type) {
                MifareUltralight.TYPE_ULTRALIGHT -> type = "Ultralight"
                MifareUltralight.TYPE_ULTRALIGHT_C -> type = "Ultralight C"
            }
            sb.append("Mifare Ultralight type: ")
            sb.append(type)
        }
    }
    return sb.toString()
}

private fun toHex(bytes: ByteArray): String {
    val sb = java.lang.StringBuilder()
    for (i in bytes.indices.reversed()) {
        val b = bytes[i] and (0xff).toByte()
        if (b < 0x10) sb.append('0')
        sb.append(Integer.toHexString(b.toInt()))
        if (i > 0) {
            sb.append(" ")
        }
    }
    return sb.toString()
}

private fun toReversedHex(bytes: ByteArray): String {
    val sb = java.lang.StringBuilder()
    for (i in bytes.indices) {
        if (i > 0) {
            sb.append(" ")
        }
        val b = bytes[i] and (0xff).toByte()
        if (b < 0x10) sb.append('0')
        sb.append(Integer.toHexString(b.toInt()))
    }
    return sb.toString()
}

private fun toDec(bytes: ByteArray): Long {
    var result: Long = 0
    var factor: Long = 1
    for (i in bytes.indices) {
        val value = bytes[i] and (0xffL).toByte()
        result += value * factor
        factor *= 256L
    }
    return result
}

private fun toReversedDec(bytes: ByteArray): Long {
    var result: Long = 0
    var factor: Long = 1
    for (i in bytes.indices.reversed()) {
        val value = bytes[i] and (0xffL).toByte()
        result += value * factor
        factor *= 256L
    }
    return result
}

val NFC_INTENT_FILTER = arrayOf(
    IntentFilter(NfcAdapter.ACTION_TECH_DISCOVERED),
    IntentFilter(NfcAdapter.ACTION_TAG_DISCOVERED),
)
val TECH_LIST = arrayOf(
    arrayOf(
        NfcA::class.java.name,
        IsoDep::class.java.name,
    ),
)

const val NFC_A_TAG = "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcA]"
const val NFC_B_TAG = "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcB]"

fun getCurrentDateTimeAsFormattedString(): String {
    val formattedTime =
        SimpleDateFormat(
            "yyyy-MM-dd hh:mm a",
            Locale.getDefault(),
        ).format(System.currentTimeMillis())
            .format(Date())

    return formattedTime.replace(
        formattedTime.takeLast(3),
        "_${formattedTime.takeLast(3).trim()}",
    ).replace(":", "_")
        .replace("-", "_").replace(" ", "_at_")
}

fun validatePasswordMismatch(password: String, confirmPassword: String): Boolean {
    return password == confirmPassword
}

fun Fragment.showToast(message: String) {
    Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
}

fun Fragment.checkNfcStatus(): NfcAdapter? {
    val nfcManager: NfcManager =
        requireActivity().getSystemService(AppCompatActivity.NFC_SERVICE) as NfcManager
    return nfcManager.defaultAdapter

}

fun getBluetoothKeyIndex(): Int {
    val s = ""
    if (TextUtils.isEmpty(s)) {
        return 0
    }
    var i = 0
    try {
        i = s.toInt()
        if (i > 9 || i < 0) {
            i = 0
        }
    } catch (e: java.lang.Exception) {
        i = 0
        return i
    }
    return i
}

//generate or get key from android store
fun createOrGetSecretKey(): SecretKey {
    val keyStore = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
    val keyAlias = "fileDecryptionKey"

    if (!keyStore.containsAlias(keyAlias)) {
        val keyGenParameterSpec = KeyGenParameterSpec.Builder(
            keyAlias,
            KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT
        )
            .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
            .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
            .build()

        val keyGenerator =
            KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore")
        keyGenerator.init(keyGenParameterSpec)
        keyGenerator.generateKey()
    }

    return keyStore.getKey(keyAlias, null) as SecretKey
}

// Decrypts data using the Keystore-stored secret key
fun decryptFile(context: Context, fileName: String): ByteArray {
    val key = createOrGetSecretKey()

    val encryptedData = context.assets.open(fileName).readBytes()

    // Extract the IV and the encrypted content
    val iv = encryptedData.sliceArray(0 until 12)
    val encryptedContent = encryptedData.sliceArray(12 until encryptedData.size)

    val cipher = Cipher.getInstance("AES/GCM/NoPadding")
    val spec = GCMParameterSpec(128, iv)
    cipher.init(Cipher.DECRYPT_MODE, key, spec)

    return cipher.doFinal(encryptedContent)
}

fun encryptAssetsFiles(context: Context) {
    val assetManager = context.assets
    val outputDir = File(context.getExternalFilesDir(null), "encrypted_files")
    if (!outputDir.exists()) outputDir.mkdirs()

    val secretKey = createOrGetSecretKey()

    val fileNames = listOf(
        "cacert.pem",
        "device.key",
        "epms-client.cert.pem",
        "epms-client.key.pem",
        "kpc.pem",
        "kpk.pem",
        "netpos.cert.pem",
        "netpos_client_cert.pem",
        "netpos_client_key.key",
        "netpos_device.pem",
        "private.key.pem",
        "test_cacert.pem",
        "netpos_light_bdk_key.txt",
        "flw_softpost_suth_secret_shared_test.txt"
    )

    fileNames.forEach { fileName ->
        try {
            // Open file from assets and read it as a byte array
            assetManager.open(fileName).use { inputStream ->
                val fileContent = inputStream.readBytes()

                // Encrypt the content
                val cipher = Cipher.getInstance("AES/GCM/NoPadding")
                cipher.init(Cipher.ENCRYPT_MODE, secretKey)
                val iv = cipher.iv

                val encryptedContent = cipher.doFinal(fileContent)

                // Save the IV and encrypted content to an output file in external storage
                val outputFile = File(outputDir, "$fileName.enc")
                FileOutputStream(outputFile).use { outputStream ->
                    outputStream.write(iv)
                    outputStream.write(encryptedContent)
                }
            }
        } catch (e: Exception) {
            Log.e("ENC_FILE", "Failed to encrypt $fileName: ${e.message}")
        }
    }
}


fun decryptOpenSslFile(context: Context, fileName: String): ByteArray {
    val encryptedData = context.assets.open(fileName).readBytes()

    val salt = encryptedData.sliceArray(8 until 16)  // Extract the salt from the file
    val encryptedContent =
        encryptedData.sliceArray(16 until encryptedData.size)

    val keyAndIv = deriveKeyAndIv(
        "softpos_contactless",
        salt,
        32,
        16
    )
    val secretKey = SecretKeySpec(keyAndIv.first, "AES")
    val iv = IvParameterSpec(keyAndIv.second)

    // Initialize the cipher for AES/CBC/PKCS5Padding decryption
    val cipher = Cipher.getInstance("AES/CBC/PKCS5Padding")
    cipher.init(Cipher.DECRYPT_MODE, secretKey, iv)

    return cipher.doFinal(encryptedContent)
}

// Helper function to derive the key and IV with PBKDF2, similar to OpenSSL
fun deriveKeyAndIv(
    brandP: String,
    salt: ByteArray,
    keyLength: Int,
    ivLength: Int
): Pair<ByteArray, ByteArray> {
    val brandPChars = brandP.toCharArray()
    val spec = PBEKeySpec(brandPChars, salt, 100, (keyLength + ivLength) * 8)
    val factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
    val keyAndIv = factory.generateSecret(spec).encoded

    val key = keyAndIv.sliceArray(0 until keyLength)
    val iv = keyAndIv.sliceArray(keyLength until (keyLength + ivLength))
    return Pair(key, iv)
}
