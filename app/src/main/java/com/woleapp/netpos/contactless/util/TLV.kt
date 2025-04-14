package com.woleapp.netpos.contactless.util

import com.woleapp.netpos.contactless.taponphone.visa.REQUIRED_TAGS

data class TLV(val tag: String, val length: Int, val value: String)

fun parseTLV(icc: String): List<TLV> {
    val tlvs = mutableListOf<TLV>()

    fun parse(
        index: Int,
        end: Int,
    ): Int {
        var i = index
        while (i + 2 <= end) {
            // Parse Tag
            var tag = icc.substring(i, i + 2)
            i += 2
            if ((tag.toInt(16) and 0x1F) == 0x1F && i + 2 <= end) {
                tag += icc.substring(i, i + 2)
                i += 2
            }

            if (i + 2 > end) break
            val lengthHex = icc.substring(i, i + 2)
            var length = lengthHex.toInt(16)
            i += 2

            if (length and 0x80 != 0) {
                val lengthBytes = length and 0x7F
                if (i + lengthBytes * 2 > end) break
                val lenStr = icc.substring(i, i + (lengthBytes * 2))
                length = lenStr.chunked(2).joinToString("") { it }.toInt(16)
                i += lengthBytes * 2
            }

            val valueEnd = i + (length * 2)
            if (valueEnd > end) break

            val value = icc.substring(i, valueEnd)

            // If constructed tag (like 70, 77), recurse
            if (isConstructedTag(tag)) {
                parse(i, valueEnd) // recurse into value
            } else {
                tlvs.add(TLV(tag.uppercase(), length, value))
            }

            i = valueEnd
        }
        return i
    }

    parse(0, icc.length)
    return tlvs
}

fun isConstructedTag(tag: String): Boolean {
    val firstByte = tag.substring(0, 2).toInt(16)
    return (firstByte and 0x20) == 0x20
}

fun filterICC(icc: String): String {
    val parsedTLVs = parseTLV(icc)
    return parsedTLVs
        .filter { it.tag in REQUIRED_TAGS }
        .joinToString("") { tagLengthValue(it) }
}

// Helper function to re-encode tag + length + value correctly
fun tagLengthValue(tlv: TLV): String {
    val lengthHex = encodeLength(tlv.length)
    return tlv.tag + lengthHex + tlv.value
}

// Handles proper BER-TLV length encoding
fun encodeLength(length: Int): String {
    return when {
        length < 0x80 -> "%02X".format(length)
        length <= 0xFF -> "81%02X".format(length)
        else -> "82%04X".format(length)
    }
}
