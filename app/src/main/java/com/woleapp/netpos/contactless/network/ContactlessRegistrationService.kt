package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.* // ktlint-disable no-wildcard-imports
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST
import retrofit2.http.Query

interface ContactlessRegistrationService {
    @POST("user/register")
    fun register(
        @Body registrationModel: RegistrationModel?,
        @Query("bank") bank: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<RegistrationModel>

    @POST("user/register-zenith-account")
    fun registerExistingAccountForZenith(
        @Body registerExistingAccountRegisterRequest: RegistrationBankZModel?,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse>

    @POST("user/register")
    fun encryptedRegisterFBN(
        @Body data: EncryptedApiRequestModel,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<EncryptedApiResponseModel>

    @POST("auth/enc-request")
    fun getCredentials(
        @Body data: EncryptedApiRequestModel,
    ): Single<Response<EncryptedApiResponseModel>>
}
