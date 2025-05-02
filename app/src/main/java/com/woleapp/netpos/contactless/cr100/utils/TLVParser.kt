package com.woleapp.netpos.contactless.cr100.utils

import com.woleapp.netpos.contactless.taponphone.visa.NfcPaymentType

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
    fun getCardSchemeFromAid(aid: String): NfcPaymentType? {
        return when (aid) {
            "A0000000041010" -> NfcPaymentType.MASTERCARD
            "A0000003710001" -> NfcPaymentType.VERVE
            "A0000000031010" -> NfcPaymentType.VISA
            else -> null
        }
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
}