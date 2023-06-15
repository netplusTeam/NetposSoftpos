package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.RegistrationFBNModel
import com.woleapp.netpos.contactless.model.RegistrationModel
import com.woleapp.netpos.contactless.util.UtilityParam
import io.reactivex.Single
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.Body
import retrofit2.http.POST
import retrofit2.http.Query

interface ContactlessRegistrationService {
    @POST("user/register")
    fun register(
        @Body registrationModel: RegistrationModel?,
        @Query("bank") bank: String,
        @Query("deviceSerialId") deviceSerialId: String
        ): Single<RegistrationModel>
    @POST("user/register")
    fun registerFBN(
        @Body registrationModel: RegistrationFBNModel?,
        @Query("bank") bank: String,
        @Query("deviceSerialId") deviceSerialId: String
        ): Single<RegistrationModel>
}


object ContactlessClient {
    private val contactlessBaseUrl = UtilityParam.STRING_CONTACTLESS_EXISTING_BASE_URL
    var contactlessClientInstance: ContactlessRegistrationService? = null
    fun getContactlessService(): ContactlessRegistrationService =
        contactlessClientInstance ?: synchronized(this) {
            Retrofit.Builder()
                .baseUrl(contactlessBaseUrl)
                .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
                .addConverterFactory(GsonConverterFactory.create())
                .client(
                    OkHttpClient.Builder()
                        .addInterceptor(HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BODY))
                        .build()
                )
                .build()
                .create(ContactlessRegistrationService::class.java).also {
                    contactlessClientInstance = it
                }
        }

}