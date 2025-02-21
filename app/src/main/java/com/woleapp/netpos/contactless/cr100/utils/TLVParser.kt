package com.woleapp.netpos.contactless.cr100.utils

import com.woleapp.netpos.contactless.taponphone.visa.NfcPaymentType
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec


object TLVParser {
    private val tlvList = ArrayList<TLV>()
    fun parse(tlv: String): List<TLV>? {
        return try {
            tlvList.clear()
            getTLVList(hexToByteArray(tlv))
        } catch (e: Exception) {
            if (tlvList.size > 0) tlvList else null
        }
    }

    private fun getTLVList(data: ByteArray?): List<TLV> {
        var index = 0
        var tag: ByteArray
        var length: ByteArray
        var value: ByteArray
        var isNested: Boolean
        var tlv: TLV? = null
        while (index < data!!.size) {
            isNested = false
            isNested = if (data[index].toInt() and 0x20.toByte().toInt() == 0x20.toByte().toInt()) {
                true
                //复合结构
            } else {
                false
            }
            if (data[index].toInt() and 0x1F.toByte().toInt() == 0x1F.toByte().toInt()) {
                var lastByte = index + 1
                while (data[lastByte].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
                    ++lastByte
                }
                tag = ByteArray(lastByte - index + 1)
                System.arraycopy(data, index, tag, 0, tag.size)
                index += tag.size
            } else {
                tag = ByteArray(1)
                tag[0] = data[index]
                ++index
                if (tag[0].toInt() == 0x00) {
                    break
                }
            }
            if (data[index].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
                val n = (data[index].toInt() and 0x7F.toByte().toInt()) + 1
                length = ByteArray(n)
                System.arraycopy(data, index, length, 0, length.size)
                index += length.size
            } else {
                length = ByteArray(1)
                length[0] = data[index]
                ++index
            }
            val n = getLengthInt(length)
            value = ByteArray(n)
            System.arraycopy(data, index, value, 0, value.size)
            index += value.size
            if (isNested) {
                getTLVList(value)
            } else {
                tlv = TLV()
                tlv.tag = toHexString(tag)
                tlv.length = toHexString(length)
                tlv.value = toHexString(value)
                tlv.isNested = isNested
                tlvList.add(tlv)
            }
        }
        return tlvList
    }

    fun getTlvC0AndC2FromNfcBatch(tlvList: List<TLV>): Pair<TLV?, TLV?> {
        var tlvC0: TLV? = null
        var tlvC2: TLV? = null

        for (tlv in tlvList) {
            when (tlv.tag) {
                "c0" -> tlvC0 = tlv
                "c2" -> tlvC2 = tlv
            }
        }

        return Pair(tlvC0, tlvC2)
    }


    fun decryptTripleDES(encryptedHex: String, keyHex: String): String {
        val keyBytes = keyHex.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
        val secretKey = SecretKeySpec(keyBytes, "DESede")
        val iv = ByteArray(8) // IV is 8 bytes of zeros for CBC mode

        val cipher = Cipher.getInstance("DESede/CBC/NoPadding")
        cipher.init(Cipher.DECRYPT_MODE, secretKey, IvParameterSpec(iv))

        val encryptedBytes = encryptedHex.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
        val decryptedBytes = cipher.doFinal(encryptedBytes)

        return decryptedBytes.joinToString("") { "%02X".format(it) }
    }

    fun getCardSchemeFromAid(aid: String): NfcPaymentType? {
        return when (aid) {
            "A0000000041010" -> NfcPaymentType.MASTERCARD
            "A0000003710001" -> NfcPaymentType.VERVE
            "A0000000031010" -> NfcPaymentType.VISA
            else -> null
        }
    }

    fun findTagValue(input: String, tag: String = "9F0607", lengthAfterTag: Int = 14): String {
        val tagIndex = input.indexOf(tag)

        if (tagIndex == -1) {
            return ""
        }

        val startIndex = tagIndex + tag.length

        if (startIndex + lengthAfterTag > input.length) {
            return ""
        }

        return input.substring(startIndex, startIndex + lengthAfterTag)
    }

