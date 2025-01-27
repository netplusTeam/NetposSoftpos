.class public final Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;
.super Ljava/lang/Object;
.source "ContactlessRegRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountLookUpServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
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
            "accountLookUpServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "accountLookUpServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/AccountLookUpService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;->accountLookUpServiceProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountLookUpServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;"
        }
    .end annotation

    .line 32
    .local p0, "accountLookUpServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/AccountLookUpService;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;
    .locals 1
    .param p0, "accountLookUpService"    # Lcom/woleapp/netpos/contactless/network/AccountLookUpService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountLookUpService"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;-><init>(Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;->accountLookUpServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository_Factory;->get()Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    move-result-object v0

    return-object v0
.end method
