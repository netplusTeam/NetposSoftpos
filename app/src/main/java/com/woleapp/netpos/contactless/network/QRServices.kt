package com.woleapp.netpos.contactless.network

import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.model.*
import io.reactivex.Single
import okhttp3.ResponseBody
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

interface MasterPassQRService {
    @POST("qr/static")
    fun getStaticQr(@Body body: JsonObject): Single<ResponseBody>
}

interface NibssQRService {
    @POST("getQR")
    fun getQr(@Body body: JsonObject): Single<NibssQRResponse>

    @POST("queryTransactionStatus")
    fun queryTransactionStatus(@Body body: JsonObject): Single<NibssQRResponse>
}

interface BankZQrService {
    @GET("getQR")
    fun getBankZQr(): Single<BankZQr>

    @GET("getMCC/{pagination}")
    fun getMerchantCategoryList(@Path("pagination") pagination: String): Single<BankZMerchantCategoryList>

    @GET("getMCC/{filter}/{pagination}")
    fun getMerchantCategoryListWithFilter(
        @Path("filter") filter: String,
        @Path("pagination") pagination: String
    ): Single<BankZMerchantCategoryList>

    @POST("createMerchant")
    fun createBankZQRMerchant(@Body createBankZMerchantPayload: CreateBankZMerchantPayload): Single<CreateBankZMerchantResponse>

    @GET("getCity/{state}")
    fun getCity(@Path("state") state: String): Single<BankZCityList>
}