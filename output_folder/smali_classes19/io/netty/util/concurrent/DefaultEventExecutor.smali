.class public final Lio/netty/util/concurrent/DefaultEventExecutor;
.super Lio/netty/util/concurrent/SingleThreadEventExecutor;
.source "DefaultEventExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lio/netty/util/concurrent/EventExecutorGroup;

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;

    .line 40
    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    const-class v1, Lio/netty/util/concurrent/DefaultEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lio/netty/util/concurrent/DefaultEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;ILio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 6
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "maxPendingTasks"    # I
    .param p4, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 58
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;ILio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 6
    .param p1, "parent"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "maxPendingTasks"    # I
    .param p4, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 53
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/util/concurrent/DefaultEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/Executor;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/util/concurrent/DefaultEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .line 64
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultEventExecutor;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 65
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 67
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultEventExecutor;->updateLastExecutionTime()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultEventExecutor;->confirmShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    nop

    .line 74
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 73
    :cond_1
    goto :goto_0
.end method
