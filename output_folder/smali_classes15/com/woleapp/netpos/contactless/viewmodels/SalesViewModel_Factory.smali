.class public final Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;
.super Ljava/lang/Object;
.source "SalesViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
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
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->compositeDisposableProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->ioSchedulerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->rrnApiServiceProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->netposTransactionApiServiceProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;
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
            "Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;"
        }
    .end annotation

    .line 67
    .local p0, "contactlessQrPaymentRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;>;"
    .local p1, "compositeDisposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p2, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p3, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p4, "rrnApiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/RrnApiService;>;"
    .local p5, "netposTransactionApiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;>;"
    new-instance v7, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .locals 1

    .line 71
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .locals 2

    .line 51
    invoke-static {}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->newInstance()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    .line 52
    .local v0, "instance":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->contactlessQrPaymentRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectContactlessQrPaymentRepository(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;)V

    .line 53
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->compositeDisposableProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 54
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->ioSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/Scheduler;)V

    .line 55
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lio/reactivex/Scheduler;)V

    .line 56
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->rrnApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/network/RrnApiService;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectRrnApiService(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/RrnApiService;)V

    .line 57
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->netposTransactionApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_MembersInjector;->injectNetposTransactionApiService(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;)V

    .line 58
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_Factory;->get()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    return-object v0
.end method
