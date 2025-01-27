.class public Lio/netty/channel/ThreadPerChannelEventLoopGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "ThreadPerChannelEventLoopGroup.java"

# interfaces
.implements Lio/netty/channel/EventLoopGroup;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final activeChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/channel/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private final childArgs:[Ljava/lang/Object;

.field private final childTerminationListener:Lio/netty/util/concurrent/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FutureListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final idleChildren:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private final maxChannels:I

.field private volatile shuttingDown:Z

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field

.field private final tooManyChannels:Lio/netty/channel/ChannelException;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(I)V

    .line 77
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "maxChannels"    # I

    .line 89
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "maxChannels"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    .line 55
    nop

    .line 56
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    .line 61
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    .line 62
    new-instance v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;

    invoke-direct {v0, p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;-><init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childTerminationListener:Lio/netty/util/concurrent/FutureListener;

    .line 121
    const-string v0, "maxChannels"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 122
    if-nez p2, :cond_0

    .line 123
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    new-instance v1, Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    move-object p2, v0

    .line 126
    :cond_0
    if-nez p3, :cond_1

    .line 127
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    .line 132
    :goto_0
    iput p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    .line 133
    iput-object p2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->executor:Ljava/util/concurrent/Executor;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too many channels (max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Lio/netty/channel/ChannelException;->newStatic(Ljava/lang/String;Ljava/lang/Throwable;)Lio/netty/channel/ChannelException;

    move-result-object v0

    const-class v1, Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .line 135
    const-string v2, "nextChild()"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelException;

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->tooManyChannels:Lio/netty/channel/ChannelException;

    .line 138
    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "maxChannels"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 105
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v0, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .line 50
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method private nextChild()Lio/netty/channel/EventLoop;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    iget-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    .line 312
    .local v0, "loop":Lio/netty/channel/EventLoop;
    if-nez v0, :cond_2

    .line 313
    iget v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->tooManyChannels:Lio/netty/channel/ChannelException;

    throw v1

    .line 316
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->newChild([Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childTerminationListener:Lio/netty/util/concurrent/FutureListener;

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 319
    :cond_2
    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    return-object v0

    .line 308
    .end local v0    # "loop":Lio/netty/channel/EventLoop;
    :cond_3
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "shutting down"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 247
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 248
    .local v0, "deadline":J
    iget-object v2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/EventLoop;

    .line 250
    .local v3, "l":Lio/netty/channel/EventLoop;
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 251
    .local v6, "timeLeft":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_0

    .line 252
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v2

    return v2

    .line 254
    :cond_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v8}, Lio/netty/channel/EventLoop;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    nop

    .line 258
    .end local v3    # "l":Lio/netty/channel/EventLoop;
    .end local v6    # "timeLeft":J
    goto :goto_0

    .line 257
    .restart local v3    # "l":Lio/netty/channel/EventLoop;
    :cond_1
    goto :goto_1

    .line 259
    .end local v3    # "l":Lio/netty/channel/EventLoop;
    :cond_2
    iget-object v2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/EventLoop;

    .line 261
    .restart local v3    # "l":Lio/netty/channel/EventLoop;
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 262
    .restart local v6    # "timeLeft":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_3

    .line 263
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v2

    return v2

    .line 265
    :cond_3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v8}, Lio/netty/channel/EventLoop;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 266
    nop

    .line 269
    .end local v3    # "l":Lio/netty/channel/EventLoop;
    .end local v6    # "timeLeft":J
    goto :goto_2

    .line 268
    .restart local v3    # "l":Lio/netty/channel/EventLoop;
    :cond_4
    goto :goto_3

    .line 270
    .end local v3    # "l":Lio/netty/channel/EventLoop;
    :cond_5
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v2

    return v2
.end method

.method public isShutdown()Z
    .locals 4

    .line 216
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 217
    .local v1, "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    return v2

    .line 220
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 222
    .restart local v1    # "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    return v2

    .line 225
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    :cond_2
    goto :goto_1

    .line 226
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isShuttingDown()Z
    .locals 4

    .line 201
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 202
    .local v1, "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShuttingDown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    return v2

    .line 205
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 207
    .restart local v1    # "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShuttingDown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    return v2

    .line 210
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    :cond_2
    goto :goto_1

    .line 211
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isTerminated()Z
    .locals 4

    .line 231
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 232
    .local v1, "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    return v2

    .line 235
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 237
    .restart local v1    # "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    return v2

    .line 240
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    :cond_2
    goto :goto_1

    .line 241
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Lio/netty/util/internal/ReadOnlyIterator;

    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected varargs newChild([Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    new-instance v0, Lio/netty/channel/ThreadPerChannelEventLoop;

    invoke-direct {v0, p0}, Lio/netty/channel/ThreadPerChannelEventLoop;-><init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V

    return-object v0
.end method

.method public next()Lio/netty/channel/EventLoop;
    .locals 1

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 275
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 278
    .local v0, "l":Lio/netty/channel/EventLoop;
    new-instance v1, Lio/netty/channel/DefaultChannelPromise;

    invoke-direct {v1, p1, v0}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 279
    .end local v0    # "l":Lio/netty/channel/EventLoop;
    :catchall_0
    move-exception v0

    .line 280
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lio/netty/channel/FailedChannelFuture;

    sget-object v2, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v1, p1, v2, v0}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 302
    return-object p2
.end method

.method public register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 287
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 290
    return-object p1
.end method

.method public shutdown()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    .line 186
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 187
    .local v1, "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->shutdown()V

    .line 188
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 190
    .restart local v1    # "l":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->shutdown()V

    .line 191
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 8
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

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    .line 161
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 162
    .local v1, "l":Lio/netty/channel/EventLoop;
    move-object v2, v1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/channel/EventLoop;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    .line 163
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 165
    .restart local v1    # "l":Lio/netty/channel/EventLoop;
    move-object v2, v1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/channel/EventLoop;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    .line 166
    .end local v1    # "l":Lio/netty/channel/EventLoop;
    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
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

    .line 178
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method
