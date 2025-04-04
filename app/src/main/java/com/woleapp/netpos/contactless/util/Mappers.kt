package com.woleapp.netpos.contactless.util

import android.text.Html
import android.text.Spanned
import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.entities.TransactionType
import com.danbamitale.epmslib.utils.IsoAccountType
import com.woleapp.netpos.contactless.model.FirebaseNotificationModelResponse
import com.woleapp.netpos.contactless.model.GetZenithPayByTransferUserTransactionsModel
import com.woleapp.netpos.contactless.model.QrTransactionResponseFinalModel
import com.woleapp.netpos.contactless.model.payment.transactions.Transaction
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.dateStr2Long
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getCurrentDateTime

object Mappers {
    fun mapQrTransToNormalTransRespType(qrTrans: QrTransactionResponseFinalModel) =
        TransactionResponse().apply {
            this.otherId =
                qrTrans.message ?: "" // Since response message can not be set because it is a val from the sdk, hence i used other id to represent response message here
            transactionType = qrTrans.transactionType
            maskedPan = ""
            amount = qrTrans.amount
            transmissionDateTime = qrTrans.transmissionDateTime
            STAN = qrTrans.transIdStan
            RRN = qrTrans.rrnOrderId
            responseCode = qrTrans.responseCode
            cardLabel = qrTrans.cardLabel
            cardHolder = qrTrans.cardHolder
            transactionTimeInMillis = qrTrans.transactionTimeInMillis
            accountType = qrTrans.accountType
            terminalId = qrTrans.terminalId
            merchantId = qrTrans.merchantId
        }

//    fun TransactionResponse.mapTransactionResponseToQrTransaction() =
//        QrTransactionResponseFinalModel(
//            amount = this.amount,
//            responseCode = this.responseCode,
//            currency_code = "NGN",
//            customerName = this.cardHolder,
//            email = "",
//            message = this.otherId,
//            narration = this.otherId,
//            rrnOrderId = this.RRN,
//            result = this.otherId,
//            status = if (this.responseCode == "00") "APPROVED" else "DECLINED",
//            transIdStan = this.STAN,
//            transmissionDateTime = this.transmissionDateTime,
//            transactionTimeInMillis = this.transactionTimeInMillis,
//            transactionType = this.transactionType,
//            terminalId = this.terminalId,
//            merchantId = this.merchantId,
//        )

    fun TransactionResponse.mapTransactionResponseToQrTransaction() =
        QrTransactionResponseFinalModel(
            amount = this.amount,
            responseCode = this.responseCode,
            currency_code = "NGN",
            customerName = this.cardHolder,
            email = "",
            message = mapResponseCodeToMessage(this.responseCode),
            narration = this.otherId,
            rrnOrderId = this.RRN,
            result = this.otherId,
            status = if (this.responseCode == "00") "APPROVED" else "DECLINED",
            transIdStan = this.STAN,
            transmissionDateTime = this.transmissionDateTime,
            transactionTimeInMillis = this.transactionTimeInMillis,
            transactionType = this.transactionType,
            terminalId = this.terminalId,
            merchantId = this.merchantId,
        )

    fun mapResponseCodeToMessage(responseCode: String): String {
        val responseMessages =
            mapOf(
                "00" to "Approved",
                "01" to "Refer to card issuer",
                "02" to "Refer to card issuer, special condition",
                "03" to "Invalid merchant",
                "04" to "Pick-up card",
                "05" to "Do not honor",
                "06" to "Error",
                "07" to "Pick-up card, special condition",
                "08" to "Honor with identification",
                "09" to "Request in progress",
                "10" to "Approved, partial",
                "11" to "Approved, VIP",
                "12" to "Invalid transaction",
                "13" to "Invalid amount",
                "14" to "Invalid card number",
                "15" to "No such issuer",
                "16" to "Approved, update track 3",
                "17" to "Customer cancellation",
                "18" to "Customer dispute",
                "19" to "Re-enter transaction",
                "20" to "Invalid response",
                "21" to "No action taken",
                "22" to "Suspected malfunction",
                "23" to "Unacceptable transaction fee",
                "24" to "File update not supported",
                "25" to "Unable to locate record",
                "26" to "Duplicate record",
                "27" to "File update edit error",
                "28" to "File update file locked",
                "29" to "File update failed",
                "30" to "Format error",
                "31" to "Bank not supported",
                "32" to "Completed partially",
                "33" to "Expired card, pick-up",
                "34" to "Suspected fraud, pick-up",
                "35" to "Contact acquirer, pick-up",
                "36" to "Restricted card, pick-up",
                "37" to "Call acquirer security, pick-up",
                "38" to "PIN tries exceeded, pick-up",
                "39" to "No credit account",
                "40" to "Function not supported",
                "41" to "Lost card",
                "42" to "No universal account",
                "43" to "Stolen card",
                "44" to "No investment account",
                "51" to "Not sufficient funds",
                "52" to "No check account",
                "53" to "No savings account",
                "54" to "Expired card",
                "55" to "Incorrect PIN",
                "56" to "No card record",
                "57" to "Transaction not permitted to cardholder",
                "58" to "Transaction not permitted on terminal",
                "59" to "Suspected fraud",
                "60" to "Contact acquirer",
                "61" to "Exceeds withdrawal limit",
                "62" to "Restricted card",
                "63" to "Security violation",
                "64" to "Original amount incorrect",
                "65" to "Exceeds withdrawal frequency",
                "66" to "Call acquirer security",
                "67" to "Hard capture",
                "68" to "Response received too late",
                "75" to "PIN tries exceeded",
                "77" to "Intervene, bank approval required",
                "78" to "Intervene, bank approval required for partial amount",
                "79" to "Declined",
                "81" to "Inactive, Dormant Account",
                "88" to "",
                "89" to "Acquirer Limit Exceeded/ Administration Error",
                "90" to "Cut-off in progress",
                "91" to "Issuer or switch inoperative",
                "92" to "Routing error.",
                "93" to "Violation of law",
                "94" to "Duplicate transaction",
                "95" to "Reconcile error",
                "96" to "System malfunction",
                "98" to "Exceeds cash limit",
                "99" to "Insufficient Funds/ Incorrect Pin",
                "N3" to "",
                "XX" to "",
                "H9" to "",
            )
        return responseMessages[responseCode] ?: "Unknown response"
    }

