.class public abstract Lio/netty/util/concurrent/MultithreadEventExecutorGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "MultithreadEventExecutorGroup.java"


# instance fields
.field private final children:[Lio/netty/util/concurrent/EventExecutor;

.field private final chooser:Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

.field private final readonlyChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    .line 71
    const/4 v0, 0x0

    if-lez p1, :cond_9

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v1, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    move-object p2, v1

    .line 79
    :cond_0
    new-array v1, p1, [Lio/netty/util/concurrent/EventExecutor;

    iput-object v1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "success":Z
    const-wide/32 v3, 0x7fffffff

    :try_start_0
    iget-object v5, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {p0, p2, p4}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const/4 v2, 0x1

    .line 90
    if-nez v2, :cond_3

    .line 91
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 92
    iget-object v6, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    .end local v5    # "j":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 96
    iget-object v6, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v6, v6, v5

    .line 98
    .local v6, "e":Lio/netty/util/concurrent/EventExecutor;
    :goto_3
    :try_start_1
    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v7

    if-nez v7, :cond_2

    .line 99
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v3, v4, v7}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 105
    :cond_2
    nop

    .line 95
    .end local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 101
    .restart local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    :catch_0
    move-exception v3

    .line 103
    .local v3, "interrupted":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 81
    .end local v2    # "success":Z
    .end local v3    # "interrupted":Ljava/lang/InterruptedException;
    .end local v5    # "j":I
    .end local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .restart local v2    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 86
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "failed to create a child event loop"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "i":I
    .end local v2    # "success":Z
    .end local p1    # "nThreads":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "chooserFactory":Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .end local p4    # "args":[Ljava/lang/Object;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    .restart local p1    # "nThreads":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "chooserFactory":Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .restart local p4    # "args":[Ljava/lang/Object;
    :goto_4
    if-nez v2, :cond_6

    .line 91
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    if-ge v5, v1, :cond_4

    .line 92
    iget-object v6, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 95
    .end local v5    # "j":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    if-ge v5, v1, :cond_6

    .line 96
    iget-object v6, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v6, v6, v5

    .line 98
    .restart local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    :goto_7
    :try_start_3
    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v7

    if-nez v7, :cond_5

    .line 99
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v3, v4, v7}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 105
    :cond_5
    nop

    .line 95
    .end local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 101
    .restart local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    :catch_2
    move-exception v3

    .line 103
    .restart local v3    # "interrupted":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 108
    .end local v3    # "interrupted":Ljava/lang/InterruptedException;
    .end local v5    # "j":I
    .end local v6    # "e":Lio/netty/util/concurrent/EventExecutor;
    :cond_6
    throw v0

    .line 111
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_7
    iget-object v1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {p3, v1}, Lio/netty/util/concurrent/EventExecutorChooserFactory;->newChooser([Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

    .line 113
    new-instance v1, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;

    invoke-direct {v1, p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;-><init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V

    .line 122
    .local v1, "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v3, v2

    :goto_8
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 123
    .local v4, "e":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v5, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 122
    .end local v4    # "e":Lio/netty/util/concurrent/EventExecutor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 126
    :cond_8
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 127
    .local v0, "childrenSet":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/EventExecutor;>;"
    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->readonlyChildren:Ljava/util/Set;

    .line 129
    return-void

    .line 72
    .end local v0    # "childrenSet":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/EventExecutor;>;"
    .end local v1    # "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "nThreads: %d (expected: > 0)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 58
    sget-object v0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;->INSTANCE:Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 47
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v0, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    .line 31
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    .line 31
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    .line 31
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 214
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 215
    .local v0, "deadline":J
    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 217
    .local v5, "l":Lio/netty/util/concurrent/EventExecutor;
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 218
    .local v6, "timeLeft":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 219
    goto :goto_2

    .line 221
    :cond_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 222
    nop

    .line 215
    .end local v5    # "l":Lio/netty/util/concurrent/EventExecutor;
    .end local v6    # "timeLeft":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .restart local v5    # "l":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    goto :goto_1

    .line 226
    .end local v5    # "l":Lio/netty/util/concurrent/EventExecutor;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->isTerminated()Z

    move-result v2

    return v2
.end method

.method public final executorCount()I
    .locals 1

    .line 150
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v0, v0

    return v0
.end method

.method public isShutdown()Z
    .locals 6

    .line 193
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 194
    .local v4, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    return v2

    .line 193
    .end local v4    # "l":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isShuttingDown()Z
    .locals 6

    .line 183
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 184
    .local v4, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutor;->isShuttingDown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    return v2

    .line 183
    .end local v4    # "l":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isTerminated()Z
    .locals 6

    .line 203
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 204
    .local v4, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    return v2

    .line 203
    .end local v4    # "l":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->readonlyChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 2

    .line 132
    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    .local v3, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v3}, Lio/netty/util/concurrent/EventExecutor;->shutdown()V

    .line 176
    .end local v3    # "l":Lio/netty/util/concurrent/EventExecutor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 10
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

    .line 162
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v9, v0, v2

    .line 163
    .local v9, "l":Lio/netty/util/concurrent/EventExecutor;
    move-object v3, v9

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    .line 162
    .end local v9    # "l":Lio/netty/util/concurrent/EventExecutor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

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

    .line 170
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method
