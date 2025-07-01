package com.woleapp.netpos.contactless.cr100.utils

import android.content.Context
import com.woleapp.netpos.contactless.BuildConfig
import java.math.BigInteger
import java.security.Key
import java.util.Locale
import javax.crypto.Cipher
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.DESedeKeySpec
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec

object DUKPK2009CBC {
    /*
     * ksnV:ksn
     * datastrV:data
     * Enum_key:Encryption/Decryption
     * Enum_mode
     *
     * */
    fun getData(
        ksnV: String?,
        datastrV: String?,
        key: Enum_key?,
        mode: Enum_mode,
        context: Context?,
    ): String {
        return getData(ksnV, datastrV, key, mode, null, context)
    }

    private fun getData(
        ksnV: String?,
        datastrV: String?,
        key: Enum_key?,
        mode: Enum_mode,
        clearIpek: String?,
    ): String {
        var ipek: ByteArray? = null
        val byte_ksn = parseHexStr2Byte(ksnV)
        ipek =
            if (clearIpek == null || clearIpek.length == 0) {
                val byte_bdk = parseHexStr2Byte(BuildConfig.CR100_BDK_VALUE)
                GenerateIPEK(byte_ksn, byte_bdk)
            } else {
                parseHexStr2Byte(clearIpek)
            }
        val ipekStr =
            parseByte2HexStr(ipek)
        println("ipekStr=$ipekStr")
        val dataKey = GetDataKey(byte_ksn, ipek)
        val dataKeyStr = parseByte2HexStr(dataKey)
        println("dataKeyStr=$dataKeyStr")
        val dataKeyVariant = GetDataKeyVariant(byte_ksn, ipek)
        val dataKeyStrVariant = parseByte2HexStr(dataKeyVariant)
        println("dataKeyStrVariant=$dataKeyStrVariant")
        val pinKey = GetPinKeyVariant(byte_ksn, ipek)
        val pinKeyStr = parseByte2HexStr(pinKey)
        println("pinKeyStr=$pinKeyStr")
        val macKey = GetMacKeyVariant(byte_ksn, ipek)
        val macKeyStr = parseByte2HexStr(macKey)
        println("macKeyStr=$macKeyStr")
        var keySel: String? = null
        when (key) {
            Enum_key.MAC -> keySel = macKeyStr
            Enum_key.PIN -> keySel = pinKeyStr
            Enum_key.DATA -> keySel = dataKeyStr
            Enum_key.DATA_VARIANT -> keySel = dataKeyStrVariant
            else -> {}
        }
        var buf: ByteArray? = null
        if (mode == Enum_mode.CBC) {
            buf =
                TriDesDecryptionCBC(
                    parseHexStr2Byte(keySel),
                    parseHexStr2Byte(datastrV),
                )
        } else if (mode == Enum_mode.ECB) {
            buf =
                TriDesDecryptionECB(
                    parseHexStr2Byte(keySel),
                    parseHexStr2Byte(datastrV),
                )
        }
        return parseByte2HexStr(buf)
    }

    fun generatePinBlock(
        pinKsn: String?,
        clearPin: String,
        pan: String,
        clearIpek: String?,
    ): String {
        val length = 14 - clearPin.length
        var newClearPin = "0" + clearPin.length + clearPin
        for (i in 0 until length) {
            newClearPin = newClearPin + "F"
        }
        var newPan = pan.substring(pan.length - 13, pan.length - 1)
        newPan = "0000$newPan"
        println("newPan: $newPan")
        val xorResult = xor(newClearPin, newPan)
        println("data: $xorResult")
        val byte_ksn = parseHexStr2Byte(pinKsn)
        val byte_ipek = parseHexStr2Byte(clearIpek)
        val byte_pin = parseHexStr2Byte(xorResult)
        val pinKey = GetPinKeyVariant(byte_ksn, byte_ipek)
        val pinKeyStr = parseByte2HexStr(pinKey)
        println("pinKeyStr=$pinKeyStr")
        val buf = TriDesEncryption(pinKey, byte_pin)
        val deResultStr = parseByte2HexStr(buf)
        println("data: $deResultStr")
        return deResultStr
    }

