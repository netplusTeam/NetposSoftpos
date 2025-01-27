.class public final Lcom/woleapp/netpos/contactless/network/Repository_Factory;
.super Ljava/lang/Object;
.source "Repository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/Repository;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountLookUpProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
            ">;"
        }
    .end annotation
.end field

.field private final otpServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
            ">;"
        }
    .end annotation
.end field

.field private final qrServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "qrServiceProvider",
            "otpServiceProvider",
            "accountLookUpProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "qrServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/QrService;>;"
    .local p2, "otpServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/VerveOtpService;>;"
    .local p3, "accountLookUpProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/AccountLookUpService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->qrServiceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->otpServiceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->accountLookUpProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/network/Repository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "qrServiceProvider",
            "otpServiceProvider",
            "accountLookUpProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/network/Repository_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "qrServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/QrService;>;"
    .local p1, "otpServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/VerveOtpService;>;"
    .local p2, "accountLookUpProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/AccountLookUpService;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/network/Repository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/QrService;Lcom/woleapp/netpos/contactless/network/VerveOtpService;Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)Lcom/woleapp/netpos/contactless/network/Repository;
    .locals 1
    .param p0, "qrService"    # Lcom/woleapp/netpos/contactless/network/QrService;
    .param p1, "otpService"    # Lcom/woleapp/netpos/contactless/network/VerveOtpService;
    .param p2, "accountLookUp"    # Lcom/woleapp/netpos/contactless/network/AccountLookUpService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "qrService",
            "otpService",
            "accountLookUp"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/woleapp/netpos/contactless/network/Repository;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/network/Repository;-><init>(Lcom/woleapp/netpos/contactless/network/QrService;Lcom/woleapp/netpos/contactless/network/VerveOtpService;Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/Repository;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->qrServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/QrService;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->otpServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/network/VerveOtpService;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->accountLookUpProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/QrService;Lcom/woleapp/netpos/contactless/network/VerveOtpService;Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)Lcom/woleapp/netpos/contactless/network/Repository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/Repository_Factory;->get()Lcom/woleapp/netpos/contactless/network/Repository;

    move-result-object v0

    return-object v0
.end method
