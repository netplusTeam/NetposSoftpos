.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesRetrofitForFWApiServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final fwApiServiceBaseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final okhttpProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "okhttpProvider",
            "fwApiServiceBaseUrlProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "okhttpProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lokhttp3/OkHttpClient;>;"
    .local p2, "fwApiServiceBaseUrlProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;->okhttpProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;->fwApiServiceBaseUrlProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "okhttpProvider",
            "fwApiServiceBaseUrlProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;"
        }
    .end annotation

    .line 38
    .local p0, "okhttpProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lokhttp3/OkHttpClient;>;"
    .local p1, "fwApiServiceBaseUrlProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesRetrofitForFWApiService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 1
    .param p0, "okhttp"    # Lokhttp3/OkHttpClient;
    .param p1, "fwApiServiceBaseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "okhttp",
            "fwApiServiceBaseUrl"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0, p0, p1}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providesRetrofitForFWApiService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;->okhttpProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;->fwApiServiceBaseUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesRetrofitForFWApiServiceFactory;->providesRetrofitForFWApiService(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