    fun GenerateIPEK(
        ksn: ByteArray?,
        bdk: ByteArray?,
    ): ByteArray {
        val result: ByteArray
        val temp: ByteArray
        var temp2: ByteArray?
        val keyTemp: ByteArray
        result = ByteArray(16)
        temp = ByteArray(8)
        keyTemp = ByteArray(16)
        System.arraycopy(bdk, 0, keyTemp, 0, 16)
        System.arraycopy(ksn, 0, temp, 0, 8)
        temp[7] = (temp[7].toInt() and 0xE0).toByte()
        temp2 = TriDesEncryption(keyTemp, temp)
        System.arraycopy(temp2, 0, result, 0, 8)
        keyTemp[0] = (keyTemp[0].toInt() xor 0xC0).toByte()
        keyTemp[1] = (keyTemp[1].toInt() xor 0xC0).toByte()
        keyTemp[2] = (keyTemp[2].toInt() xor 0xC0).toByte()
        keyTemp[3] = (keyTemp[3].toInt() xor 0xC0).toByte()
        keyTemp[8] = (keyTemp[8].toInt() xor 0xC0).toByte()
        keyTemp[9] = (keyTemp[9].toInt() xor 0xC0).toByte()
        keyTemp[10] = (keyTemp[10].toInt() xor 0xC0).toByte()
        keyTemp[11] = (keyTemp[11].toInt() xor 0xC0).toByte()
        temp2 = TriDesEncryption(keyTemp, temp)
        System.arraycopy(temp2, 0, result, 8, 8)
        return result
    }

    fun GetDUKPTKey(
        ksn: ByteArray?,
        ipek: ByteArray?,
    ): ByteArray {
        val key: ByteArray
        val cnt: ByteArray
        val temp: ByteArray
        var shift: Int
        key = ByteArray(16)
        System.arraycopy(ipek, 0, key, 0, 16)
        temp = ByteArray(8)
        cnt = ByteArray(3)
        cnt[0] = (ksn!![7].toInt() and 0x1F).toByte()
        cnt[1] = ksn[8]
        cnt[2] = ksn[9]
        System.arraycopy(ksn, 2, temp, 0, 6)
        temp[5] = (temp[5].toInt() and 0xE0).toByte()
        shift = 0x10
        while (shift > 0) {
            if (cnt[0].toInt() and shift > 0) {
                temp[5] = (temp[5].toInt() or shift).toByte()
                NRKGP(key, temp)
            }
            shift = shift shr 1
        }
        shift = 0x80
        while (shift > 0) {
            if (cnt[1].toInt() and shift > 0) {
                temp[6] = (temp[6].toInt() or shift).toByte()
                NRKGP(key, temp)
            }
            shift = shift shr 1
        }
        shift = 0x80
        while (shift > 0) {
            if (cnt[2].toInt() and shift > 0) {
                temp[7] = (temp[7].toInt() or shift).toByte()
                NRKGP(key, temp)
            }
            shift = shift shr 1
        }
        return key
    }

