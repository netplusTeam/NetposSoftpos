package com.woleapp.netpos.contactless.di.appModule

import android.content.Context
import com.google.gson.Gson
import com.woleapp.netpos.contactless.database.AppDatabase
import com.woleapp.netpos.contactless.database.dao.AppNotificationDao
import com.woleapp.netpos.contactless.database.dao.MqttLocalDao
import com.woleapp.netpos.contactless.database.dao.TransactionResponseDao
import com.woleapp.netpos.contactless.network.*
import com.woleapp.netpos.contactless.util.UtilityParam.FCMB_MERCHANTS_ACCOUNT_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.FW_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.PAY_BY_TRANSFER_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.PROVIDUS_MERCHANTS_ACCOUNT_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_AUTH_PASSWORD
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_AUTH_USER_NAME
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_CONTACTLESS_EXISTING_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_CONTACTLESS_PAYMENT_WITH_QR_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_GET_QR_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_NETPOS_TRANSACTION_API_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_NOTIFICATION_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_RRN_SERVICE_BASE_URL
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_SEND_VERVE_OTP_BASE_URL
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import io.reactivex.Scheduler
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import okhttp3.Interceptor
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit
import javax.inject.Named
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {
    @Provides
    @Singleton
    @Named("defaultBaseUrl")
    fun providesBaseUrlForGettingThreshold(): String = STRING_GET_QR_BASE_URL

    @Provides
    @Singleton
    @Named("netpos-transaction-api-base-url")
    fun providesNetposTransactionApiBaseUrl(): String = STRING_NETPOS_TRANSACTION_API_BASE_URL

    @Provides
    @Singleton
    @Named("rrn-service-base-url")
    fun providesRrnServiceBaseUrl(): String = STRING_RRN_SERVICE_BASE_URL

    @Provides
    @Singleton
    @Named("otpBaseUrl")
    fun providesBaseUrlForGetVerveOtp(): String = STRING_SEND_VERVE_OTP_BASE_URL

    @Provides
    @Singleton
    @Named("contactlessRegBaseUrl")
    fun providesBaseUrlForContactlessReg(): String = STRING_CONTACTLESS_EXISTING_BASE_URL

    @Provides
    @Singleton
    @Named("contactlessQrPaymentBaseUrl")
    fun providesBaseUrlForContactlessPaymentWithQr(): String = STRING_CONTACTLESS_PAYMENT_WITH_QR_BASE_URL

    @Provides
    @Singleton
    @Named("notificationBaseUrl")
    fun providesBaseUrlForNotification(): String = STRING_NOTIFICATION_BASE_URL

    @Provides
    @Singleton
    @Named("payByTransferBaseUrl")
    fun payByTransferBaseUrl(): String = PAY_BY_TRANSFER_BASE_URL

    @Provides
    @Singleton
    @Named("providusMerchantsAccountBaseUrl")
    fun providusMerchantsAccountBaseUrl(): String = PROVIDUS_MERCHANTS_ACCOUNT_BASE_URL

    @Provides
    @Singleton
    @Named("fcmbMerchantsAccountBaseUrl")
    fun fcmbMerchantsAccountBaseUrl(): String = FCMB_MERCHANTS_ACCOUNT_BASE_URL

    @Provides
    @Singleton
    @Named("flutterWaveBaseUrl")
    fun providesBaseUrlForFlutterwave(): String = FW_BASE_URL

    @Provides
    @Singleton
    @Named("loggingInterceptor")
    fun providesLoggingInterceptor(): Interceptor =
        HttpLoggingInterceptor().apply {
            setLevel(HttpLoggingInterceptor.Level.BODY)
        }

    @Provides
    @Singleton
    @Named("headerInterceptor")
    fun providesHeaderInterceptor(): Interceptor = BasicAuthInterceptor(STRING_AUTH_USER_NAME, STRING_AUTH_PASSWORD)

    @Provides
    @Singleton
    @Named("defaultOkHttp")
    fun providesOKHTTPClient(
//        @Named("loggingInterceptor") loggingInterceptor: Interceptor,
        @Named("headerInterceptor") headerInterceptor: Interceptor,
    ): OkHttpClient =
        OkHttpClient().newBuilder().connectTimeout(70, TimeUnit.SECONDS)
            .readTimeout(70, TimeUnit.SECONDS).writeTimeout(70, TimeUnit.SECONDS)
            .retryOnConnectionFailure(true).addInterceptor(headerInterceptor).build()
//            .addInterceptor(loggingInterceptor).build()

    @Provides
    @Singleton
    @Named("otpOkHttp")
    fun providesOKHTTPClientForGetVerveOtp(
//        @Named("loggingInterceptor") loggingInterceptor: Interceptor,
    ): OkHttpClient =
        OkHttpClient().newBuilder().connectTimeout(70, TimeUnit.SECONDS)
            .readTimeout(70, TimeUnit.SECONDS).writeTimeout(70, TimeUnit.SECONDS)
            .retryOnConnectionFailure(true).build()
//            .addInterceptor(loggingInterceptor).build()

    @Provides
    @Singleton
    @Named("payByTransferOkHttp")
    fun providesOKHTTPClientForPayByTransfer(
//        @Named("loggingInterceptor") loggingInterceptor: Interceptor,
    ): OkHttpClient =
        OkHttpClient().newBuilder().connectTimeout(70, TimeUnit.SECONDS)
            .readTimeout(70, TimeUnit.SECONDS).writeTimeout(70, TimeUnit.SECONDS)
            .retryOnConnectionFailure(true).build()
//            .addInterceptor(loggingInterceptor).build()

    @Provides
    @Singleton
    @Named("defaultRetrofit")
    fun providesRetrofit(
        @Named("defaultOkHttp") okhttp: OkHttpClient,
        @Named("defaultBaseUrl") baseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(baseUrl).client(okhttp)
            .build()

    @Provides
    @Singleton
    @Named("otpRetrofit")
    fun providesRetrofitForVerveOtp(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("otpBaseUrl") otpBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(otpBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    @Named("contactlessRegRetrofit")
    fun providesRetrofitForContactlessReg(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("contactlessRegBaseUrl") contactlessRegBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(contactlessRegBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    @Named("contactlessQrPaymentRetrofit")
    fun providesRetrofitForContactlessQrPayment(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("contactlessQrPaymentBaseUrl") contactlessQrPaymentBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
            .baseUrl(contactlessQrPaymentBaseUrl).client(okhttp).build()

    @Provides
    @Singleton
    @Named("payByTransferRetrofit")
    fun payByTransferService(
        @Named("payByTransferOkHttp") okhttp: OkHttpClient,
        @Named("payByTransferBaseUrl") payByTransferBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(payByTransferBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    @Named("providusMerchantsAccountRetrofit")
    fun providusMerchantsAccountService(
        @Named("payByTransferOkHttp") okhttp: OkHttpClient,
        @Named("providusMerchantsAccountBaseUrl") payByTransferBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(payByTransferBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    @Named("fcmbMerchantsAccountRetrofit")
    fun fcmbMerchantsAccountService(
        @Named("payByTransferOkHttp") okhttp: OkHttpClient,
        @Named("fcmbMerchantsAccountBaseUrl") payByTransferBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(payByTransferBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    @Named("notificationRetrofit")
    fun providesRetrofitForNotificationService(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("notificationBaseUrl") notificationBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(notificationBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    @Named("netpos-transaction-api-retrofit")
    fun providesRetrofitForNetposTransactionApiService(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("netpos-transaction-api-base-url") netposTransactionApiServiceBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
            .baseUrl(netposTransactionApiServiceBaseUrl).client(okhttp).build()

    @Provides
    @Singleton
    @Named("rrn-retrofit")
    fun providesRetrofitForRrnService(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("rrn-service-base-url") netposTransactionApiServiceBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
            .baseUrl(netposTransactionApiServiceBaseUrl).client(okhttp).build()

    @Provides
    @Singleton
    @Named("fw-retrofit")
    fun providesRetrofitForFWApiService(
        @Named("otpOkHttp") okhttp: OkHttpClient,
        @Named("flutterWaveBaseUrl") fwApiServiceBaseUrl: String,
    ): Retrofit =
        Retrofit.Builder().addConverterFactory(GsonConverterFactory.create())
            .addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(fwApiServiceBaseUrl)
            .client(okhttp).build()

    @Provides
    @Singleton
    fun providesFWApiService(
        @Named("fw-retrofit") retrofit: Retrofit,
    ): FWApiService = retrofit.create(FWApiService::class.java)

    @Provides
    @Singleton
    fun providesNetposTransactionApiService(
        @Named("netpos-transaction-api-retrofit") retrofit: Retrofit,
    ): NetPosTransactionsService = retrofit.create(NetPosTransactionsService::class.java)

    @Provides
    @Singleton
    fun providesRrnService(
        @Named("rrn-retrofit") retrofit: Retrofit,
    ): RrnApiService = retrofit.create(RrnApiService::class.java)

    @Provides
    @Singleton
    fun providesQrService(
        @Named("defaultRetrofit") retrofit: Retrofit,
    ): QrService = retrofit.create(QrService::class.java)

    @Provides
    @Singleton
    fun providesVerveOtpService(
        @Named("otpRetrofit") retrofit: Retrofit,
    ): VerveOtpService = retrofit.create(VerveOtpService::class.java)

    @Provides
    @Singleton
    fun providesContactlessRegService(
        @Named("contactlessRegRetrofit") retrofit: Retrofit,
    ): AccountLookUpService = retrofit.create(AccountLookUpService::class.java)

    @Provides
    @Singleton
    fun providesContactlessQrPaymentService(
        @Named("contactlessQrPaymentRetrofit") retrofit: Retrofit,
    ): QrPaymentService = retrofit.create(QrPaymentService::class.java)

    @Provides
    @Singleton
    fun providesNotificationService(
        @Named("notificationRetrofit") retrofit: Retrofit,
    ): NotificationService = retrofit.create(NotificationService::class.java)

    @Provides
    @Singleton
    fun payByTransferServiceService(
        @Named("payByTransferRetrofit") retrofit: Retrofit,
    ): PayByTransferService = retrofit.create(PayByTransferService::class.java)

    @Provides
    @Singleton
    fun providusMerchantsAccountDetailsService(
        @Named("providusMerchantsAccountRetrofit") retrofit: Retrofit,
    ): ProvidusMerchantsAccountService = retrofit.create(ProvidusMerchantsAccountService::class.java)

    @Provides
    @Singleton
    fun fcmbMerchantsAccountDetailsService(
        @Named("fcmbMerchantsAccountRetrofit") retrofit: Retrofit,
    ): FcmbMerchantsAccountService = retrofit.create(FcmbMerchantsAccountService::class.java)

    @Provides
    @Singleton
    fun providesGson(): Gson = Gson()

    @Provides
    @Singleton
    @Named("io-scheduler")
    fun providesIoScheduler(): Scheduler = Schedulers.io()

    @Provides
    @Singleton
    @Named("main-scheduler")
    fun providesMainThreadScheduler(): Scheduler = AndroidSchedulers.mainThread()

    @Provides
    @Singleton
    fun providesCompositeDisposable(): CompositeDisposable = CompositeDisposable()

    @Provides
    @Singleton
    fun providesAppDb(
        @ApplicationContext context: Context,
    ): AppDatabase = AppDatabase.getDatabaseInstance(context)

    @Provides
    @Singleton
    fun providesNotificationDao(appDatabase: AppDatabase): AppNotificationDao = appDatabase.getAppNotificationDao()

    @Provides
    @Singleton
    fun providesTransactionResponseDao(appDatabase: AppDatabase): TransactionResponseDao = appDatabase.transactionResponseDao()

    @Provides
    @Singleton
    fun providesMqttLocalDao(appDatabase: AppDatabase): MqttLocalDao = appDatabase.mqttLocalDao()
}
