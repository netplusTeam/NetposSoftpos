package com.woleapp.netpos.contactless.model

data class RegistrationForExistingFBNUsersRequest(
    val accountNumber: String,
    val businessAddress: String,
    val businessName: String,
    val contactInformation: String,
    val username: String,
    val password: String,
    val state: String,
    val branch_name: String,
    val phoneNumber: String,
    var stateCode: String?,
    var merchantAddressLgaCode: String?,
    var merchantCategoryCode: String?,
    var businessOccupationCode: String?,
    var BVN: String?,
    var TIN: String?,
    var appName: String = "FirstPOS",
    var appVersion: String = "v3",
    var terminalType: String = "SoftPOS",
    var terminalModelDescription: String = "SoftPOS",
)
