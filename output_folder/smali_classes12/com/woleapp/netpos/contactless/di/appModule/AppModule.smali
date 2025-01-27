.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u001c\u0010\t\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\u0004H\u0007J\u001c\u0010\r\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0004H\u0007J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\u0007J\u0008\u0010\u0014\u001a\u00020\u0004H\u0007J\u0008\u0010\u0015\u001a\u00020\u0004H\u0007J\u0008\u0010\u0016\u001a\u00020\u0004H\u0007J\u0008\u0010\u0017\u001a\u00020\u0004H\u0007J\u0008\u0010\u0018\u001a\u00020\u0004H\u0007J\u0008\u0010\u0019\u001a\u00020\u0004H\u0007J\u0008\u0010\u001a\u001a\u00020\u001bH\u0007J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010 \u001a\u00020!2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\"\u001a\u00020#H\u0007J\u0008\u0010$\u001a\u00020%H\u0007J\u0008\u0010&\u001a\u00020\'H\u0007J\u0008\u0010(\u001a\u00020%H\u0007J\u0008\u0010)\u001a\u00020\'H\u0007J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0011H\u0007J\u0008\u0010-\u001a\u00020\u0004H\u0007J\u0012\u0010.\u001a\u00020/2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u00100\u001a\u0002012\u0006\u0010,\u001a\u00020\u0011H\u0007J\u0012\u00102\u001a\u0002032\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u00104\u001a\u00020\u000b2\u0008\u0008\u0001\u00105\u001a\u00020%H\u0007J\u0008\u00106\u001a\u00020\u000bH\u0007J\u0008\u00107\u001a\u00020\u000bH\u0007J\u0012\u00108\u001a\u0002092\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u001c\u0010:\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010;\u001a\u00020\u0004H\u0007J\u001c\u0010<\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010=\u001a\u00020\u0004H\u0007J\u001c\u0010>\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010?\u001a\u00020\u0004H\u0007J\u001c\u0010@\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010A\u001a\u00020\u0004H\u0007J\u001c\u0010B\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010C\u001a\u00020\u0004H\u0007J\u001c\u0010D\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010E\u001a\u00020\u0004H\u0007J\u001c\u0010F\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010C\u001a\u00020\u0004H\u0007J\u001c\u0010G\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010H\u001a\u00020\u0004H\u0007J\u0012\u0010I\u001a\u00020J2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010K\u001a\u00020\u0004H\u0007J\u0010\u0010L\u001a\u00020M2\u0006\u0010,\u001a\u00020\u0011H\u0007J\u0012\u0010N\u001a\u00020O2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010P\u001a\u00020\u0004H\u0007J\u0012\u0010Q\u001a\u00020R2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u001c\u0010S\u001a\u00020\u00082\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0004H\u0007\u00a8\u0006T"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/di/appModule/AppModule;",
        "",
        "()V",
        "fcmbMerchantsAccountBaseUrl",
        "",
        "fcmbMerchantsAccountDetailsService",
        "Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "fcmbMerchantsAccountService",
        "okhttp",
        "Lokhttp3/OkHttpClient;",
        "payByTransferBaseUrl",
        "payByTransferService",
        "payByTransferServiceService",
        "Lcom/woleapp/netpos/contactless/network/PayByTransferService;",
        "providesAppDb",
        "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
        "context",
        "Landroid/content/Context;",
        "providesBaseUrlForContactlessPaymentWithQr",
        "providesBaseUrlForContactlessReg",
        "providesBaseUrlForFlutterwave",
        "providesBaseUrlForGetVerveOtp",
        "providesBaseUrlForGettingThreshold",
        "providesBaseUrlForNotification",
        "providesCompositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "providesContactlessQrPaymentService",
        "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
        "providesContactlessRegService",
        "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
        "providesFWApiService",
        "Lcom/woleapp/netpos/contactless/network/FWApiService;",
        "providesGson",
        "Lcom/google/gson/Gson;",
        "providesHeaderInterceptor",
        "Lokhttp3/Interceptor;",
        "providesIoScheduler",
        "Lio/reactivex/Scheduler;",
        "providesLoggingInterceptor",
        "providesMainThreadScheduler",
        "providesMqttLocalDao",
        "Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;",
        "appDatabase",
        "providesNetposTransactionApiBaseUrl",
        "providesNetposTransactionApiService",
        "Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;",
        "providesNotificationDao",
        "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
        "providesNotificationService",
        "Lcom/woleapp/netpos/contactless/network/NotificationService;",
        "providesOKHTTPClient",
        "headerInterceptor",
        "providesOKHTTPClientForGetVerveOtp",
        "providesOKHTTPClientForPayByTransfer",
        "providesQrService",
        "Lcom/woleapp/netpos/contactless/network/QrService;",
        "providesRetrofit",
        "baseUrl",
        "providesRetrofitForContactlessQrPayment",
        "contactlessQrPaymentBaseUrl",
        "providesRetrofitForContactlessReg",
        "contactlessRegBaseUrl",
        "providesRetrofitForFWApiService",
        "fwApiServiceBaseUrl",
        "providesRetrofitForNetposTransactionApiService",
        "netposTransactionApiServiceBaseUrl",
        "providesRetrofitForNotificationService",
        "notificationBaseUrl",
        "providesRetrofitForRrnService",
        "providesRetrofitForVerveOtp",
        "otpBaseUrl",
        "providesRrnService",
        "Lcom/woleapp/netpos/contactless/network/RrnApiService;",
        "providesRrnServiceBaseUrl",
        "providesTransactionResponseDao",
        "Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;",
        "providesVerveOtpService",
        "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
        "providusMerchantsAccountBaseUrl",
        "providusMerchantsAccountDetailsService",
        "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
        "providusMerchantsAccountService",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fcmbMerchantsAccountBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "fcmbMerchantsAccountBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 93
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getFCMB_MERCHANTS_ACCOUNT_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final fcmbMerchantsAccountDetailsService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "fcmbMerchantsAccountRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    const-class v0, Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(FcmbMerc\u2026countService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;

    return-object v0
