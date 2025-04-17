package com.woleapp.netpos.contactless.model

data class RegistrationFBNModel(
    var businessName: String,
    var contactInformation: String,
    var businessAddress: String,
    var phoneNumber: String,
    var email: String,
    var state: String?,
    var stateCode: String?,
    var merchantAddressLgaCode: String?,
    var merchantCategoryCode: String?,
    var businessOccupationCode: String?,
    var BVN: String?,
    var TIN: String?,
    var branch_name: String?,
    var appName: String = "FirstPOS",
    var appVersion: String = "v3",
    var terminalType: String = "SoftPOS",
    var terminalModelDescription: String = "SoftPOS",
    var isRegistered: Boolean = true,
) {
    constructor() : this("", "", "", "", "", "", "", "", "", "", "", "", "")

    fun allFieldsFilledFBN() =
        businessName.isNotEmpty() && contactInformation.isNotEmpty() && businessAddress.isNotEmpty() && merchantAddressLgaCode?.isNotEmpty() == true && merchantCategoryCode?.isNotEmpty() == true && phoneNumber.isNotEmpty() && email.isNotEmpty() && state?.isNotEmpty() == true && BVN?.isNotEmpty() == true && TIN?.isNotEmpty() == true && branch_name?.isNotEmpty() == true
}
