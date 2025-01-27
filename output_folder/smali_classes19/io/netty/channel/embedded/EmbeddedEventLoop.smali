.class final Lio/netty/channel/embedded/EmbeddedEventLoop;
.super Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
.source "EmbeddedEventLoop.java"

# interfaces
.implements Lio/netty/channel/EventLoop;


# instance fields
.field private final tasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedEventLoop;->tasks:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected cancelScheduledTasks()V
    .locals 0

    .line 80
    invoke-super {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->cancelScheduledTasks()V

    .line 81
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 48
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedEventLoop;->tasks:Ljava/util/Queue;

    const-string v1, "command"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public inEventLoop()Z
    .locals 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public inEventLoop(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lio/netty/channel/EventLoop;
    .locals 1

    .line 43
    invoke-super {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method nextScheduledTask()J
    .locals 2

    .line 75
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->nextScheduledTaskNano()J

    move-result-wide v0

    return-wide v0
.end method

.method public parent()Lio/netty/channel/EventLoopGroup;
    .locals 1

    .line 38
    invoke-super {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->parent()Lio/netty/util/concurrent/EventExecutorGroup;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method public bridge synthetic parent()Lio/netty/util/concurrent/EventExecutorGroup;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->parent()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 121
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    invoke-direct {v0, p1, p0}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-interface {p1}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lio/netty/channel/Channel$Unsafe;->register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V

    .line 135
    return-object p2
.end method

.method public register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 126
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/netty/channel/Channel$Unsafe;->register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V

    .line 128
    return-object p1
.end method

.method runScheduledTasks()J
    .locals 5

    .line 63
    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v0

    .line 65
    .local v0, "time":J
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/embedded/EmbeddedEventLoop;->pollScheduledTask(J)Ljava/lang/Runnable;

    move-result-object v2

    .line 66
    .local v2, "task":Ljava/lang/Runnable;
    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->nextScheduledTaskNano()J

    move-result-wide v3

    return-wide v3

    .line 70
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 71
    .end local v2    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method runTasks()V
    .locals 1

    .line 53
    :goto_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedEventLoop;->tasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 54
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 55
    nop

    .line 60
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 58
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p1, "quietPeriod"    # J
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