    /*<summary>
    Non Reversible Key Generatino Procedure
    private function used by GetDUKPTKey
    </summary>
     **/
    private fun NRKGP(
        key: ByteArray,
        ksn: ByteArray,
    ) {
        val temp: ByteArray
        var key_l: ByteArray
        var key_r: ByteArray
        val key_temp: ByteArray
        var i: Int
        temp = ByteArray(8)
        key_l = ByteArray(8)
        key_r = ByteArray(8)
        key_temp = ByteArray(8)
        System.arraycopy(key, 0, key_temp, 0, 8)
        i = 0
        while (i < 8) {
            temp[i] = (ksn[i].toInt() xor key[8 + i].toInt()).toByte()
            i++
        }
        key_r = TriDesEncryption(key_temp, temp)!!
        i = 0
        while (i < 8) {
            key_r[i] = (key_r[i].toInt() xor key[8 + i].toInt()).toByte()
            i++
        }
        key_temp[0] = (key_temp[0].toInt() xor 0xC0).toByte()
        key_temp[1] = (key_temp[1].toInt() xor 0xC0).toByte()
        key_temp[2] = (key_temp[2].toInt() xor 0xC0).toByte()
        key_temp[3] = (key_temp[3].toInt() xor 0xC0).toByte()
        key[8] = (key[8].toInt() xor 0xC0).toByte()
        key[9] = (key[9].toInt() xor 0xC0).toByte()
        key[10] = (key[10].toInt() xor 0xC0).toByte()
        key[11] = (key[11].toInt() xor 0xC0).toByte()
        i = 0
        while (i < 8) {
            temp[i] = (ksn[i].toInt() xor key[8 + i].toInt()).toByte()
            i++
        }
        key_l = TriDesEncryption(key_temp, temp)!!
        i = 0
        while (i < 8) {
            key[i] = (key_l[i].toInt() xor key[8 + i].toInt()).toByte()
            i++
        }
        System.arraycopy(key_r, 0, key, 8, 8)
    }

    /*<summary>
    Get current Data Key variant
    Data Key variant is XOR DUKPT Key with 0000 0000 00FF 0000 0000 0000 00FF 0000
    </summary>
    <param name="ksn">Key serial number(KSN). A 10 bytes data. Which use to determine which BDK will be used and calculate IPEK. With different KSN, the DUKPT system will ensure different IPEK will be generated.
    Normally, the first 4 digit of KSN is used to determine which BDK is used. The last 21 bit is a counter which indicate the current key.</param>
    <param name="ipek">IPEK (16 byte).</param>
    <returns>Data Key variant (16 byte)</returns>
     **/
    fun GetDataKeyVariant(
        ksn: ByteArray?,
        ipek: ByteArray?,
    ): ByteArray {
        val key: ByteArray
        key = GetDUKPTKey(ksn, ipek)
        key[5] = (key[5].toInt() xor 0xFF).toByte()
        key[13] = (key[13].toInt() xor 0xFF).toByte()
        return key
    }

    /*<summary>
    Get current PIN Key variant
    PIN Key variant is XOR DUKPT Key with 0000 0000 0000 00FF 0000 0000 0000 00FF
    </summary>
    <param name="ksn">Key serial number(KSN). A 10 bytes data. Which use to determine which BDK will be used and calculate IPEK. With different KSN, the DUKPT system will ensure different IPEK will be generated.
    Normally, the first 4 digit of KSN is used to determine which BDK is used. The last 21 bit is a counter which indicate the current key.</param>
    <param name="ipek">IPEK (16 byte).</param>
    <returns>PIN Key variant (16 byte)</returns>
     **/
    fun GetPinKeyVariant(
        ksn: ByteArray?,
        ipek: ByteArray?,
    ): ByteArray {
        val key: ByteArray
        key = GetDUKPTKey(ksn, ipek)
        key[7] = (key[7].toInt() xor 0xFF).toByte()
        key[15] = (key[15].toInt() xor 0xFF).toByte()
        return key
    }

    fun GetMacKeyVariant(
        ksn: ByteArray?,
        ipek: ByteArray?,
    ): ByteArray {
        val key: ByteArray
        key = GetDUKPTKey(ksn, ipek)
        key[6] = (key[6].toInt() xor 0xFF).toByte()
        key[14] = (key[14].toInt() xor 0xFF).toByte()
        return key
    }

