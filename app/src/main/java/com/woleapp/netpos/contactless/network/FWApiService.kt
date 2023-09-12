package com.woleapp.netpos.contactless.network

import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.model.FWTransactionRequest
import com.woleapp.netpos.contactless.model.FWTransactionResponse
import com.woleapp.netpos.contactless.model.PostQrToServerModel
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST

interface FWApiService {

    @POST("processTxn")
    fun processTransaction(
        @Body fwTransactionRequest: FWTransactionRequest
    ): Single<FWTransactionResponse>

}