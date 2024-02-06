package com.woleapp.netpos.contactless.model

import android.util.Log
import androidx.room.Entity
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.formatAmountToNaira
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.formatCurrencyAmountUsingCurrentModule
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDateFromZenithPbtTransDate

@Entity(tableName = "pbtTransaction")
data class GetZenithPayByTransferUserTransactionsModel(
    val amount: Int,
    val bank: String,
    val details: String,
    val merchantId: String,
    val paid_at: String,
    val partnerId: String?,
    val payer_account_name: String,
    val payer_account_number: String,
    val recipient_account_number: String,
    val terminalId: String,
    val transaction_reference: String
) {
    override fun toString(): String {
        return "<b>Amount: &nbsp;&nbsp;</b>${formatAmountToNaira(amount.toDouble())} <br /><b>Payer's Name:</b><br /> $payer_account_name <br /><br /><b>Payer' Account Number: &nbsp;&nbsp;</b>$payer_account_number <br /><b>Paid at: &nbsp;&nbsp;</b> ${
            getDateFromZenithPbtTransDate(paid_at)
        }<br /><br /> <b>Transaction Details: </b><br />$details <br /><br /><b>Transaction Reference:  </b><br />$transaction_reference"
        //Log.d("CHECKKKKK", amount.formatCurrencyAmountUsingCurrentModule())

    }
}