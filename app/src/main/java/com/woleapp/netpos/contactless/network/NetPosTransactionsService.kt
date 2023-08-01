package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.DataToLogAfterConnectingToNibss
import com.woleapp.netpos.contactless.model.LogToBackendResponse
import com.woleapp.netpos.contactless.model.ResponseBodyAfterLoginToBackend
import com.woleapp.netpos.contactless.model.TransactionToLogBeforeConnectingToNibbs
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

interface NetPosTransactionsService {

    @POST("/pos_transaction")
    fun logTransactionBeforeConnectingToNibss(
        @Body dataToLog: TransactionToLogBeforeConnectingToNibbs,
    ): Single<ResponseBodyAfterLoginToBackend>

    @PUT("/pos_transaction/{rrn}")
    fun updateLogAfterConnectingToNibss(
        @Path("rrn") rrn: String,
        @Body data: DataToLogAfterConnectingToNibss,
    ): Single<Response<LogToBackendResponse>>
}