    fun extractPANFromTrack2(track2Data: String): String? {
        val delimiters = listOf("=", "D", ";")
        for (delimiter in delimiters) {
            if (track2Data.contains(delimiter)) {
                val pan = track2Data.substringBefore(delimiter)
                return pan.takeIf { it.length in 13..19 }
            }
        }
        return null
    }


    fun hexToAscii(hexString: String): String {
        val output = StringBuilder()
        var i = 0
        while (i < hexString.length) {
            val str = hexString.substring(i, i + 2)
            val decimal = str.toInt(16)
            output.append(decimal.toChar())
            i += 2
        }
        return output.toString()
    }


    fun parseWithoutValue(tlv: String): List<TLV>? {
        return try {
            getTLVListWithoutValue(hexToByteArray(tlv))
        } catch (e: Exception) {
            null
        }
    }

    private fun getTLVListWithoutValue(data: ByteArray?): List<TLV> {
        var index = 0
        val tlvList = ArrayList<TLV>()
        while (index < data!!.size) {
            var tag: ByteArray
            var length: ByteArray
            var isNested: Boolean
            isNested = if (data[index].toInt() and 0x20.toByte().toInt() == 0x20.toByte().toInt()) {
                true
            } else {
                false
            }
            if (data[index].toInt() and 0x1F.toByte().toInt() == 0x1F.toByte().toInt()) {
                var lastByte = index + 1
                while (data[lastByte].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
                    ++lastByte
                }
                tag = ByteArray(lastByte - index + 1)
                System.arraycopy(data, index, tag, 0, tag.size)
                index += tag.size
            } else {
                tag = ByteArray(1)
                tag[0] = data[index]
                ++index
                if (tag[0].toInt() == 0x00) {
                    break
                }
            }
            if (data[index].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
                val n = (data[index].toInt() and 0x7F.toByte().toInt()) + 1
                length = ByteArray(n)
                System.arraycopy(data, index, length, 0, length.size)
                index += length.size
            } else {
                length = ByteArray(1)
                length[0] = data[index]
                ++index
            }
            val tlv = TLV()
            tlv.tag = toHexString(tag)
            tlv.length = toHexString(length)
            tlv.isNested = isNested
            tlvList.add(tlv)
        }
        return tlvList
    }

    private fun getLengthInt(data: ByteArray): Int {
        return if (data[0].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
            val n = data[0].toInt() and 0x7F.toByte().toInt()
            var length = 0
            for (i in 1 until n + 1) {
                length = length shl 8
                length = length or (data[i].toInt() and 0xFF)
            }
            length
        } else {
            data[0].toInt() and 0xFF
        }
    }

    /*
     * convert hexadecimal string to byte array
    **/
    private fun hexToByteArray(hexStr: String): ByteArray? {
        if (hexStr.length < 1) return null
        val result = ByteArray(hexStr.length / 2)
        for (i in 0 until hexStr.length / 2) {
            val high = hexStr.substring(i * 2, i * 2 + 1).toInt(16)
            val low = hexStr.substring(i * 2 + 1, i * 2 + 2).toInt(
                16
            )
            result[i] = (high * 16 + low).toByte()
        }
        return result
    }

    internal fun toHexString(b: ByteArray): String {
        var result = ""
        for (i in b.indices) {
            result += Integer.toString((b[i].toInt() and 0xFF) + 0x100, 16).substring(1)
        }
        return result
    }

    fun searchTLV(tlvList: List<TLV>?, targetTag: String?): TLV? {
        for (i in tlvList!!.indices) {
            val tlv = tlvList[i]
            if (tlv.tag.equals(targetTag, ignoreCase = true)) {
                return tlv
            } else if (tlv.isNested) {
                val searchChild = searchTLV(tlv.tlvList, targetTag)
                if (searchChild != null) {
                    return searchChild
                }
            }
        }
        return null
    }

