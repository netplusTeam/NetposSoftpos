package com.woleapp.netpos.contactless.cr100.model

import com.woleapp.netpos.contactless.taponphone.visa.NfcPaymentType

data class BtCardInfo(
    val realPan: String = "",
    val track2: String = "",
    val decryptedIcc: String = "",
    val cardType: NfcPaymentType? = null
)