    fun FirebaseNotificationModelResponse.mapToTransactionResponse(): TransactionResponse {
        val currentDateTime = getCurrentDateTime()
        return TransactionResponse().apply {
            transactionType = TransactionType.PURCHASE
            maskedPan = this@mapToTransactionResponse.maskedPan
            amount = this@mapToTransactionResponse.amount.toDouble().toLong()
            transmissionDateTime = currentDateTime
            STAN = ""
            RRN = this@mapToTransactionResponse.rrn
            responseCode = this@mapToTransactionResponse.code
            cardLabel = ""
            cardHolder = this@mapToTransactionResponse.customerName
            transactionTimeInMillis = dateStr2Long(currentDateTime, "yyyy-MM-dd hh:mm a")
            accountType = IsoAccountType.DEFAULT_UNSPECIFIED
            terminalId = this@mapToTransactionResponse.terminalId
            merchantId = this@mapToTransactionResponse.merchantId
        }
    }

    fun GetZenithPayByTransferUserTransactionsModel.mapToTransactionResponse(): TransactionResponse {
        val currentDateTime = getCurrentDateTime()
        val boldText = "<b>PayByTransfer</b>"
        val spanned: Spanned = Html.fromHtml(boldText, Html.FROM_HTML_MODE_LEGACY)

        return TransactionResponse().apply {
            transactionType = TransactionType.PURCHASE
            maskedPan = ""
            amount = this@mapToTransactionResponse.amount.toDouble().toLong()
            transmissionDateTime = paid_at
            STAN = ""
            RRN = "$spanned ${this@mapToTransactionResponse.transaction_reference}"
            responseCode = "00"
            cardLabel = this@mapToTransactionResponse.payer_account_number
            cardHolder = this@mapToTransactionResponse.payer_account_name
            transactionTimeInMillis = dateStr2Long(paid_at, "yyyy-MM-dd hh:mm:ss")
            accountType = IsoAccountType.DEFAULT_UNSPECIFIED
            terminalId = this@mapToTransactionResponse.terminalId
            merchantId = this@mapToTransactionResponse.merchantId
        }
    }

    fun Transaction.toTransactionResponse(): TransactionResponse {
        var currentDateTime = ""
        currentDateTime =
            if (this@toTransactionResponse.time.toString().isNullOrEmpty()) {
                (
                    {
                        this@toTransactionResponse.dateCreated
                    }
                ).toString()
            } else {
                this@toTransactionResponse.time.toString()
            }
        return TransactionResponse().apply {
            transactionType = TransactionType.PURCHASE
            maskedPan = this@toTransactionResponse.maskedPan
            val amountInKobo = convertToKobo(this@toTransactionResponse.amount)
            amount =
                if (this@toTransactionResponse.amount == 0.0) {
                    0L
                } else {
                    amountInKobo
                }

//            transmissionDateTime = currentDateTime
            STAN = ""
            RRN =
                if (this@toTransactionResponse.rrn.isNullOrEmpty()) {
                    this@toTransactionResponse.transaction_reference.toString()
                } else {
                    this@toTransactionResponse.rrn
                }
            responseCode =
                if (this@toTransactionResponse.responseCode.isNullOrEmpty()) {
                    "00"
                } else {
                    this@toTransactionResponse.responseCode
                }
            cardLabel = ""
            cardHolder = "CUSTOMER"
//                if (this@toTransactionResponse.cardHolder.isEmpty()) {
//                    this@toTransactionResponse.payer_account_name
//                } else {
//                    "CUSTOMER"
//                }
//            transactionTimeInMillis = readableStringToLong(this@toTransactionResponse.dateCreated)
//            transactionTimeInMillis = dateStr2Long(currentDateTime, "yyyy-MM-dd hh:mm a")
            if (this@toTransactionResponse.dateCreated.isNullOrEmpty()) {
                transactionTimeInMillis = readableStringToLong(this@toTransactionResponse.time)
            } else {
                transactionTimeInMillis = readableStringToLong(this@toTransactionResponse.dateCreated)
            }
            accountType = IsoAccountType.DEFAULT_UNSPECIFIED
            terminalId = this@toTransactionResponse.terminalId
            merchantId = this@toTransactionResponse.merchantId
        }
    }

    fun readableStringToLong(dateString: String): Long {
        return try {
            val sanitizedDateString = dateString.removeSuffix(".000Z") + "Z" // Ensures correct formatting
            java.time.Instant.parse(sanitizedDateString).toEpochMilli()
        } catch (e: java.time.format.DateTimeParseException) {
//        Log.e("DateParsing", "Invalid date format: ${e.message}")
            0L // Return 0 if parsing fails
        } catch (e: Exception) {
//        Log.e("DateParsing", "Error: ${e.message}")
            0L
        }
    }

    fun convertToKobo(value: Double): Long {
        return (value * 100).toLong() // Convert Naira to Kobo
    }
}
