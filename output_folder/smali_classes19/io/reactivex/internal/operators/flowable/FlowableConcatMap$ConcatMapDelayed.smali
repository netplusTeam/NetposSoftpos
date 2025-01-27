.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;
.super Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapDelayed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28e181349daae86aL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final veryEnd:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IZ)V
    .locals 0
    .param p3, "prefetch"    # I
    .param p4, "veryEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 390
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber;-><init>(Lio/reactivex/functions/Function;I)V

    .line 391
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    .line 392
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    .line 393
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 436
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->cancelled:Z

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->cancelled:Z

    .line 439
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->cancel()V

    .line 440
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 442
    :cond_0
    return-void
.end method

.method drain()V
    .locals 9

    .line 446
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    .line 449
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->cancelled:Z

    if-eqz v0, :cond_1

    .line 450
    return-void

    .line 453
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    if-nez v0, :cond_c

    .line 455
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->done:Z

    .line 457
    .local v0, "d":Z
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    if-nez v1, :cond_2

    .line 458
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 459
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 460
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 461
    return-void

    .line 468
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 475
    .local v1, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 477
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 479
    .local v4, "empty":Z
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 480
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    .line 481
    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 482
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 484
    :cond_4
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 486
    :goto_2
    return-void

    .line 489
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-nez v4, :cond_c

    .line 493
    :try_start_1
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v5, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The mapper returned a null Publisher"

    invoke-static {v5, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Publisher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    .local v5, "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    nop

    .line 503
    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->sourceMode:I

    if-eq v6, v3, :cond_7

    .line 504
    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->consumed:I

    add-int/2addr v6, v3

    .line 505
    .local v6, "c":I
    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->limit:I

    if-ne v6, v7, :cond_6

    .line 506
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->consumed:I

    .line 507
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v7, v6

    invoke-interface {v2, v7, v8}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3

    .line 509
    :cond_6
    iput v6, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->consumed:I

    .line 513
    .end local v6    # "c":I
    :cond_7
    :goto_3
    instance-of v2, v5, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_b

    .line 515
    move-object v2, v5

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 520
    .local v2, "supplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    .local v6, "vr":Ljava/lang/Object;, "TR;"
    goto :goto_4

    .line 521
    .end local v6    # "vr":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v6

    .line 522
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 523
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 524
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    if-nez v7, :cond_8

    .line 525
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 526
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 527
    return-void

    .line 529
    :cond_8
    const/4 v7, 0x0

    move-object v6, v7

    .line 532
    .local v6, "vr":Ljava/lang/Object;, "TR;"
    :goto_4
    if-nez v6, :cond_9

    .line 533
    goto/16 :goto_0

    .line 536
    :cond_9
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->isUnbounded()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 537
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 538
    goto/16 :goto_0

    .line 540
    :cond_a
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    .line 541
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-direct {v7, v6, v8}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;-><init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {v3, v7}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->setSubscription(Lorg/reactivestreams/Subscription;)V

    .line 543
    .end local v2    # "supplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .end local v6    # "vr":Ljava/lang/Object;, "TR;"
    goto :goto_5

    .line 544
    :cond_b
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    .line 545
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-interface {v5, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_5

    .line 494
    .end local v5    # "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    :catchall_1
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 497
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 498
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3, v2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 499
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 500
    return-void

    .line 469
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "empty":Z
    :catchall_2
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 471
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 472
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 473
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 474
    return-void

    .line 549
    .end local v0    # "d":Z
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 554
    :cond_d
    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 417
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->veryEnd:Z

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->done:Z

    .line 422
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->active:Z

    .line 423
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->drain()V

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 427
    :goto_0
    return-void
.end method

.method public innerNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 412
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 402
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->done:Z

    .line 404
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->drain()V

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 408
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 431
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->inner:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->request(J)V

    .line 432
    return-void
.end method

.method subscribeActual()V
    .locals 1

    .line 397
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 398
    return-void
.end method
