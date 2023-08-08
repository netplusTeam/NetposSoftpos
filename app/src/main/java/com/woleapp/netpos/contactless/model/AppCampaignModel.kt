package com.woleapp.netpos.contactless.model

import android.os.Parcelable
import androidx.room.Entity
import androidx.room.PrimaryKey
import kotlinx.android.parcel.Parcelize

@Entity(tableName = "appNotification")
@Parcelize
data class AppCampaignModel(
    @PrimaryKey(autoGenerate = true)
    var id: Long? = null,
    var title: String,
    var body: String,
    var hasBeenRead: Boolean = false,
    var date: String,
) : Parcelable