.end method

.method public final fcmbMerchantsAccountService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "payByTransferOkHttp"
        .end annotation
    .end param
    .param p2, "payByTransferBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "fcmbMerchantsAccountBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "fcmbMerchantsAccountRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payByTransferBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 221
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final payByTransferBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "payByTransferBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 83
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPAY_BY_TRANSFER_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final payByTransferService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "payByTransferOkHttp"
        .end annotation
    .end param
    .param p2, "payByTransferBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "payByTransferBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "payByTransferRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payByTransferBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 199
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final payByTransferServiceService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/PayByTransferService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "payByTransferRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    const-class v0, Lcom/woleapp/netpos/contactless/network/PayByTransferService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(PayByTransferService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/PayByTransferService;

    return-object v0
.end method

.method public final providesAppDb(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final providesBaseUrlForContactlessPaymentWithQr()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "contactlessQrPaymentBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 73
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_CONTACTLESS_PAYMENT_WITH_QR_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesBaseUrlForContactlessReg()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "contactlessRegBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 68
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_CONTACTLESS_EXISTING_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesBaseUrlForFlutterwave()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "flutterWaveBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 98
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getFW_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesBaseUrlForGetVerveOtp()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "otpBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 63
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_SEND_VERVE_OTP_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesBaseUrlForGettingThreshold()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 48
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_GET_QR_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesBaseUrlForNotification()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "notificationBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 78
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_NOTIFICATION_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 350
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    return-object v0
.end method

.method public final providesContactlessQrPaymentService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/QrPaymentService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "contactlessQrPaymentRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    const-class v0, Lcom/woleapp/netpos/contactless/network/QrPaymentService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(QrPaymentService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/QrPaymentService;

    return-object v0
.end method

.method public final providesContactlessRegService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/AccountLookUpService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "contactlessRegRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    const-class v0, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(AccountLookUpService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    return-object v0
.end method

.method public final providesFWApiService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/FWApiService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "fw-retrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const-class v0, Lcom/woleapp/netpos/contactless/network/FWApiService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(FWApiService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/FWApiService;

    return-object v0
.end method

.method public final providesGson()Lcom/google/gson/Gson;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 336
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method public final providesHeaderInterceptor()Lokhttp3/Interceptor;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "headerInterceptor"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 111
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/BasicAuthInterceptor;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_AUTH_USER_NAME()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_AUTH_PASSWORD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/di/appModule/BasicAuthInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lokhttp3/Interceptor;

    return-object v0
.end method

.method public final providesIoScheduler()Lio/reactivex/Scheduler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "io-scheduler"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 341
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    const-string v1, "io()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesLoggingInterceptor()Lokhttp3/Interceptor;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "loggingInterceptor"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 104
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "$this$providesLoggingInterceptor_u24lambda_u2d0":Lokhttp3/logging/HttpLoggingInterceptor;
    const/4 v2, 0x0

    .line 105
    .local v2, "$i$a$-apply-AppModule$providesLoggingInterceptor$1":I
    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v3}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 106
    nop

    .line 104
    .end local v1    # "$this$providesLoggingInterceptor_u24lambda_u2d0":Lokhttp3/logging/HttpLoggingInterceptor;
    .end local v2    # "$i$a$-apply-AppModule$providesLoggingInterceptor$1":I
    check-cast v0, Lokhttp3/Interceptor;

    .line 106
    return-object v0
