.class public final Lcom/isw/iswclient/iswapiclient/IswClientKt;
.super Ljava/lang/Object;
.source "IswClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0013\u001a\u00020\u0014H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"\u0011\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "IPEK_LIVE",
        "",
        "IPEK_TEST",
        "KSN_LIVE",
        "KSN_TEST",
        "baseBuilder",
        "Lretrofit2/Retrofit$Builder;",
        "getBaseBuilder",
        "()Lretrofit2/Retrofit$Builder;",
        "getTokenClient",
        "Lcom/isw/iswclient/iswapiclient/IswService;",
        "getGetTokenClient",
        "()Lcom/isw/iswclient/iswapiclient/IswService;",
        "iswTransactionClient",
        "getIswTransactionClient",
        "iswTransactionClientTest",
        "getIswTransactionClientTest",
        "live",
        "test",
        "getBaseOkhttpClientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "epmslib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final IPEK_LIVE:Ljava/lang/String; = ""

.field public static final IPEK_TEST:Ljava/lang/String; = ""

.field public static final KSN_LIVE:Ljava/lang/String; = ""

.field public static final KSN_TEST:Ljava/lang/String; = ""

.field private static final baseBuilder:Lretrofit2/Retrofit$Builder;

.field private static final getTokenClient:Lcom/isw/iswclient/iswapiclient/IswService;

.field private static final iswTransactionClient:Lcom/isw/iswclient/iswapiclient/IswService;

.field private static final iswTransactionClientTest:Lcom/isw/iswclient/iswapiclient/IswService;

.field public static final live:Ljava/lang/String; = "https://kimono.interswitchng.com/kmw/kimonoservice/"

.field public static final test:Ljava/lang/String; = "https://qa.interswitchng.com/kmw/kimonoservice/"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    nop

    .line 33
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 34
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 35
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/isw/iswclient/iswapiclient/IswClientKt;->getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "Builder()\n    .addCallAd\u2026           .build()\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/isw/iswclient/iswapiclient/IswClientKt;->baseBuilder:Lretrofit2/Retrofit$Builder;

    .line 57
    nop

    .line 52
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 53
    invoke-static {}, Lcom/isw/iswclient/iswapiclient/IswClientKt;->getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 54
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 55
    invoke-static {}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->create()Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 56
    const-string v2, "https://saturn.interswitchng.com:443/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/isw/iswclient/iswapiclient/IswService;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Builder()\n    .client(ge\u2026e(IswService::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/isw/iswclient/iswapiclient/IswService;

    sput-object v1, Lcom/isw/iswclient/iswapiclient/IswClientKt;->getTokenClient:Lcom/isw/iswclient/iswapiclient/IswService;

    .line 71
    nop

    .line 66
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 67
    invoke-static {}, Lcom/isw/iswclient/iswapiclient/IswClientKt;->getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 68
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v3

    check-cast v3, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 69
    invoke-static {}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->create()Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 70
    const-string v3, "https://kimono.interswitchng.com/kmw/kimonoservice/"

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v3, Lcom/isw/iswclient/iswapiclient/IswService;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/isw/iswclient/iswapiclient/IswService;

    sput-object v1, Lcom/isw/iswclient/iswapiclient/IswClientKt;->iswTransactionClient:Lcom/isw/iswclient/iswapiclient/IswService;

    .line 75
    nop

    .line 73
    nop

    .line 74
    const-string v1, "https://qa.interswitchng.com/kmw/kimonoservice/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/isw/iswclient/iswapiclient/IswService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "baseBuilder\n    .baseUrl\u2026e(IswService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/isw/iswclient/iswapiclient/IswService;

    sput-object v0, Lcom/isw/iswclient/iswapiclient/IswClientKt;->iswTransactionClientTest:Lcom/isw/iswclient/iswapiclient/IswService;

    return-void
.end method

.method public static final getBaseBuilder()Lretrofit2/Retrofit$Builder;
    .locals 1

    .line 33
    sget-object v0, Lcom/isw/iswclient/iswapiclient/IswClientKt;->baseBuilder:Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method private static final getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 6

    .line 42
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 43
    .local v0, "okHttpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .local v1, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 45
    move-object v2, v1

    check-cast v2, Lokhttp3/Interceptor;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 46
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 47
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 48
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    return-object v0
.end method

.method public static final getGetTokenClient()Lcom/isw/iswclient/iswapiclient/IswService;
    .locals 1

    .line 52
    sget-object v0, Lcom/isw/iswclient/iswapiclient/IswClientKt;->getTokenClient:Lcom/isw/iswclient/iswapiclient/IswService;

    return-object v0
.end method

.method public static final getIswTransactionClient()Lcom/isw/iswclient/iswapiclient/IswService;
    .locals 1

    .line 66
    sget-object v0, Lcom/isw/iswclient/iswapiclient/IswClientKt;->iswTransactionClient:Lcom/isw/iswclient/iswapiclient/IswService;

    return-object v0
.end method

.method public static final getIswTransactionClientTest()Lcom/isw/iswclient/iswapiclient/IswService;
    .locals 1

    .line 73
    sget-object v0, Lcom/isw/iswclient/iswapiclient/IswClientKt;->iswTransactionClientTest:Lcom/isw/iswclient/iswapiclient/IswService;

    return-object v0
.end method
