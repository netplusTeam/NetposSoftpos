.class public Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL3Pad;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 151
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL3Pad;-><init>(I)V

    .line 152
    return-void
.end method

.method private offerSlowPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;IJ)Z
    .locals 3
    .param p2, "mask"    # I
    .param p3, "producerIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 181
    .local v0, "lookAheadStep":I
    int-to-long v1, v0

    add-long/2addr v1, p3

    invoke-virtual {p0, v1, v2, p2}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v1

    invoke-static {p1, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 183
    int-to-long v1, v0

    add-long/2addr v1, p3

    iput-wide v1, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->producerLimit:J

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, p3, p4, p2}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v1

    .line 186
    .local v1, "offset":I
    invoke-static {p1, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    const/4 v2, 0x0

    return v2

    .line 190
    .end local v1    # "offset":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 148
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL3Pad;->clear()V

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

    .line 243
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

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

    .line 253
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 254
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->mask:I

    .line 255
    .local v1, "mask":I
    iget-wide v2, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->consumerIndex:J

    .line 256
    .local v2, "consumerIndex":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 257
    int-to-long v5, v4

    add-long/2addr v5, v2

    .line 258
    .local v5, "index":J
    invoke-virtual {p0, v5, v6, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v7

    .line 260
    .local v7, "offset":I
    invoke-static {v0, v7}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v8

    .line 261
    .local v8, "e":Ljava/lang/Object;, "TE;"
    if-nez v8, :cond_0

    .line 262
    return v4

    .line 265
    :cond_0
    const/4 v9, 0x0

    invoke-static {v0, v7, v9}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 267
    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    invoke-virtual {p0, v9, v10}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 268
    invoke-interface {p1, v8}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 256
    .end local v5    # "index":J
    .end local v7    # "offset":I
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
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

    .line 309
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 310
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->mask:I

    .line 311
    .local v1, "mask":I
    iget-wide v2, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->consumerIndex:J

    .line 312
    .local v2, "consumerIndex":J
    const/4 v4, 0x0

    .line 313
    .local v4, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x1000

    if-ge v5, v6, :cond_1

    .line 315
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    .line 317
    .local v6, "offset":I
    invoke-static {v0, v6}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v7

    .line 318
    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-nez v7, :cond_0

    .line 319
    invoke-interface {p2, v4}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v4

    .line 320
    goto :goto_2

    .line 322
    :cond_0
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 323
    const/4 v4, 0x0

    .line 325
    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 327
    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 328
    invoke-interface {p1, v7}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 314
    .end local v6    # "offset":I
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 331
    :cond_2
    return-void
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    return v0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 19
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 276
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v3, v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->mask:I

    .line 277
    .local v3, "mask":I
    iget v4, v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 278
    .local v4, "lookAheadStep":I
    iget-wide v5, v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->producerIndex:J

    .line 279
    .local v5, "producerIndex":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_3

    .line 280
    int-to-long v8, v7

    add-long/2addr v8, v5

    .line 281
    .local v8, "index":J
    int-to-long v10, v4

    add-long/2addr v10, v8

    invoke-virtual {v0, v10, v11, v3}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v10

    .line 282
    .local v10, "lookAheadElementOffset":I
    invoke-static {v2, v10}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    .line 284
    sub-int v11, v1, v7

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 285
    .local v11, "lookAheadLimit":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v11, :cond_0

    .line 286
    int-to-long v12, v14

    add-long/2addr v12, v8

    invoke-virtual {v0, v12, v13, v3}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v12

    .line 288
    .local v12, "offset":I
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 290
    move v13, v4

    move-wide/from16 v17, v5

    .end local v4    # "lookAheadStep":I
    .end local v5    # "producerIndex":J
    .local v13, "lookAheadStep":I
    .local v17, "producerIndex":J
    int-to-long v4, v14

    add-long/2addr v4, v8

    const-wide/16 v15, 0x1

    add-long/2addr v4, v15

    invoke-virtual {v0, v4, v5}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 285
    .end local v12    # "offset":I
    add-int/lit8 v14, v14, 0x1

    move v4, v13

    move-wide/from16 v5, v17

    goto :goto_1

    .end local v13    # "lookAheadStep":I
    .end local v17    # "producerIndex":J
    .restart local v4    # "lookAheadStep":I
    .restart local v5    # "producerIndex":J
    :cond_0
    move v13, v4

    move-wide/from16 v17, v5

    .line 292
    .end local v4    # "lookAheadStep":I
    .end local v5    # "producerIndex":J
    .end local v14    # "j":I
    .restart local v13    # "lookAheadStep":I
    .restart local v17    # "producerIndex":J
    add-int/lit8 v4, v11, -0x1

    add-int/2addr v7, v4

    .line 293
    .end local v11    # "lookAheadLimit":I
    goto :goto_2

    .line 294
    .end local v13    # "lookAheadStep":I
    .end local v17    # "producerIndex":J
    .restart local v4    # "lookAheadStep":I
    .restart local v5    # "producerIndex":J
    :cond_1
    move v13, v4

    move-wide/from16 v17, v5

    .end local v4    # "lookAheadStep":I
    .end local v5    # "producerIndex":J
    .restart local v13    # "lookAheadStep":I
    .restart local v17    # "producerIndex":J
    invoke-virtual {v0, v8, v9, v3}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 295
    .local v4, "offset":I
    invoke-static {v2, v4}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 296
    return v7

    .line 299
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 301
    const-wide/16 v5, 0x1

    add-long/2addr v5, v8

    invoke-virtual {v0, v5, v6}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 279
    .end local v4    # "offset":I
    .end local v8    # "index":J
    .end local v10    # "lookAheadElementOffset":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v4, v13

    move-wide/from16 v5, v17

    goto :goto_0

    .line 304
    .end local v7    # "i":I
    .end local v13    # "lookAheadStep":I
    .end local v17    # "producerIndex":J
    .local v4, "lookAheadStep":I
    .restart local v5    # "producerIndex":J
    :cond_3
    return v1
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 12
    .param p2, "w"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "e"    # Lorg/jctools/queues/MessagePassingQueue$ExitCondition;
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

    .line 335
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 336
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->mask:I

    .line 337
    .local v1, "mask":I
    iget v2, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 338
    .local v2, "lookAheadStep":I
    iget-wide v3, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->producerIndex:J

    .line 339
    .local v3, "producerIndex":J
    const/4 v5, 0x0

    .line 340
    .local v5, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    int-to-long v6, v2

    add-long/2addr v6, v3

    invoke-virtual {p0, v6, v7, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    .line 342
    .local v6, "lookAheadElementOffset":I
    invoke-static {v0, v6}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v8, 0x1

    if-nez v7, :cond_1

    .line 344
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_0

    .line 345
    invoke-virtual {p0, v3, v4, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v10

    .line 346
    .local v10, "offset":I
    add-long/2addr v3, v8

    .line 348
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v0, v10, v11}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 350
    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 344
    .end local v10    # "offset":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "j":I
    :cond_0
    goto :goto_2

    .line 353
    :cond_1
    invoke-virtual {p0, v3, v4, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v7

    .line 354
    .local v7, "offset":I
    invoke-static {v0, v7}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 356
    invoke-interface {p2, v5}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v5

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    add-long/2addr v3, v8

    .line 360
    const/4 v5, 0x0

    .line 362
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 364
    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 366
    .end local v6    # "lookAheadElementOffset":I
    .end local v7    # "offset":I
    :goto_2
    goto :goto_0

    .line 367
    :cond_3
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 148
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL3Pad;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 166
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->mask:I

    .line 167
    .local v1, "mask":I
    iget-wide v2, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->producerIndex:J

    .line 168
    .local v2, "producerIndex":J
    iget-wide v4, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->producerLimit:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->offerSlowPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;IJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    const/4 v4, 0x0

    return v4

    .line 171
    :cond_0
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 173
    .local v4, "offset":I
    invoke-static {v0, v4, p1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 175
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 176
    const/4 v5, 0x1

    return v5

    .line 162
    .end local v0    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "mask":I
    .end local v2    # "producerIndex":J
    .end local v4    # "offset":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 223
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-wide v1, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v1

    invoke-static {v0, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->consumerIndex:J

    .line 201
    .local v0, "consumerIndex":J
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v2

    .line 203
    .local v2, "offset":I
    iget-object v3, p0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 205
    .local v3, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {v3, v2}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 206
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 207
    return-object v5

    .line 210
    :cond_0
    invoke-static {v3, v2, v5}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 212
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 213
    return-object v4
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "message":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 148
    .local p0, "this":Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueueL3Pad;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
