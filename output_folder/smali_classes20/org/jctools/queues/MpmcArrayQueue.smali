.class public Lorg/jctools/queues/MpmcArrayQueue;
.super Lorg/jctools/queues/MpmcArrayQueueL3Pad;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpmcArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 134
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    const/4 v0, 0x2

    const-string v1, "capacity"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jctools/queues/MpmcArrayQueueL3Pad;-><init>(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpmcArrayQueue;->capacity()I

    move-result v0

    .line 317
    .local v0, "capacity":I
    const/4 v1, 0x0

    .line 318
    .local v1, "sum":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "drained":I
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/MpmcArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v3

    move v2, v3

    if-nez v3, :cond_0

    .line 323
    goto :goto_1

    .line 325
    :cond_0
    add-int/2addr v1, v2

    .line 326
    .end local v2    # "drained":I
    goto :goto_0

    .line 327
    :cond_1
    :goto_1
    return v1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 25
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    iget-object v8, v6, Lorg/jctools/queues/MpmcArrayQueue;->sequenceBuffer:[J

    .line 352
    .local v8, "sBuffer":[J
    iget-wide v9, v6, Lorg/jctools/queues/MpmcArrayQueue;->mask:J

    .line 353
    .local v9, "mask":J
    iget-object v11, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 359
    .local v11, "buffer":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ge v12, v7, :cond_3

    .line 363
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v13

    .line 364
    .local v13, "cIndex":J
    invoke-static {v13, v14, v9, v10}, Lorg/jctools/queues/MpmcArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v4

    .line 365
    .local v4, "seqOffset":J
    invoke-virtual {v6, v8, v4, v5}, Lorg/jctools/queues/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v15

    .line 366
    .local v15, "seq":J
    const-wide/16 v0, 0x1

    add-long v17, v13, v0

    .line 367
    .local v17, "expectedSeq":J
    cmp-long v2, v15, v17

    if-gez v2, :cond_0

    .line 369
    return v12

    .line 372
    :cond_0
    cmp-long v2, v15, v17

    if-gtz v2, :cond_2

    add-long v2, v13, v0

    .line 373
    invoke-virtual {v6, v13, v14, v2, v3}, Lorg/jctools/queues/MpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-static {v13, v14, v9, v10}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v2

    .line 376
    .local v2, "offset":J
    invoke-static {v11, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    invoke-static {v11, v2, v3, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 378
    add-long v21, v13, v9

    const-wide/16 v19, 0x1

    add-long v19, v21, v19

    move-object v1, v0

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object v6, v1

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .local v6, "e":Ljava/lang/Object;, "TE;"
    move-object v1, v8

    move-wide/from16 v21, v2

    .end local v2    # "offset":J
    .local v21, "offset":J
    move-wide v2, v4

    move-wide/from16 v23, v4

    .end local v4    # "seqOffset":J
    .local v23, "seqOffset":J
    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/MpmcArrayQueue;->soSequence([JJJ)V

    .line 379
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 359
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    .end local v21    # "offset":J
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    goto :goto_0

    .line 373
    .end local v23    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_1
    move-object/from16 v0, p1

    move-wide/from16 v23, v4

    .end local v4    # "seqOffset":J
    .restart local v23    # "seqOffset":J
    move-object/from16 v6, p0

    goto :goto_1

    .line 372
    .end local v23    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_2
    move-object/from16 v0, p1

    move-wide/from16 v23, v4

    .end local v4    # "seqOffset":J
    .restart local v23    # "seqOffset":J
    move-object/from16 v6, p0

    goto :goto_1

    .line 359
    .end local v13    # "cIndex":J
    .end local v15    # "seq":J
    .end local v17    # "expectedSeq":J
    .end local v23    # "seqOffset":J
    :cond_3
    move-object/from16 v0, p1

    .line 381
    .end local v12    # "i":I
    return v7
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
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

    .line 421
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 422
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/MpmcArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 427
    goto :goto_0

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_1
    return-void
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

    .line 333
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 334
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpmcArrayQueue;->capacity()I

    move-result v2

    .line 337
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/MpmcArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 338
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 340
    long-to-int v4, v0

    return v4

    .line 342
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 344
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 345
    long-to-int v3, v0

    return v3

    .line 344
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 21
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 387
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    iget-object v8, v6, Lorg/jctools/queues/MpmcArrayQueue;->sequenceBuffer:[J

    .line 388
    .local v8, "sBuffer":[J
    iget-wide v9, v6, Lorg/jctools/queues/MpmcArrayQueue;->mask:J

    .line 389
    .local v9, "mask":J
    iget-object v11, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 394
    .local v11, "buffer":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ge v12, v7, :cond_3

    .line 398
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v13

    .line 399
    .local v13, "pIndex":J
    invoke-static {v13, v14, v9, v10}, Lorg/jctools/queues/MpmcArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v4

    .line 400
    .local v4, "seqOffset":J
    invoke-virtual {v6, v8, v4, v5}, Lorg/jctools/queues/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v15

    .line 401
    .local v15, "seq":J
    cmp-long v0, v15, v13

    if-gez v0, :cond_0

    .line 403
    return v12

    .line 406
    :cond_0
    cmp-long v0, v15, v13

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x1

    add-long v2, v13, v0

    .line 407
    invoke-virtual {v6, v13, v14, v2, v3}, Lorg/jctools/queues/MpmcArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    invoke-static {v13, v14, v9, v10}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v2, v3, v0}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 410
    const-wide/16 v0, 0x1

    add-long v17, v13, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v4

    move-wide/from16 v19, v4

    .end local v4    # "seqOffset":J
    .local v19, "seqOffset":J
    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/MpmcArrayQueue;->soSequence([JJJ)V

    .line 394
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 407
    .end local v19    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_1
    move-wide/from16 v19, v4

    .end local v4    # "seqOffset":J
    .restart local v19    # "seqOffset":J
    goto :goto_1

    .line 406
    .end local v19    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_2
    move-wide/from16 v19, v4

    .end local v4    # "seqOffset":J
    .restart local v19    # "seqOffset":J
    goto :goto_1

    .line 412
    .end local v12    # "i":I
    .end local v13    # "pIndex":J
    .end local v15    # "seq":J
    .end local v19    # "seqOffset":J
    :cond_3
    return v7
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

    .line 439
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const/4 v0, 0x0

    .line 440
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/MpmcArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 444
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 445
    goto :goto_0

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :cond_1
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_4

    .line 144
    iget-wide v8, v6, Lorg/jctools/queues/MpmcArrayQueue;->mask:J

    .line 145
    .local v8, "mask":J
    const-wide/16 v0, 0x1

    add-long v10, v8, v0

    .line 146
    .local v10, "capacity":J
    iget-object v12, v6, Lorg/jctools/queues/MpmcArrayQueue;->sequenceBuffer:[J

    .line 151
    .local v12, "sBuffer":[J
    const-wide/high16 v2, -0x8000000000000000L

    .line 154
    .local v2, "cIndex":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v13

    .line 155
    .local v13, "pIndex":J
    invoke-static {v13, v14, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v4

    .line 156
    .local v4, "seqOffset":J
    invoke-virtual {v6, v12, v4, v5}, Lorg/jctools/queues/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v15

    .line 158
    .local v15, "seq":J
    cmp-long v17, v15, v13

    if-gez v17, :cond_1

    .line 161
    sub-long v17, v13, v10

    cmp-long v17, v17, v2

    if-ltz v17, :cond_0

    sub-long v17, v13, v10

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v19

    move-wide/from16 v2, v19

    cmp-long v17, v17, v19

    if-ltz v17, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    add-long v15, v13, v0

    move-wide/from16 v17, v15

    move-wide v15, v2

    goto :goto_1

    .line 158
    :cond_1
    move-wide/from16 v17, v15

    move-wide v15, v2

    .line 172
    .end local v2    # "cIndex":J
    .local v15, "cIndex":J
    .local v17, "seq":J
    :goto_1
    cmp-long v2, v17, v13

    if-gtz v2, :cond_3

    add-long v2, v13, v0

    .line 173
    invoke-virtual {v6, v13, v14, v2, v3}, Lorg/jctools/queues/MpmcArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v13, v14, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    invoke-static {v2, v0, v1, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 176
    const-wide/16 v0, 0x1

    add-long v19, v13, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v4

    move-wide/from16 v21, v4

    .end local v4    # "seqOffset":J
    .local v21, "seqOffset":J
    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/MpmcArrayQueue;->soSequence([JJJ)V

    .line 177
    const/4 v0, 0x1

    return v0

    .line 173
    .end local v21    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_2
    move-wide/from16 v21, v4

    .end local v4    # "seqOffset":J
    .restart local v21    # "seqOffset":J
    goto :goto_2

    .line 172
    .end local v21    # "seqOffset":J
    .restart local v4    # "seqOffset":J
    :cond_3
    move-wide/from16 v21, v4

    .line 154
    .end local v4    # "seqOffset":J
    .end local v13    # "pIndex":J
    .end local v17    # "seq":J
    :goto_2
    move-wide v2, v15

    goto :goto_0

    .line 142
    .end local v8    # "mask":J
    .end local v10    # "capacity":J
    .end local v12    # "sBuffer":[J
    .end local v15    # "cIndex":J
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 237
    .local v0, "cIndex":J
    iget-object v2, p0, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 240
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 241
    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/jctools/queues/MpmcArrayQueue;->sequenceBuffer:[J

    .line 191
    .local v7, "sBuffer":[J
    iget-wide v8, v6, Lorg/jctools/queues/MpmcArrayQueue;->mask:J

    .line 197
    .local v8, "mask":J
    const-wide/16 v0, -0x1

    .line 200
    .local v0, "pIndex":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    .line 201
    .local v10, "cIndex":J
    invoke-static {v10, v11, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v12

    .line 202
    .local v12, "seqOffset":J
    invoke-virtual {v6, v7, v12, v13}, Lorg/jctools/queues/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v2

    .line 203
    .local v2, "seq":J
    const-wide/16 v4, 0x1

    add-long v14, v10, v4

    .line 204
    .local v14, "expectedSeq":J
    cmp-long v16, v2, v14

    const/4 v4, 0x0

    if-gez v16, :cond_1

    .line 206
    cmp-long v5, v10, v0

    if-ltz v5, :cond_0

    .line 207
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v19

    move-wide/from16 v0, v19

    cmp-long v5, v10, v19

    if-nez v5, :cond_0

    .line 210
    return-object v4

    .line 214
    :cond_0
    const-wide/16 v16, 0x1

    add-long v2, v14, v16

    move-wide/from16 v19, v0

    move-wide/from16 v21, v2

    goto :goto_1

    .line 204
    :cond_1
    const-wide/16 v16, 0x1

    move-wide/from16 v19, v0

    move-wide/from16 v21, v2

    .line 218
    .end local v0    # "pIndex":J
    .end local v2    # "seq":J
    .local v19, "pIndex":J
    .local v21, "seq":J
    :goto_1
    cmp-long v0, v21, v14

    if-gtz v0, :cond_2

    add-long v0, v10, v16

    .line 219
    invoke-virtual {v6, v10, v11, v0, v1}, Lorg/jctools/queues/MpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-static {v10, v11, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v2

    .line 222
    .local v2, "offset":J
    iget-object v0, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    .line 223
    .local v16, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 224
    add-long v0, v10, v8

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v17, v2

    .end local v2    # "offset":J
    .local v17, "offset":J
    move-wide v2, v12

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/MpmcArrayQueue;->soSequence([JJJ)V

    .line 225
    return-object v16

    .line 200
    .end local v10    # "cIndex":J
    .end local v12    # "seqOffset":J
    .end local v14    # "expectedSeq":J
    .end local v16    # "e":Ljava/lang/Object;, "TE;"
    .end local v17    # "offset":J
    .end local v21    # "seq":J
    :cond_2
    move-wide/from16 v0, v19

    goto :goto_0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_2

    .line 251
    iget-wide v8, v6, Lorg/jctools/queues/MpmcArrayQueue;->mask:J

    .line 252
    .local v8, "mask":J
    iget-object v10, v6, Lorg/jctools/queues/MpmcArrayQueue;->sequenceBuffer:[J

    .line 259
    .local v10, "sBuffer":[J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v11

    .line 260
    .local v11, "pIndex":J
    invoke-static {v11, v12, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v13

    .line 261
    .local v13, "seqOffset":J
    invoke-virtual {v6, v10, v13, v14}, Lorg/jctools/queues/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v15

    .line 262
    .local v15, "seq":J
    cmp-long v0, v15, v11

    if-gez v0, :cond_1

    .line 264
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_1
    cmp-long v0, v15, v11

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long v2, v11, v0

    .line 268
    invoke-virtual {v6, v11, v12, v2, v3}, Lorg/jctools/queues/MpmcArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v11, v12, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v3

    invoke-static {v2, v3, v4, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 271
    add-long v4, v11, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v13

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/MpmcArrayQueue;->soSequence([JJJ)V

    .line 272
    const/4 v0, 0x1

    return v0

    .line 249
    .end local v8    # "mask":J
    .end local v10    # "sBuffer":[J
    .end local v11    # "pIndex":J
    .end local v13    # "seqOffset":J
    .end local v15    # "seq":J
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 310
    .local v0, "currConsumerIndex":J
    iget-object v2, p0, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueue;, "Lorg/jctools/queues/MpmcArrayQueue<TE;>;"
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/jctools/queues/MpmcArrayQueue;->sequenceBuffer:[J

    .line 279
    .local v7, "sBuffer":[J
    iget-wide v8, v6, Lorg/jctools/queues/MpmcArrayQueue;->mask:J

    .line 287
    .local v8, "mask":J
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    .line 288
    .local v10, "cIndex":J
    invoke-static {v10, v11, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcSequenceOffset(JJ)J

    move-result-wide v12

    .line 289
    .local v12, "seqOffset":J
    invoke-virtual {v6, v7, v12, v13}, Lorg/jctools/queues/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v14

    .line 290
    .local v14, "seq":J
    const-wide/16 v0, 0x1

    add-long v16, v10, v0

    .line 291
    .local v16, "expectedSeq":J
    cmp-long v2, v14, v16

    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 293
    return-object v3

    .line 296
    :cond_1
    cmp-long v2, v14, v16

    if-gtz v2, :cond_0

    add-long v4, v10, v0

    .line 297
    invoke-virtual {v6, v10, v11, v4, v5}, Lorg/jctools/queues/MpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-static {v10, v11, v8, v9}, Lorg/jctools/queues/MpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v4

    .line 300
    .local v4, "offset":J
    iget-object v2, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/jctools/util/UnsafeRefArrayAccess;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v18

    .line 301
    .local v18, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v6, Lorg/jctools/queues/MpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v2, v4, v5, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 302
    add-long v2, v10, v8

    add-long v19, v2, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    move-wide/from16 v21, v4

    .end local v4    # "offset":J
    .local v21, "offset":J
    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/MpmcArrayQueue;->soSequence([JJJ)V

    .line 303
    return-object v18

    .line 297
    .end local v18    # "e":Ljava/lang/Object;, "TE;"
    .end local v21    # "offset":J
    :cond_2
    goto :goto_0
.end method
