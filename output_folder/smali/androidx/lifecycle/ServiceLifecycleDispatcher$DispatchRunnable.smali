.class Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ServiceLifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchRunnable"
.end annotation


# instance fields
.field final mEvent:Landroidx/lifecycle/Lifecycle$Event;

.field private final mRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mWasExecuted:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "registry"    # Landroidx/lifecycle/LifecycleRegistry;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 99
    iput-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 100
    iput-object p2, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Landroidx/lifecycle/Lifecycle$Event;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 109
    :cond_0
    return-void
.end method
