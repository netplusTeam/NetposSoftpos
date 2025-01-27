.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesVerveOtpServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
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

    .line 23
    .local p1, "retrofitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lretrofit2/Retrofit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;
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
            "Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;"
        }
    .end annotation

    .line 34
    .local p0, "retrofitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lretrofit2/Retrofit;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesVerveOtpService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/VerveOtpService;
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

    .line 38
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providesVerveOtpService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/VerveOtpService;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;->providesVerveOtpService(Lretrofit2/Retrofit;)Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesVerveOtpServiceFactory;->get()Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    move-result-object v0

    return-object v0
.end method
