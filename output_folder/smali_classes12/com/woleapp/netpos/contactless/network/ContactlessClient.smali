.class public final Lcom/woleapp/netpos/contactless/network/ContactlessClient;
.super Ljava/lang/Object;
.source "ContactlessRegistrationService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ContactlessClient;",
        "",
        "()V",
        "contactlessBaseUrl",
        "",
        "contactlessClientInstance",
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;",
        "getContactlessClientInstance",
        "()Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;",
        "setContactlessClientInstance",
        "(Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;)V",
        "getContactlessService",
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
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/network/ContactlessClient;

.field private static final contactlessBaseUrl:Ljava/lang/String;

.field private static contactlessClientInstance:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/network/ContactlessClient;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/network/ContactlessClient;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/ContactlessClient;

    .line 42
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_CONTACTLESS_EXISTING_BASE_URL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->contactlessBaseUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContactlessClientInstance()Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;
    .locals 1

    .line 43
    sget-object v0, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->contactlessClientInstance:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    return-object v0
.end method

.method public final getContactlessService()Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;
    .locals 6

    .line 45
    sget-object v0, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->contactlessClientInstance:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    if-nez v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$a$-synchronized-ContactlessClient$getContactlessService$1":I
    :try_start_0
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 47
    sget-object v2, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->contactlessBaseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 48
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 49
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 51
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 52
    new-instance v3, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v3, v4}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    .line 56
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$a$-also-ContactlessClient$getContactlessService$1$1":I
    sput-object v2, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->contactlessClientInstance:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    .line 58
    nop

    .line 56
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;
    .end local v3    # "$i$a$-also-ContactlessClient$getContactlessService$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v0    # "$i$a$-synchronized-ContactlessClient$getContactlessService$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026              }\n        }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 59
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final setContactlessClientInstance(Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    .line 43
    sput-object p1, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->contactlessClientInstance:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    return-void
.end method
