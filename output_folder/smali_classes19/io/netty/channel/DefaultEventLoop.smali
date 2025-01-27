.class public Lio/netty/channel/DefaultEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "DefaultEventLoop.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lio/netty/channel/EventLoopGroup;

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/EventLoopGroup;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/EventLoopGroup;

    .line 38
    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    const-class v1, Lio/netty/channel/DefaultEventLoop;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/EventLoopGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/EventLoopGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/DefaultEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/DefaultEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .line 52
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultEventLoop;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 53
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 55
    invoke-virtual {p0}, Lio/netty/channel/DefaultEventLoop;->updateLastExecutionTime()V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultEventLoop;->confirmShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    nop

    .line 62
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 61
    :cond_1
    goto :goto_0
.end method
