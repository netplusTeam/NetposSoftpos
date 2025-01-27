.class public final Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;
.super Ljava/lang/Object;
.source "NotificationViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final disposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
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

.field private final notificationDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "notificationRepositoryProvider",
            "disposableProvider",
            "ioSchedulerProvider",
            "mainThreadSchedulerProvider",
            "notificationDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
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
            "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "notificationRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NotificationRepository;>;"
    .local p2, "disposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p3, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p4, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p5, "notificationDaoProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->notificationRepositoryProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->disposableProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->ioSchedulerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->notificationDaoProvider:Ljavax/inject/Provider;

    .line 42
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "notificationRepositoryProvider",
            "disposableProvider",
            "ioSchedulerProvider",
            "mainThreadSchedulerProvider",
            "notificationDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
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
            "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;"
        }
    .end annotation

    .line 54
    .local p0, "notificationRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NotificationRepository;>;"
    .local p1, "disposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p2, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p3, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p4, "notificationDaoProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;>;"
    new-instance v6, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/NotificationRepository;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;)Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 7
    .param p0, "notificationRepository"    # Lcom/woleapp/netpos/contactless/network/NotificationRepository;
    .param p1, "disposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .param p2, "ioScheduler"    # Lio/reactivex/Scheduler;
    .param p3, "mainThreadScheduler"    # Lio/reactivex/Scheduler;
    .param p4, "notificationDao"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "notificationRepository",
            "disposable",
            "ioScheduler",
            "mainThreadScheduler",
            "notificationDao"
        }
    .end annotation

    .line 60
    new-instance v6, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;-><init>(Lcom/woleapp/netpos/contactless/network/NotificationRepository;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->notificationRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->disposableProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->ioSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/Scheduler;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/Scheduler;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->notificationDaoProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/NotificationRepository;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;)Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_Factory;->get()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    return-object v0
.end method
