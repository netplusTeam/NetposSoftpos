package com.woleapp.netpos.contactless.model

data class FWTransactionRequest(
    val amount: String,
    val batteryInformation: String,
    val cardAid: String,
    val cardExpiryDate: String,
    val cardPan: String,
    val cardSequenceNumber: String,
    val clearPin: String,
    val currency: String,
    val iccData: String,
    val merchantId: String,
    val mti: String,
    val pinBlock: String,
    val posConditionCode: String,
    val posDataCode: String,
    val posEntryMode: String,
    val processingCode: String,
    val refId: String,
    val serviceCode: String,
    val stan: String,
    val terminalId: String,
    val track2Data: String,
    val transactionRRN: String,
    val uniqueID: String,
    val validationRequestId: String
)