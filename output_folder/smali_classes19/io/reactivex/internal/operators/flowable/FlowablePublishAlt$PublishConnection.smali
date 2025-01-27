.class final Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublishAlt.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishConnection"
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
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

.field private static final serialVersionUID:J = -0x17344e2bc8b53579L


# instance fields
.field final bufferSize:I

.field final connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field consumed:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

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

    .line 175
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .line 177
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 181
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 186
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 381
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .line 384
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 385
    return v2

    .line 388
    :cond_0
    array-length v1, v0

    .line 390
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .line 391
    .local v3, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    aput-object p1, v3, v1

    .line 394
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const/4 v2, 0x1

    return v2

    .line 399
    .end local v0    # "c":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method checkTerminated(ZZ)Z
    .locals 6
    .param p1, "isDone"    # Z
    .param p2, "isEmpty"    # Z

    .line 351
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 352
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    .line 354
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->signalError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 357
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 358
    .local v4, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 359
    iget-object v5, v4, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 357
    .end local v4    # "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 365
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    return v0
.end method

.method public dispose()V
    .locals 2

    .line 191
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 194
    return-void
.end method

.method drain()V
    .locals 23

    .line 260
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    .line 265
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 266
    .local v2, "queue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->consumed:I

    .line 267
    .local v3, "consumed":I
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    shr-int/lit8 v5, v4, 0x2

    sub-int/2addr v4, v5

    .line 268
    .local v4, "limit":I
    iget v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move-object/from16 v22, v2

    move v2, v0

    move v0, v3

    move-object/from16 v3, v22

    .line 272
    .local v0, "consumed":I
    .local v2, "missed":I
    .local v3, "queue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v5, "async":Z
    :goto_1
    if-eqz v3, :cond_e

    .line 273
    const-wide v8, 0x7fffffffffffffffL

    .line 274
    .local v8, "minDemand":J
    const/4 v10, 0x0

    .line 276
    .local v10, "hasDemand":Z
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .line 278
    .local v11, "innerSubscriptions":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 279
    .local v14, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    invoke-virtual {v14}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->get()J

    move-result-wide v15

    .line 280
    .local v15, "request":J
    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v17, v15, v17

    if-eqz v17, :cond_2

    .line 281
    const/4 v10, 0x1

    .line 282
    iget-wide v6, v14, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->emitted:J

    sub-long v6, v15, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v8, v6

    .line 278
    .end local v14    # "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    .end local v15    # "request":J
    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 286
    :cond_3
    if-nez v10, :cond_4

    .line 287
    const-wide/16 v8, 0x0

    move v6, v0

    goto :goto_3

    .line 286
    :cond_4
    move v6, v0

    .line 290
    .end local v0    # "consumed":I
    .local v6, "consumed":I
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-eqz v0, :cond_c

    .line 291
    iget-boolean v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    .line 295
    .local v7, "d":Z
    :try_start_0
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .local v0, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 305
    if-nez v0, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 307
    .local v12, "empty":Z
    :goto_4
    invoke-virtual {v1, v7, v12}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->checkTerminated(ZZ)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 308
    return-void

    .line 311
    :cond_6
    if-eqz v12, :cond_7

    .line 312
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 315
    :cond_7
    array-length v13, v11

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_9

    aget-object v15, v11, v14

    .line 316
    .local v15, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    invoke-virtual {v15}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    move-result v16

    if-nez v16, :cond_8

    .line 317
    move/from16 v16, v7

    .end local v7    # "d":Z
    .local v16, "d":Z
    iget-object v7, v15, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v7, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 318
    move v7, v12

    move/from16 v21, v13

    .end local v12    # "empty":Z
    .local v7, "empty":Z
    iget-wide v12, v15, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->emitted:J

    const-wide/16 v19, 0x1

    add-long v12, v12, v19

    iput-wide v12, v15, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->emitted:J

    goto :goto_6

    .line 316
    .end local v16    # "d":Z
    .local v7, "d":Z
    .restart local v12    # "empty":Z
    :cond_8
    move/from16 v16, v7

    move v7, v12

    move/from16 v21, v13

    .line 315
    .end local v12    # "empty":Z
    .end local v15    # "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    .local v7, "empty":Z
    .restart local v16    # "d":Z
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move v12, v7

    move/from16 v7, v16

    move/from16 v13, v21

    goto :goto_5

    .line 322
    .end local v16    # "d":Z
    .local v7, "d":Z
    .restart local v12    # "empty":Z
    :cond_9
    move/from16 v16, v7

    move v7, v12

    .end local v12    # "empty":Z
    .local v7, "empty":Z
    .restart local v16    # "d":Z
    if-eqz v5, :cond_a

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_a

    .line 323
    const/4 v6, 0x0

    .line 324
    iget-object v12, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/reactivestreams/Subscription;

    int-to-long v13, v4

    invoke-interface {v12, v13, v14}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 326
    :cond_a
    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    .line 328
    iget-object v12, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eq v11, v12, :cond_b

    .line 329
    move v0, v6

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 331
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v7    # "empty":Z
    .end local v16    # "d":Z
    :cond_b
    goto :goto_3

    .line 296
    .local v7, "d":Z
    :catchall_0
    move-exception v0

    move/from16 v16, v7

    move-object v7, v0

    .end local v7    # "d":Z
    .restart local v16    # "d":Z
    move-object v0, v7

    .line 297
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 298
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reactivestreams/Subscription;

    invoke-interface {v7}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 299
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 300
    const/4 v7, 0x1

    iput-boolean v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    .line 301
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->signalError(Ljava/lang/Throwable;)V

    .line 302
    return-void

    .line 290
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v16    # "d":Z
    :cond_c
    const/4 v7, 0x1

    .line 333
    :goto_7
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v12

    invoke-virtual {v1, v0, v12}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->checkTerminated(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    return-void

    .line 333
    :cond_d
    move v0, v6

    .line 338
    .end local v6    # "consumed":I
    .end local v8    # "minDemand":J
    .end local v10    # "hasDemand":Z
    .end local v11    # "innerSubscriptions":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    .local v0, "consumed":I
    :cond_e
    iput v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->consumed:I

    .line 339
    neg-int v6, v2

    invoke-virtual {v1, v6}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->addAndGet(I)I

    move-result v2

    .line 340
    if-nez v2, :cond_f

    .line 341
    nop

    .line 347
    return-void

    .line 343
    :cond_f
    if-nez v3, :cond_10

    .line 344
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    goto/16 :goto_1

    .line 343
    :cond_10
    goto/16 :goto_1
.end method

.method public isDisposed()Z
    .locals 2

    .line 198
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

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

    .line 255
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    .line 256
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    .line 257
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 244
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    .line 249
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    .line 251
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

    .line 233
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Prefetch queue is full?!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->onError(Ljava/lang/Throwable;)V

    .line 235
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    .line 240
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 203
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 206
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 208
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    .line 209
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 210
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    .line 211
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 212
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->done:Z

    .line 213
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    .line 214
    return-void

    .line 216
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 217
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->sourceMode:I

    .line 218
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 219
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 220
    return-void

    .line 224
    .end local v0    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    .end local v1    # "m":I
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 226
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 228
    :cond_2
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 407
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .line 408
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    array-length v1, v0

    .line 410
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 411
    goto :goto_4

    .line 415
    :cond_0
    const/4 v2, -0x1

    .line 416
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 417
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 418
    move v2, v3

    .line 419
    goto :goto_2

    .line 416
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 423
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 424
    return-void

    .line 430
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 431
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .local v3, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    goto :goto_3

    .line 434
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    .line 436
    .local v4, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 441
    .end local v4    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    .restart local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 442
    nop

    .line 447
    .end local v0    # "c":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :goto_4
    return-void

    .line 446
    :cond_5
    goto :goto_0
.end method

.method signalError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 370
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 371
    .local v3, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    iget-object v4, v3, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 370
    .end local v3    # "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method
