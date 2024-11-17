package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.DataToLogAfterConnectingToNibss
import com.woleapp.netpos.contactless.model.LogToBackendResponse
import com.woleapp.netpos.contactless.model.ResponseBodyAfterLoginToBackend
import com.woleapp.netpos.contactless.model.TransactionToLogBeforeConnectingToNibbs
import com.woleapp.netpos.contactless.model.payment.transactions.AllTransactionsResponseDto
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.*

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

    @GET("/pos_transactions_by_user/{username}")
    fun getPaymentTransactions(
        @Path("username") username: String,
        @Query("merchantId") merchantId: String,
        @Query("transactionType") transactionType: String,
        @Query("page") page: Int,
    ): Single<Response<AllTransactionsResponseDto>>
}
