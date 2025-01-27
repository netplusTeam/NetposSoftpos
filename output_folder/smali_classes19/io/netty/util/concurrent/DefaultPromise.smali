.class public Lio/netty/util/concurrent/DefaultPromise;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "DefaultPromise.java"

# interfaces
.implements Lio/netty/util/concurrent/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/DefaultPromise$CauseHolder;,
        Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/AbstractFuture<",
        "TV;>;",
        "Lio/netty/util/concurrent/Promise<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

.field private static final CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

.field private static final MAX_LISTENER_STACK_DEPTH:I

.field private static final RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/concurrent/DefaultPromise;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUCCESS:Ljava/lang/Object;

.field private static final UNCANCELLABLE:Ljava/lang/Object;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private listeners:Ljava/lang/Object;

.field private notifyingListeners:Z

.field private volatile result:Ljava/lang/Object;

.field private waiters:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    const-class v0, Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".rejectedExecution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    nop

    .line 40
    const-string v1, "io.netty.defaultPromise.maxListenerStackDepth"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 39
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    .line 42
    const-class v1, Ljava/lang/Object;

    .line 43
    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    .line 46
    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    const-string v3, "cancel(...)"

    invoke-static {v2, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .line 48
    iget-object v0, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 89
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 92
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 82
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 83
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 84
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 35
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/util/concurrent/DefaultPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/DefaultPromise;

    .line 35
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenersNow()V

    return-void
.end method

.method static synthetic access$300(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/Future;
    .param p1, "x1"    # Lio/netty/util/concurrent/GenericFutureListener;

    .line 35
    invoke-static {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    return-void
.end method

.method static synthetic access$400(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "x1"    # [Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 35
    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "x1"    # Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 35
    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method private addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)V"
        }
    .end annotation

    .line 586
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 587
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    goto :goto_0

    .line 588
    :cond_0
    instance-of v1, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v1, :cond_1

    .line 589
    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->add(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0

    .line 591
    :cond_1
    new-instance v1, Lio/netty/util/concurrent/DefaultFutureListeners;

    check-cast v0, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-direct {v1, v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;-><init>(Lio/netty/util/concurrent/GenericFutureListener;Lio/netty/util/concurrent/GenericFutureListener;)V

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 593
    :goto_0
    return-void
.end method

.method private await0(JZ)Z
    .locals 12
    .param p1, "timeoutNanos"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 654
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 655
    return v1

    .line 658
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 659
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    return v0

    .line 662
    :cond_1
    if-eqz p3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 663
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 668
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 669
    .local v4, "startTime":J
    move-wide v6, p1

    .line 670
    .local v6, "waitTime":J
    const/4 v0, 0x0

    .line 673
    .local v0, "interrupted":Z
    :cond_4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 674
    :try_start_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 675
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 700
    if-eqz v0, :cond_5

    .line 701
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 675
    :cond_5
    return v1

    .line 677
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 679
    const-wide/32 v8, 0xf4240

    :try_start_3
    div-long v10, v6, v8

    rem-long v8, v6, v8

    long-to-int v8, v8

    invoke-virtual {p0, v10, v11, v8}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 687
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 688
    goto :goto_2

    .line 687
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 680
    :catch_0
    move-exception v8

    .line 681
    .local v8, "e":Ljava/lang/InterruptedException;
    if-nez p3, :cond_a

    .line 684
    const/4 v0, 0x1

    goto :goto_1

    .line 689
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 690
    :try_start_5
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v8, :cond_8

    .line 691
    nop

    .line 700
    if-eqz v0, :cond_7

    .line 701
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 691
    :cond_7
    return v1

    .line 693
    :cond_8
    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    sub-long v6, p1, v8

    .line 694
    cmp-long v8, v6, v2

    if-gtz v8, :cond_4

    .line 695
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 700
    if-eqz v0, :cond_9

    .line 701
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 695
    :cond_9
    return v1

    .line 682
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    :cond_a
    nop

    .end local v0    # "interrupted":Z
    .end local v4    # "startTime":J
    .end local v6    # "waitTime":J
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 687
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "interrupted":Z
    .restart local v4    # "startTime":J
    .restart local v6    # "waitTime":J
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :goto_3
    :try_start_8
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 688
    nop

    .end local v0    # "interrupted":Z
    .end local v4    # "startTime":J
    .end local v6    # "waitTime":J
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    throw v1

    .line 689
    .restart local v0    # "interrupted":Z
    .restart local v4    # "startTime":J
    .restart local v6    # "waitTime":J
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v0    # "interrupted":Z
    .end local v4    # "startTime":J
    .end local v6    # "waitTime":J
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 700
    .restart local v0    # "interrupted":Z
    .restart local v4    # "startTime":J
    .restart local v6    # "waitTime":J
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_b

    .line 701
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 703
    :cond_b
    throw v1
.end method

.method private cause0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .line 161
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    instance-of v0, p1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    return-object v1

    .line 164
    :cond_0
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-ne p1, v0, :cond_2

    .line 165
    new-instance v2, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;

    invoke-direct {v2, v1}, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;-><init>(Lio/netty/util/concurrent/DefaultPromise$1;)V

    move-object v1, v2

    .line 166
    .local v1, "ce":Ljava/util/concurrent/CancellationException;
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    invoke-direct {v3, v1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    return-object v1

    .line 169
    :cond_1
    iget-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 171
    .end local v1    # "ce":Ljava/util/concurrent/CancellationException;
    :cond_2
    move-object v0, p1

    check-cast v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private declared-synchronized checkNotifyWaiters()Z
    .locals 1

    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    monitor-enter p0

    .line 627
    :try_start_0
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    if-lez v0, :cond_0

    .line 628
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 630
    .end local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private decWaiters()V
    .locals 1

    .line 641
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    .line 642
    return-void
.end method

.method private incWaiters()V
    .locals 3

    .line 634
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 637
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    .line 638
    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many waiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isCancelled0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .line 825
    instance-of v0, p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDone0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .line 829
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .param p0, "eventExecutor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future<",
            "*>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    .line 476
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    .local p2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    nop

    .line 477
    const-string v0, "eventExecutor"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    .line 478
    const-string v1, "future"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/Future;

    .line 479
    const-string v2, "listener"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/concurrent/GenericFutureListener;

    .line 476
    invoke-static {v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 480
    return-void
.end method

.method private static notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 4
    .param p0, "future"    # Lio/netty/util/concurrent/Future;
    .param p1, "l"    # Lio/netty/util/concurrent/GenericFutureListener;

    .line 577
    :try_start_0
    invoke-interface {p1, p0}, Lio/netty/util/concurrent/GenericFutureListener;->operationComplete(Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    .line 579
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".operationComplete()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future<",
            "*>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    .line 514
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    .local p2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    invoke-interface {p0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 516
    .local v0, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v1

    .line 517
    .local v1, "stackDepth":I
    sget v2, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    if-ge v1, v2, :cond_0

    .line 518
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 520
    :try_start_0
    invoke-static {p1, p2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 523
    throw v2

    .line 528
    .end local v0    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    .end local v1    # "stackDepth":I
    :cond_0
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$2;

    invoke-direct {v0, p1, p2}, Lio/netty/util/concurrent/DefaultPromise$2;-><init>(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    invoke-static {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .line 483
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 484
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    .line 486
    .local v1, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v2

    .line 487
    .local v2, "stackDepth":I
    sget v3, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    if-ge v2, v3, :cond_0

    .line 488
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 490
    :try_start_0
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenersNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 493
    throw v3

    .line 498
    .end local v1    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    .end local v2    # "stackDepth":I
    :cond_0
    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$1;

    invoke-direct {v1, p0}, Lio/netty/util/concurrent/DefaultPromise$1;-><init>(Lio/netty/util/concurrent/DefaultPromise;)V

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method private notifyListeners0(Lio/netty/util/concurrent/DefaultFutureListeners;)V
    .locals 4
    .param p1, "listeners"    # Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 567
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v0

    .line 568
    .local v0, "a":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<*>;"
    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->size()I

    move-result v1

    .line 569
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 570
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private notifyListenersNow()V
    .locals 3

    .line 538
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    monitor-enter p0

    .line 540
    :try_start_0
    iget-boolean v0, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    .line 543
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    .line 544
    nop

    .line 545
    .local v0, "listeners":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 546
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :goto_0
    instance-of v2, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v2, :cond_1

    .line 549
    move-object v2, v0

    check-cast v2, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners0(Lio/netty/util/concurrent/DefaultFutureListeners;)V

    goto :goto_1

    .line 551
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 553
    :goto_1
    monitor-enter p0

    .line 554
    :try_start_1
    iget-object v2, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    .line 558
    monitor-exit p0

    return-void

    .line 560
    :cond_2
    move-object v0, v2

    .line 561
    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 562
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 541
    .end local v0    # "listeners":Ljava/lang/Object;
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit p0

    return-void

    .line 546
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 6
    .param p0, "future"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "l"    # Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "progress"    # J
    .param p4, "total"    # J

    .line 816
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/GenericProgressiveFutureListener;->operationProgressed(Lio/netty/util/concurrent/ProgressiveFuture;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    goto :goto_0

    .line 817
    :catchall_0
    move-exception v0

    .line 818
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".operationProgressed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 822
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 9
    .param p2, "progress"    # J
    .param p4, "total"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ProgressiveFuture<",
            "*>;[",
            "Lio/netty/util/concurrent/GenericProgressiveFutureListener<",
            "*>;JJ)V"
        }
    .end annotation

    .line 804
    .local p0, "future":Lio/netty/util/concurrent/ProgressiveFuture;, "Lio/netty/util/concurrent/ProgressiveFuture<*>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p1, v1

    .line 805
    .local v8, "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    if-nez v8, :cond_0

    .line 806
    goto :goto_1

    .line 808
    :cond_0
    move-object v2, p0

    move-object v3, v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    .line 804
    .end local v8    # "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized progressiveListeners()Ljava/lang/Object;
    .locals 10

    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    .local v0, "listeners":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 765
    monitor-exit p0

    return-object v1

    .line 768
    :cond_0
    :try_start_1
    instance-of v2, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v2, :cond_5

    .line 770
    move-object v2, v0

    check-cast v2, Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 771
    .local v2, "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    invoke-virtual {v2}, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize()I

    move-result v3

    .line 772
    .local v3, "progressiveSize":I
    packed-switch v3, :pswitch_data_0

    .line 784
    .end local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {v2}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v1

    goto :goto_1

    .line 776
    .restart local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :pswitch_0
    invoke-virtual {v2}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 777
    .local v7, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    instance-of v8, v7, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    .line 778
    monitor-exit p0

    return-object v7

    .line 776
    .end local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 781
    .end local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :cond_2
    monitor-exit p0

    return-object v1

    .line 774
    :pswitch_1
    monitor-exit p0

    return-object v1

    .line 785
    .local v1, "array":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :goto_1
    :try_start_2
    new-array v4, v3, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 786
    .local v4, "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_4

    .line 787
    aget-object v7, v1, v5

    .line 788
    .restart local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    instance-of v8, v7, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v8, :cond_3

    .line 789
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "j":I
    .local v8, "j":I
    move-object v9, v7

    check-cast v9, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    aput-object v9, v4, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    .line 786
    .end local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    .end local v8    # "j":I
    .restart local v6    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 793
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_4
    monitor-exit p0

    return-object v4

    .line 794
    .end local v1    # "array":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<*>;"
    .end local v2    # "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    .end local v3    # "progressiveSize":I
    .end local v4    # "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    :cond_5
    :try_start_3
    instance-of v2, v0, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    .line 795
    monitor-exit p0

    return-object v0

    .line 798
    :cond_6
    monitor-exit p0

    return-object v1

    .line 761
    .end local v0    # "listeners":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)V"
        }
    .end annotation

    .line 596
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    instance-of v1, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v1, :cond_0

    .line 597
    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->remove(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0

    .line 598
    :cond_0
    if-ne v0, p1, :cond_1

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 601
    :cond_1
    :goto_0
    return-void
.end method

.method private rethrowIfFailed()V
    .locals 1

    .line 645
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 646
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 651
    return-void
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 841
    :try_start_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    .line 843
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to submit a listener notification task. Event loop shut down?"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setFailure0(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 608
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const-string v1, "cause"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setValue0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setSuccess0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 604
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setValue0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setValue0(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "objResult"    # Ljava/lang/Object;

    .line 612
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    .line 613
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkNotifyWaiters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 617
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 186
    :cond_0
    return-object p0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 195
    .local v2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez v2, :cond_0

    .line 196
    goto :goto_1

    .line 198
    :cond_0
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 194
    .end local v2    # "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 206
    :cond_2
    return-object p0

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 238
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    return-object p0

    .line 242
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 248
    monitor-enter p0

    .line 249
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 255
    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 255
    throw v0

    .line 257
    :cond_1
    monitor-exit p0

    .line 258
    return-object p0

    .line 257
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 293
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-object p0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "interrupted":Z
    monitor-enter p0

    .line 271
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 280
    goto :goto_0

    .line 279
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 280
    nop

    .end local v0    # "interrupted":Z
    throw v1

    .line 275
    .restart local v0    # "interrupted":Z
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_1

    .line 282
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 288
    :cond_2
    return-object p0

    .line 282
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public awaitUninterruptibly(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .line 314
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 304
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 305
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 382
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkNotifyWaiters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 386
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 157
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected checkDeadLock()V
    .locals 3

    .line 459
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 460
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    new-instance v1, Lio/netty/util/concurrent/BlockingOperationException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/BlockingOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_1
    :goto_0
    return-void
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 455
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 334
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 335
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    .line 337
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 339
    :cond_0
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 343
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 344
    return-object v0

    .line 346
    :cond_2
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    .line 347
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    throw v2

    .line 349
    :cond_3
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 340
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 355
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 356
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/DefaultPromise;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_0
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 362
    :cond_1
    :goto_0
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 365
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 366
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    .line 367
    return-object v0

    .line 369
    :cond_3
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_4

    .line 370
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    throw v2

    .line 372
    :cond_4
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 363
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 325
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    return-object v0

    .line 326
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isCancellable()Z
    .locals 1

    .line 137
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 393
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 398
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 131
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 132
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method notifyProgressiveListeners(JJ)V
    .locals 13
    .param p1, "progress"    # J
    .param p3, "total"    # J

    .line 718
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->progressiveListeners()Ljava/lang/Object;

    move-result-object v0

    .line 719
    .local v0, "listeners":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 720
    return-void

    .line 723
    :cond_0
    move-object v9, p0

    check-cast v9, Lio/netty/util/concurrent/ProgressiveFuture;

    .line 725
    .local v9, "self":Lio/netty/util/concurrent/ProgressiveFuture;, "Lio/netty/util/concurrent/ProgressiveFuture<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v10

    .line 726
    .local v10, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v10}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    instance-of v1, v0, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_1

    .line 728
    move-object v1, v0

    check-cast v1, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v2, v1

    check-cast v2, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v1, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    .line 731
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v1, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    .line 735
    :cond_2
    instance-of v1, v0, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_3

    .line 736
    move-object v1, v0

    check-cast v1, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v11, v1

    check-cast v11, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 738
    .local v11, "array":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    new-instance v12, Lio/netty/util/concurrent/DefaultPromise$3;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v9

    move-object v4, v11

    move-wide v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/util/concurrent/DefaultPromise$3;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    invoke-static {v10, v12}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 744
    .end local v11    # "array":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    goto :goto_0

    .line 745
    :cond_3
    move-object v11, v0

    check-cast v11, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 747
    .local v11, "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<Lio/netty/util/concurrent/ProgressiveFuture<TV;>;>;"
    new-instance v12, Lio/netty/util/concurrent/DefaultPromise$4;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v9

    move-object v4, v11

    move-wide v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/util/concurrent/DefaultPromise$4;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    invoke-static {v10, v12}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 755
    .end local v11    # "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<Lio/netty/util/concurrent/ProgressiveFuture<TV;>;>;"
    :goto_0
    return-void
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 215
    monitor-exit p0

    .line 217
    return-object p0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 226
    .local v2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez v2, :cond_0

    .line 227
    goto :goto_1

    .line 229
    :cond_0
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 225
    .end local v2    # "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    :goto_1
    monitor-exit p0

    .line 233
    return-object p0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-object p0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncancellable()Z
    .locals 3

    .line 122
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 126
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 403
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    .line 404
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    .line 405
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    .line 411
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    .line 412
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 417
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 421
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 427
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 428
    const-string v2, "(success)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 429
    :cond_0
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 430
    const-string v2, "(uncancellable)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    :cond_1
    instance-of v2, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/16 v3, 0x29

    if-eqz v2, :cond_2

    .line 432
    const-string v2, "(failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v4, v4, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    .line 433
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    :cond_2
    if-eqz v1, :cond_3

    .line 436
    const-string v2, "(success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 440
    :cond_3
    const-string v2, "(incomplete)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :goto_0
    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 117
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public trySuccess(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
