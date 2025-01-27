.class public Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;
.source "MpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 176
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;-><init>(I)V

    .line 177
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 173
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;->clear()V

    return-void
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 11
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 442
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 443
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 444
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 445
    .local v2, "cIndex":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 446
    int-to-long v5, v4

    add-long/2addr v5, v2

    .line 447
    .local v5, "index":J
    invoke-virtual {p0, v5, v6, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v7

    .line 449
    .local v7, "offset":I
    invoke-static {v0, v7}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v8

    .line 450
    .local v8, "e":Ljava/lang/Object;, "TE;"
    if-nez v8, :cond_0

    .line 451
    return v4

    .line 453
    :cond_0
    const/4 v9, 0x0

    invoke-static {v0, v7, v9}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 455
    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    invoke-virtual {p0, v9, v10}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 456
    invoke-interface {p1, v8}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 445
    .end local v5    # "index":J
    .end local v7    # "offset":I
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 458
    .end local v4    # "i":I
    :cond_1
    return p2
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 10
    .param p2, "w"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lorg/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lorg/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 501
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 502
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 503
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 504
    .local v2, "cIndex":J
    const/4 v4, 0x0

    .line 505
    .local v4, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 506
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x1000

    if-ge v5, v6, :cond_1

    .line 507
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    .line 509
    .local v6, "offset":I
    invoke-static {v0, v6}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v7

    .line 510
    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-nez v7, :cond_0

    .line 511
    invoke-interface {p2, v4}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v4

    .line 512
    goto :goto_2

    .line 514
    :cond_0
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 515
    const/4 v4, 0x0

    .line 516
    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 518
    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 519
    invoke-interface {p1, v7}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 506
    .end local v6    # "offset":I
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 522
    :cond_2
    return-void
.end method

.method public final failFastOffer(Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 287
    iget v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 288
    .local v0, "mask":I
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    .line 290
    .local v1, "capacity":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 292
    .local v3, "pIndex":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v5

    .line 293
    .local v5, "producerLimit":J
    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 295
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v7

    .line 296
    .local v7, "cIndex":J
    add-long v5, v7, v1

    .line 297
    cmp-long v9, v3, v5

    if-ltz v9, :cond_0

    .line 299
    const/4 v9, 0x1

    return v9

    .line 303
    :cond_0
    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    .line 307
    .end local v7    # "cIndex":J
    :cond_1
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-virtual {p0, v3, v4, v7, v8}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 309
    const/4 v7, -0x1

    return v7

    .line 312
    :cond_2
    invoke-virtual {p0, v3, v4, v0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v7

    .line 313
    .local v7, "offset":I
    iget-object v8, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v8, v7, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 315
    const/4 v8, 0x0

    return v8

    .line 285
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

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 429
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->capacity()I

    move-result v2

    .line 431
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 432
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 433
    long-to-int v4, v0

    return v4

    .line 435
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 436
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 437
    long-to-int v3, v0

    return v3

    .line 436
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 15
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 463
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object v0, p0

    iget v1, v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 464
    .local v1, "mask":I
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    .line 466
    .local v2, "capacity":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v4

    .line 468
    .local v4, "producerLimit":J
    const/4 v6, 0x0

    .line 471
    .local v6, "actualLimit":I
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    .line 472
    .local v7, "pIndex":J
    sub-long v9, v4, v7

    .line 473
    .local v9, "available":J
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gtz v13, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v13

    .line 476
    .local v13, "cIndex":J
    add-long v4, v13, v2

    .line 477
    sub-long v9, v4, v7

    .line 478
    cmp-long v11, v9, v11

    if-gtz v11, :cond_0

    .line 480
    const/4 v11, 0x0

    return v11

    .line 484
    :cond_0
    invoke-virtual {p0, v4, v5}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    .line 487
    .end local v13    # "cIndex":J
    :cond_1
    long-to-int v11, v9

    move/from16 v12, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 488
    .end local v9    # "available":J
    int-to-long v9, v6

    add-long/2addr v9, v7

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 490
    iget-object v9, v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 491
    .local v9, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_2

    .line 493
    int-to-long v13, v10

    add-long/2addr v13, v7

    invoke-virtual {p0, v13, v14, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v11

    .line 494
    .local v11, "offset":I
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v11, v13}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 491
    .end local v11    # "offset":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 496
    .end local v10    # "i":I
    :cond_2
    return v6

    .line 488
    .end local v9    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "w"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lorg/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lorg/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 526
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const/4 v0, 0x0

    .line 527
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 529
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 530
    goto :goto_0

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :cond_1
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 173
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 244
    iget v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 246
    .local v0, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v1

    .line 250
    .local v1, "producerLimit":J
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 251
    .local v3, "pIndex":J
    cmp-long v5, v3, v1

    const-wide/16 v6, 0x1

    if-ltz v5, :cond_2

    .line 253
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    .line 254
    .local v8, "cIndex":J
    int-to-long v10, v0

    add-long/2addr v10, v8

    add-long/2addr v10, v6

    .line 255
    .end local v1    # "producerLimit":J
    .local v10, "producerLimit":J
    cmp-long v1, v3, v10

    if-ltz v1, :cond_1

    .line 257
    const/4 v1, 0x0

    return v1

    .line 261
    :cond_1
    invoke-virtual {p0, v10, v11}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    move-wide v1, v10

    .line 264
    .end local v8    # "cIndex":J
    .end local v10    # "producerLimit":J
    .restart local v1    # "producerLimit":J
    :cond_2
    add-long/2addr v6, v3

    invoke-virtual {p0, v3, v4, v6, v7}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    invoke-virtual {p0, v3, v4, v0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v5

    .line 272
    .local v5, "offset":I
    iget-object v6, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v6, v5, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 274
    const/4 v6, 0x1

    return v6

    .line 241
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

    .line 188
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_3

    .line 191
    iget v3, v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 192
    .local v3, "mask":I
    add-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    .line 194
    .local v4, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v6

    .line 198
    .local v6, "producerLimit":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    .line 199
    .local v8, "pIndex":J
    sub-long v10, v6, v8

    .line 200
    .local v10, "available":J
    sub-long v12, v4, v10

    .line 201
    .local v12, "size":J
    int-to-long v14, v2

    cmp-long v14, v12, v14

    if-ltz v14, :cond_2

    .line 203
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v14

    .line 204
    .local v14, "cIndex":J
    sub-long v12, v8, v14

    .line 205
    move-wide/from16 v16, v6

    .end local v6    # "producerLimit":J
    .local v16, "producerLimit":J
    int-to-long v6, v2

    cmp-long v6, v12, v6

    if-ltz v6, :cond_1

    .line 207
    const/4 v6, 0x0

    return v6

    .line 210
    :cond_1
    add-long v6, v14, v4

    .line 212
    .end local v16    # "producerLimit":J
    .restart local v6    # "producerLimit":J
    invoke-virtual {v0, v6, v7}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soProducerLimit(J)V

    goto :goto_0

    .line 201
    .end local v14    # "cIndex":J
    :cond_2
    move-wide/from16 v16, v6

    .line 215
    .end local v10    # "available":J
    .end local v12    # "size":J
    :goto_0
    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 221
    invoke-virtual {v0, v8, v9, v3}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v10

    .line 223
    .local v10, "offset":I
    iget-object v11, v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v11, v10, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 225
    const/4 v11, 0x1

    return v11

    .line 189
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

    .line 368
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 370
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 371
    .local v1, "cIndex":J
    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v3

    .line 372
    .local v3, "offset":I
    invoke-static {v0, v3}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 373
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-nez v4, :cond_2

    .line 379
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1

    .line 381
    :cond_0
    invoke-static {v0, v3}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 382
    if-eqz v4, :cond_0

    goto :goto_0

    .line 384
    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 387
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

    .line 329
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v0

    .line 330
    .local v0, "cIndex":J
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v2

    .line 332
    .local v2, "offset":I
    iget-object v3, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 335
    .local v3, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {v3, v2}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 336
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 342
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    .line 344
    :cond_0
    invoke-static {v3, v2}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 345
    if-eqz v4, :cond_0

    goto :goto_0

    .line 347
    :cond_1
    return-object v5

    .line 350
    :cond_2
    :goto_0
    invoke-static {v3, v2, v5}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 352
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 353
    return-object v4
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 415
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->mask:I

    .line 416
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v2

    .line 417
    .local v2, "cIndex":J
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    invoke-static {v0, v4}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

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

    .line 397
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 398
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 399
    .local v1, "cIndex":J
    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v3

    .line 402
    .local v3, "offset":I
    invoke-static {v0, v3}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 403
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 404
    return-object v5

    .line 406
    :cond_0
    invoke-static {v0, v3, v5}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 408
    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 409
    return-object v4
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 173
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;->toString()Ljava/lang/String;

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

    .line 541
    .local p0, "this":Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;->failFastOffer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
