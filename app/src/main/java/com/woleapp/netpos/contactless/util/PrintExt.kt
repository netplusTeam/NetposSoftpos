package com.woleapp.netpos.contactless.util

import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.woleapp.netpos.contactless.model.QrTransactionResponseFinalModel
import com.woleapp.netpos.contactless.util.Mappers.mapResponseCodeToMessage
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.divideLongBy100
//
// fun TransactionResponse.buildSMSText(s: String? = null): StringBuilder = StringBuilder().apply {
//    append("POS $transactionType ${if (responseCode == "00") "Approved" else "Declined"}\n\n")
//    append("Response Code: $responseCode\n")
//    append(
//        "Message: ${
//            try {
//                if (responseMessage.contains("length=0; index=-1")) "Processing Error" else responseMessage
//            } catch (e: java.lang.Exception) {
//                ""
//            }
//        }\n",
//    )
//    append("Amount: ${divideLongBy100(amount).formatCurrencyAmount("\u20A6")}\n")
//    if (otherAmount > 0) {
//        append("Cashback Amount: ${divideLongBy100(amount).formatCurrencyAmount("\u20A6")}\n")
//    }
//    append("Date/Time: ${transactionTimeInMillis.formatDate()}\n")
//    s?.let {
//        append("Remark: $it\n")
//    }
//    append("Auth Code: $authCode\n")
//    if (RRN.isNotEmpty()) {
//        append("RRN: $RRN\n")
//    }
//    append("STAN: $STAN\n")
//    append("Card: $cardLabel - $maskedPan\n")
//    if (cardHolder.isNotEmpty()) {
//        append("Card Owner: $cardHolder\n")
//    }
//    append("Merchant: ${Singletons.getCurrentlyLoggedInUser()?.business_name}\n")
//    append("Terminal ID: $terminalId\n")
// }

fun TransactionResponse.buildSMSText(s: String? = null): StringBuilder =
    StringBuilder().apply {
        val message = mapResponseCodeToMessage(responseCode) ?: "Unknown response"
        append("POS $transactionType ${if (responseCode == "00") "Approved" else "Declined"}\n\n")
        append("Response Code: $responseCode\n")
        append("Message: $message\n")
        append("Amount: ${divideLongBy100(amount).formatCurrencyAmount("\u20A6")}\n")
        if (otherAmount > 0) {
            append("Cashback Amount: ${divideLongBy100(otherAmount).formatCurrencyAmount("\u20A6")}\n")
        }
        append("Date/Time: ${transactionTimeInMillis.formatDate()}\n")
        s?.let {
            append("Remark: $it\n")
        }
        append("Auth Code: $authCode\n")
        if (RRN.isNotEmpty()) {
            append("RRN: $RRN\n")
        }
        append("STAN: $STAN\n")
        append("Card: $cardLabel - $maskedPan\n")
        if (cardHolder.isNotEmpty()) {
            append("Card Owner: $cardHolder\n")
        }
        append("Merchant: ${Singletons.getCurrentlyLoggedInUser()?.business_name}\n")
        append("Terminal ID: $terminalId\n")
    }

// fun QrTransactionResponseFinalModel.buildSMSTextForQrTransaction(): StringBuilder =
//    StringBuilder().apply {
//        append("QR Purchase ${if (responseCode == "00") "Approved" else "Declined"}\n\n")
//        append("Response Code: $responseCode\n")
//        append(
//            "Message: ${
//                try {
//                    if (message!!.contains("length=0; index=-1")) "Processing Error" else message
//                } catch (e: java.lang.Exception) {
//                    ""
//                }
//            }\n",
//        )
//        append("Narration: $narration\n")
//        append("Amount: ${divideLongBy100(amount).formatCurrencyAmount("\u20A6")}\n")
//        append("Date/Time: $transmissionDateTime\n")
//        append("OrderId: $rrnOrderId\n")
//        append("Transaction Id: $transIdStan\n")
// //    append("Card: $cardLabel - $maskedPan\n")
//        if (cardHolder.isNotEmpty()) {
//            append("Card Owner: $cardHolder\n")
//        }
//        append("Merchant: ${Singletons.getCurrentlyLoggedInUser()?.business_name}\n")
//        append("Terminal ID: ${Singletons.getCurrentlyLoggedInUser()?.terminal_id}\n")
//    }

fun QrTransactionResponseFinalModel.buildSMSTextForQrTransaction(): StringBuilder =
    StringBuilder().apply {
        val messageText = mapResponseCodeToMessage(responseCode) ?: "Unknown response"
        append("QR Purchase ${if (responseCode == "00") "Approved" else "Declined"}\n\n")
        append("Response Code: $responseCode\n")
        append("Message: $messageText\n")
        append("Narration: $narration\n")
        append("Amount: ${divideLongBy100(amount).formatCurrencyAmount("\u20A6")}\n")
        append("Date/Time: $transmissionDateTime\n")
        append("OrderId: $rrnOrderId\n")
        append("Transaction Id: $transIdStan\n")
        if (cardHolder.isNotEmpty()) {
            append("Card Owner: $cardHolder\n")
        }
        append("Merchant: ${Singletons.getCurrentlyLoggedInUser()?.business_name}\n")
        append("Terminal ID: ${Singletons.getCurrentlyLoggedInUser()?.terminal_id}\n")
    }

fun TransactionResponse.builder() =
    StringBuilder().apply {
        append("Merchant Name: ").append(Singletons.getCurrentlyLoggedInUser()!!.business_name)
        append("\nTERMINAL ID: ").append(terminalId).append("\n")
        append(transactionType).append("\n")
        append("DATE/TIME: ").append(transactionTimeInMillis.formatTransactionDate()).append("\n")
        append("AMOUNT: ").append(divideLongBy100(amount).formatCurrencyAmount("\u20A6")).append("\n")
        if (maskedPan.isNotEmpty()) {
            append(cardLabel).append(" Ending with ").append(maskedPan.substring(maskedPan.length - 4))
                .append("\n")
        } else {
            append(cardLabel).append("\n")
        }
        append("RESPONSE CODE: ").append(responseCode).append("\n").append(
            " : ${
                try {
                    responseMessage
                } catch (ex: Exception) {
                    "Error"
                }
            }",
        )
    }
