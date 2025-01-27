.class public abstract Ljava9/util/concurrent/CountedCompleter;
.super Ljava9/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/ForkJoinTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Ljava9/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 743
    sget-object v0, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 747
    :try_start_0
    const-class v1, Ljava9/util/concurrent/CountedCompleter;

    const-string v2, "pending"

    .line 748
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    nop

    .line 752
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .line 432
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    .line 434
    return-void
.end method

.method protected constructor <init>(Ljava9/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 424
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    .line 425
    iput-object p1, p0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    .line 426
    return-void
.end method

.method protected constructor <init>(Ljava9/util/concurrent/CountedCompleter;I)V
    .locals 0
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)V"
        }
    .end annotation

    .line 413
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    .line 414
    iput-object p1, p0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    .line 415
    iput p2, p0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    .line 416
    return-void
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 7
    .param p1, "delta"    # I

    .line 513
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    :goto_0
    sget-object v0, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CountedCompleter;->PENDING:J

    iget v4, p0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    move v6, v4

    .local v6, "c":I
    add-int v5, v6, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    return-void

    .line 513
    :cond_0
    goto :goto_0
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .line 525
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 619
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "rawResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 620
    invoke-virtual {p0, p0}, Ljava9/util/concurrent/CountedCompleter;->onCompletion(Ljava9/util/concurrent/CountedCompleter;)V

    .line 621
    invoke-virtual {p0}, Ljava9/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 622
    iget-object v0, p0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v1, v0

    .local v1, "p":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v1}, Ljava9/util/concurrent/CountedCompleter;->tryComplete()V

    .line 624
    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 8

    .line 536
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v0, p0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    move v7, v0

    .local v7, "c":I
    if-eqz v0, :cond_1

    sget-object v1, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v6, v7, -0x1

    .line 537
    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :cond_1
    return v7
.end method

.method protected final exec()Z
    .locals 1

    .line 718
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CountedCompleter;->compute()V

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Ljava9/util/concurrent/CountedCompleter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 636
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    :goto_0
    iget v0, p0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    move v7, v0

    .local v7, "c":I
    if-nez v0, :cond_0

    .line 637
    return-object p0

    .line 638
    :cond_0
    sget-object v1, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v6, v7, -0x1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    const/4 v0, 0x0

    return-object v0

    .line 638
    :cond_1
    goto :goto_0
.end method

.method public final getCompleter()Ljava9/util/concurrent/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    .line 494
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    iget v0, p0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 731
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Ljava9/util/concurrent/CountedCompleter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 549
    .local v0, "a":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v2, v1

    .local v2, "p":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    if-eqz v1, :cond_0

    .line 550
    move-object v0, v2

    goto :goto_0

    .line 551
    :cond_0
    return-object v0
.end method

.method public final helpComplete(I)V
    .locals 4
    .param p1, "maxTasks"    # I

    .line 694
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    if-lez p1, :cond_1

    iget v0, p0, Ljava9/util/concurrent/CountedCompleter;->status:I

    if-ltz v0, :cond_1

    .line 695
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 696
    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    iget-object v3, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 697
    invoke-virtual {v0, v3, p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->helpComplete(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/CountedCompleter;I)I

    goto :goto_0

    .line 699
    .end local v2    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava9/util/concurrent/CountedCompleter;I)I

    .line 701
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    :goto_0
    return-void
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 707
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 708
    .local v1, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava9/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava9/util/concurrent/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    iget-object v2, v0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-eqz v2, :cond_0

    iget v2, v0, Ljava9/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_0

    .line 710
    invoke-virtual {v0, p1}, Ljava9/util/concurrent/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 711
    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method public final nextComplete()Ljava9/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 662
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v1, v0

    .local v1, "p":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v1}, Ljava9/util/concurrent/CountedCompleter;->firstComplete()Ljava9/util/concurrent/CountedCompleter;

    move-result-object v0

    return-object v0

    .line 665
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCompletion(Ljava9/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 454
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "caller":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Ljava9/util/concurrent/CountedCompleter;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    .line 475
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    .local p2, "caller":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final propagateCompletion()V
    .locals 8

    .line 585
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 587
    .local v0, "a":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :cond_0
    :goto_0
    iget v1, v0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    move v7, v1

    .local v7, "c":I
    if-nez v1, :cond_1

    .line 588
    move-object v1, v0

    .local v1, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    iget-object v2, v0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-nez v2, :cond_0

    .line 589
    invoke-virtual {v1}, Ljava9/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 590
    return-void

    .line 593
    .end local v1    # "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :cond_1
    sget-object v1, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v6, v7, -0x1

    move-object v2, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    return-void

    .line 593
    :cond_2
    goto :goto_0
.end method

.method public final quietlyCompleteRoot()V
    .locals 3

    .line 674
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 675
    .local v0, "a":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v2, v1

    .local v2, "p":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_0

    .line 676
    invoke-virtual {v0}, Ljava9/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 677
    return-void

    .line 679
    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 503
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    iput p1, p0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    .line 504
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 740
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final tryComplete()V
    .locals 9

    .line 561
    .local p0, "this":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 563
    .local v1, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :cond_0
    :goto_0
    iget v2, v0, Ljava9/util/concurrent/CountedCompleter;->pending:I

    move v8, v2

    .local v8, "c":I
    if-nez v2, :cond_1

    .line 564
    invoke-virtual {v0, v1}, Ljava9/util/concurrent/CountedCompleter;->onCompletion(Ljava9/util/concurrent/CountedCompleter;)V

    .line 565
    move-object v1, v0

    iget-object v2, v0, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-nez v2, :cond_0

    .line 566
    invoke-virtual {v1}, Ljava9/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 567
    return-void

    .line 570
    :cond_1
    sget-object v2, Ljava9/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava9/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v7, v8, -0x1

    move-object v3, v0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    return-void

    .line 570
    :cond_2
    goto :goto_0
.end method
