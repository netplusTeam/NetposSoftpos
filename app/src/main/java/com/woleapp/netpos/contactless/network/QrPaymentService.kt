package com.woleapp.netpos.contactless.network

import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.model.PayThroughMPGSRequest
import com.woleapp.netpos.contactless.model.PayThroughMPGSResponse
import com.woleapp.netpos.contactless.model.PayWithQrRequest
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST

interface QrPaymentService {

    @POST("contactlessQr")
    fun payWithQr(
        @Body payWithQrRequest: PayWithQrRequest,
    ): Single<Response<String>>


    @POST("softpos")
    fun payThroughMPGS(
        @Body payThroughMPGSRequest: PayThroughMPGSRequest,
    ): Single<Response<JsonObject>>


}
