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
)

data class ExistingAccountRegisterRequestBankZ(
    val accountNumber: String,
    val businessAddress: String,
    val businessName: String,
    val contactInformation: String,
    val username: String,
    val password: String,
    val phoneNumber: String,
    val no_of_tid: String,
    val contact_person: String,
    val rc_no: String,
)
