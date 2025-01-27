.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;
.source "BaseSpscLinkedArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields<",
        "TE;>;",
        "Lorg/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lorg/jctools/queues/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field private static final JUMP:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 96
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;-><init>()V

    return-void
.end method

.method private newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 363
    invoke-static {v0}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-long v1, v1

    .line 364
    .local v1, "mask":J
    iput-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerMask:J

    .line 365
    invoke-static {p2, p3, v1, v2}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v3

    .line 366
    .local v3, "offset":J
    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 372
    .local v0, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 373
    invoke-static {v0}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-long v1, v1

    .line 374
    .local v1, "mask":J
    iput-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerMask:J

    .line 375
    invoke-static {p2, p3, v1, v2}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v3

    .line 376
    .local v3, "offset":J
    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, "n":Ljava/lang/Object;, "TE;"
    if-eqz v5, :cond_0

    .line 383
    const-wide/16 v6, 0x1

    add-long/2addr v6, p2

    invoke-virtual {p0, v6, v7}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 384
    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 385
    return-object v5

    .line 379
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "new buffer must have at least one element"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public currentConsumerIndex()J
    .locals 2

    .line 135
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 2

    .line 129
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
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

    .line 175
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 1
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 199
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "wait"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
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

    .line 231
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 232
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

    .line 181
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 182
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->capacity()I

    move-result v2

    .line 185
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 186
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 188
    long-to-int v4, v0

    return v4

    .line 190
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 192
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 193
    long-to-int v3, v0

    return v3

    .line 192
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

    .line 205
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v10, p0

    move/from16 v11, p2

    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 208
    iget-object v13, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 209
    .local v13, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v14, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerIndex:J

    .line 210
    .local v14, "index":J
    iget-wide v8, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerMask:J

    .line 211
    .local v8, "mask":J
    invoke-static {v14, v15, v8, v9}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v16

    .line 213
    .local v16, "offset":J
    iget-wide v0, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerBufferLimit:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_0

    .line 215
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v3, v14

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    goto :goto_1

    .line 219
    :cond_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v8

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-wide/from16 v19, v8

    .end local v8    # "mask":J
    .local v19, "mask":J
    move-object/from16 v8, v18

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    return v12

    .line 205
    .end local v13    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v14    # "index":J
    .end local v16    # "offset":J
    .end local v19    # "mask":J
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 225
    .end local v12    # "i":I
    :cond_2
    return v11
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "wait"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
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

    .line 237
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    :goto_1
    sget v0, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    goto :goto_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "idleCounter":I
    :goto_2
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    goto :goto_2

    .line 249
    .end local v0    # "idleCounter":I
    :cond_1
    goto :goto_0

    .line 250
    :cond_2
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 117
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .param p1, "currIndex"    # J
    .param p4, "offset"    # J
    .param p7, "offsetInNew"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TE;J[TE;JTE;)V"
        }
    .end annotation

    .line 345
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p3, "oldBuffer":[Ljava/lang/Object;, "[TE;"
    .local p6, "newBuffer":[Ljava/lang/Object;, "[TE;"
    .local p9, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p6, p7, p8, p9}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 347
    invoke-virtual {p0, p3, p6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soNext([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 348
    sget-object v0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {p3, p4, p5, v0}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 350
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 351
    return-void
.end method

.method protected final lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->nextArrayOffset([Ljava/lang/Object;)J

    move-result-wide v0

    .line 148
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 150
    .local v2, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 151
    return-object v2
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v10, p0

    if-eqz p1, :cond_1

    .line 266
    iget-object v11, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 267
    .local v11, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v12, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerIndex:J

    .line 268
    .local v12, "index":J
    iget-wide v14, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerMask:J

    .line 269
    .local v14, "mask":J
    invoke-static {v12, v13, v14, v15}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v16

    .line 271
    .local v16, "offset":J
    iget-wide v0, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->producerBufferLimit:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_0

    .line 273
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v12

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    .line 274
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v14

    move-wide v4, v12

    move-wide/from16 v6, v16

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result v0

    return v0

    .line 263
    .end local v11    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v12    # "index":J
    .end local v14    # "mask":J
    .end local v16    # "offset":J
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method abstract offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJJTE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public peek()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 327
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerIndex:J

    .line 328
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerMask:J

    .line 329
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 330
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 331
    .local v7, "e":Ljava/lang/Object;
    sget-object v8, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v8, :cond_0

    .line 333
    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 336
    :cond_0
    return-object v7
.end method

.method public poll()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 298
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerIndex:J

    .line 299
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->consumerMask:J

    .line 300
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 301
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 302
    .local v7, "e":Ljava/lang/Object;
    sget-object v8, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 303
    .local v8, "isNextBuffer":Z
    :goto_0
    const/4 v9, 0x0

    if-eqz v7, :cond_1

    if-nez v8, :cond_1

    .line 305
    const-wide/16 v10, 0x1

    add-long/2addr v10, v1

    invoke-virtual {p0, v10, v11}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 306
    invoke-static {v0, v5, v6, v9}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 307
    return-object v7

    .line 309
    :cond_1
    if-eqz v8, :cond_2

    .line 311
    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 314
    :cond_2
    return-object v9
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

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

    .line 169
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->peek()Ljava/lang/Object;

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

    .line 163
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 111
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->size(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method protected final soNext([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    .local p2, "next":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->nextArrayOffset([Ljava/lang/Object;)J

    move-result-wide v0

    .line 141
    .local v0, "offset":J
    invoke-static {p1, v0, v1, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V
    .locals 2
    .param p3, "index"    # J
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)V"
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1, p5, p6, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 356
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 357
    return-void
.end method
