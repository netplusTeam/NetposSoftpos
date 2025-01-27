.class public Lio/netty/channel/nio/NioEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "NioEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "nThreads"    # I

    .line 52
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 72
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 3
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    .line 103
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 102
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p6, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p6, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p7, "taskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    const/4 v1, 0x3

    aput-object p7, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 91
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V

    .line 92
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 3
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 68
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 81
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 3
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 60
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    check-cast v0, Lio/netty/channel/EventLoopTaskQueueFactory;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 145
    .local v7, "queueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    new-instance v0, Lio/netty/channel/nio/NioEventLoop;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    move-object v4, v1

    check-cast v4, Ljava/nio/channels/spi/SelectorProvider;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Lio/netty/channel/SelectStrategyFactory;

    .line 146
    invoke-interface {v1}, Lio/netty/channel/SelectStrategyFactory;->newSelectStrategy()Lio/netty/channel/SelectStrategy;

    move-result-object v5

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v6, v1

    check-cast v6, Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lio/netty/channel/nio/NioEventLoop;-><init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V

    .line 145
    return-object v0
.end method

.method protected bridge synthetic newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/nio/NioEventLoopGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object p1

    return-object p1
.end method

.method public rebuildSelectors()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 138
    .local v1, "e":Lio/netty/util/concurrent/EventExecutor;
    move-object v2, v1

    check-cast v2, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v2}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    .line 139
    .end local v1    # "e":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .line 127
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 128
    .local v1, "e":Lio/netty/util/concurrent/EventExecutor;
    move-object v2, v1

    check-cast v2, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v2, p1}, Lio/netty/channel/nio/NioEventLoop;->setIoRatio(I)V

    .line 129
    .end local v1    # "e":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method
