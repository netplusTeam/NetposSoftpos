package com.woleapp.netpos.contactless.network

import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.model.*
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.*

interface AccountLookUpService {

//    @POST("account-lookup")
//    fun findAccount(
//        @Body accountNumber: AccountNumberLookUpRequest,
//        @Query("partnerId") partnerId: String,
//        @Query("deviceSerialId") deviceSerialId: String,
//    ): Single<AccountNumberLookUpResponse>

    @POST("account-lookup")
    fun findAccount(
        @Body accountNumber: AccountNumberLookUpRequest,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<Response<AccountNumberLookUpResponse>>

//    @POST("confirm-otp")
//    fun confirmOTP(
//        @Body confirmOTP: ConfirmOTPRequest,
//        @Query("partnerId") partnerId: String,
//    ): Single<ConfirmOTPResponse>

    @POST("confirm-otp")
    fun confirmOTP(
        @Body data: EncryptedApiRequestModel,
        @Query("partnerId") partnerId: String
    ): Single<EncryptedApiResponseModel>

    @POST("user/register-existing-user")
    fun registerExistingAccount(
        @Body registerExistingAccountRegisterRequest: ExistingAccountRegisterRequest,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse>

    @POST("user/register-existing-user")
    fun registerExistingAccountForBankT(
        @Body registerExistingAccountRegisterRequest: BankTRegistrationModel,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse>

    @GET("get-states")
    fun getStates(): Single<GetStatesResponse>

    @GET("get-bank-branches/{stateId}")
    fun getBranches(
        @Path("stateId") stateId: Int,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<GetFBNBranchResponse>

    @POST("auth/reset-password-request")
    fun resetPassword(
        @Body payload: JsonObject?,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<GeneralResponse>

    @POST("auth/reset-password-request")
    fun resetPasswordForProvidus(
        @Body payload: JsonObject?,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<ResetPasswordResponseForProvidus>

    @POST("auth/confirm-reset-otp")
    fun confirmOTPToSetPassword(
        @Body payload: JsonObject?,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<GeneralResponse>

    @POST("/auth/new-password")
    fun setNewPassword(
        @Body payload: JsonObject?,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<GeneralResponse>

    @POST("account-lookup")
    fun encryptedAccountLookUpRequest(
        @Body data: EncryptedApiRequestModel,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<EncryptedApiResponseModel>

    @POST("user/register-existing-user")
    fun encryptedRegisterExistingAccount(
        @Body data: EncryptedApiRequestModel,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<EncryptedApiResponseModel>
}
