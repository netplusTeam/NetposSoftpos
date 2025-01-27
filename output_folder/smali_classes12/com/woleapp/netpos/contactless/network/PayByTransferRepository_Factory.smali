.class public final Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;
.super Ljava/lang/Object;
.source "PayByTransferRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final fcmbMerchantsAccountServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;",
            ">;"
        }
    .end annotation
.end field

.field private final payByTransferServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferService;",
            ">;"
        }
    .end annotation
.end field

.field private final providusMerchantsAccountServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
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
            "payByTransferServiceProvider",
            "providusMerchantsAccountServiceProvider",
            "fcmbMerchantsAccountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "payByTransferServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/PayByTransferService;>;"
    .local p2, "providusMerchantsAccountServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;>;"
    .local p3, "fcmbMerchantsAccountServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->payByTransferServiceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->providusMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->fcmbMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "payByTransferServiceProvider",
            "providusMerchantsAccountServiceProvider",
            "fcmbMerchantsAccountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;"
        }
    .end annotation

    .line 42
    .local p0, "payByTransferServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/PayByTransferService;>;"
    .local p1, "providusMerchantsAccountServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;>;"
    .local p2, "fcmbMerchantsAccountServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/PayByTransferService;Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;)Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;
    .locals 1
    .param p0, "payByTransferService"    # Lcom/woleapp/netpos/contactless/network/PayByTransferService;
    .param p1, "providusMerchantsAccountService"    # Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;
    .param p2, "fcmbMerchantsAccountService"    # Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "payByTransferService",
            "providusMerchantsAccountService",
            "fcmbMerchantsAccountService"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;-><init>(Lcom/woleapp/netpos/contactless/network/PayByTransferService;Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->payByTransferServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/PayByTransferService;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->providusMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->fcmbMerchantsAccountServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/PayByTransferService;Lcom/woleapp/netpos/contactless/network/ProvidusMerchantsAccountService;Lcom/woleapp/netpos/contactless/network/FcmbMerchantsAccountService;)Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository_Factory;->get()Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    move-result-object v0

    return-object v0
.end method
