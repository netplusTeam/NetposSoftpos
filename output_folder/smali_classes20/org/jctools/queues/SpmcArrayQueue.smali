.class public Lorg/jctools/queues/SpmcArrayQueue;
.super Lorg/jctools/queues/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpmcArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 140
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 141
    return-void
.end method

.method private removeElement([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {p2, p3, p4, p5}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    .line 210
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "e":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 213
    return-object v2
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

    .line 283
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->capacity()I

    move-result v0

    .line 284
    .local v0, "capacity":I
    const/4 v1, 0x0

    .line 285
    .local v1, "sum":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "drained":I
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/SpmcArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v3

    move v2, v3

    if-nez v3, :cond_0

    .line 290
    goto :goto_1

    .line 292
    :cond_0
    add-int/2addr v1, v2

    .line 293
    .end local v2    # "drained":I
    goto :goto_0

    .line 294
    :cond_1
    :goto_1
    return v1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 17
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 307
    .local v7, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v8, v6, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 308
    .local v8, "mask":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v0

    .line 309
    .local v0, "currProducerIndexCache":J
    const/4 v2, 0x0

    .line 313
    .local v2, "adjustedLimit":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    .line 315
    .local v10, "currentConsumerIndex":J
    cmp-long v3, v10, v0

    if-ltz v3, :cond_1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 318
    .local v3, "currProducerIndex":J
    cmp-long v5, v10, v3

    if-ltz v5, :cond_0

    .line 320
    const/4 v5, 0x0

    return v5

    .line 324
    :cond_0
    move-wide v0, v3

    .line 325
    invoke-virtual {v6, v3, v4}, Lorg/jctools/queues/SpmcArrayQueue;->svProducerIndexCache(J)V

    move-wide v12, v0

    goto :goto_1

    .line 315
    .end local v3    # "currProducerIndex":J
    :cond_1
    move-wide v12, v0

    .line 329
    .end local v0    # "currProducerIndexCache":J
    .local v12, "currProducerIndexCache":J
    :goto_1
    sub-long v0, v12, v10

    long-to-int v0, v0

    .line 330
    .local v0, "remaining":I
    move/from16 v14, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 332
    .end local v0    # "remaining":I
    .end local v2    # "adjustedLimit":I
    .local v15, "adjustedLimit":I
    int-to-long v0, v15

    add-long/2addr v0, v10

    invoke-virtual {v6, v10, v11, v0, v1}, Lorg/jctools/queues/SpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_2
    if-ge v4, v15, :cond_2

    .line 336
    int-to-long v0, v4

    add-long v2, v10, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v16, v4

    .end local v4    # "i":I
    .local v16, "i":I
    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/jctools/queues/SpmcArrayQueue;->removeElement([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v4, v16, 0x1

    .end local v16    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 338
    .end local v4    # "i":I
    :cond_2
    return v15

    .line 332
    :cond_3
    move-object/from16 v1, p1

    move-wide v0, v12

    move v2, v15

    goto :goto_0
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

    .line 366
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/SpmcArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 372
    goto :goto_0

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_1
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

    .line 300
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/SpmcArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    return v0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 10
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 345
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 346
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 347
    .local v1, "mask":J
    iget-wide v3, p0, Lorg/jctools/queues/SpmcArrayQueue;->producerIndex:J

    .line 349
    .local v3, "producerIndex":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 351
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v6

    .line 352
    .local v6, "offset":J
    invoke-static {v0, v6, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 354
    return v5

    .line 356
    :cond_0
    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 357
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 358
    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/SpmcArrayQueue;->soProducerIndex(J)V

    .line 349
    .end local v6    # "offset":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 360
    .end local v5    # "i":I
    :cond_1
    return p2
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 11
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

    .line 381
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 382
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 383
    .local v1, "mask":J
    iget-wide v3, p0, Lorg/jctools/queues/SpmcArrayQueue;->producerIndex:J

    .line 384
    .local v3, "producerIndex":J
    const/4 v5, 0x0

    .line 385
    .local v5, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 387
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_1

    .line 389
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v7

    .line 390
    .local v7, "offset":J
    invoke-static {v0, v7, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 392
    invoke-interface {p2, v5}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v5

    .line 393
    goto :goto_2

    .line 395
    :cond_0
    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 396
    const/4 v5, 0x0

    .line 397
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v7, v8, v9}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 398
    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/SpmcArrayQueue;->soProducerIndex(J)V

    .line 387
    .end local v7    # "offset":J
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_1
    goto :goto_0

    .line 401
    :cond_2
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 151
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 152
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 153
    .local v3, "currProducerIndex":J
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 154
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 156
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v7

    sub-long v7, v3, v7

    .line 158
    .local v7, "size":J
    cmp-long v9, v7, v1

    if-lez v9, :cond_0

    .line 160
    const/4 v9, 0x0

    return v9

    .line 165
    :cond_0
    :goto_0
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 171
    .end local v7    # "size":J
    :cond_1
    invoke-static {v0, v5, v6, p1}, Lorg/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 174
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lorg/jctools/queues/SpmcArrayQueue;->soProducerIndex(J)V

    .line 175
    const/4 v7, 0x1

    return v7

    .line 148
    .end local v0    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "mask":J
    .end local v3    # "currProducerIndex":J
    .end local v5    # "offset":J
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 220
    .local v0, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 225
    .local v2, "currProducerIndexCache":J
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    .line 226
    .local v4, "currentConsumerIndex":J
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    .line 228
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    .line 229
    .local v6, "currProducerIndex":J
    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    .line 231
    const/4 v8, 0x0

    return-object v8

    .line 235
    :cond_0
    invoke-virtual {p0, v6, v7}, Lorg/jctools/queues/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 239
    .end local v6    # "currProducerIndex":J
    :cond_1
    iget-object v6, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v4, v5, v0, v1}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_2

    .line 240
    return-object v7

    .line 239
    :cond_2
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v0

    .line 185
    .local v0, "currProducerIndexCache":J
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    .line 186
    .local v8, "currentConsumerIndex":J
    cmp-long v2, v8, v0

    if-ltz v2, :cond_1

    .line 188
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    .line 189
    .local v2, "currProducerIndex":J
    cmp-long v4, v8, v2

    if-ltz v4, :cond_0

    .line 191
    const/4 v4, 0x0

    return-object v4

    .line 195
    :cond_0
    move-wide v0, v2

    .line 196
    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 200
    .end local v2    # "currProducerIndex":J
    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-virtual {p0, v8, v9, v2, v3}, Lorg/jctools/queues/SpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v3, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    iget-wide v6, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    move-object v2, p0

    move-wide v4, v8

    invoke-direct/range {v2 .. v7}, Lorg/jctools/queues/SpmcArrayQueue;->removeElement([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 200
    :cond_2
    goto :goto_0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 251
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 252
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 253
    .local v3, "producerIndex":J
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 254
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 256
    const/4 v7, 0x0

    return v7

    .line 258
    :cond_0
    invoke-static {v0, v5, v6, p1}, Lorg/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lorg/jctools/queues/SpmcArrayQueue;->soProducerIndex(J)V

    .line 262
    const/4 v7, 0x1

    return v7

    .line 248
    .end local v0    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "mask":J
    .end local v3    # "producerIndex":J
    .end local v5    # "offset":J
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 275
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpmcArrayQueue;->mask:J

    .line 276
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 277
    .local v3, "consumerIndex":J
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/SpmcArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueue;, "Lorg/jctools/queues/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpmcArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
