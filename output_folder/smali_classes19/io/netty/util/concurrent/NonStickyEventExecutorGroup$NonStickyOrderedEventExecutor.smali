.class final Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;
.super Lio/netty/util/concurrent/AbstractEventExecutor;
.source "NonStickyEventExecutorGroup.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/netty/util/concurrent/OrderedEventExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/NonStickyEventExecutorGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonStickyOrderedEventExecutor"
.end annotation


# static fields
.field private static final NONE:I = 0x0

.field private static final RUNNING:I = 0x2

.field private static final SUBMITTED:I = 0x1


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final maxTaskExecutePerRun:I

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

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
.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;I)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "maxTaskExecutePerRun"    # I

    .line 227
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    .line 217
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->tasks:Ljava/util/Queue;

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    iput-object p1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 229
    iput p2, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->maxTaskExecutePerRun:I

    .line 230
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 332
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0, p0}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 343
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 346
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method

.method public inEventLoop()Z
    .locals 1

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public inEventLoop(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .line 234
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 240
    .local v0, "i":I
    :goto_1
    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->maxTaskExecutePerRun:I

    if-ge v0, v4, :cond_2

    .line 241
    iget-object v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 242
    .local v4, "task":Ljava/lang/Runnable;
    if-nez v4, :cond_1

    .line 243
    goto :goto_2

    .line 245
    :cond_1
    invoke-static {v4}, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->safeExecute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    .end local v4    # "task":Ljava/lang/Runnable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_2
    :goto_2
    iget v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->maxTaskExecutePerRun:I

    if-ne v0, v4, :cond_3

    .line 250
    :try_start_1
    iget-object v3, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 251
    iget-object v3, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v3, p0}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    return-void

    .line 253
    :catchall_0
    move-exception v3

    .line 255
    .local v3, "ignore":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 259
    .end local v3    # "ignore":Ljava/lang/Throwable;
    goto :goto_3

    .line 261
    :cond_3
    iget-object v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 277
    iget-object v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 282
    .end local v0    # "i":I
    :cond_4
    :goto_3
    goto :goto_0

    .line 278
    .restart local v0    # "i":I
    :cond_5
    :goto_4
    return-void

    .line 248
    :catchall_1
    move-exception v4

    iget v5, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->maxTaskExecutePerRun:I

    if-ne v0, v5, :cond_6

    .line 250
    :try_start_2
    iget-object v3, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 251
    iget-object v1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v1, p0}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    return-void

    .line 253
    :catchall_2
    move-exception v1

    .line 255
    .local v1, "ignore":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 259
    .end local v1    # "ignore":Ljava/lang/Throwable;
    goto :goto_5

    .line 261
    :cond_6
    iget-object v1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 277
    iget-object v1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    .line 281
    :cond_7
    :goto_5
    throw v4

    .line 278
    :cond_8
    :goto_6
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 312
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->shutdown()V

    .line 313
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 6
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

    .line 302
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

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

    .line 307
    iget-object v0, p0, Lio/netty/util/concurrent/NonStickyEventExecutorGroup$NonStickyOrderedEventExecutor;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
