.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidusMerchantsAccountDetailsServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retrofitProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "retrofitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lretrofit2/Retrofit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retrofitProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;"
        }
    .end annotation

    .line 35
    .local p0, "retrofitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lretrofit2/Retrofit;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providusMerchantsAccountDetailsService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;
    .locals 1
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retrofit"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providusMerchantsAccountDetailsService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;->providusMerchantsAccountDetailsService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidusMerchantsAccountDetailsServiceFactory;->get()Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    move-result-object v0

    return-object v0
.end method
