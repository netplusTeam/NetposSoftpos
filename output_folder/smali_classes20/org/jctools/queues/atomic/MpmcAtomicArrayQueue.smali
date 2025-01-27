.class public Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL3Pad;
.source "MpmcAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 145
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    const/4 v0, 0x2

    const-string v1, "capacity"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL3Pad;-><init>(I)V

    .line 146
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 142
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL3Pad;->clear()V

    return-void
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->capacity()I

    move-result v0

    .line 304
    .local v0, "capacity":I
    const/4 v1, 0x0

    .line 305
    .local v1, "sum":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "drained":I
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v3

    move v2, v3

    if-nez v3, :cond_0

    .line 308
    goto :goto_1

    .line 310
    :cond_0
    add-int/2addr v1, v2

    .line 311
    .end local v2    # "drained":I
    goto :goto_0

    .line 312
    :cond_1
    :goto_1
    return v1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 19
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 333
    .local v2, "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget v3, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->mask:I

    .line 334
    .local v3, "mask":I
    iget-object v4, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 339
    .local v4, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 341
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v6

    .line 342
    .local v6, "cIndex":J
    invoke-static {v6, v7, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcSequenceOffset(JI)I

    move-result v8

    .line 343
    .local v8, "seqOffset":I
    invoke-virtual {v0, v2, v8}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J

    move-result-wide v9

    .line 344
    .local v9, "seq":J
    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    .line 345
    .local v13, "expectedSeq":J
    cmp-long v15, v9, v13

    if-gez v15, :cond_0

    .line 346
    return v5

    .line 348
    :cond_0
    cmp-long v15, v9, v13

    if-gtz v15, :cond_2

    move-wide v15, v9

    .end local v9    # "seq":J
    .local v15, "seq":J
    add-long v9, v6, v11

    .line 350
    invoke-virtual {v0, v6, v7, v9, v10}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->casConsumerIndex(JJ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 351
    invoke-virtual {v0, v6, v7, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v9

    .line 352
    .local v9, "offset":I
    invoke-static {v4, v9}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v10

    .line 353
    .local v10, "e":Ljava/lang/Object;, "TE;"
    const/4 v11, 0x0

    invoke-static {v4, v9, v11}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 354
    int-to-long v11, v3

    add-long/2addr v11, v6

    const-wide/16 v17, 0x1

    add-long v11, v11, v17

    invoke-virtual {v0, v2, v8, v11, v12}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 355
    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 339
    .end local v9    # "offset":I
    .end local v10    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
    :cond_1
    move-object/from16 v11, p1

    goto :goto_1

    .line 348
    .end local v15    # "seq":J
    .local v9, "seq":J
    :cond_2
    move-object/from16 v11, p1

    move-wide v15, v9

    .end local v9    # "seq":J
    .restart local v15    # "seq":J
    goto :goto_1

    .line 339
    .end local v6    # "cIndex":J
    .end local v8    # "seqOffset":I
    .end local v13    # "expectedSeq":J
    .end local v15    # "seq":J
    :cond_3
    move-object/from16 v11, p1

    .line 357
    .end local v5    # "i":I
    return v1
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

    .line 388
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 389
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 391
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 392
    goto :goto_0

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 396
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

    .line 318
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 319
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->capacity()I

    move-result v2

    .line 321
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 322
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 323
    long-to-int v4, v0

    return v4

    .line 325
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 326
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 327
    long-to-int v3, v0

    return v3

    .line 326
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 13
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 363
    .local v0, "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget v1, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->mask:I

    .line 364
    .local v1, "mask":I
    iget-object v2, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 368
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 370
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 371
    .local v4, "pIndex":J
    invoke-static {v4, v5, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcSequenceOffset(JI)I

    move-result v6

    .line 372
    .local v6, "seqOffset":I
    invoke-virtual {p0, v0, v6}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J

    move-result-wide v7

    .line 373
    .local v7, "seq":J
    cmp-long v9, v7, v4

    if-gez v9, :cond_1

    .line 375
    return v3

    .line 377
    :cond_1
    cmp-long v9, v7, v4

    if-gtz v9, :cond_0

    const-wide/16 v9, 0x1

    add-long v11, v4, v9

    .line 379
    invoke-virtual {p0, v4, v5, v11, v12}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 380
    invoke-virtual {p0, v4, v5, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v11

    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v2, v11, v12}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 381
    add-long/2addr v9, v4

    invoke-virtual {p0, v0, v6, v9, v10}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    .end local v3    # "i":I
    .end local v4    # "pIndex":J
    .end local v6    # "seqOffset":I
    .end local v7    # "seq":J
    :cond_2
    return p2
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

    .line 400
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const/4 v0, 0x0

    .line 401
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 404
    goto :goto_0

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :cond_1
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 142
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL3Pad;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_4

    .line 153
    iget v2, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->mask:I

    .line 154
    .local v2, "mask":I
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    .line 155
    .local v3, "capacity":J
    iget-object v5, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 160
    .local v5, "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    const-wide/high16 v6, -0x8000000000000000L

    .line 162
    .local v6, "cIndex":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    .line 163
    .local v8, "pIndex":J
    invoke-static {v8, v9, v2}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcSequenceOffset(JI)I

    move-result v10

    .line 164
    .local v10, "seqOffset":I
    invoke-virtual {v0, v5, v10}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J

    move-result-wide v11

    .line 166
    .local v11, "seq":J
    cmp-long v13, v11, v8

    const-wide/16 v14, 0x1

    if-gez v13, :cond_1

    .line 168
    sub-long v16, v8, v3

    cmp-long v13, v16, v6

    if-ltz v13, :cond_0

    sub-long v16, v8, v3

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v18

    move-wide/from16 v6, v18

    cmp-long v13, v16, v18

    if-ltz v13, :cond_0

    .line 171
    const/4 v13, 0x0

    return v13

    .line 174
    :cond_0
    add-long v11, v8, v14

    .line 177
    :cond_1
    cmp-long v13, v11, v8

    if-gtz v13, :cond_2

    move-wide/from16 v16, v3

    .end local v3    # "capacity":J
    .local v16, "capacity":J
    add-long v3, v8, v14

    .line 179
    invoke-virtual {v0, v8, v9, v3, v4}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v8, v9, v2}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    invoke-static {v3, v4, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 182
    add-long/2addr v14, v8

    invoke-virtual {v0, v5, v10, v14, v15}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 183
    const/4 v3, 0x1

    return v3

    .line 177
    .end local v16    # "capacity":J
    .restart local v3    # "capacity":J
    :cond_2
    move-wide/from16 v16, v3

    .line 162
    .end local v3    # "capacity":J
    .end local v8    # "pIndex":J
    .end local v10    # "seqOffset":I
    .end local v11    # "seq":J
    .restart local v16    # "capacity":J
    :cond_3
    move-wide/from16 v3, v16

    goto :goto_0

    .line 151
    .end local v2    # "mask":I
    .end local v5    # "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v6    # "cIndex":J
    .end local v16    # "capacity":J
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 237
    .local v0, "cIndex":J
    iget-object v2, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(J)I

    move-result v3

    invoke-static {v2, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    .line 239
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 240
    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 196
    .local v1, "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget v2, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->mask:I

    .line 202
    .local v2, "mask":I
    const-wide/16 v3, -0x1

    .line 204
    .local v3, "pIndex":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v5

    .line 205
    .local v5, "cIndex":J
    invoke-static {v5, v6, v2}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcSequenceOffset(JI)I

    move-result v7

    .line 206
    .local v7, "seqOffset":I
    invoke-virtual {v0, v1, v7}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J

    move-result-wide v8

    .line 207
    .local v8, "seq":J
    const-wide/16 v10, 0x1

    add-long v12, v5, v10

    .line 208
    .local v12, "expectedSeq":J
    cmp-long v14, v8, v12

    const/4 v15, 0x0

    if-gez v14, :cond_1

    .line 210
    cmp-long v14, v5, v3

    if-ltz v14, :cond_0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v16

    move-wide/from16 v3, v16

    cmp-long v14, v5, v16

    if-nez v14, :cond_0

    .line 213
    return-object v15

    .line 216
    :cond_0
    add-long v8, v12, v10

    .line 219
    :cond_1
    cmp-long v14, v8, v12

    if-gtz v14, :cond_2

    move-wide/from16 v16, v3

    .end local v3    # "pIndex":J
    .local v16, "pIndex":J
    add-long v3, v5, v10

    .line 221
    invoke-virtual {v0, v5, v6, v3, v4}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->casConsumerIndex(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    invoke-virtual {v0, v5, v6, v2}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v3

    .line 223
    .local v3, "offset":I
    iget-object v4, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v4, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 224
    .local v4, "e":Ljava/lang/Object;, "TE;"
    iget-object v14, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v14, v3, v15}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 226
    int-to-long v14, v2

    add-long/2addr v14, v5

    add-long/2addr v14, v10

    invoke-virtual {v0, v1, v7, v14, v15}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 227
    return-object v4

    .line 219
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    .end local v16    # "pIndex":J
    .local v3, "pIndex":J
    :cond_2
    move-wide/from16 v16, v3

    .line 204
    .end local v3    # "pIndex":J
    .end local v5    # "cIndex":J
    .end local v7    # "seqOffset":I
    .end local v8    # "seq":J
    .end local v12    # "expectedSeq":J
    .restart local v16    # "pIndex":J
    :cond_3
    move-wide/from16 v3, v16

    goto :goto_0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_2

    .line 248
    iget v0, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->mask:I

    .line 249
    .local v0, "mask":I
    iget-object v1, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 254
    .local v1, "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    .line 255
    .local v2, "pIndex":J
    invoke-static {v2, v3, v0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcSequenceOffset(JI)I

    move-result v4

    .line 256
    .local v4, "seqOffset":I
    invoke-virtual {p0, v1, v4}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J

    move-result-wide v5

    .line 257
    .local v5, "seq":J
    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    .line 259
    const/4 v7, 0x0

    return v7

    .line 261
    :cond_1
    cmp-long v7, v5, v2

    if-gtz v7, :cond_0

    const-wide/16 v7, 0x1

    add-long v9, v2, v7

    .line 263
    invoke-virtual {p0, v2, v3, v9, v10}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 264
    iget-object v9, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v2, v3, v0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v10

    invoke-static {v9, v10, p1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 265
    add-long/2addr v7, v2

    invoke-virtual {p0, v1, v4, v7, v8}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 266
    const/4 v7, 0x1

    return v7

    .line 246
    .end local v0    # "mask":I
    .end local v1    # "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v2    # "pIndex":J
    .end local v4    # "seqOffset":I
    .end local v5    # "seq":J
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 298
    .local v0, "currConsumerIndex":J
    iget-object v2, p0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(J)I

    move-result v3

    invoke-static {v2, v3}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 272
    .local v1, "sBuffer":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget v2, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->mask:I

    .line 278
    .local v2, "mask":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 279
    .local v3, "cIndex":J
    invoke-static {v3, v4, v2}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcSequenceOffset(JI)I

    move-result v5

    .line 280
    .local v5, "seqOffset":I
    invoke-virtual {v0, v1, v5}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J

    move-result-wide v6

    .line 281
    .local v6, "seq":J
    const-wide/16 v8, 0x1

    add-long v10, v3, v8

    .line 282
    .local v10, "expectedSeq":J
    cmp-long v12, v6, v10

    const/4 v13, 0x0

    if-gez v12, :cond_0

    .line 283
    return-object v13

    .line 285
    :cond_0
    cmp-long v12, v6, v10

    if-gtz v12, :cond_2

    add-long v14, v3, v8

    .line 287
    invoke-virtual {v0, v3, v4, v14, v15}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->casConsumerIndex(JJ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 288
    invoke-virtual {v0, v3, v4, v2}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v12

    .line 289
    .local v12, "offset":I
    iget-object v14, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v14, v12}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v14

    .line 290
    .local v14, "e":Ljava/lang/Object;, "TE;"
    iget-object v15, v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v15, v12, v13}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 291
    move-wide v15, v6

    .end local v6    # "seq":J
    .local v15, "seq":J
    int-to-long v6, v2

    add-long/2addr v6, v3

    add-long/2addr v6, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 292
    return-object v14

    .line 287
    .end local v12    # "offset":I
    .end local v14    # "e":Ljava/lang/Object;, "TE;"
    .end local v15    # "seq":J
    .restart local v6    # "seq":J
    :cond_1
    move-wide v15, v6

    .end local v6    # "seq":J
    .restart local v15    # "seq":J
    goto :goto_0

    .line 285
    .end local v15    # "seq":J
    .restart local v6    # "seq":J
    :cond_2
    move-wide v15, v6

    .end local v6    # "seq":J
    .restart local v15    # "seq":J
    goto :goto_0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 142
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL3Pad;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
