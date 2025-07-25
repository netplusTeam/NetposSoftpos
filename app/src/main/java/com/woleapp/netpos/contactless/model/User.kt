package com.woleapp.netpos.contactless.model

import com.google.gson.annotations.SerializedName

data class User(
    @SerializedName(value = "agent_id", alternate = ["Merchant_id", "merchant_id"])
    var user_id: Long? = null,
    @SerializedName(value = "user_type")
    var userType: String? = null,
    @SerializedName("name")
    var name: String? = null,
    @SerializedName("username")
    var email: String? = null,
    @SerializedName("password")
    var password: String? = null,
    @SerializedName("mobile_no")
    var phone: String? = null,
    @SerializedName("accountNumber")
    var accountNumber: String? = null,
    @SerializedName("bankName")
    var bank: String? = null,
    @SerializedName("bvnNumber")
    var bvn: String? = null,
    @SerializedName("terminalId")
    var terminal_id: String? = null,
    @SerializedName("is_verified")
    var is_verified: Boolean? = null,
    @SerializedName(value = "amount", alternate = ["wallet_amount", "availableBalance"])
    var availableBalance: String? = "0.00",
    @SerializedName(value = "ledgerBalance")
    var ledgerBalance: String = "0.00",
    @SerializedName("isQRRegistered")
    var qRRegistered: Boolean = false,
    @SerializedName("state")
    var state: String = "",
    @SerializedName("stormId")
    var netplus_id: String? = null,
    @SerializedName("businessName")
    var business_name: String? = null,
    @SerializedName("business_address")
    var business_address: String? = null,
    @SerializedName("business_state")
    var business_state: String? = null,
    @SerializedName("phoneNumber")
    var business_phone_number: String? = null,
    @SerializedName("nfc_interest")
    var nfc_interest: String? = null,
    var mid: String? = null,
    var partnerId: String? = null,
    var netplusPayMid: String? = null,
)

data class TokenResp(val success: Boolean, val token: String)

data class BankPTokenResp(val success: Boolean, val token: String, val invitation: String)
