.class final Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublish.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field private static final serialVersionUID:J = -0x2cec618a478db7eL


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile terminalEvent:Ljava/lang/Object;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 158
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 186
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    .line 189
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)Z"
        }
    .end annotation

    .line 285
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 288
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 289
    return v2

    .line 292
    :cond_0
    array-length v1, v0

    .line 294
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 295
    .local v3, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    aput-object p1, v3, v1

    .line 298
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const/4 v2, 0x1

    return v2

    .line 303
    .end local v0    # "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .line 367
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 369
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 371
    if-eqz p2, :cond_4

    .line 374
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 388
    .local v4, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    iget-object v5, v4, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 387
    .end local v4    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return v3

    .line 394
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 397
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, p0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 402
    .local v2, "a":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    array-length v4, v2

    if-eqz v4, :cond_2

    .line 403
    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    .line 404
    .local v5, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    iget-object v6, v5, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v6, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 403
    .end local v5    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_2
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 410
    :cond_3
    return v3

    .line 414
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "a":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :cond_4
    return v0
.end method

.method dispatch()V
    .locals 27

    .line 425
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x1

    .line 433
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 437
    .local v2, "subscribers":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    move-object v4, v3

    move v3, v0

    .line 449
    .end local v0    # "missed":I
    .local v3, "missed":I
    .local v4, "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :cond_1
    :goto_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 456
    .local v0, "term":Ljava/lang/Object;
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 458
    .local v5, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x1

    .line 462
    .local v8, "empty":Z
    :goto_2
    invoke-virtual {v1, v0, v8}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 463
    return-void

    .line 469
    :cond_4
    if-nez v8, :cond_15

    .line 471
    array-length v9, v4

    .line 473
    .local v9, "len":I
    const-wide v10, 0x7fffffffffffffffL

    .line 475
    .local v10, "maxRequested":J
    const/4 v12, 0x0

    .line 480
    .local v12, "cancelled":I
    array-length v13, v4

    const/4 v14, 0x0

    :goto_3
    const-wide/high16 v15, -0x8000000000000000L

    if-ge v14, v13, :cond_6

    aget-object v6, v4, v14

    .line 481
    .local v6, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v17

    .line 484
    .local v17, "r":J
    cmp-long v15, v17, v15

    if-eqz v15, :cond_5

    .line 485
    move/from16 v19, v8

    .end local v8    # "empty":Z
    .local v19, "empty":Z
    iget-wide v7, v6, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    sub-long v7, v17, v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v10, v7

    .end local v10    # "maxRequested":J
    .local v7, "maxRequested":J
    goto :goto_4

    .line 487
    .end local v7    # "maxRequested":J
    .end local v19    # "empty":Z
    .restart local v8    # "empty":Z
    .restart local v10    # "maxRequested":J
    :cond_5
    move/from16 v19, v8

    .end local v8    # "empty":Z
    .restart local v19    # "empty":Z
    add-int/lit8 v12, v12, 0x1

    .line 480
    .end local v6    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v17    # "r":J
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v19

    goto :goto_3

    .line 493
    .end local v19    # "empty":Z
    .restart local v8    # "empty":Z
    :cond_6
    move/from16 v19, v8

    .end local v8    # "empty":Z
    .restart local v19    # "empty":Z
    const-wide/16 v6, 0x1

    if-ne v9, v12, :cond_9

    .line 494
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 499
    .end local v0    # "term":Ljava/lang/Object;
    .local v8, "term":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .local v0, "v":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 500
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 501
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 502
    iget-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/reactivestreams/Subscription;

    invoke-interface {v13}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 503
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    .line 504
    iput-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 505
    const/4 v13, 0x0

    move-object v0, v13

    .line 508
    .local v0, "v":Ljava/lang/Object;, "TT;"
    :goto_5
    if-nez v0, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v1, v8, v13}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 509
    return-void

    .line 512
    :cond_8
    iget v13, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    .line 513
    iget-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/reactivestreams/Subscription;

    invoke-interface {v13, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    goto/16 :goto_0

    .line 521
    .end local v8    # "term":Ljava/lang/Object;
    .local v0, "term":Ljava/lang/Object;
    :cond_9
    const/4 v8, 0x0

    .line 522
    .local v8, "d":I
    :goto_7
    int-to-long v13, v8

    cmp-long v13, v13, v10

    if-gez v13, :cond_12

    .line 523
    iget-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 527
    .end local v0    # "term":Ljava/lang/Object;
    .local v13, "term":Ljava/lang/Object;
    :try_start_1
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 534
    .local v0, "v":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 528
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 529
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 530
    iget-object v14, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/reactivestreams/Subscription;

    invoke-interface {v14}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 531
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v13

    .line 532
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 533
    const/4 v14, 0x0

    move-object v0, v14

    .line 536
    .local v0, "v":Ljava/lang/Object;, "TT;"
    :goto_8
    if-nez v0, :cond_a

    const/4 v14, 0x1

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    .line 538
    .end local v19    # "empty":Z
    .local v14, "empty":Z
    :goto_9
    invoke-virtual {v1, v13, v14}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 539
    return-void

    .line 542
    :cond_b
    if-eqz v14, :cond_c

    .line 543
    move-object/from16 v22, v5

    move/from16 v21, v12

    move-object v0, v13

    move/from16 v19, v14

    goto/16 :goto_e

    .line 546
    :cond_c
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 548
    .local v6, "value":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 551
    .local v7, "subscribersChanged":Z
    array-length v15, v4

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .local v16, "v":Ljava/lang/Object;, "TT;"
    :goto_a
    if-ge v0, v15, :cond_f

    move-object/from16 v22, v5

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v22, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    aget-object v5, v4, v0

    .line 556
    .local v5, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v23

    .line 557
    .local v23, "ipr":J
    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v21, v23, v19

    if-eqz v21, :cond_e

    .line 558
    const-wide v25, 0x7fffffffffffffffL

    cmp-long v21, v23, v25

    if-eqz v21, :cond_d

    .line 560
    move/from16 v21, v12

    move-object/from16 v25, v13

    .end local v12    # "cancelled":I
    .end local v13    # "term":Ljava/lang/Object;
    .local v21, "cancelled":I
    .local v25, "term":Ljava/lang/Object;
    iget-wide v12, v5, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    const-wide/16 v17, 0x1

    add-long v12, v12, v17

    iput-wide v12, v5, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    goto :goto_b

    .line 558
    .end local v21    # "cancelled":I
    .end local v25    # "term":Ljava/lang/Object;
    .restart local v12    # "cancelled":I
    .restart local v13    # "term":Ljava/lang/Object;
    :cond_d
    move/from16 v21, v12

    move-object/from16 v25, v13

    const-wide/16 v17, 0x1

    .line 562
    .end local v12    # "cancelled":I
    .end local v13    # "term":Ljava/lang/Object;
    .restart local v21    # "cancelled":I
    .restart local v25    # "term":Ljava/lang/Object;
    :goto_b
    iget-object v12, v5, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v12, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_c

    .line 564
    .end local v21    # "cancelled":I
    .end local v25    # "term":Ljava/lang/Object;
    .restart local v12    # "cancelled":I
    .restart local v13    # "term":Ljava/lang/Object;
    :cond_e
    move/from16 v21, v12

    move-object/from16 v25, v13

    const-wide/16 v17, 0x1

    .end local v12    # "cancelled":I
    .end local v13    # "term":Ljava/lang/Object;
    .restart local v21    # "cancelled":I
    .restart local v25    # "term":Ljava/lang/Object;
    const/4 v7, 0x1

    .line 551
    .end local v5    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v23    # "ipr":J
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v21

    move-object/from16 v5, v22

    move-object/from16 v13, v25

    goto :goto_a

    .line 568
    .end local v21    # "cancelled":I
    .end local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v25    # "term":Ljava/lang/Object;
    .local v5, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v12    # "cancelled":I
    .restart local v13    # "term":Ljava/lang/Object;
    :cond_f
    move-object/from16 v22, v5

    move/from16 v21, v12

    move-object/from16 v25, v13

    const-wide/16 v17, 0x1

    const-wide/high16 v19, -0x8000000000000000L

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v12    # "cancelled":I
    .end local v13    # "term":Ljava/lang/Object;
    .restart local v21    # "cancelled":I
    .restart local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v25    # "term":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    .line 572
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 573
    .local v0, "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    if-nez v7, :cond_11

    if-eq v0, v4, :cond_10

    goto :goto_d

    .line 585
    .end local v0    # "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "subscribersChanged":Z
    .end local v16    # "v":Ljava/lang/Object;, "TT;"
    :cond_10
    move-wide/from16 v6, v17

    move-wide/from16 v15, v19

    move/from16 v12, v21

    move-object/from16 v5, v22

    move-object/from16 v0, v25

    move/from16 v19, v14

    goto/16 :goto_7

    .line 574
    .restart local v0    # "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .restart local v6    # "value":Ljava/lang/Object;, "TT;"
    .restart local v7    # "subscribersChanged":Z
    .restart local v16    # "v":Ljava/lang/Object;, "TT;"
    :cond_11
    :goto_d
    move-object v4, v0

    .line 577
    if-eqz v8, :cond_1

    .line 578
    iget v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v12, 0x1

    if-eq v5, v12, :cond_1

    .line 579
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Subscription;

    int-to-long v12, v8

    invoke-interface {v5, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    goto/16 :goto_0

    .line 522
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "subscribersChanged":Z
    .end local v14    # "empty":Z
    .end local v16    # "v":Ljava/lang/Object;, "TT;"
    .end local v21    # "cancelled":I
    .end local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v25    # "term":Ljava/lang/Object;
    .local v0, "term":Ljava/lang/Object;
    .restart local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v12    # "cancelled":I
    .restart local v19    # "empty":Z
    :cond_12
    move-object/from16 v22, v5

    move/from16 v21, v12

    .line 588
    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v12    # "cancelled":I
    .restart local v21    # "cancelled":I
    .restart local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :goto_e
    if-eqz v8, :cond_13

    .line 589
    iget v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    .line 590
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Subscription;

    int-to-long v6, v8

    invoke-interface {v5, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 596
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-eqz v5, :cond_14

    if-nez v19, :cond_14

    .line 597
    goto/16 :goto_0

    .line 601
    .end local v8    # "d":I
    .end local v9    # "len":I
    .end local v10    # "maxRequested":J
    .end local v21    # "cancelled":I
    :cond_14
    move/from16 v8, v19

    goto :goto_f

    .line 469
    .end local v19    # "empty":Z
    .end local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v8, "empty":Z
    :cond_15
    move-object/from16 v22, v5

    move/from16 v19, v8

    .line 601
    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :goto_f
    neg-int v5, v3

    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->addAndGet(I)I

    move-result v3

    .line 602
    if-nez v3, :cond_16

    .line 603
    nop

    .line 609
    .end local v0    # "term":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    return-void

    .line 607
    .restart local v0    # "term":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 608
    .end local v0    # "term":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v22    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 3

    .line 193
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 196
    .local v0, "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    if-eq v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 201
    .end local v0    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 205
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 267
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 273
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 253
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 261
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Prefetch queue is full?!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 242
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 247
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 210
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 213
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 215
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    .line 216
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 217
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 218
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 219
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 221
    return-void

    .line 223
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 224
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 225
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 226
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 227
    return-void

    .line 231
    .end local v0    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    .end local v1    # "m":I
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 233
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 235
    :cond_2
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 316
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    array-length v1, v0

    .line 318
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 319
    goto :goto_4

    .line 323
    :cond_0
    const/4 v2, -0x1

    .line 324
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 325
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    move v2, v3

    .line 327
    goto :goto_2

    .line 324
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 332
    return-void

    .line 338
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 339
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .local v3, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    goto :goto_3

    .line 342
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 344
    .local v4, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 349
    .end local v4    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .restart local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 350
    nop

    .line 355
    .end local v0    # "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_4
    return-void

    .line 354
    :cond_5
    goto :goto_0
.end method
