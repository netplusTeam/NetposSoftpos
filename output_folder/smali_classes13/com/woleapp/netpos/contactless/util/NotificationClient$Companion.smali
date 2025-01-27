.class public final Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;
.super Ljava/lang/Object;
.source "NotificationClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/util/NotificationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\u0006J\u0008\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;",
        "",
        "()V",
        "BASE_URL",
        "",
        "INSTANCE",
        "Lcom/woleapp/netpos/contactless/network/NotificationService;",
        "getBaseOkhttpClientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "getInstance",
        "getOkHttpClient",
        "Lokhttp3/OkHttpClient;",
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

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;-><init>()V

    return-void
.end method

.method private final getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 20
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 22
    .local v0, "okHttpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .local v1, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 24
    move-object v2, v1

    check-cast v2, Lokhttp3/Interceptor;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 26
    return-object v0
.end method

.method private final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;->getBaseOkhttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/woleapp/netpos/contactless/util/TokenInterceptor;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/util/TokenInterceptor;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getInstance()Lcom/woleapp/netpos/contactless/network/NotificationService;
    .locals 5

    .line 36
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/NotificationClient;->access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/NotificationService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$a$-synchronized-NotificationClient$Companion$getInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/NotificationClient;->access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/NotificationService;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 38
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/NotificationClient;->access$getBASE_URL$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/woleapp/netpos/contactless/util/NotificationClient;->Companion:Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 40
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 41
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    check-cast v2, Lretrofit2/Converter$Factory;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 43
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    move-object v2, v1

    check-cast v2, Lcom/woleapp/netpos/contactless/network/NotificationService;

    .local v2, "it":Lcom/woleapp/netpos/contactless/network/NotificationService;
    const/4 v3, 0x0

    .line 45
    .local v3, "$i$a$-also-NotificationClient$Companion$getInstance$1$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/util/NotificationClient;->Companion:Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/NotificationClient;->access$setINSTANCE$cp(Lcom/woleapp/netpos/contactless/network/NotificationService;)V

    .line 46
    nop

    .line 44
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/network/NotificationService;
    .end local v3    # "$i$a$-also-NotificationClient$Companion$getInstance$1$1":I
    check-cast v1, Lcom/woleapp/netpos/contactless/network/NotificationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    nop

    .line 36
    .end local v0    # "$i$a$-synchronized-NotificationClient$Companion$getInstance$1":I
    monitor-exit p0

    const-string v0, "synchronized(this) {\n   \u2026              }\n        }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 47
    :cond_1
    :goto_0
    return-object v0
.end method
