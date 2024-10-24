package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.*
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST
import retrofit2.http.Query

interface NotificationService {
    @POST("registerDeviceToken")
    fun registerDeviceToken(
        @Body notificationRegisterDeviceTokenModel: NotificationRegisterDeviceTokenModel,
    ): Single<RegisterDeviceTokenResponse>

    @POST("merchant-feedback")
    fun feedbackFromMerchants(
        @Body feedbackRequest: FeedbackRequest,
        @Query("partnerId") partnerId: String,
        @Query("deviceSerialId") deviceSerialId: String,
    ): Single<Response<FeedbackResponse>>

    @POST("merchant-nfc-request")
    fun requestNfcDevice(
        @Body requestNfcRequest: RequestNfcRequest,
        @Query("partnerId") partnerId: String,
        @Query("deviceId") deviceId: String,
    ): Single<Response<FeedbackResponse>>

    @POST("user/delete-account")
    fun deleteAccount(
        @Body accountDeletionRequest: AccountDeletionRequest,
    ): Single<Response<FeedbackResponse>>
}
