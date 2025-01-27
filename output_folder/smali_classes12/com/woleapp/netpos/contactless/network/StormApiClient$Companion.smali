.class public final Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;
.super Ljava/lang/Object;
.source "StormApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/network/StormApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\rJ\u0006\u0010\u0019\u001a\u00020\u000fJ\u0006\u0010\u001a\u001a\u00020\nJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0006\u0010\u001e\u001a\u00020\u0011J\u0006\u0010\u001f\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;",
        "",
        "()V",
        "BASE_URL",
        "",
        "BASE_URL_BILLS",
        "BILLS_INSTANCE",
        "Lcom/woleapp/netpos/contactless/network/StormApiService;",
        "INSTANCE",
        "NIPINSTANCE",
        "Lcom/woleapp/netpos/contactless/network/NipService;",
        "NIP_BASE_URL",
        "masterPassQRServiceInstance",
        "Lcom/woleapp/netpos/contactless/network/MasterPassQRService;",
        "nibssQRServiceInstance",
        "Lcom/woleapp/netpos/contactless/network/NibssQRService;",
        "smsServiceInstance",
        "Lcom/woleapp/netpos/contactless/network/SmsService;",
        "zenithQrServiceInstance",
        "Lcom/woleapp/netpos/contactless/network/ZenithQrService;",
        "getBaseOkhttpClientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "getBillsInstance",
        "getInstance",
        "getMasterPassQrServiceInstance",
        "getNibssQRServiceInstance",
        "getNipInstance",
        "getNipOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient",
        "getSmsServiceInstance",
        "getZenithQRServiceInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;-><init>()V

    return-void
.end method

.method private final getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 19
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 25
    .local v0, "okHttpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    return-object v0
.end method

.method private final getNipOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/woleapp/netpos/contactless/network/NipInterceptor;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/network/NipInterceptor;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/woleapp/netpos/contactless/network/TokenInterceptor;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/network/TokenInterceptor;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBillsInstance()Lcom/woleapp/netpos/contactless/network/StormApiService;
    .locals 5

    .line 59
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getBILLS_INSTANCE$cp()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getBillsInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getBILLS_INSTANCE$cp()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 61
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getBASE_URL_BILLS$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 62
    sget-object v2, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 63
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 64
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/StormApiService;

    .line 66
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/StormApiService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/StormApiService;
    const/4 v3, 0x0

    .line 68
    .local v3, "$i$a$-also-StormApiClient$Companion$getBillsInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setBILLS_INSTANCE$cp(Lcom/woleapp/netpos/contactless/network/StormApiService;)V

    .line 69
    nop

    .line 67
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/StormApiService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getBillsInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/StormApiService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    nop

    .line 59
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getBillsInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getInstance()Lcom/woleapp/netpos/contactless/network/StormApiService;
    .locals 5

    .line 42
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 44
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getBASE_URL$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 46
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 47
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/StormApiService;

    .line 49
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/StormApiService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/StormApiService;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-also-StormApiClient$Companion$getInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setINSTANCE$cp(Lcom/woleapp/netpos/contactless/network/StormApiService;)V

    .line 52
    nop

    .line 50
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/StormApiService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/StormApiService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    nop

    .line 42
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 53
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getMasterPassQrServiceInstance()Lcom/woleapp/netpos/contactless/network/MasterPassQRService;
    .locals 5

    .line 106
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getMasterPassQRServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getMasterPassQrServiceInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getMasterPassQRServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 108
    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getMASTER_PASS_QR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 109
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 110
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    .line 112
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/MasterPassQRService;
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$a$-also-StormApiClient$Companion$getMasterPassQrServiceInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setMasterPassQRServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/MasterPassQRService;)V

    .line 115
    nop

    .line 113
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/MasterPassQRService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getMasterPassQrServiceInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/MasterPassQRService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    nop

    .line 106
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getMasterPassQrServiceInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getNibssQRServiceInstance()Lcom/woleapp/netpos/contactless/network/NibssQRService;
    .locals 5

    .line 121
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getNibssQRServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/NibssQRService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 122
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getNibssQRServiceInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getNibssQRServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/NibssQRService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 123
    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getMASTER_PASS_QR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 124
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 125
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/NibssQRService;

    .line 127
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/NibssQRService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/NibssQRService;
    const/4 v3, 0x0

    .line 129
    .local v3, "$i$a$-also-StormApiClient$Companion$getNibssQRServiceInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setNibssQRServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/NibssQRService;)V

    .line 130
    nop

    .line 128
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/NibssQRService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getNibssQRServiceInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/NibssQRService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    nop

    .line 121
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getNibssQRServiceInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getNipInstance()Lcom/woleapp/netpos/contactless/network/NipService;
    .locals 5

    .line 76
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getNIPINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/NipService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getNipInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getNIPINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/NipService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 78
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getNIP_BASE_URL$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 79
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 80
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getNipOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/NipService;

    .line 83
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/NipService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/NipService;
    const/4 v3, 0x0

    .line 85
    .local v3, "$i$a$-also-StormApiClient$Companion$getNipInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setNIPINSTANCE$cp(Lcom/woleapp/netpos/contactless/network/NipService;)V

    .line 86
    nop

    .line 84
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/NipService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getNipInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/NipService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    nop

    .line 76
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getNipInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getSmsServiceInstance()Lcom/woleapp/netpos/contactless/network/SmsService;
    .locals 5

    .line 92
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getSmsServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/SmsService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 93
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getSmsServiceInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getSmsServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/SmsService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 94
    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSMS_BASE_URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 95
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 96
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/SmsService;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/SmsService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/SmsService;
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$a$-also-StormApiClient$Companion$getSmsServiceInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setSmsServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/SmsService;)V

    .line 100
    nop

    .line 98
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/SmsService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getSmsServiceInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/SmsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    nop

    .line 92
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getSmsServiceInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getZenithQRServiceInstance()Lcom/woleapp/netpos/contactless/network/ZenithQrService;
    .locals 5

    .line 136
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getZenithQrServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 137
    .local v0, "$i$a$-synchronized-StormApiClient$Companion$getZenithQRServiceInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$getZenithQrServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 138
    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getZENITH_BASE_URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 140
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 141
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    .line 143
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/ZenithQrService;
    const/4 v3, 0x0

    .line 145
    .local v3, "$i$a$-also-StormApiClient$Companion$getZenithQRServiceInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/network/StormApiClient;->access$setZenithQrServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/ZenithQrService;)V

    .line 146
    nop

    .line 144
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/ZenithQrService;
    .end local v3    # "$i$a$-also-StormApiClient$Companion$getZenithQRServiceInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/ZenithQrService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    nop

    .line 136
    .end local v0    # "$i$a$-synchronized-StormApiClient$Companion$getZenithQRServiceInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026          }\n            }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_1
    :goto_0
    return-object v0
.end method
