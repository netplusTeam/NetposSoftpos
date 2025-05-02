package com.woleapp.netpos.contactless.model

data class RegistrationFBNModel(
    var businessName: String,
    var contactInformation: String,
    var state: String?,
    var businessAddress: String,
    var branch_name: String?,
    var phoneNumber: String,
    var email: String,
    var title: String?,
    var isRegistered: Boolean = true,
) {
    constructor() : this("", "", "", "", "", "", "", "")

    fun allFieldsFilledFBN() =

        businessName.isNotEmpty() && contactInformation.isNotEmpty() && businessAddress.isNotEmpty() && phoneNumber.isNotEmpty() && email.isNotEmpty() && state?.isNotEmpty() == true && branch_name?.isNotEmpty() == true
}
