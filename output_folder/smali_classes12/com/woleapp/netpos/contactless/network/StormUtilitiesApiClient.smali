.class public final Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;
.super Ljava/lang/Object;
.source "StormUtilitiesClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0008\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;",
        "",
        "()V",
        "BASE_URL",
        "",
        "INSTANCE",
        "Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;",
        "INSTANCE$1",
        "getStormUtilitiesApiClientInstance",
        "context",
        "Landroid/content/Context;",
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
.field private static final BASE_URL:Ljava/lang/String;

.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;

.field private static volatile INSTANCE$1:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;

    .line 21
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getBASE_URL_STORM_UTILITIES()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStormUtilitiesApiClientInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;->INSTANCE$1:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    if-nez v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$a$-synchronized-StormUtilitiesApiClient$getStormUtilitiesApiClientInstance$1":I
    :try_start_0
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 28
    sget-object v2, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 29
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/network/StormUtilitiesClientKt;->getBillsOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 30
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 31
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    .line 33
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;
    const/4 v3, 0x0

    .line 35
    .local v3, "$i$a$-also-StormUtilitiesApiClient$getStormUtilitiesApiClientInstance$1$1":I
    sput-object v2, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiClient;->INSTANCE$1:Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;

    .line 36
    nop

    .line 34
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;
    .end local v3    # "$i$a$-also-StormUtilitiesApiClient$getStormUtilitiesApiClientInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v0    # "$i$a$-synchronized-StormUtilitiesApiClient$getStormUtilitiesApiClientInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026              }\n        }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method
