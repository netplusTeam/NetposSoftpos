.class public final Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;
.super Ljava/lang/Object;
.source "ContactlessQrPaymentViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final disposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
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
            "contactlessQrPaymentRepositoryProvider",
            "disposableProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "contactlessQrPaymentRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;>;"
    .local p2, "disposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;->disposableProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contactlessQrPaymentRepositoryProvider",
            "disposableProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;"
        }
    .end annotation

    .line 39
    .local p0, "contactlessQrPaymentRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;>;"
    .local p1, "disposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;Lio/reactivex/disposables/CompositeDisposable;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;
    .locals 1
    .param p0, "contactlessQrPaymentRepository"    # Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;
    .param p1, "disposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contactlessQrPaymentRepository",
            "disposable"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;-><init>(Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;Lio/reactivex/disposables/CompositeDisposable;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;->disposableProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;Lio/reactivex/disposables/CompositeDisposable;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_Factory;->get()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    move-result-object v0

    return-object v0
.end method
