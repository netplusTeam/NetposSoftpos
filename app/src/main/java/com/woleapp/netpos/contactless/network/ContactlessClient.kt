package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.util.UtilityParam
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory
import retrofit2.converter.gson.GsonConverterFactory

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
                        .build(),
                )
                .build()
                .create(ContactlessRegistrationService::class.java).also {
                    contactlessClientInstance = it
                }
        }
}
