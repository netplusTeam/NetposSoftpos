.class public Lio/netty/channel/ThreadPerChannelEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "ThreadPerChannelEventLoop.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private ch:Lio/netty/channel/Channel;

.field private final parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;


# direct methods
.method public constructor <init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .line 31
    iget-object v0, p1, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;Z)V

    .line 32
    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .line 33
    return-void
.end method

.method static synthetic access$002(Lio/netty/channel/ThreadPerChannelEventLoop;Lio/netty/channel/Channel;)Lio/netty/channel/Channel;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ThreadPerChannelEventLoop;
    .param p1, "x1"    # Lio/netty/channel/Channel;

    .line 25
    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->ch:Lio/netty/channel/Channel;

    return-object p1
.end method


# virtual methods
.method protected deregister()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->ch:Lio/netty/channel/Channel;

    .line 95
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    iget-object v0, v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    iget-object v0, v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-super {p0, p1, p2}, Lio/netty/channel/SingleThreadEventLoop;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/channel/ThreadPerChannelEventLoop$2;

    invoke-direct {v1, p0}, Lio/netty/channel/ThreadPerChannelEventLoop$2;-><init>(Lio/netty/channel/ThreadPerChannelEventLoop;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 37
    invoke-super {p0, p1}, Lio/netty/channel/SingleThreadEventLoop;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/channel/ThreadPerChannelEventLoop$1;

    invoke-direct {v1, p0}, Lio/netty/channel/ThreadPerChannelEventLoop$1;-><init>(Lio/netty/channel/ThreadPerChannelEventLoop;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public registeredChannels()I
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected run()V
    .locals 4

    .line 67
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 68
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->updateLastExecutionTime()V

    .line 73
    :cond_0
    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->ch:Lio/netty/channel/Channel;

    .line 74
    .local v1, "ch":Lio/netty/channel/Channel;
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    if-eqz v1, :cond_1

    .line 76
    invoke-interface {v1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v2

    invoke-interface {v1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->confirmShutdown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    nop

    .line 91
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "ch":Lio/netty/channel/Channel;
    return-void

    .line 82
    .restart local v0    # "task":Ljava/lang/Runnable;
    .restart local v1    # "ch":Lio/netty/channel/Channel;
    :cond_2
    if-eqz v1, :cond_3

    .line 84
    invoke-interface {v1}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->runAllTasks()Z

    .line 86
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->deregister()V

    .line 90
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "ch":Lio/netty/channel/Channel;
    :cond_3
    goto :goto_0
.end method
