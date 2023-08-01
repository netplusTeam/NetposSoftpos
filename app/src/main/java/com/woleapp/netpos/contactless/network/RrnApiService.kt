package com.woleapp.netpos.contactless.network

import io.reactivex.Single
import retrofit2.Response
import retrofit2.http.GET

interface RrnApiService {
    @GET("/")
    fun getRrn(): Single<Response<String>>
}