    /*
    *
    * Verify the tlv format
    * take the first tlv for judgment, once it encounters 0, it means the end
    * tlv is true
    * tv  is false
    * */
    fun VerifyTLV(emvCfg: String): Boolean {
        if (emvCfg.startsWith("9F06")) return true
        if (emvCfg.startsWith("00")) return false
        val data = hexToByteArray(emvCfg)
        var index = 0
        val length: ByteArray
        if (data!![index].toInt() and 0x20.toByte().toInt() == 0x20.toByte().toInt()) {
            return false
        }
        if (data[index].toInt() and 0x1F.toByte().toInt() == 0x1F.toByte().toInt()) {
            var lastByte = index + 1
            while (data[lastByte].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
                ++lastByte
            }
            index += lastByte - index + 1
            if (index >= data.size) return false
        } else {
            if (data[index].toInt() == 0x00) {
                return false
            }
            ++index
        }
        if (data[index].toInt() and 0x80.toByte().toInt() == 0x80.toByte().toInt()) {
            val n = (data[index].toInt() and 0x7F.toByte().toInt()) + 1
            length = ByteArray(n)
            index += length.size
        } else {
            length = ByteArray(1)
            length[0] = data[index]
            ++index
        }
        val n = getLengthInt(length)
        return if (n + index > data.size) false else true
    }


    fun extractTrack2DataFromICCResult(decryptedIcc: String, cardType: String): String? {
        // Common Track 2 Data Tag: 57 (Track 2 Equivalent Data)
        val track2Tag = "57"
        val track2DataWithPrefix = findTagValueBefore5A(decryptedIcc, track2Tag)

        if (track2DataWithPrefix.isNotEmpty()) {
            var accurateTrack2Data = removePrefixFromTrack2(track2DataWithPrefix)
            accurateTrack2Data = applyTrack2LengthRestriction(accurateTrack2Data, cardType)
            return accurateTrack2Data
        } else {
            return null
        }
    }

    private fun findTagValueBefore5A(input: String, tag: String): String {
        val tagIndex = input.indexOf(tag)

        if (tagIndex == -1) {
            return "" // Tag not found
        }

        val startIndex = tagIndex + tag.length
        val end5AIndex = input.indexOf("5A", startIndex) // Find "5A" after the tag

        if (end5AIndex == -1) {
            return ""
        }

        return input.substring(startIndex, end5AIndex)
    }

   private fun removePrefixFromTrack2(track2DataWithPrefix: String): String {
        for (i in track2DataWithPrefix.indices) {
            if (track2DataWithPrefix[i].isDigit()) {
                return track2DataWithPrefix.substring(i)
            }
        }
        return track2DataWithPrefix
    }

    private fun applyTrack2LengthRestriction(track2Data: String, cardType: String): String {
        val dIndex = track2Data.indexOf('D')
        if (dIndex == -1) return track2Data // Return original if 'D' is not found

        val beforeD = track2Data.substring(0, dIndex)
        val afterD = track2Data.substring(dIndex + 1)

        val truncatedBeforeD = when (cardType.lowercase()) {
            "mastercard", "visa" -> beforeD.takeLast(16)

            "verve" -> {
                val processedTrack2 = beforeD.takeLast(19) + "D" + afterD
                val isContactless = isVerveContactless(processedTrack2)

                if (isContactless) beforeD.takeLast(16) else beforeD.takeLast(19).removeLeading()
            }

            else -> beforeD
        }

        return truncatedBeforeD + "D" + afterD
    }


    private  fun String.removeLeading():String{
        return if(this.startsWith("10"))this.substring(2)else this
    }

    private fun isVerveContactless(track2Data: String): Boolean {
        var cleanedTrackData = track2Data

        if (track2Data.startsWith("711") && track2Data.length > 9) {
            cleanedTrackData = track2Data.removePrefix("711")
        }

        // Extract BIN (first 6 digits)
        val bin = cleanedTrackData.take(6)

        // Set of known Verve contactless BINs
        val contactlessBins = setOf("507872"/*,"506104","506102"*/)

        return contactlessBins.contains(bin)
    }


}
