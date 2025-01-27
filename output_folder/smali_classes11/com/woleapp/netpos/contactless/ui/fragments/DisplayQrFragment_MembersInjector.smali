.class public final Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;
.super Ljava/lang/Object;
.source "DisplayQrFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;",
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
            "compositeDisposableProvider",
            "ioSchedulerProvider",
            "mainThreadSchedulerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "compositeDisposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p2, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p3, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->compositeDisposableProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->ioSchedulerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    .line 32
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "compositeDisposableProvider",
            "ioSchedulerProvider",
            "mainThreadSchedulerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;",
            ">;"
        }
    .end annotation

    .line 37
    .local p0, "compositeDisposableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/disposables/CompositeDisposable;>;"
    .local p1, "ioSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    .local p2, "mainThreadSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/Scheduler;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectCompositeDisposable(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
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

    .line 50
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 51
    return-void
.end method

.method public static injectIoScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
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

    .line 56
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->ioScheduler:Lio/reactivex/Scheduler;

    .line 57
    return-void
.end method

.method public static injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
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

    .line 63
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    .line 64
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->compositeDisposableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectCompositeDisposable(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->ioSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectIoScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/Scheduler;)V

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->mainThreadSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectMainThreadScheduler(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;Lio/reactivex/Scheduler;)V

    .line 45
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

    .line 13
    check-cast p1, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_MembersInjector;->injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V

    return-void
.end method
