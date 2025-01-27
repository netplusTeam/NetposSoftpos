.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableGroupBy.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field outputFused:Z

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field produced:I

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 502
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p2, "parent":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<*TK;TT;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 487
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 492
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 494
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 496
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 503
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 504
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    .line 505
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->key:Ljava/lang/Object;

    .line 506
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    .line 507
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 519
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 523
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLorg/reactivestreams/Subscriber;ZJ)Z
    .locals 4
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .param p5, "emitted"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;ZJ)Z"
        }
    .end annotation

    .line 662
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 664
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    const-wide/16 v2, 0x1

    add-long/2addr p5, v2

    goto :goto_0

    .line 667
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p5, p6}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 670
    :cond_1
    return v1

    .line 673
    :cond_2
    if-eqz p1, :cond_6

    .line 674
    if-eqz p4, :cond_4

    .line 675
    if-eqz p2, :cond_6

    .line 676
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 677
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 678
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 680
    :cond_3
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 682
    :goto_1
    return v1

    .line 685
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 686
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 687
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 688
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 689
    return v1

    .line 691
    :cond_5
    if-eqz p2, :cond_6

    .line 692
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 693
    return v1

    .line 698
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 742
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 743
    .local v0, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 744
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->tryReplenish()V

    .line 747
    return-void
.end method

.method drain()V
    .locals 1

    .line 553
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->outputFused:Z

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drainFused()V

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drainNormal()V

    .line 561
    :goto_0
    return-void
.end method

.method drainFused()V
    .locals 5

    .line 564
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    .line 566
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 567
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscriber;

    .line 570
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    if-eqz v2, :cond_3

    .line 571
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    return-void

    .line 575
    :cond_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 577
    .local v3, "d":Z
    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    if-nez v4, :cond_1

    .line 578
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 579
    .local v4, "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_1

    .line 580
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 581
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 582
    return-void

    .line 586
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 588
    if-eqz v3, :cond_3

    .line 589
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 590
    .restart local v4    # "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_2

    .line 591
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 593
    :cond_2
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 595
    :goto_1
    return-void

    .line 599
    .end local v3    # "d":Z
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_3
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->addAndGet(I)I

    move-result v0

    .line 600
    if-nez v0, :cond_4

    .line 601
    return-void

    .line 604
    :cond_4
    if-nez v2, :cond_5

    .line 605
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/reactivestreams/Subscriber;

    goto :goto_0

    .line 604
    :cond_5
    goto :goto_0
.end method

.method drainNormal()V
    .locals 19

    .line 611
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    move-object/from16 v7, p0

    const/4 v0, 0x1

    .line 613
    .local v0, "missed":I
    iget-object v8, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 614
    .local v8, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-boolean v9, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    .line 615
    .local v9, "delayError":Z
    iget-object v1, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscriber;

    move v10, v0

    move-object v11, v1

    .line 617
    .end local v0    # "missed":I
    .local v10, "missed":I
    .local v11, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    if-eqz v11, :cond_6

    .line 618
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 619
    .local v12, "r":J
    const-wide/16 v0, 0x0

    move-wide v14, v0

    .line 621
    .local v14, "e":J
    :goto_1
    cmp-long v0, v14, v12

    if-eqz v0, :cond_3

    .line 622
    iget-boolean v5, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 623
    .local v5, "d":Z
    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 624
    .local v6, "v":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    move/from16 v16, v0

    .line 626
    .local v16, "empty":Z
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v16

    move-object v3, v11

    move v4, v9

    move/from16 v17, v5

    move/from16 v18, v10

    move-object v10, v6

    .end local v5    # "d":Z
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    .local v10, "v":Ljava/lang/Object;, "TT;"
    .local v17, "d":Z
    .local v18, "missed":I
    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    return-void

    .line 630
    :cond_1
    if-eqz v16, :cond_2

    .line 631
    goto :goto_3

    .line 634
    :cond_2
    invoke-interface {v11, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 636
    const-wide/16 v0, 0x1

    add-long/2addr v14, v0

    .line 637
    .end local v10    # "v":Ljava/lang/Object;, "TT;"
    .end local v16    # "empty":Z
    .end local v17    # "d":Z
    move/from16 v10, v18

    goto :goto_1

    .line 621
    .end local v18    # "missed":I
    .local v10, "missed":I
    :cond_3
    move/from16 v18, v10

    .line 639
    .end local v10    # "missed":I
    .restart local v18    # "missed":I
    :goto_3
    cmp-long v0, v14, v12

    if-nez v0, :cond_4

    iget-boolean v1, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v2

    move-object/from16 v0, p0

    move-object v3, v11

    move v4, v9

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    return-void

    .line 643
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-eqz v0, :cond_7

    .line 644
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v12, v0

    if-eqz v0, :cond_5

    .line 645
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 647
    :cond_5
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, v14, v15}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_4

    .line 617
    .end local v12    # "r":J
    .end local v14    # "e":J
    .end local v18    # "missed":I
    .restart local v10    # "missed":I
    :cond_6
    move/from16 v18, v10

    .line 651
    .end local v10    # "missed":I
    .restart local v18    # "missed":I
    :cond_7
    :goto_4
    move/from16 v0, v18

    .end local v18    # "missed":I
    .restart local v0    # "missed":I
    neg-int v1, v0

    invoke-virtual {v7, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->addAndGet(I)I

    move-result v10

    .line 652
    .end local v0    # "missed":I
    .restart local v10    # "missed":I
    if-nez v10, :cond_8

    .line 653
    nop

    .line 659
    return-void

    .line 655
    :cond_8
    if-nez v11, :cond_9

    .line 656
    iget-object v0, v7, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/reactivestreams/Subscriber;

    goto/16 :goto_0

    .line 655
    :cond_9
    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .line 724
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->tryReplenish()V

    .line 726
    const/4 v0, 0x1

    return v0

    .line 728
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 548
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 549
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 550
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 542
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 544
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 545
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 537
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 539
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 713
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 714
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 715
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    .line 716
    return-object v0

    .line 718
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->tryReplenish()V

    .line 719
    const/4 v1, 0x0

    return-object v1
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 511
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 513
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 515
    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 703
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->outputFused:Z

    .line 705
    const/4 v0, 0x2

    return v0

    .line 707
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 527
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 529
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    goto :goto_0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 534
    :goto_0
    return-void
.end method

.method tryReplenish()V
    .locals 4

    .line 732
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    .line 733
    .local v0, "p":I
    if-eqz v0, :cond_0

    .line 734
    const/4 v1, 0x0

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    .line 735
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 737
    :cond_0
    return-void
.end method
