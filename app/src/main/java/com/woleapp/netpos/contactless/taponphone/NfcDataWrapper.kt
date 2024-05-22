package com.woleapp.netpos.contactless.taponphone

import com.woleapp.netpos.contactless.taponphone.visa.NfcPaymentType

data class NfcDataWrapper(val enable: Boolean, val cardType: NfcPaymentType?)