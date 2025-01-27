.class public abstract Ljava9/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;,
        Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 393
    const/16 v0, 0x20

    new-array v0, v0, [Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v0, Ljava9/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 397
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 401
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1501
    sget-object v0, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1506
    :try_start_0
    const-class v1, Ljava9/util/concurrent/ForkJoinTask;

    const-string v2, "status"

    .line 1507
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1506
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    nop

    .line 1511
    return-void

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 185
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    return-void
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1436
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1450
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1464
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 488
    .local p0, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 490
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    .line 494
    :cond_0
    :goto_0
    return-void
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .line 500
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 501
    .local v0, "h":I
    sget-object v1, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 502
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 504
    :try_start_0
    sget-object v2, Ljava9/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 505
    .local v2, "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    .line 506
    .local v3, "i":I
    aget-object v4, v2, v3

    .line 507
    .local v4, "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 508
    .local v5, "pred":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v4, :cond_2

    .line 509
    iget-object v6, v4, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 510
    .local v6, "next":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_1

    .line 511
    if-nez v5, :cond_0

    .line 512
    aput-object v6, v2, v3

    goto :goto_1

    .line 514
    :cond_0
    iput-object v6, v5, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 515
    goto :goto_1

    .line 517
    :cond_1
    move-object v5, v4

    .line 518
    move-object v4, v6

    .line 519
    .end local v6    # "next":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    goto :goto_0

    .line 520
    :cond_2
    :goto_1
    invoke-static {}, Ljava9/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 521
    const/4 v6, 0x0

    iput v6, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v2    # "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "pred":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    nop

    .line 525
    return-void

    .line 523
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private doInvoke()I
    .locals 7

    .line 375
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v2, v0

    .local v2, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    iget-object v4, v3, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/16 v5, 0x0

    .line 378
    invoke-virtual {v0, v4, p0, v5, v6}, Ljava9/util/concurrent/ForkJoinPool;->awaitJoin(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/ForkJoinTask;J)I

    move-result v0

    goto :goto_0

    .line 379
    .end local v3    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    return v0
.end method

.method private doJoin()I
    .locals 7

    .line 360
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v2, v0

    .local v2, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v0

    .line 363
    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v3, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    const-wide/16 v5, 0x0

    .line 364
    invoke-virtual {v0, v4, p0, v5, v6}, Ljava9/util/concurrent/ForkJoinPool;->awaitJoin(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/ForkJoinTask;J)I

    move-result v0

    goto :goto_0

    .line 365
    .end local v3    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    return v0
.end method

.method private static expungeStaleExceptions()V
    .locals 6

    .line 584
    :cond_0
    :goto_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "x":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 585
    instance-of v0, v1, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Ljava9/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 587
    .local v0, "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v2, v1

    check-cast v2, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    iget v2, v2, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 588
    .local v2, "i":I
    aget-object v3, v0, v2

    .line 589
    .local v3, "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 590
    .local v4, "pred":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v3, :cond_3

    .line 591
    iget-object v5, v3, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 592
    .local v5, "next":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v3, v1, :cond_2

    .line 593
    if-nez v4, :cond_1

    .line 594
    aput-object v5, v0, v2

    goto :goto_2

    .line 596
    :cond_1
    iput-object v5, v4, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 597
    goto :goto_2

    .line 599
    :cond_2
    move-object v4, v3

    .line 600
    move-object v3, v5

    .line 601
    .end local v5    # "next":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    goto :goto_1

    .line 602
    .end local v0    # "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v3    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    :goto_2
    goto :goto_0

    .line 604
    .end local v1    # "x":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    .line 297
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p0, Ljava9/util/concurrent/CountedCompleter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    move-object v2, p0

    check-cast v2, Ljava9/util/concurrent/CountedCompleter;

    .line 298
    invoke-virtual {v0, v2, v1}, Ljava9/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    .line 300
    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    move-result v1

    :cond_1
    :goto_0
    move v0, v1

    .line 301
    .local v0, "s":I
    if-ltz v0, :cond_5

    iget v1, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v0, v1

    if-ltz v1, :cond_5

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, "interrupted":Z
    :cond_2
    sget-object v2, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v3, 0x10000

    or-int v7, v0, v3

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget v2, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_3

    .line 308
    const-wide/16 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v2

    .line 310
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 311
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_2

    .line 314
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    :goto_2
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 317
    :cond_4
    :goto_3
    iget v2, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v0, v2

    if-gez v2, :cond_2

    .line 318
    if-eqz v1, :cond_5

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 321
    .end local v1    # "interrupted":Z
    :cond_5
    return v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 331
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_4

    instance-of v0, p0, Ljava9/util/concurrent/CountedCompleter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    move-object v3, p0

    check-cast v3, Ljava9/util/concurrent/CountedCompleter;

    .line 333
    invoke-virtual {v0, v3, v2}, Ljava9/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    .line 335
    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    move-result v2

    :cond_1
    :goto_0
    move v1, v2

    if-ltz v2, :cond_4

    .line 337
    :cond_2
    :goto_1
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    if-ltz v0, :cond_4

    .line 338
    sget-object v2, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v7, v1, v0

    move-object v3, p0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_3

    .line 341
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 343
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 344
    :goto_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 348
    :cond_4
    return v1

    .line 330
    .end local v1    # "s":I
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public static getPool()Ljava9/util/concurrent/ForkJoinPool;
    .locals 2

    .line 1109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1110
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v1, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    .line 1153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 1154
    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1156
    .end local v0    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1157
    .restart local v0    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    :goto_1
    return v2
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .line 1174
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 14

    .line 542
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 544
    .local v0, "h":I
    sget-object v1, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 545
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 547
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava9/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 548
    sget-object v3, Ljava9/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 549
    .local v3, "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v4, v0

    aget-object v4, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 550
    .local v4, "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 551
    iget-object v6, v4, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    goto :goto_0

    .line 553
    .end local v3    # "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v2

    goto :goto_5

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    nop

    .line 556
    if-eqz v4, :cond_7

    iget-object v3, v4, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    move-object v6, v3

    .local v6, "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_1

    goto :goto_4

    .line 558
    :cond_1
    iget-wide v2, v4, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-eqz v2, :cond_6

    .line 560
    const/4 v2, 0x0

    .line 562
    .local v2, "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_4

    aget-object v10, v3, v9

    .line 563
    .local v10, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 564
    .local v11, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v12, v11

    if-nez v12, :cond_2

    .line 565
    move-object v2, v10

    goto :goto_2

    .line 566
    :cond_2
    array-length v12, v11

    if-ne v12, v5, :cond_3

    aget-object v12, v11, v8

    const-class v13, Ljava/lang/Throwable;

    if-ne v12, v13, :cond_3

    .line 567
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v6, v3, v8

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    return-object v3

    .line 562
    .end local v10    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 569
    :cond_4
    if-eqz v2, :cond_5

    .line 570
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 571
    .local v3, "wx":Ljava/lang/Throwable;
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 572
    return-object v3

    .line 575
    .end local v2    # "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "wx":Ljava/lang/Throwable;
    :cond_5
    goto :goto_3

    .line 574
    :catch_0
    move-exception v2

    .line 577
    :cond_6
    :goto_3
    return-object v6

    .line 557
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_7
    :goto_4
    return-object v2

    .line 553
    .end local v4    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .restart local v4    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .line 611
    sget-object v0, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 612
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    :try_start_0
    invoke-static {}, Ljava9/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 617
    goto :goto_0

    .line 616
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 619
    :cond_0
    :goto_0
    return-void
.end method

.method public static helpQuiesce()V
    .locals 4

    .line 1068
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 1069
    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 1070
    .local v0, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    iget-object v3, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava9/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1071
    .end local v0    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    goto :goto_0

    .line 1073
    :cond_0
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    .line 1074
    :goto_0
    return-void
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .line 1123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;>(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 797
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_4

    .line 802
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 804
    .local v0, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava9/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v2, 0x0

    .line 805
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 806
    .local v3, "last":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    const/high16 v5, -0x10000000

    if-ltz v4, :cond_4

    .line 807
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava9/util/concurrent/ForkJoinTask;

    .line 808
    .local v6, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-nez v6, :cond_1

    .line 809
    if-nez v2, :cond_3

    .line 810
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    move-object v2, v5

    goto :goto_1

    .line 812
    :cond_1
    if-eqz v4, :cond_2

    .line 813
    invoke-virtual {v6}, Ljava9/util/concurrent/ForkJoinTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 814
    :cond_2
    invoke-direct {v6}, Ljava9/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v7

    if-ge v7, v5, :cond_3

    if-nez v2, :cond_3

    .line 815
    invoke-virtual {v6}, Ljava9/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 806
    .end local v6    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 817
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_2
    if-gt v4, v3, :cond_7

    .line 818
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava9/util/concurrent/ForkJoinTask;

    .line 819
    .restart local v6    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_6

    .line 820
    if-eqz v2, :cond_5

    .line 821
    invoke-virtual {v6, v1}, Ljava9/util/concurrent/ForkJoinTask;->cancel(Z)Z

    goto :goto_3

    .line 822
    :cond_5
    invoke-direct {v6}, Ljava9/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v7

    if-ge v7, v5, :cond_6

    .line 823
    invoke-virtual {v6}, Ljava9/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 817
    .end local v6    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 826
    .end local v4    # "i":I
    :cond_7
    if-eqz v2, :cond_8

    .line 827
    invoke-static {v2}, Ljava9/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 828
    :cond_8
    return-object p0

    .line 798
    .end local v0    # "ts":Ljava/util/List;, "Ljava/util/List<+Ljava9/util/concurrent/ForkJoinTask<*>;>;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "last":I
    :cond_9
    :goto_4
    new-array v0, v1, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-static {v0}, Ljava9/util/concurrent/ForkJoinTask;->invokeAll([Ljava9/util/concurrent/ForkJoinTask;)V

    .line 799
    return-object p0
.end method

.method public static invokeAll(Ljava9/util/concurrent/ForkJoinTask;Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 729
    .local p0, "t1":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 730
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    move v2, v0

    .local v2, "s1":I
    if-eq v0, v1, :cond_0

    .line 731
    invoke-direct {p0, v2}, Ljava9/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 732
    :cond_0
    invoke-direct {p1}, Ljava9/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    and-int/2addr v0, v1

    move v3, v0

    .local v3, "s2":I
    if-eq v0, v1, :cond_1

    .line 733
    invoke-direct {p1, v3}, Ljava9/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 734
    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 752
    .local p0, "tasks":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    .line 753
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 754
    .local v1, "last":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    const/high16 v3, -0x10000000

    if-ltz v2, :cond_3

    .line 755
    aget-object v4, p0, v2

    .line 756
    .local v4, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_0

    .line 757
    if-nez v0, :cond_2

    .line 758
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    move-object v0, v3

    goto :goto_1

    .line 760
    :cond_0
    if-eqz v2, :cond_1

    .line 761
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 762
    :cond_1
    invoke-direct {v4}, Ljava9/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v3, :cond_2

    if-nez v0, :cond_2

    .line 763
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 754
    .end local v4    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 765
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, v1, :cond_6

    .line 766
    aget-object v4, p0, v2

    .line 767
    .restart local v4    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_5

    .line 768
    if-eqz v0, :cond_4

    .line 769
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava9/util/concurrent/ForkJoinTask;->cancel(Z)Z

    goto :goto_3

    .line 770
    :cond_4
    invoke-direct {v4}, Ljava9/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v3, :cond_5

    .line 771
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 765
    .end local v4    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 774
    .end local v2    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 775
    invoke-static {v0}, Ljava9/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 776
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava9/util/concurrent/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 1229
    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1231
    .end local v0    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1232
    .restart local v0    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method protected static pollNextLocalTask()Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1247
    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected static pollSubmission()Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    .line 1285
    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool;->pollSubmission()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected static pollTask()Ljava9/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1266
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    iget-object v3, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1267
    invoke-virtual {v0, v3}, Ljava9/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    .end local v2    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1494
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1496
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1497
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Ljava9/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1498
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    .line 645
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_1

    .line 647
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 648
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 649
    :cond_0
    return-void

    .line 646
    :cond_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 625
    invoke-static {p0}, Ljava9/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 626
    return-void
.end method

.method private setCompletion(I)I
    .locals 8
    .param p1, "completion"    # I

    .line 242
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    :goto_0
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v7, v0

    .local v7, "s":I
    if-gez v0, :cond_0

    .line 243
    return v7

    .line 244
    :cond_0
    sget-object v1, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    or-int v6, v7, p1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    ushr-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_1

    .line 246
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 247
    :cond_1
    :goto_1
    return p1

    .line 244
    :cond_2
    goto :goto_0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 469
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 470
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 472
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 635
    if-eqz p0, :cond_0

    .line 636
    throw p0

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unknown Exception"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1482
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1483
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 859
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v1

    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 8
    .param p1, "expect"    # S
    .param p2, "update"    # S

    .line 1331
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    :goto_0
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v7, v0

    .local v7, "s":I
    int-to-short v0, v0

    if-eq v0, p1, :cond_0

    .line 1332
    const/4 v0, 0x0

    return v0

    .line 1333
    :cond_0
    sget-object v1, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v0, -0x10000

    and-int/2addr v0, v7

    const v2, 0xffff

    and-int/2addr v2, p2

    or-int v6, v0, v2

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    const/4 v0, 0x1

    return v0

    .line 1333
    :cond_1
    goto :goto_0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 939
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    nop

    .line 944
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 945
    return-void

    .line 940
    :catchall_0
    move-exception v0

    .line 941
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 942
    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 919
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    :goto_1
    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 922
    return-void
.end method

.method final doExec()I
    .locals 3

    .line 261
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->exec()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .local v0, "completed":Z
    nop

    .line 267
    if-eqz v0, :cond_0

    .line 268
    const/high16 v2, -0x10000000

    invoke-direct {p0, v2}, Ljava9/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v1

    goto :goto_0

    .line 264
    .end local v0    # "completed":Z
    :catchall_0
    move-exception v0

    .line 265
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    return v2

    .line 270
    .end local v0    # "rex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v1
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TV;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 671
    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava9/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 673
    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool;->externalPush(Ljava9/util/concurrent/ForkJoinTask;)V

    .line 674
    :goto_0
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
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

    .line 971
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 972
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v0

    .line 973
    .local v0, "s":I
    :goto_0
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    move v0, v1

    const/high16 v2, -0x40000000    # -2.0f

    if-eq v1, v2, :cond_2

    .line 975
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 977
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 976
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 974
    :cond_2
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 26
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

    .line 997
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    .line 998
    .local v11, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1000
    iget v0, v7, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_a

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_a

    .line 1001
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v15, v2, v11

    .line 1002
    .local v15, "d":J
    cmp-long v0, v15, v13

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    move-wide v2, v15

    :goto_0
    move-wide v5, v2

    .line 1003
    .local v5, "deadline":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 1004
    .local v3, "t":Ljava/lang/Thread;
    instance-of v0, v3, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_1

    .line 1005
    move-object v0, v3

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 1006
    .local v0, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    iget-object v4, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v4, v7, v5, v6}, Ljava9/util/concurrent/ForkJoinPool;->awaitJoin(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/ForkJoinTask;J)I

    move-result v1

    .line 1007
    .end local v0    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    goto/16 :goto_7

    .line 1008
    :cond_1
    instance-of v0, v7, Ljava9/util/concurrent/CountedCompleter;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    move-object v4, v7

    check-cast v4, Ljava9/util/concurrent/CountedCompleter;

    .line 1009
    invoke-virtual {v0, v4, v2}, Ljava9/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v2

    goto :goto_1

    :cond_2
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    .line 1011
    invoke-virtual {v0, v7}, Ljava9/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    move-result v2

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move v1, v2

    if-ltz v2, :cond_9

    .line 1014
    :goto_2
    iget v0, v7, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move/from16 v17, v0

    .end local v1    # "s":I
    .local v17, "s":I
    if-ltz v0, :cond_8

    .line 1015
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v5, v0

    move-wide/from16 v18, v0

    .local v18, "ns":J
    cmp-long v0, v0, v13

    if-lez v0, :cond_7

    .line 1016
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v1, v18

    .end local v18    # "ns":J
    .local v1, "ns":J
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .local v20, "ms":J
    cmp-long v0, v18, v13

    if-lez v0, :cond_6

    sget-object v0, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v4, 0x10000

    or-int v22, v17, v4

    .line 1017
    move-wide/from16 v23, v1

    .end local v1    # "ns":J
    .local v23, "ns":J
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    .end local v3    # "t":Ljava/lang/Thread;
    .local v25, "t":Ljava/lang/Thread;
    move-wide/from16 v3, v18

    move-wide/from16 v18, v5

    .end local v5    # "deadline":J
    .local v18, "deadline":J
    move/from16 v5, v17

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1018
    monitor-enter p0

    .line 1019
    :try_start_0
    iget v0, v7, Ljava9/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_4

    .line 1020
    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .local v1, "ms":J
    :try_start_1
    invoke-virtual {v7, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_3

    .line 1022
    .end local v1    # "ms":J
    .restart local v20    # "ms":J
    :cond_4
    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .restart local v1    # "ms":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1023
    :goto_3
    monitor-exit p0

    goto :goto_5

    .end local v1    # "ms":J
    .restart local v20    # "ms":J
    :catchall_0
    move-exception v0

    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .restart local v1    # "ms":J
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1017
    .end local v1    # "ms":J
    .restart local v20    # "ms":J
    :cond_5
    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .restart local v1    # "ms":J
    goto :goto_5

    .line 1016
    .end local v18    # "deadline":J
    .end local v23    # "ns":J
    .end local v25    # "t":Ljava/lang/Thread;
    .local v1, "ns":J
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    .restart local v20    # "ms":J
    :cond_6
    move-wide/from16 v23, v1

    move-object/from16 v25, v3

    move-wide/from16 v18, v5

    move-wide/from16 v1, v20

    .line 1014
    .end local v1    # "ns":J
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .end local v20    # "ms":J
    .restart local v18    # "deadline":J
    .restart local v25    # "t":Ljava/lang/Thread;
    :goto_5
    move/from16 v1, v17

    move-wide/from16 v5, v18

    move-object/from16 v3, v25

    goto :goto_2

    .line 1015
    .end local v25    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    .local v18, "ns":J
    :cond_7
    move-object/from16 v25, v3

    move-wide/from16 v23, v18

    move-wide/from16 v18, v5

    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .local v18, "deadline":J
    .restart local v23    # "ns":J
    .restart local v25    # "t":Ljava/lang/Thread;
    goto :goto_6

    .line 1014
    .end local v18    # "deadline":J
    .end local v23    # "ns":J
    .end local v25    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    :cond_8
    move-object/from16 v25, v3

    move-wide/from16 v18, v5

    .line 1028
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .end local v15    # "d":J
    :goto_6
    move/from16 v1, v17

    goto :goto_7

    .line 1012
    .end local v17    # "s":I
    .local v1, "s":I
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    .restart local v15    # "d":J
    :cond_9
    move-object/from16 v25, v3

    move-wide/from16 v18, v5

    .line 1028
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .end local v15    # "d":J
    :cond_a
    :goto_7
    if-ltz v1, :cond_b

    .line 1029
    iget v1, v7, Ljava9/util/concurrent/ForkJoinTask;->status:I

    .line 1030
    :cond_b
    const/high16 v0, -0x10000000

    and-int v2, v1, v0

    move v1, v2

    if-eq v2, v0, :cond_e

    .line 1031
    const/high16 v0, -0x40000000    # -2.0f

    if-eq v1, v0, :cond_d

    .line 1033
    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_c

    .line 1034
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 1035
    :cond_c
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1032
    :cond_d
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 1037
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 999
    .end local v1    # "s":I
    :cond_f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .line 898
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    .line 899
    .local v0, "s":I
    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    .line 901
    :cond_1
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .line 1297
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 479
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method final internalWait(J)V
    .locals 8
    .param p1, "timeout"    # J

    .line 281
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v7, v0

    .local v7, "s":I
    if-ltz v0, :cond_1

    sget-object v1, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v6, v7, v0

    .line 282
    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    .line 285
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 287
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 288
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 290
    :cond_1
    :goto_1
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 705
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    move v2, v0

    .local v2, "s":I
    if-eq v0, v1, :cond_0

    .line 706
    invoke-direct {p0, v2}, Ljava9/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 707
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 867
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .line 876
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .line 887
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 863
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 690
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    move v2, v0

    .local v2, "s":I
    if-eq v0, v1, :cond_0

    .line 691
    invoke-direct {p0, v2}, Ljava9/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 692
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final quietlyComplete()V
    .locals 1

    .line 956
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 957
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .line 1056
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->doInvoke()I

    .line 1057
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .line 1047
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->doJoin()I

    .line 1048
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 9
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 438
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_2

    .line 439
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 440
    .local v0, "h":I
    sget-object v2, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 441
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 443
    :try_start_0
    invoke-static {}, Ljava9/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 444
    sget-object v3, Ljava9/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 445
    .local v3, "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v0

    .line 446
    .local v4, "i":I
    aget-object v5, v3, v4

    .line 447
    .local v5, "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v5, :cond_0

    .line 448
    new-instance v6, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v7, v3, v4

    sget-object v8, Ljava9/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v6, p0, p1, v7, v8}, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava9/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V

    aput-object v6, v3, v4

    .line 450
    goto :goto_1

    .line 452
    :cond_0
    invoke-virtual {v5}, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, p0, :cond_1

    .line 453
    nop

    .line 456
    .end local v3    # "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "i":I
    .end local v5    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    nop

    .line 458
    const/high16 v3, -0x80000000

    invoke-direct {p0, v3}, Ljava9/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v1

    goto :goto_2

    .line 446
    .restart local v3    # "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v4    # "i":I
    .restart local v5    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iget-object v6, v5, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 456
    .end local v3    # "t":[Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "i":I
    .end local v5    # "e":Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 460
    .end local v0    # "h":I
    .end local v2    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2
    :goto_2
    return v1
.end method

.method public reinitialize()V
    .locals 2

    .line 1093
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1094
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    goto :goto_0

    .line 1096
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    .line 1097
    :goto_0
    return-void
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 7
    .param p1, "newValue"    # S

    .line 1309
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    :goto_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinTask;->STATUS:J

    iget v4, p0, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v6, v4

    .local v6, "s":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v6

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    int-to-short v0, v6

    return v0

    .line 1309
    :cond_0
    goto :goto_0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public tryUnfork()Z
    .locals 2

    .line 1138
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1139
    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    .line 1140
    invoke-virtual {v0, p0}, Ljava9/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    :goto_0
    return v0
.end method
