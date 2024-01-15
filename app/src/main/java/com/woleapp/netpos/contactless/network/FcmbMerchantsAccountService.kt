package com.woleapp.netpos.contactless.network

import com.google.android.gms.common.internal.safeparcel.SafeParcelable.Param
import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.model.*
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.*


interface FcmbMerchantsAccountService {

    @GET("getUserAccount/{NetpluspayMid}")
    fun getMerchantDetails(
        @Header("Authorization") token: String,
        @Path("NetpluspayMid") partnerId: String
    ): Single<Response<MerchantDetailsResponse>>

}
