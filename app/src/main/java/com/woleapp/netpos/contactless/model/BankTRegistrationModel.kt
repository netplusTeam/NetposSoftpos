package com.woleapp.netpos.contactless.model

data class BankTRegistrationModel(
    var businessAddress: String,
    var businessName: String,
    var contactInformation: String,
    var username: String,
    var password: String,
    var phoneNumber: String,
    var isRegistered: Boolean = true
) {
    constructor() : this("", "", "", "", "", "")

    fun allFieldsFilled() =
        businessName.isNotEmpty() && contactInformation.isNotEmpty() && businessAddress.isNotEmpty() && phoneNumber.isNotEmpty() &&
                username.isNotEmpty() && password.isNotEmpty()

}

