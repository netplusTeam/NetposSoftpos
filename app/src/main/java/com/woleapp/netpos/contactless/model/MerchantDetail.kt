package com.woleapp.netpos.contactless.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
data class MerchantDetail(
    val acctNumber: String,
    val bank: String,
    val businessName: String,
    val merchantId: String,
    val partnerId: String,
    val terminalId: String,
) : Parcelable
