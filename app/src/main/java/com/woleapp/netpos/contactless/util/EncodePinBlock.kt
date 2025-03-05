package com.woleapp.netpos.contactless.util

import com.danbamitale.epmslib.utils.TripleDES

fun encodePinBlock(
    pin: String,
    pan: String,
    key: String?,
): String {
    println("Pan contact.....$pan")
    val pinP = "0" + pin.length + pin + "FFFFFFFFFF"
    val cardNum =
        if (pan.length > 16) {
            // for cards with 19 pan digits n make it fit into the standard 16-digit field expected by the format 0 PIN block structure.
            "0000" + pan.substring(6, 18)
        } else {
            "0000" + pan.substring(3, 15)
        }
    // System.out.println(Util.BytesToString(HexDump.hexStringToByteArray("0425A8EF8B7A6E66")));
    val pinblock = xorHex(pinP, cardNum)
    // System.out.println(ExtensionFunctionsKt.xorHex(pin, cardNum));
    println(pinblock)
    // System.out.println(TripleDES.encrypt(pinblock, pinKey));
    return TripleDES.encrypt(pinblock, key)
}
