package com.woleapp.netpos.contactless.util

import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.entities.TransactionType
import com.danbamitale.epmslib.utils.IsoAccountType
import com.woleapp.netpos.contactless.model.FirebaseNotificationModelResponse
import com.woleapp.netpos.contactless.model.GetZenithPayByTransferUserTransactionsModel
import com.woleapp.netpos.contactless.model.QrTransactionResponseFinalModel
import com.woleapp.netpos.contactless.util.Mappers.mapToTransactionResponse
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

    fun TransactionResponse.mapTransactionResponseToQrTransaction() =
        QrTransactionResponseFinalModel(
            amount = this.amount,
            responseCode = this.responseCode,
            currency_code = "NGN",
            customerName = this.cardHolder,
            email = "",
            message = this.otherId,
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
        return TransactionResponse().apply {
            transactionType = TransactionType.PURCHASE
            maskedPan = ""
            amount = this@mapToTransactionResponse.amount.toDouble().toLong()
            transmissionDateTime = paid_at
            STAN = ""
            RRN = this@mapToTransactionResponse.transaction_reference
            responseCode = "00"
            cardLabel = this@mapToTransactionResponse.payer_account_number
            cardHolder = this@mapToTransactionResponse.payer_account_name
            transactionTimeInMillis = dateStr2Long(paid_at, "yyyy-MM-dd hh:mm:ss")
            accountType = IsoAccountType.DEFAULT_UNSPECIFIED
            terminalId = this@mapToTransactionResponse.terminalId
            merchantId = this@mapToTransactionResponse.merchantId
        }
    }
}
