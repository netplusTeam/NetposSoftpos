package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.*
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.*

interface PayByTransferService {
    //    @GET("getUserAccount/{NetpluspayMid}")
//    fun getMerchantDetails(
//        @Header("Authorization") token: String,
//        @Path("NetpluspayMid") partnerId: String
//    ): Single<Response<MerchantDetailsResponse>>

    @GET("zenith_account/{NetpluspayMid}")
    fun getMerchantDetails(
        @Header("Authorization") token: String,
        @Path("NetpluspayMid") partnerId: String,
    ): Single<Response<MerchantDetailsResponse>>
}
