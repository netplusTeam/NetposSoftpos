package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.*
import io.reactivex.Single
import retrofit2.http.Body
import retrofit2.http.POST
import retrofit2.http.Query

interface NotificationService {
    @POST("registerDeviceToken")
    fun registerDeviceToken(
        @Body notificationRegisterDeviceTokenModel: NotificationRegisterDeviceTokenModel,
    ): Single<RegisterDeviceTokenResponse>

    @POST("merchant-nfc-request")
    fun requestNfcDevice(
        @Body requestNfcRequest: RequestNfcRequest,
        @Query("partnerId") partnerId: String,
        @Query("deviceId") deviceId: String,
    ): Single<Response<FeedbackResponse>>
}
