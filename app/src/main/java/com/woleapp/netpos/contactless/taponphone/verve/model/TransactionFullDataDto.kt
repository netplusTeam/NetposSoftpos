package com.woleapp.netpos.contactless.taponphone.verve.model

import android.os.Parcel
import android.os.Parcelable
import com.alcineo.softpos.payment.model.transaction.TransactionParameters
import com.alcineo.softpos.payment.model.transaction.TransactionResult

class TransactionFullDataDto(
    private var transaction: TransactionParameters?,
    val transactionResult: TransactionResult?
) : Parcelable {
    // Secondary constructor for Parcelable
    constructor(`in`: Parcel) : this(
        `in`.readValue(TransactionParameters::class.java.classLoader) as TransactionParameters?,
        `in`.readValue(TransactionResult::class.java.classLoader) as TransactionResult?
    )

    // ==== Parcelable ====
    override fun describeContents(): Int {
        return 0
    }

    override fun writeToParcel(dest: Parcel, flags: Int) {
        dest.writeValue(transaction)
        dest.writeValue(transactionResult)
    }

    companion object {
        @JvmField
        @Suppress("unused")
        val CREATOR: Parcelable.Creator<TransactionFullDataDto?> =
            object : Parcelable.Creator<TransactionFullDataDto?> {
                override fun createFromParcel(`in`: Parcel): TransactionFullDataDto? {
                    return TransactionFullDataDto(`in`)
                }

                override fun newArray(size: Int): Array<TransactionFullDataDto?> {
                    return arrayOfNulls(size)
                }
            }
    }
}