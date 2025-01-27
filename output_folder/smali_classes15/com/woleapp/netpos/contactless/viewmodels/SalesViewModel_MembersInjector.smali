.class public final Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;
.super Ljava/lang/Object;
.source "SalesViewModel_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final compositeDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private final contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final ioSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final netposTransactionApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;",
            ">;"
        }
    .end annotation
.end field

.field private final rrnApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/RrnApiService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contactlessQrPaymentRepositoryProvider",
            "compositeDisposableProvider",
            "ioSchedulerProvider",
            "mainThreadSchedulerProvider",
            "rrnApiServiceProvider",
            "netposTransactionApiServiceProvider"
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/RrnApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "contactlessQrPaymentRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;>;"
    .local p2, "compositeDisposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p3, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p4, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p5, "rrnApiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/RrnApiService;>;"
    .local p6, "netposTransactionApiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->compositeDisposableProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->ioSchedulerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->rrnApiServiceProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->netposTransactionApiServiceProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contactlessQrPaymentRepositoryProvider",
            "compositeDisposableProvider",
            "ioSchedulerProvider",
            "mainThreadSchedulerProvider",
            "rrnApiServiceProvider",
            "netposTransactionApiServiceProvider"
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/RrnApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;",
            ">;"
        }
    .end annotation

    .line 55
    .local p0, "contactlessQrPaymentRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;>;"
    .local p1, "compositeDisposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p2, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p3, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p4, "rrnApiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/RrnApiService;>;"
    .local p5, "netposTransactionApiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;>;"
    new-instance v7, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectCompositeDisposable(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .param p1, "compositeDisposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "compositeDisposable"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 78
    return-void
.end method

.method public static injectContactlessQrPaymentRepository(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .param p1, "contactlessQrPaymentRepository"    # Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "contactlessQrPaymentRepository"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->contactlessQrPaymentRepository:Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    .line 72
    return-void
.end method

.method public static injectIoScheduler(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .param p1, "ioScheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "ioScheduler"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "io-scheduler"
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->ioScheduler:Lio/reactivex/Scheduler;

    .line 84
    return-void
.end method

.method public static injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .param p1, "mainThreadScheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "mainThreadScheduler"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main-scheduler"
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->mainThreadScheduler:Lio/reactivex/Scheduler;

    .line 91
    return-void
.end method

.method public static injectNetposTransactionApiService(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .param p1, "netposTransactionApiService"    # Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "netposTransactionApiService"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->netposTransactionApiService:Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;

    .line 102
    return-void
.end method

.method public static injectRrnApiService(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/RrnApiService;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .param p1, "rrnApiService"    # Lcom/woleapp/netpos/contactless/network/RrnApiService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "rrnApiService"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->rrnApiService:Lcom/woleapp/netpos/contactless/network/RrnApiService;

    .line 96
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectContactlessQrPaymentRepository(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;)V

    .line 61
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->compositeDisposableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 62
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->ioSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/Scheduler;)V

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/Scheduler;)V

    .line 64
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->rrnApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/RrnApiService;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectRrnApiService(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/RrnApiService;)V

    .line 65
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->netposTransactionApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectNetposTransactionApiService(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;)V

    .line 66
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectMembers(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V

    return-void
.end method
