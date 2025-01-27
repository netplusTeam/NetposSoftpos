.class public Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;
.source "MpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 156
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;-><init>(I)V

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->clear()V

    return-void
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
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

    .line 511
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 13
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 433
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_4

    .line 435
    if-ltz p2, :cond_3

    .line 437
    if-nez p2, :cond_0

    .line 438
    const/4 v0, 0x0

    return v0

    .line 440
    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 441
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 442
    .local v1, "mask":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    .line 444
    .local v3, "cIndex":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_2

    .line 446
    int-to-long v6, v5

    add-long/2addr v6, v3

    .line 447
    .local v6, "index":J
    invoke-static {v6, v7, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v8

    .line 448
    .local v8, "offset":J
    invoke-static {v0, v8, v9}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 449
    .local v10, "e":Ljava/lang/Object;, "TE;"
    if-nez v10, :cond_1

    .line 451
    return v5

    .line 453
    :cond_1
    const/4 v11, 0x0

    invoke-static {v0, v8, v9, v11}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 454
    const-wide/16 v11, 0x1

    add-long/2addr v11, v6

    invoke-virtual {p0, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 455
    invoke-interface {p1, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 444
    .end local v6    # "index":J
    .end local v8    # "offset":J
    .end local v10    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 457
    .end local v5    # "i":I
    :cond_2
    return p2

    .line 436
    .end local v0    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "mask":J
    .end local v3    # "cIndex":J
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

    .line 434
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

    .line 523
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 524
    return-void
.end method

.method public final failFastOffer(Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 275
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 279
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 280
    .local v0, "mask":J
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 281
    .local v4, "capacity":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    .line 282
    .local v6, "pIndex":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v8

    .line 283
    .local v8, "producerLimit":J
    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    .line 285
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    .line 286
    .local v10, "cIndex":J
    add-long v8, v10, v4

    .line 287
    cmp-long v12, v6, v8

    if-ltz v12, :cond_0

    .line 289
    const/4 v2, 0x1

    return v2

    .line 294
    :cond_0
    invoke-virtual {p0, v8, v9}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    .line 299
    .end local v10    # "cIndex":J
    :cond_1
    add-long/2addr v2, v6

    invoke-virtual {p0, v6, v7, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 301
    const/4 v2, -0x1

    return v2

    .line 305
    :cond_2
    invoke-static {v6, v7, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v2

    .line 306
    .local v2, "offset":J
    iget-object v10, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v10, v2, v3, p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 307
    const/4 v10, 0x0

    return v10

    .line 277
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

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 517
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillBounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result v0

    return v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 18
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 463
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz p1, :cond_6

    .line 465
    if-ltz v1, :cond_5

    .line 467
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 468
    return v2

    .line 470
    :cond_0
    iget-wide v3, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 471
    .local v3, "mask":J
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    .line 472
    .local v5, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v7

    .line 474
    .local v7, "producerLimit":J
    const/4 v9, 0x0

    .line 477
    .local v9, "actualLimit":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v10

    .line 478
    .local v10, "pIndex":J
    sub-long v12, v7, v10

    .line 479
    .local v12, "available":J
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-gtz v16, :cond_3

    .line 481
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v16

    .line 482
    .local v16, "cIndex":J
    add-long v7, v16, v5

    .line 483
    sub-long v12, v7, v10

    .line 484
    cmp-long v14, v12, v14

    if-gtz v14, :cond_2

    .line 486
    return v2

    .line 491
    :cond_2
    invoke-virtual {v0, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    .line 494
    .end local v16    # "cIndex":J
    :cond_3
    long-to-int v14, v12

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 496
    .end local v12    # "available":J
    int-to-long v12, v9

    add-long/2addr v12, v10

    invoke-virtual {v0, v10, v11, v12, v13}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 498
    iget-object v2, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 499
    .local v2, "buffer":[Ljava/lang/Object;, "[TE;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_4

    .line 502
    int-to-long v13, v12

    add-long/2addr v13, v10

    invoke-static {v13, v14, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v13

    .line 503
    .local v13, "offset":J
    invoke-interface/range {p1 .. p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v2, v13, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 499
    .end local v13    # "offset":J
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 505
    .end local v12    # "i":I
    :cond_4
    return v9

    .line 466
    .end local v2    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v3    # "mask":J
    .end local v5    # "capacity":J
    .end local v7    # "producerLimit":J
    .end local v9    # "actualLimit":I
    .end local v10    # "pIndex":J
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

    .line 464
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

    .line 529
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 530
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 226
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 232
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 233
    .local v0, "mask":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v2

    .line 237
    .local v2, "producerLimit":J
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 238
    .local v4, "pIndex":J
    cmp-long v6, v4, v2

    const-wide/16 v7, 0x1

    if-ltz v6, :cond_2

    .line 240
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v9

    .line 241
    .local v9, "cIndex":J
    add-long v11, v9, v0

    add-long/2addr v11, v7

    .line 243
    .end local v2    # "producerLimit":J
    .local v11, "producerLimit":J
    cmp-long v2, v4, v11

    if-ltz v2, :cond_1

    .line 245
    const/4 v2, 0x0

    return v2

    .line 251
    :cond_1
    invoke-virtual {p0, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    move-wide v2, v11

    .line 255
    .end local v9    # "cIndex":J
    .end local v11    # "producerLimit":J
    .restart local v2    # "producerLimit":J
    :cond_2
    add-long/2addr v7, v4

    invoke-virtual {p0, v4, v5, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    invoke-static {v4, v5, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v6

    .line 263
    .local v6, "offset":J
    iget-object v8, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v8, v6, v7, p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    const/4 v8, 0x1

    return v8

    .line 228
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

    .line 169
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_3

    .line 173
    iget-wide v3, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 174
    .local v3, "mask":J
    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    .line 176
    .local v7, "capacity":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v9

    .line 180
    .local v9, "producerLimit":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v11

    .line 181
    .local v11, "pIndex":J
    sub-long v13, v9, v11

    .line 182
    .local v13, "available":J
    sub-long v15, v7, v13

    .line 183
    .local v15, "size":J
    int-to-long v5, v2

    cmp-long v5, v15, v5

    if-ltz v5, :cond_2

    .line 185
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v5

    .line 186
    .local v5, "cIndex":J
    sub-long v15, v11, v5

    .line 187
    move-wide/from16 v17, v9

    .end local v9    # "producerLimit":J
    .local v17, "producerLimit":J
    int-to-long v9, v2

    cmp-long v9, v15, v9

    if-ltz v9, :cond_1

    .line 189
    const/4 v9, 0x0

    return v9

    .line 194
    :cond_1
    add-long v9, v5, v7

    .line 197
    .end local v17    # "producerLimit":J
    .restart local v9    # "producerLimit":J
    invoke-virtual {v0, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    goto :goto_0

    .line 183
    .end local v5    # "cIndex":J
    :cond_2
    move-wide/from16 v17, v9

    .line 201
    .end local v13    # "available":J
    .end local v15    # "size":J
    :goto_0
    const-wide/16 v5, 0x1

    add-long v13, v11, v5

    invoke-virtual {v0, v11, v12, v13, v14}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 208
    invoke-static {v11, v12, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v5

    .line 209
    .local v5, "offset":J
    iget-object v13, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v13, v5, v6, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 210
    const/4 v13, 0x1

    return v13

    .line 171
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

    .line 368
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 370
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 371
    .local v1, "cIndex":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v3

    .line 372
    .local v3, "offset":J
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 373
    .local v5, "e":Ljava/lang/Object;, "TE;"
    if-nez v5, :cond_2

    .line 380
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    cmp-long v6, v1, v6

    if-eqz v6, :cond_1

    .line 384
    :cond_0
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 386
    if-eqz v5, :cond_0

    goto :goto_0

    .line 390
    :cond_1
    const/4 v6, 0x0

    return-object v6

    .line 393
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

    .line 322
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v0

    .line 323
    .local v0, "cIndex":J
    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v2

    .line 325
    .local v2, "offset":J
    iget-object v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 328
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {v4, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 329
    .local v5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 336
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-eqz v7, :cond_1

    .line 340
    :cond_0
    invoke-static {v4, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 342
    if-eqz v5, :cond_0

    goto :goto_0

    .line 346
    :cond_1
    return-object v6

    .line 350
    :cond_2
    :goto_0
    invoke-static {v4, v2, v3, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 351
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 352
    return-object v5
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 399
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->offer(Ljava/lang/Object;)Z

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

    .line 424
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 425
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 426
    .local v1, "mask":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    .line 427
    .local v3, "cIndex":J
    invoke-static {v3, v4, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

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

    .line 405
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 406
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 407
    .local v1, "cIndex":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v3

    .line 410
    .local v3, "offset":J
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 411
    .local v5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 413
    return-object v6

    .line 416
    :cond_0
    invoke-static {v0, v3, v4, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 417
    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    invoke-virtual {p0, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 418
    return-object v5
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
