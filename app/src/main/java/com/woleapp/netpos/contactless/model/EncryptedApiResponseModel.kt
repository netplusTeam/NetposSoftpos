package com.woleapp.netpos.contactless.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
data class EncryptedApiResponseModel(
    val sendResponse: String,
) : Parcelable
