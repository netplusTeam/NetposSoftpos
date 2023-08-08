package com.woleapp.netpos.contactless.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
data class NormalAppNotificationCampaign(
    val title: String,
    val body: String,
) : Parcelable
