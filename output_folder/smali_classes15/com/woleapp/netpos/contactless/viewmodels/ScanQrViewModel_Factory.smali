.class public final Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;
.super Ljava/lang/Object;
.source "ScanQrViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final payByTransferRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/Repository;",
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
            "repositoryProvider",
            "payByTransferRepositoryProvider",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/Repository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "repositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/Repository;>;"
    .local p2, "payByTransferRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;>;"
    .local p3, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->repositoryProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->payByTransferRepositoryProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->gsonProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "repositoryProvider",
            "payByTransferRepositoryProvider",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/Repository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;"
        }
    .end annotation

    .line 43
    .local p0, "repositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/Repository;>;"
    .local p1, "payByTransferRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;>;"
    .local p2, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/Repository;Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;Lcom/google/gson/Gson;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1
    .param p0, "repository"    # Lcom/woleapp/netpos/contactless/network/Repository;
    .param p1, "payByTransferRepository"    # Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;
    .param p2, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "repository",
            "payByTransferRepository",
            "gson"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;-><init>(Lcom/woleapp/netpos/contactless/network/Repository;Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->repositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/Repository;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->payByTransferRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/Repository;Lcom/woleapp/netpos/contactless/network/PayByTransferRepository;Lcom/google/gson/Gson;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_Factory;->get()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    return-object v0
.end method
