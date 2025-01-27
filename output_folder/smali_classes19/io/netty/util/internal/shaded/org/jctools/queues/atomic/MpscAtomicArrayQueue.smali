.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;
.source "MpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 174
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;-><init>(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 171
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;->clear()V

    return-void
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 469
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 11
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 403
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_4

    .line 405
    if-ltz p2, :cond_3

    .line 407
    if-nez p2, :cond_0

    .line 408
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 410
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 411
    .local v1, "mask":I
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 412
    .local v2, "cIndex":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 413
    int-to-long v5, v4

    add-long/2addr v5, v2

    .line 414
    .local v5, "index":J
    int-to-long v7, v1

    invoke-static {v5, v6, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v7

    .line 415
    .local v7, "offset":I
    invoke-static {v0, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v8

    .line 416
    .local v8, "e":Ljava/lang/Object;, "TE;"
    if-nez v8, :cond_1

    .line 417
    return v4

    .line 419
    :cond_1
    const/4 v9, 0x0

    invoke-static {v0, v7, v9}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 421
    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    invoke-virtual {p0, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 422
    invoke-interface {p1, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 412
    .end local v5    # "index":J
    .end local v7    # "offset":I
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    .end local v4    # "i":I
    :cond_2
    return p2

    .line 406
    .end local v0    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "mask":I
    .end local v2    # "cIndex":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "w"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 479
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 480
    return-void
.end method

.method public final failFastOffer(Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 274
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 277
    iget v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 278
    .local v0, "mask":I
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    .line 279
    .local v1, "capacity":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 280
    .local v3, "pIndex":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v5

    .line 281
    .local v5, "producerLimit":J
    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 282
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v7

    .line 283
    .local v7, "cIndex":J
    add-long v5, v7, v1

    .line 284
    cmp-long v9, v3, v5

    if-ltz v9, :cond_0

    .line 286
    const/4 v9, 0x1

    return v9

    .line 289
    :cond_0
    invoke-virtual {p0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    .line 293
    .end local v7    # "cIndex":J
    :cond_1
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-virtual {p0, v3, v4, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 295
    const/4 v7, -0x1

    return v7

    .line 298
    :cond_2
    int-to-long v7, v0

    invoke-static {v3, v4, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v7

    .line 299
    .local v7, "offset":I
    iget-object v8, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v8, v7, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 301
    const/4 v8, 0x0

    return v8

    .line 275
    .end local v0    # "mask":I
    .end local v1    # "capacity":J
    .end local v3    # "pIndex":J
    .end local v5    # "producerLimit":J
    .end local v7    # "offset":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 474
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillBounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result v0

    return v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 17
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 429
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz p1, :cond_6

    .line 431
    if-ltz v1, :cond_5

    .line 433
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 434
    return v2

    .line 435
    :cond_0
    iget v3, v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 436
    .local v3, "mask":I
    add-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    .line 437
    .local v4, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v6

    .line 439
    .local v6, "producerLimit":J
    const/4 v8, 0x0

    .line 441
    .local v8, "actualLimit":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v9

    .line 442
    .local v9, "pIndex":J
    sub-long v11, v6, v9

    .line 443
    .local v11, "available":J
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-gtz v15, :cond_3

    .line 444
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v15

    .line 445
    .local v15, "cIndex":J
    add-long v6, v15, v4

    .line 446
    sub-long v11, v6, v9

    .line 447
    cmp-long v13, v11, v13

    if-gtz v13, :cond_2

    .line 449
    return v2

    .line 452
    :cond_2
    invoke-virtual {v0, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    .line 455
    .end local v15    # "cIndex":J
    :cond_3
    long-to-int v13, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 456
    .end local v11    # "available":J
    int-to-long v11, v8

    add-long/2addr v11, v9

    invoke-virtual {v0, v9, v10, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 458
    iget-object v2, v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 459
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_4

    .line 461
    int-to-long v12, v11

    add-long/2addr v12, v9

    int-to-long v14, v3

    invoke-static {v12, v13, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v12

    .line 462
    .local v12, "offset":I
    invoke-interface/range {p1 .. p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 459
    .end local v12    # "offset":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 464
    .end local v11    # "i":I
    :cond_4
    return v8

    .line 432
    .end local v2    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v3    # "mask":I
    .end local v4    # "capacity":J
    .end local v6    # "producerLimit":J
    .end local v8    # "actualLimit":I
    .end local v9    # "pIndex":J
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limit is negative:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supplier is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 484
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 485
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 234
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 238
    iget v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 239
    .local v0, "mask":I
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v1

    .line 242
    .local v1, "producerLimit":J
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 243
    .local v3, "pIndex":J
    cmp-long v5, v3, v1

    const-wide/16 v6, 0x1

    if-ltz v5, :cond_2

    .line 244
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    .line 245
    .local v8, "cIndex":J
    int-to-long v10, v0

    add-long/2addr v10, v8

    add-long/2addr v10, v6

    .line 246
    .end local v1    # "producerLimit":J
    .local v10, "producerLimit":J
    cmp-long v1, v3, v10

    if-ltz v1, :cond_1

    .line 248
    const/4 v1, 0x0

    return v1

    .line 252
    :cond_1
    invoke-virtual {p0, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    move-wide v1, v10

    .line 255
    .end local v8    # "cIndex":J
    .end local v10    # "producerLimit":J
    .restart local v1    # "producerLimit":J
    :cond_2
    add-long/2addr v6, v3

    invoke-virtual {p0, v3, v4, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v5

    .line 262
    .local v5, "offset":I
    iget-object v6, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v6, v5, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 264
    const/4 v6, 0x1

    return v6

    .line 235
    .end local v0    # "mask":I
    .end local v1    # "producerLimit":J
    .end local v3    # "pIndex":J
    .end local v5    # "offset":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public offerIfBelowThreshold(Ljava/lang/Object;I)Z
    .locals 18
    .param p2, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 186
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_3

    .line 189
    iget v3, v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 190
    .local v3, "mask":I
    add-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    .line 191
    .local v4, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v6

    .line 194
    .local v6, "producerLimit":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    .line 195
    .local v8, "pIndex":J
    sub-long v10, v6, v8

    .line 196
    .local v10, "available":J
    sub-long v12, v4, v10

    .line 197
    .local v12, "size":J
    int-to-long v14, v2

    cmp-long v14, v12, v14

    if-ltz v14, :cond_2

    .line 198
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v14

    .line 199
    .local v14, "cIndex":J
    sub-long v12, v8, v14

    .line 200
    move-wide/from16 v16, v6

    .end local v6    # "producerLimit":J
    .local v16, "producerLimit":J
    int-to-long v6, v2

    cmp-long v6, v12, v6

    if-ltz v6, :cond_1

    .line 202
    const/4 v6, 0x0

    return v6

    .line 205
    :cond_1
    add-long v6, v14, v4

    .line 207
    .end local v16    # "producerLimit":J
    .restart local v6    # "producerLimit":J
    invoke-virtual {v0, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    goto :goto_0

    .line 197
    .end local v14    # "cIndex":J
    :cond_2
    move-wide/from16 v16, v6

    .line 210
    .end local v10    # "available":J
    .end local v12    # "size":J
    :goto_0
    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    invoke-virtual {v0, v8, v9, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 216
    int-to-long v10, v3

    invoke-static {v8, v9, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v10

    .line 217
    .local v10, "offset":I
    iget-object v11, v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v11, v10, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 219
    const/4 v11, 0x1

    return v11

    .line 187
    .end local v3    # "mask":I
    .end local v4    # "capacity":J
    .end local v6    # "producerLimit":J
    .end local v8    # "pIndex":J
    .end local v10    # "offset":I
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 353
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 354
    .local v1, "cIndex":J
    iget v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v3

    .line 355
    .local v3, "offset":I
    invoke-static {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 356
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-nez v4, :cond_2

    .line 362
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1

    .line 364
    :cond_0
    invoke-static {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 365
    if-eqz v4, :cond_0

    goto :goto_0

    .line 367
    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 370
    :cond_2
    :goto_0
    return-object v4
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v0

    .line 316
    .local v0, "cIndex":J
    iget v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v2

    .line 318
    .local v2, "offset":I
    iget-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 320
    .local v3, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {v3, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 321
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 327
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    .line 329
    :cond_0
    invoke-static {v3, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_0

    goto :goto_0

    .line 332
    :cond_1
    return-object v5

    .line 335
    :cond_2
    :goto_0
    invoke-static {v3, v2, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 336
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 337
    return-object v4
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 375
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 396
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 397
    .local v1, "mask":I
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 398
    .local v2, "cIndex":J
    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v4

    invoke-static {v0, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 381
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 382
    .local v1, "cIndex":J
    iget v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v3

    .line 384
    .local v3, "offset":I
    invoke-static {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 385
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 386
    return-object v5

    .line 388
    :cond_0
    invoke-static {v0, v3, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 389
    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 390
    return-object v4
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 171
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakOffer(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;->failFastOffer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
