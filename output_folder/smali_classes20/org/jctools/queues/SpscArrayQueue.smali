.class public Lorg/jctools/queues/SpscArrayQueue;
.super Lorg/jctools/queues/SpscArrayQueueL3Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpscArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 135
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jctools/queues/SpscArrayQueueL3Pad;-><init>(I)V

    .line 136
    return-void
.end method

.method private offerSlowPath([Ljava/lang/Object;JJ)Z
    .locals 4
    .param p2, "mask"    # J
    .param p4, "producerIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)Z"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    iget v0, p0, Lorg/jctools/queues/SpscArrayQueue;->lookAheadStep:I

    .line 170
    .local v0, "lookAheadStep":I
    int-to-long v1, v0

    add-long/2addr v1, p4

    invoke-static {v1, v2, p2, p3}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 172
    int-to-long v1, v0

    add-long/2addr v1, p4

    iput-wide v1, p0, Lorg/jctools/queues/SpscArrayQueue;->producerLimit:J

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p4, p5, p2, p3}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v1

    .line 177
    .local v1, "offset":J
    invoke-static {p1, v1, v2}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 179
    const/4 v3, 0x0

    return v3

    .line 182
    .end local v1    # "offset":J
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
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

    .line 239
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/SpscArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

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

    .line 251
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 252
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpscArrayQueue;->mask:J

    .line 253
    .local v1, "mask":J
    iget-wide v3, p0, Lorg/jctools/queues/SpscArrayQueue;->consumerIndex:J

    .line 255
    .local v3, "consumerIndex":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 257
    int-to-long v6, v5

    add-long/2addr v6, v3

    .line 258
    .local v6, "index":J
    invoke-static {v6, v7, v1, v2}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v8

    .line 259
    .local v8, "offset":J
    invoke-static {v0, v8, v9}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 260
    .local v10, "e":Ljava/lang/Object;, "TE;"
    if-nez v10, :cond_0

    .line 262
    return v5

    .line 264
    :cond_0
    const/4 v11, 0x0

    invoke-static {v0, v8, v9, v11}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    const-wide/16 v11, 0x1

    add-long/2addr v11, v6

    invoke-virtual {p0, v11, v12}, Lorg/jctools/queues/SpscArrayQueue;->soConsumerIndex(J)V

    .line 266
    invoke-interface {p1, v10}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 255
    .end local v6    # "index":J
    .end local v8    # "offset":J
    .end local v10    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
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

    .line 312
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 313
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/SpscArrayQueue;->mask:J

    .line 314
    .local v1, "mask":J
    iget-wide v3, p0, Lorg/jctools/queues/SpscArrayQueue;->consumerIndex:J

    .line 316
    .local v3, "consumerIndex":J
    const/4 v5, 0x0

    .line 317
    .local v5, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_1

    .line 321
    invoke-static {v3, v4, v1, v2}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v7

    .line 322
    .local v7, "offset":J
    invoke-static {v0, v7, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 323
    .local v9, "e":Ljava/lang/Object;, "TE;"
    if-nez v9, :cond_0

    .line 325
    invoke-interface {p2, v5}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v5

    .line 326
    goto :goto_2

    .line 328
    :cond_0
    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    .line 329
    const/4 v5, 0x0

    .line 330
    const/4 v10, 0x0

    invoke-static {v0, v7, v8, v10}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 331
    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/SpscArrayQueue;->soConsumerIndex(J)V

    .line 332
    invoke-interface {p1, v9}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 319
    .end local v7    # "offset":J
    .end local v9    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_1
    goto :goto_0

    .line 335
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

    .line 245
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/SpscArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    return v0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 22
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 275
    .local v2, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v3, v0, Lorg/jctools/queues/SpscArrayQueue;->mask:J

    .line 276
    .local v3, "mask":J
    iget v5, v0, Lorg/jctools/queues/SpscArrayQueue;->lookAheadStep:I

    .line 277
    .local v5, "lookAheadStep":I
    iget-wide v6, v0, Lorg/jctools/queues/SpscArrayQueue;->producerIndex:J

    .line 279
    .local v6, "producerIndex":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 281
    int-to-long v9, v8

    add-long/2addr v9, v6

    .line 282
    .local v9, "index":J
    int-to-long v11, v5

    add-long/2addr v11, v9

    invoke-static {v11, v12, v3, v4}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v11

    .line 283
    .local v11, "lookAheadElementOffset":J
    invoke-static {v2, v11, v12}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    .line 285
    sub-int v13, v1, v8

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 286
    .local v13, "lookAheadLimit":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "j":I
    :goto_1
    if-ge v14, v13, :cond_0

    .line 288
    move v15, v5

    move-wide/from16 v18, v6

    .end local v5    # "lookAheadStep":I
    .end local v6    # "producerIndex":J
    .local v15, "lookAheadStep":I
    .local v18, "producerIndex":J
    int-to-long v5, v14

    add-long/2addr v5, v9

    invoke-static {v5, v6, v3, v4}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 289
    .local v5, "offset":J
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 290
    move-wide/from16 v20, v5

    .end local v5    # "offset":J
    .local v20, "offset":J
    int-to-long v5, v14

    add-long/2addr v5, v9

    const-wide/16 v16, 0x1

    add-long v5, v5, v16

    invoke-virtual {v0, v5, v6}, Lorg/jctools/queues/SpscArrayQueue;->soProducerIndex(J)V

    .line 286
    .end local v20    # "offset":J
    add-int/lit8 v14, v14, 0x1

    move v5, v15

    move-wide/from16 v6, v18

    goto :goto_1

    .end local v15    # "lookAheadStep":I
    .end local v18    # "producerIndex":J
    .local v5, "lookAheadStep":I
    .restart local v6    # "producerIndex":J
    :cond_0
    move v15, v5

    move-wide/from16 v18, v6

    .line 292
    .end local v5    # "lookAheadStep":I
    .end local v6    # "producerIndex":J
    .end local v14    # "j":I
    .restart local v15    # "lookAheadStep":I
    .restart local v18    # "producerIndex":J
    add-int/lit8 v5, v13, -0x1

    add-int/2addr v8, v5

    .line 293
    .end local v13    # "lookAheadLimit":I
    goto :goto_2

    .line 296
    .end local v15    # "lookAheadStep":I
    .end local v18    # "producerIndex":J
    .restart local v5    # "lookAheadStep":I
    .restart local v6    # "producerIndex":J
    :cond_1
    move v15, v5

    move-wide/from16 v18, v6

    .end local v5    # "lookAheadStep":I
    .end local v6    # "producerIndex":J
    .restart local v15    # "lookAheadStep":I
    .restart local v18    # "producerIndex":J
    invoke-static {v9, v10, v3, v4}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 297
    .local v5, "offset":J
    invoke-static {v2, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 299
    return v8

    .line 301
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 302
    const-wide/16 v13, 0x1

    add-long/2addr v13, v9

    invoke-virtual {v0, v13, v14}, Lorg/jctools/queues/SpscArrayQueue;->soProducerIndex(J)V

    .line 279
    .end local v5    # "offset":J
    .end local v9    # "index":J
    .end local v11    # "lookAheadElementOffset":J
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v5, v15

    move-wide/from16 v6, v18

    goto :goto_0

    .line 306
    .end local v8    # "i":I
    .end local v15    # "lookAheadStep":I
    .end local v18    # "producerIndex":J
    .local v5, "lookAheadStep":I
    .restart local v6    # "producerIndex":J
    :cond_3
    return v1
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 16
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

    .line 340
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 341
    .local v1, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, v0, Lorg/jctools/queues/SpscArrayQueue;->mask:J

    .line 342
    .local v2, "mask":J
    iget v4, v0, Lorg/jctools/queues/SpscArrayQueue;->lookAheadStep:I

    .line 343
    .local v4, "lookAheadStep":I
    iget-wide v5, v0, Lorg/jctools/queues/SpscArrayQueue;->producerIndex:J

    .line 344
    .local v5, "producerIndex":J
    const/4 v7, 0x0

    .line 345
    .local v7, "counter":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 347
    int-to-long v8, v4

    add-long/2addr v8, v5

    invoke-static {v8, v9, v2, v3}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v8

    .line 348
    .local v8, "lookAheadElementOffset":J
    invoke-static {v1, v8, v9}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v11, 0x1

    if-nez v10, :cond_1

    .line 350
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v4, :cond_0

    .line 352
    invoke-static {v5, v6, v2, v3}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v13

    .line 353
    .local v13, "offset":J
    add-long/2addr v5, v11

    .line 354
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v1, v13, v14, v15}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 355
    invoke-virtual {v0, v5, v6}, Lorg/jctools/queues/SpscArrayQueue;->soProducerIndex(J)V

    .line 350
    .end local v13    # "offset":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p2

    .end local v10    # "j":I
    goto :goto_2

    .line 360
    :cond_1
    invoke-static {v5, v6, v2, v3}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v13

    .line 361
    .restart local v13    # "offset":J
    invoke-static {v1, v13, v14}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 363
    move-object/from16 v10, p2

    invoke-interface {v10, v7}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v7

    .line 364
    goto :goto_0

    .line 366
    :cond_2
    move-object/from16 v10, p2

    add-long/2addr v5, v11

    .line 367
    const/4 v7, 0x0

    .line 368
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v1, v13, v14, v11}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 369
    invoke-virtual {v0, v5, v6}, Lorg/jctools/queues/SpscArrayQueue;->soProducerIndex(J)V

    .line 371
    .end local v8    # "lookAheadElementOffset":J
    .end local v13    # "offset":J
    :goto_2
    goto :goto_0

    .line 372
    :cond_3
    move-object/from16 v10, p2

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1

    .line 151
    iget-object v6, p0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 152
    .local v6, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v7, p0, Lorg/jctools/queues/SpscArrayQueue;->mask:J

    .line 153
    .local v7, "mask":J
    iget-wide v9, p0, Lorg/jctools/queues/SpscArrayQueue;->producerIndex:J

    .line 155
    .local v9, "producerIndex":J
    iget-wide v0, p0, Lorg/jctools/queues/SpscArrayQueue;->producerLimit:J

    cmp-long v0, v9, v0

    if-ltz v0, :cond_0

    .line 156
    move-object v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/jctools/queues/SpscArrayQueue;->offerSlowPath([Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    invoke-static {v9, v10, v7, v8}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    .line 162
    .local v0, "offset":J
    invoke-static {v6, v0, v1, p1}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 163
    const-wide/16 v2, 0x1

    add-long/2addr v2, v9

    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/SpscArrayQueue;->soProducerIndex(J)V

    .line 164
    const/4 v2, 0x1

    return v2

    .line 148
    .end local v0    # "offset":J
    .end local v6    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v7    # "mask":J
    .end local v9    # "producerIndex":J
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

    .line 215
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lorg/jctools/queues/SpscArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/SpscArrayQueue;->consumerIndex:J

    .line 194
    .local v0, "consumerIndex":J
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v2

    .line 196
    .local v2, "offset":J
    iget-object v4, p0, Lorg/jctools/queues/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 197
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {v4, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 198
    .local v5, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 200
    return-object v6

    .line 202
    :cond_0
    invoke-static {v4, v2, v3, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 203
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lorg/jctools/queues/SpscArrayQueue;->soConsumerIndex(J)V

    .line 204
    return-object v5
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    .local p1, "message":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

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

    .line 233
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscArrayQueue;->peek()Ljava/lang/Object;

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

    .line 227
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueue;, "Lorg/jctools/queues/SpscArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
