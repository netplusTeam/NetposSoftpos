.class public Lio/netty/channel/DefaultEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "DefaultEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultEventLoopGroup;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "nThreads"    # I

    .line 39
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/DefaultEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    new-instance v0, Lio/netty/channel/DefaultEventLoop;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/DefaultEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method protected bridge synthetic newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultEventLoopGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object p1

    return-object p1
.end method