.end method

.method public final providesMainThreadScheduler()Lio/reactivex/Scheduler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main-scheduler"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 346
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    const-string v1, "mainThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesMqttLocalDao(Lcom/woleapp/netpos/contactless/database/AppDatabase;)Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    .locals 1
    .param p1, "appDatabase"    # Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->mqttLocalDao()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    move-result-object v0

    return-object v0
.end method

.method public final providesNetposTransactionApiBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "netpos-transaction-api-base-url"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 53
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_NETPOS_TRANSACTION_API_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesNetposTransactionApiService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "netpos-transaction-api-retrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    const-class v0, Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(NetPosTr\u2026tionsService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;

    return-object v0
.end method

.method public final providesNotificationDao(Lcom/woleapp/netpos/contactless/database/AppDatabase;)Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;
    .locals 1
    .param p1, "appDatabase"    # Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->getAppNotificationDao()Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    move-result-object v0

    return-object v0
.end method

.method public final providesNotificationService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/NotificationService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "notificationRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    const-class v0, Lcom/woleapp/netpos/contactless/network/NotificationService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(NotificationService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/NotificationService;

    return-object v0
.end method

.method public final providesOKHTTPClient(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;
    .locals 4
    .param p1, "headerInterceptor"    # Lokhttp3/Interceptor;
        .annotation runtime Ljavax/inject/Named;
            value = "headerInterceptor"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultOkHttp"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "headerInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 121
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final providesOKHTTPClientForGetVerveOtp()Lokhttp3/OkHttpClient;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "otpOkHttp"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 131
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 132
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final providesOKHTTPClientForPayByTransfer()Lokhttp3/OkHttpClient;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "payByTransferOkHttp"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 142
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 143
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final providesQrService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/QrService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "defaultRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const-class v0, Lcom/woleapp/netpos/contactless/network/QrService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(QrService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/QrService;

    return-object v0
.end method

.method public final providesRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "defaultOkHttp"
        .end annotation
    .end param
    .param p2, "baseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "defaultBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 155
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026ttp)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForContactlessQrPayment(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "contactlessQrPaymentBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "contactlessQrPaymentBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "contactlessQrPaymentRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactlessQrPaymentBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 188
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026l).client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForContactlessReg(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "contactlessRegBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "contactlessRegBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "contactlessRegRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactlessRegBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 177
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForFWApiService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "fwApiServiceBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "flutterWaveBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "fw-retrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fwApiServiceBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 265
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForNetposTransactionApiService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "netposTransactionApiServiceBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "netpos-transaction-api-base-url"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "netpos-transaction-api-retrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netposTransactionApiServiceBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 243
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026l).client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForNotificationService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "notificationBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "notificationBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "notificationRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 232
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForRrnService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "netposTransactionApiServiceBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "rrn-service-base-url"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "rrn-retrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netposTransactionApiServiceBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 254
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026l).client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRetrofitForVerveOtp(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "otpOkHttp"
        .end annotation
    .end param
    .param p2, "otpBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "otpBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "otpRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 166
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final providesRrnService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/RrnApiService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "rrn-retrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const-class v0, Lcom/woleapp/netpos/contactless/network/RrnApiService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(RrnApiService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/RrnApiService;

    return-object v0
.end method

.method public final providesRrnServiceBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "rrn-service-base-url"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 58
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_RRN_SERVICE_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providesTransactionResponseDao(Lcom/woleapp/netpos/contactless/database/AppDatabase;)Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;
    .locals 1
    .param p1, "appDatabase"    # Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    return-object v0
.end method

.method public final providesVerveOtpService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/VerveOtpService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "otpRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    const-class v0, Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(VerveOtpService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    return-object v0
.end method

.method public final providusMerchantsAccountBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "providusMerchantsAccountBaseUrl"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 88
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPROVIDUS_MERCHANTS_ACCOUNT_BASE_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final providusMerchantsAccountDetailsService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "providusMerchantsAccountRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const-class v0, Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "retrofit.create(Providus\u2026countService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    return-object v0
.end method

.method public final providusMerchantsAccountService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 2
    .param p1, "okhttp"    # Lokhttp3/OkHttpClient;
        .annotation runtime Ljavax/inject/Named;
            value = "payByTransferOkHttp"
        .end annotation
    .end param
    .param p2, "payByTransferBaseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "providusMerchantsAccountBaseUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "providusMerchantsAccountRetrofit"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "okhttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payByTransferBaseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 210
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Builder().addConverterFa\u2026  .client(okhttp).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