    fun GetDataKey(
        ksn: ByteArray?,
        ipek: ByteArray?,
    ): ByteArray? {
        val temp1 = GetDataKeyVariant(ksn, ipek)
        return TriDesEncryption(temp1, temp1)
    }

    /*
     * 3DES encryption
     **/
    fun TriDesEncryption(
        byteKey: ByteArray,
        dec: ByteArray?,
    ): ByteArray? {
        try {
            var en_key = ByteArray(24)
            if (byteKey.size == 16) {
                System.arraycopy(byteKey, 0, en_key, 0, 16)
                System.arraycopy(byteKey, 0, en_key, 16, 8)
            } else if (byteKey.size == 8) {
                System.arraycopy(byteKey, 0, en_key, 0, 8)
                System.arraycopy(byteKey, 0, en_key, 8, 8)
                System.arraycopy(byteKey, 0, en_key, 16, 8)
            } else {
                en_key = byteKey
            }
            val key =
                SecretKeySpec(en_key, "DESede")
            val ecipher =
                Cipher.getInstance("DESede/ECB/NoPadding")
            ecipher.init(Cipher.ENCRYPT_MODE, key)
            // Encrypt
            // String en_txt = parseByte2HexStr(en_b);
            // String en_txt =byte2hex(en_b);
            return ecipher.doFinal(dec)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }

    /*
     * 3DES decryption CBC
     **/
    fun TriDesDecryptionCBC(
        byteKey: ByteArray?,
        dec: ByteArray?,
    ): ByteArray? {
        var en_key: ByteArray? = ByteArray(24)
        if (byteKey!!.size == 16) {
            System.arraycopy(byteKey, 0, en_key, 0, 16)
            System.arraycopy(byteKey, 0, en_key, 16, 8)
        } else if (byteKey.size == 8) {
            System.arraycopy(byteKey, 0, en_key, 0, 8)
            System.arraycopy(byteKey, 0, en_key, 8, 8)
            System.arraycopy(byteKey, 0, en_key, 16, 8)
        } else {
            en_key = byteKey
        }
        try {
            var deskey: Key? = null
            val keyiv = ByteArray(8)
            val spec = DESedeKeySpec(en_key)
            val keyfactory =
                SecretKeyFactory.getInstance("desede")
            deskey = keyfactory.generateSecret(spec)
            val cipher =
                Cipher.getInstance("desede" + "/CBC/NoPadding")
            val ips = IvParameterSpec(keyiv)
            cipher.init(Cipher.DECRYPT_MODE, deskey, ips)
            return cipher.doFinal(dec)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }

    /*
     * 3DES decryption ECB
     **/
    fun TriDesDecryptionECB(
        byteKey: ByteArray?,
        dec: ByteArray?,
    ): ByteArray? {
        // private String TriDesDecryption(String dnc_key, byte[] dec){
        // byte[] byteKey = parseHexStr2Byte(dnc_key);
        var en_key: ByteArray? = ByteArray(24)
        if (byteKey!!.size == 16) {
            System.arraycopy(byteKey, 0, en_key, 0, 16)
            System.arraycopy(byteKey, 0, en_key, 16, 8)
        } else if (byteKey.size == 8) {
            System.arraycopy(byteKey, 0, en_key, 0, 8)
            System.arraycopy(byteKey, 0, en_key, 8, 8)
            System.arraycopy(byteKey, 0, en_key, 16, 8)
        } else {
            en_key = byteKey
        }
        var key: SecretKey? = null
        key =
            try {
                SecretKeySpec(en_key, "DESede")
            } catch (e: Exception) {
                e.printStackTrace()
                return null
            }
        try {
            val dcipher =
                Cipher.getInstance("DESede/ECB/NoPadding")
            dcipher.init(Cipher.DECRYPT_MODE, key)
            return dcipher.doFinal(dec)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }

    /*
     * convert hexadecimal string to byte array
     **/
    fun parseHexStr2Byte(hexStr: String?): ByteArray? {
        if (hexStr!!.length < 1) {
            return null
        }
        val result = ByteArray(hexStr.length / 2)
        for (i in 0 until hexStr.length / 2) {
            val high = hexStr.substring(i * 2, i * 2 + 1).toInt(16)
            val low =
                hexStr.substring(i * 2 + 1, i * 2 + 2).toInt(
                    16,
                )
            result[i] = (high * 16 + low).toByte()
        }
        return result
    }

    /*
     * convert byte array to hexadecimal string
     **/
    fun parseByte2HexStr(buf: ByteArray?): String {
        val sb = StringBuffer()
        for (i in buf!!.indices) {
            var hex = Integer.toHexString(buf[i].toInt() and 0xFF)
            if (hex.length == 1) {
                hex = "0$hex"
            }
            sb.append(hex.uppercase(Locale.getDefault()))
        }
        return sb.toString()
    }

    /*
     * data fill
     **/
    fun dataFill(dataStr: String): String {
        var dataStr = dataStr
        var len = dataStr.length
        if (len % 16 != 0) {
            dataStr += "80"
            len = dataStr.length
        }
        while (len % 16 != 0) {
            dataStr += "0"
            len++
            println(dataStr)
        }
        return dataStr
    }

    fun xor(
        key1: String?,
        key2: String?,
    ): String {
        var result = ""
        val arr1 = parseHexStr2Byte(key1)
        val arr2 = parseHexStr2Byte(key2)
        val arr3 = ByteArray(arr1!!.size)
        for (i in arr1.indices) {
            arr3[i] = (arr1[i].toInt() xor arr2!![i].toInt()).toByte()
        }
        result = parseByte2HexStr(arr3)
        return result
    }

    fun decodeTrack1(compressedTrack1: String): String {
        var resultTrack1 = ""
        for (i in 0 until compressedTrack1.length / 6) {
            // 1. convert every 6chars(3bytes) to binary string
            val sub = compressedTrack1.substring(i * 6, (i + 1) * 6)
            val threeByteInt = sub.toInt(16)
            val bigInter = BigInteger.valueOf(threeByteInt.toLong())
            val strBinary = bigInter.toString(2)
            // BigInteger.toString(radix) will miss leading 0s, so need padding 0 at the begging with length of 3byte(24 bits)
            val withLeadingZeros = String.format("%24s", strBinary).replace(' ', '0')
            // 2. group binary result on every 6 binary chars into 4 groups (bytes)
            val fourBytes = byteArrayOf(0x00, 0x00, 0x00, 0x00)
            for (j in 0 until withLeadingZeros.length / 6) {
                val byteStr = withLeadingZeros.substring(j * 6, (j + 1) * 6)
                fourBytes[j] = byteStr.toByte(2)
                fourBytes[j] = (fourBytes[j] + 0x20).toByte()
            }
            resultTrack1 += String(fourBytes)
        }
        return resultTrack1
    }

    fun extractTrack2AndPanValues(input: String): Pair<String, String> {
        var indexOfD = -1
        var indexOfF = -1
        // Scan through the string once to find both 'D' and 'F'
        for (i in input.indices) {
            if (input[i] == 'D' && indexOfD == -1) {
                indexOfD = i
            }
            if (input[i] == 'F' && indexOfF == -1) {
                indexOfF = i
            }
            if (indexOfD != -1 && indexOfF != -1) {
                break
            }
        }
        if (indexOfD == -1 || indexOfF == -1) {
            throw IllegalArgumentException("String must contain both 'D' and 'F'")
        }
        val valueBeforeD = input.substring(0, indexOfD)
        val valueBeforeF = input.substring(0, indexOfF)
        return Pair(valueBeforeD, valueBeforeF)
    }

    enum class Enum_key {
        DATA,
        PIN,
        MAC,
        DATA_VARIANT,
    }

    enum class Enum_mode {
        ECB,
        CBC,
    }
}
