package com.woleapp.netpos.contactless.network

import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.model.* // ktlint-disable no-wildcard-imports
import io.reactivex.Single
import retrofit2.Response

interface ContactlessRegRepository {
    fun findAccount(
        accountNumber: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<Response<AccountNumberLookUpResponse>>

    fun confirmOTP(
        phoneNumber: String,
        accountNumber: String,
        otp: String,
        partnerId: String,
    ): Single<ConfirmOTPResponse>

    fun registerExistingAccount(
        existingAccountRegisterRequest: ExistingAccountRegisterRequest,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse>

    fun registerExistingAccountForBankT(
        existingAccountRegisterRequest: BankTRegistrationModel,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse>

    fun getBranches(
        stateId: Int,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GetFBNBranchResponse>

    fun getStates(): Single<GetStatesResponse>

    fun resetPassword(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GeneralResponse>

    fun resetPasswordForProvidus(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ResetPasswordResponseForProvidus>

    fun confirmOTPToSetPassword(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GeneralResponse>

    fun setNewPassword(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GeneralResponse>

    fun encryptedAccountLookUpRequest(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ConfirmOTPResponse?>

    fun encryptedRegisterExistingAccount(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse?>

    fun encryptedRegisterFBN(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<RegistrationModel?>

    fun getCred(
        data: String,
    ): Single<Boolean>
}
