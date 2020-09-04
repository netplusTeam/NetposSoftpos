package com.woleapp.netpos.network

import com.google.gson.JsonObject
import com.woleapp.netpos.model.TokenResp
import com.woleapp.netpos.model.User
import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.*

interface StormApiService {
    @POST("api/token")
    fun appToken(@Body credentials: JsonObject?): Single<TokenResp>

    @POST("api/auth")
    fun userToken(
        @Header("Authorization") appToken: String?,
        @Body credentials: JsonObject?
    ): Single<TokenResp>

    @GET("api/agents/{stormId}")
    fun getAgentDetails(@Path("stormId") stormId: String?): Single<User>

    @POST("api/passwordReset")
    fun passwordReset(
        @Header("Authorization") appToken: String?,
        @Body payload: JsonObject?
    ): Single<Response<Any?>?>
}