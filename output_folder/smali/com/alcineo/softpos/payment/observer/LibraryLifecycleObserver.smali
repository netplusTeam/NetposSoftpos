.class public Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final aoleinc:Ljava/lang/String;


# instance fields
.field private final acileon:Lcom/alcineo/softpos/inolaec;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;->aoleinc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/inolaec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;->acileon:Lcom/alcineo/softpos/inolaec;

    return-void
.end method

.method private onCreateEvent()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method private onDestroyEvent()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method private onPauseEvent()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object v0, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;->aoleinc:Ljava/lang/String;

    const-string v1, "Cancelling transaction..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;->acileon:Lcom/alcineo/softpos/inolaec;

    invoke-virtual {v0}, Lcom/alcineo/softpos/inolaec;->aoleinc()Z

    return-void
.end method

.method private onResumeEvent()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method private onStartEvent()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method private onStopEvent()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method
