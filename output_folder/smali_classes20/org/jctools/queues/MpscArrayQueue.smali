.class public Lorg/jctools/queues/MpscArrayQueue;
.super Lorg/jctools/queues/MpscArrayQueueL3Pad;
.source "MpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 161
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/MpscArrayQueueL3Pad;-><init>(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/MpscArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 13
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 463
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 464
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    .line 466
    .local v3, "cIndex":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 468
    int-to-long v6, v5

    add-long/2addr v6, v3

    .line 469
    .local v6, "index":J
    invoke-static {v6, v7, v1, v2}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v8

    .line 470
    .local v8, "offset":J
    invoke-static {v0, v8, v9}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 471
    .local v10, "e":Ljava/lang/Object;, "TE;"
    if-nez v10, :cond_0

    .line 473
    return v5

    .line 475
    :cond_0
    const/4 v11, 0x0

    invoke-static {v0, v8, v9, v11}, Lorg/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 476
    const-wide/16 v11, 0x1

    add-long/2addr v11, v6

    invoke-virtual {p0, v11, v12}, Lorg/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 477
    invoke-interface {p1, v10}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 466
    .end local v6    # "index":J
    .end local v8    # "offset":J
    .end local v10    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v5    # "i":I
    :cond_1
    return p2
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 12
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

    .line 526
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 527
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 528
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    .line 530
    .local v3, "cIndex":J
    const/4 v5, 0x0

    .line 531
    .local v5, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 533
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_1

    .line 535
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v7

    .line 536
    .local v7, "offset":J
    invoke-static {v0, v7, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 537
    .local v9, "e":Ljava/lang/Object;, "TE;"
    if-nez v9, :cond_0

    .line 539
    invoke-interface {p2, v5}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v5

    .line 540
    goto :goto_2

    .line 542
    :cond_0
    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    .line 543
    const/4 v5, 0x0

    .line 544
    const/4 v10, 0x0

    invoke-static {v0, v7, v8, v10}, Lorg/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 545
    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 546
    invoke-interface {p1, v9}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 533
    .end local v7    # "offset":J
    .end local v9    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_1
    goto :goto_0

    .line 549
    :cond_2
    return-void
.end method

.method public final failFastOffer(Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 284
    iget-wide v0, p0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 285
    .local v0, "mask":J
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 286
    .local v4, "capacity":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    .line 287
    .local v6, "pIndex":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v8

    .line 288
    .local v8, "producerLimit":J
    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    .line 290
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    .line 291
    .local v10, "cIndex":J
    add-long v8, v10, v4

    .line 292
    cmp-long v12, v6, v8

    if-ltz v12, :cond_0

    .line 294
    const/4 v2, 0x1

    return v2

    .line 299
    :cond_0
    invoke-virtual {p0, v8, v9}, Lorg/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    .line 304
    .end local v10    # "cIndex":J
    :cond_1
    add-long/2addr v2, v6

    invoke-virtual {p0, v6, v7, v2, v3}, Lorg/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    const/4 v2, -0x1

    return v2

    .line 310
    :cond_2
    invoke-static {v6, v7, v0, v1}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v2

    .line 311
    .local v2, "offset":J
    iget-object v10, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v10, v2, v3, p1}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 312
    const/4 v10, 0x0

    return v10

    .line 282
    .end local v0    # "mask":J
    .end local v2    # "offset":J
    .end local v4    # "capacity":J
    .end local v6    # "pIndex":J
    .end local v8    # "producerLimit":J
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

    .line 444
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 445
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->capacity()I

    move-result v2

    .line 448
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/MpscArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 449
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 451
    long-to-int v4, v0

    return v4

    .line 453
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 455
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 456
    long-to-int v3, v0

    return v3

    .line 455
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 16
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 486
    .local v1, "mask":J
    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 487
    .local v3, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v5

    .line 489
    .local v5, "producerLimit":J
    const/4 v7, 0x0

    .line 492
    .local v7, "actualLimit":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    .line 493
    .local v8, "pIndex":J
    sub-long v10, v5, v8

    .line 494
    .local v10, "available":J
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-gtz v14, :cond_1

    .line 496
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v14

    .line 497
    .local v14, "cIndex":J
    add-long v5, v14, v3

    .line 498
    sub-long v10, v5, v8

    .line 499
    cmp-long v12, v10, v12

    if-gtz v12, :cond_0

    .line 501
    const/4 v12, 0x0

    return v12

    .line 506
    :cond_0
    invoke-virtual {v0, v5, v6}, Lorg/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    .line 509
    .end local v14    # "cIndex":J
    :cond_1
    long-to-int v12, v10

    move/from16 v13, p2

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 511
    .end local v10    # "available":J
    int-to-long v10, v7

    add-long/2addr v10, v8

    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 513
    iget-object v10, v0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 514
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v7, :cond_2

    .line 517
    int-to-long v14, v11

    add-long/2addr v14, v8

    invoke-static {v14, v15, v1, v2}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v14

    .line 518
    .local v14, "offset":J
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v14, v15, v12}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 514
    .end local v14    # "offset":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 520
    .end local v11    # "i":I
    :cond_2
    return v7

    .line 511
    .end local v10    # "buffer":[Ljava/lang/Object;, "[TE;"
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

    .line 554
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const/4 v0, 0x0

    .line 555
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/MpscArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 559
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 560
    goto :goto_0

    .line 562
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 237
    iget-wide v0, p0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 238
    .local v0, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v2

    .line 242
    .local v2, "producerLimit":J
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 243
    .local v4, "pIndex":J
    cmp-long v6, v4, v2

    const-wide/16 v7, 0x1

    if-ltz v6, :cond_2

    .line 245
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v9

    .line 246
    .local v9, "cIndex":J
    add-long v11, v9, v0

    add-long/2addr v11, v7

    .line 248
    .end local v2    # "producerLimit":J
    .local v11, "producerLimit":J
    cmp-long v2, v4, v11

    if-ltz v2, :cond_1

    .line 250
    const/4 v2, 0x0

    return v2

    .line 256
    :cond_1
    invoke-virtual {p0, v11, v12}, Lorg/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    move-wide v2, v11

    .line 260
    .end local v9    # "cIndex":J
    .end local v11    # "producerLimit":J
    .restart local v2    # "producerLimit":J
    :cond_2
    add-long/2addr v7, v4

    invoke-virtual {p0, v4, v5, v7, v8}, Lorg/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    invoke-static {v4, v5, v0, v1}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v6

    .line 268
    .local v6, "offset":J
    iget-object v8, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v8, v6, v7, p1}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 269
    const/4 v8, 0x1

    return v8

    .line 233
    .end local v0    # "mask":J
    .end local v2    # "producerLimit":J
    .end local v4    # "pIndex":J
    .end local v6    # "offset":J
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public offerIfBelowThreshold(Ljava/lang/Object;I)Z
    .locals 19
    .param p2, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_3

    .line 178
    iget-wide v3, v0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 179
    .local v3, "mask":J
    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    .line 181
    .local v7, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v9

    .line 185
    .local v9, "producerLimit":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v11

    .line 186
    .local v11, "pIndex":J
    sub-long v13, v9, v11

    .line 187
    .local v13, "available":J
    sub-long v15, v7, v13

    .line 188
    .local v15, "size":J
    int-to-long v5, v2

    cmp-long v5, v15, v5

    if-ltz v5, :cond_2

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v5

    .line 191
    .local v5, "cIndex":J
    sub-long v15, v11, v5

    .line 192
    move-wide/from16 v17, v9

    .end local v9    # "producerLimit":J
    .local v17, "producerLimit":J
    int-to-long v9, v2

    cmp-long v9, v15, v9

    if-ltz v9, :cond_1

    .line 194
    const/4 v9, 0x0

    return v9

    .line 199
    :cond_1
    add-long v9, v5, v7

    .line 202
    .end local v17    # "producerLimit":J
    .restart local v9    # "producerLimit":J
    invoke-virtual {v0, v9, v10}, Lorg/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    goto :goto_0

    .line 188
    .end local v5    # "cIndex":J
    :cond_2
    move-wide/from16 v17, v9

    .line 206
    .end local v13    # "available":J
    .end local v15    # "size":J
    :goto_0
    const-wide/16 v5, 0x1

    add-long v13, v11, v5

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 213
    invoke-static {v11, v12, v3, v4}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 214
    .local v5, "offset":J
    iget-object v13, v0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v13, v5, v6, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 215
    const/4 v13, 0x1

    return v13

    .line 176
    .end local v3    # "mask":J
    .end local v5    # "offset":J
    .end local v7    # "capacity":J
    .end local v9    # "producerLimit":J
    .end local v11    # "pIndex":J
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method public peek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 375
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 376
    .local v1, "cIndex":J
    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v3

    .line 377
    .local v3, "offset":J
    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 378
    .local v5, "e":Ljava/lang/Object;, "TE;"
    if-nez v5, :cond_2

    .line 385
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    cmp-long v6, v1, v6

    if-eqz v6, :cond_1

    .line 389
    :cond_0
    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 391
    if-eqz v5, :cond_0

    goto :goto_0

    .line 395
    :cond_1
    const/4 v6, 0x0

    return-object v6

    .line 398
    :cond_2
    :goto_0
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v0

    .line 328
    .local v0, "cIndex":J
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v2

    .line 330
    .local v2, "offset":J
    iget-object v4, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 333
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {v4, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 334
    .local v5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 341
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-eqz v7, :cond_1

    .line 345
    :cond_0
    invoke-static {v4, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 347
    if-eqz v5, :cond_0

    goto :goto_0

    .line 351
    :cond_1
    return-object v6

    .line 355
    :cond_2
    :goto_0
    invoke-static {v4, v2, v3, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 356
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lorg/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 357
    return-object v5
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/MpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 430
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/MpscArrayQueue;->mask:J

    .line 431
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    .line 432
    .local v3, "cIndex":J
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 411
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 412
    .local v1, "cIndex":J
    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/MpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v3

    .line 415
    .local v3, "offset":J
    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 416
    .local v5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 418
    return-object v6

    .line 421
    :cond_0
    invoke-static {v0, v3, v4, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 422
    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    invoke-virtual {p0, v6, v7}, Lorg/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 423
    return-object v5
.end method
