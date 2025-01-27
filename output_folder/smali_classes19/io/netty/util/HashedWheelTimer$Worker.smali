.class final Lio/netty/util/HashedWheelTimer$Worker;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/HashedWheelTimer;

.field private tick:J

.field private final unprocessedTimeouts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/Timeout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/netty/util/HashedWheelTimer;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$Worker;->unprocessedTimeouts:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/HashedWheelTimer;Lio/netty/util/HashedWheelTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/HashedWheelTimer;
    .param p2, "x1"    # Lio/netty/util/HashedWheelTimer$1;

    .line 447
    invoke-direct {p0, p1}, Lio/netty/util/HashedWheelTimer$Worker;-><init>(Lio/netty/util/HashedWheelTimer;)V

    return-void
.end method

.method private processCancelledTasks()V
    .locals 4

    .line 520
    :goto_0
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lio/netty/util/HashedWheelTimer;->access$1000(Lio/netty/util/HashedWheelTimer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 521
    .local v0, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v0, :cond_0

    .line 523
    nop

    .line 533
    .end local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    return-void

    .line 526
    .restart local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    goto :goto_1

    .line 527
    :catchall_0
    move-exception v1

    .line 528
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/util/HashedWheelTimer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    sget-object v2, Lio/netty/util/HashedWheelTimer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "An exception was thrown while process a cancellation task"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    .end local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    goto :goto_0
.end method

.method private transferTimeoutsToBuckets()V
    .locals 8

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const v1, 0x186a0

    if-ge v0, v1, :cond_2

    .line 497
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v1}, Lio/netty/util/HashedWheelTimer;->access$700(Lio/netty/util/HashedWheelTimer;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 498
    .local v1, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v1, :cond_0

    .line 500
    goto :goto_2

    .line 502
    :cond_0
    invoke-virtual {v1}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->state()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 504
    goto :goto_1

    .line 507
    :cond_1
    invoke-static {v1}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v4}, Lio/netty/util/HashedWheelTimer;->access$900(Lio/netty/util/HashedWheelTimer;)J

    move-result-wide v4

    div-long/2addr v2, v4

    .line 508
    .local v2, "calculated":J
    iget-wide v4, p0, Lio/netty/util/HashedWheelTimer$Worker;->tick:J

    sub-long v4, v2, v4

    iget-object v6, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v6}, Lio/netty/util/HashedWheelTimer;->access$500(Lio/netty/util/HashedWheelTimer;)[Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    .line 510
    iget-wide v4, p0, Lio/netty/util/HashedWheelTimer$Worker;->tick:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 511
    .local v4, "ticks":J
    iget-object v6, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v6}, Lio/netty/util/HashedWheelTimer;->access$400(Lio/netty/util/HashedWheelTimer;)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    long-to-int v6, v6

    .line 513
    .local v6, "stopIndex":I
    iget-object v7, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v7}, Lio/netty/util/HashedWheelTimer;->access$500(Lio/netty/util/HashedWheelTimer;)[Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    move-result-object v7

    aget-object v7, v7, v6

    .line 514
    .local v7, "bucket":Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
    invoke-virtual {v7, v1}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->addTimeout(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)V

    .line 496
    .end local v1    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .end local v2    # "calculated":J
    .end local v4    # "ticks":J
    .end local v6    # "stopIndex":I
    .end local v7    # "bucket":Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private waitForNextTick()J
    .locals 15

    .line 542
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lio/netty/util/HashedWheelTimer;->access$900(Lio/netty/util/HashedWheelTimer;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/util/HashedWheelTimer$Worker;->tick:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    .line 545
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v4}, Lio/netty/util/HashedWheelTimer;->access$200(Lio/netty/util/HashedWheelTimer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 546
    .local v2, "currentTime":J
    sub-long v4, v0, v2

    const-wide/32 v6, 0xf423f

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 548
    .local v4, "sleepTimeMs":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/high16 v9, -0x8000000000000000L

    if-gtz v8, :cond_1

    .line 549
    cmp-long v6, v2, v9

    if-nez v6, :cond_0

    .line 550
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v6

    .line 552
    :cond_0
    return-wide v2

    .line 561
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 562
    const-wide/16 v11, 0xa

    div-long v13, v4, v11

    mul-long v4, v13, v11

    .line 563
    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 564
    const-wide/16 v4, 0x1

    .line 569
    :cond_2
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    goto :goto_1

    .line 570
    :catch_0
    move-exception v6

    .line 571
    .local v6, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Lio/netty/util/HashedWheelTimer;->access$600()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v7

    iget-object v8, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 572
    return-wide v9

    .line 575
    .end local v2    # "currentTime":J
    .end local v4    # "sleepTimeMs":J
    .end local v6    # "ignored":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 455
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/netty/util/HashedWheelTimer;->access$202(Lio/netty/util/HashedWheelTimer;J)J

    .line 456
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lio/netty/util/HashedWheelTimer;->access$200(Lio/netty/util/HashedWheelTimer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x1

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0, v4, v5}, Lio/netty/util/HashedWheelTimer;->access$202(Lio/netty/util/HashedWheelTimer;J)J

    .line 462
    :cond_0
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lio/netty/util/HashedWheelTimer;->access$300(Lio/netty/util/HashedWheelTimer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 465
    :goto_0
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$Worker;->waitForNextTick()J

    move-result-wide v0

    .line 466
    .local v0, "deadline":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 467
    iget-wide v6, p0, Lio/netty/util/HashedWheelTimer$Worker;->tick:J

    iget-object v8, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v8}, Lio/netty/util/HashedWheelTimer;->access$400(Lio/netty/util/HashedWheelTimer;)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 468
    .local v6, "idx":I
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$Worker;->processCancelledTasks()V

    .line 469
    iget-object v7, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    .line 470
    invoke-static {v7}, Lio/netty/util/HashedWheelTimer;->access$500(Lio/netty/util/HashedWheelTimer;)[Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    move-result-object v7

    aget-object v7, v7, v6

    .line 471
    .local v7, "bucket":Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$Worker;->transferTimeoutsToBuckets()V

    .line 472
    invoke-virtual {v7, v0, v1}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->expireTimeouts(J)V

    .line 473
    iget-wide v8, p0, Lio/netty/util/HashedWheelTimer$Worker;->tick:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lio/netty/util/HashedWheelTimer$Worker;->tick:J

    .line 475
    .end local v0    # "deadline":J
    .end local v6    # "idx":I
    .end local v7    # "bucket":Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
    :cond_1
    invoke-static {}, Lio/netty/util/HashedWheelTimer;->access$600()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 478
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lio/netty/util/HashedWheelTimer;->access$500(Lio/netty/util/HashedWheelTimer;)[Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 479
    .local v3, "bucket":Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
    iget-object v4, p0, Lio/netty/util/HashedWheelTimer$Worker;->unprocessedTimeouts:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->clearTimeouts(Ljava/util/Set;)V

    .line 478
    .end local v3    # "bucket":Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    :cond_2
    :goto_2
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->this$0:Lio/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lio/netty/util/HashedWheelTimer;->access$700(Lio/netty/util/HashedWheelTimer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 483
    .local v0, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v0, :cond_3

    .line 484
    nop

    .line 490
    .end local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$Worker;->processCancelledTasks()V

    .line 491
    return-void

    .line 486
    .restart local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :cond_3
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 487
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$Worker;->unprocessedTimeouts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :cond_4
    goto :goto_2

    .line 475
    :cond_5
    goto :goto_0
.end method

.method public unprocessedTimeouts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/netty/util/Timeout;",
            ">;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$Worker;->unprocessedTimeouts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
