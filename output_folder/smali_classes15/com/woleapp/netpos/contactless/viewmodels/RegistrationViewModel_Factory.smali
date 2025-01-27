.class public final Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;
.super Ljava/lang/Object;
.source "RegistrationViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactlessRegRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
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
            "contactlessRegRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "contactlessRegRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;->contactlessRegRepositoryProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contactlessRegRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;"
        }
    .end annotation

    .line 33
    .local p0, "contactlessRegRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .locals 1
    .param p0, "contactlessRegRepository"    # Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contactlessRegRepository"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;-><init>(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;->contactlessRegRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_Factory;->get()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v0

    return-object v0
.end method
