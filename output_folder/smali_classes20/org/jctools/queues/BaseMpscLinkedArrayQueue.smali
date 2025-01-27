.class public abstract Lorg/jctools/queues/BaseMpscLinkedArrayQueue;
.super Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;
.source "BaseMpscLinkedArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<",
        "TE;>;",
        "Lorg/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lorg/jctools/queues/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field private static final CONTINUE_TO_P_INDEX_CAS:I = 0x0

.field private static final JUMP:Ljava/lang/Object;

.field private static final QUEUE_FULL:I = 0x2

.field private static final QUEUE_RESIZE:I = 0x3

.field private static final RETRY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "initialCapacity"    # I

    .line 145
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;-><init>()V

    .line 146
    const/4 v0, 0x2

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 148
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 150
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 152
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v3, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 154
    iput-wide v1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 155
    iput-object v3, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 156
    iput-wide v1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 157
    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerLimit(J)V

    .line 158
    return-void
.end method

.method private getNextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;
    .locals 4
    .param p2, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)[TE;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p2, p3}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->nextArrayOffset(J)J

    move-result-wide v0

    .line 401
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 402
    .local v2, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 403
    return-object v2
.end method

.method private newBufferAndOffset([Ljava/lang/Object;J)J
    .locals 2
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)J"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object p1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 438
    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 439
    iget-wide v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferAndOffset([Ljava/lang/Object;J)J

    move-result-wide v0

    .line 427
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 428
    .local v2, "n":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 432
    return-object v2

    .line 430
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "new buffer must have at least one element"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferAndOffset([Ljava/lang/Object;J)J

    move-result-wide v0

    .line 414
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 415
    .local v2, "n":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 419
    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 420
    const-wide/16 v3, 0x2

    add-long/2addr v3, p2

    invoke-virtual {p0, v3, v4}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 421
    return-object v2

    .line 417
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "new buffer must have at least one element"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private nextArrayOffset(J)J
    .locals 4
    .param p1, "mask"    # J

    .line 408
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    const-wide/16 v0, 0x2

    add-long/2addr v0, p1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private offerSlowPath(JJJ)I
    .locals 15
    .param p1, "mask"    # J
    .param p3, "pIndex"    # J
    .param p5, "producerLimit"    # J

    .line 357
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    move-object v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 358
    .local v3, "cIndex":J
    invoke-virtual/range {p0 .. p2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->getCurrentBufferCapacity(J)J

    move-result-wide v5

    .line 360
    .local v5, "bufferCapacity":J
    add-long v7, v3, v5

    cmp-long v7, v7, v1

    const/4 v8, 0x1

    if-lez v7, :cond_1

    .line 362
    add-long v9, v3, v5

    move-wide/from16 v11, p5

    invoke-virtual {p0, v11, v12, v9, v10}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerLimit(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 365
    return v8

    .line 370
    :cond_0
    const/4 v7, 0x0

    return v7

    .line 374
    :cond_1
    move-wide/from16 v11, p5

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->availableInQueue(JJ)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-gtz v7, :cond_2

    .line 377
    const/4 v7, 0x2

    return v7

    .line 380
    :cond_2
    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    invoke-virtual {p0, v1, v2, v9, v10}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerIndex(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 383
    const/4 v7, 0x3

    return v7

    .line 388
    :cond_3
    return v8
.end method

.method private resize(J[Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 18
    .param p1, "oldMask"    # J
    .param p4, "pIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TE;JTE;)V"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p3, "oldBuffer":[Ljava/lang/Object;, "[TE;"
    .local p6, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBufferSize([Ljava/lang/Object;)I

    move-result v4

    .line 643
    .local v4, "newBufferLength":I
    invoke-static {v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v5

    .line 645
    .local v5, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v5, v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 646
    add-int/lit8 v6, v4, -0x2

    shl-int/lit8 v6, v6, 0x1

    .line 647
    .local v6, "newMask":I
    int-to-long v7, v6

    iput-wide v7, v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 649
    move-wide/from16 v7, p1

    invoke-static {v2, v3, v7, v8}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v9

    .line 650
    .local v9, "offsetInOld":J
    int-to-long v11, v6

    invoke-static {v2, v3, v11, v12}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v11

    .line 652
    .local v11, "offsetInNew":J
    move-object/from16 v13, p6

    invoke-static {v5, v11, v12, v13}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 653
    invoke-direct/range {p0 .. p2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->nextArrayOffset(J)J

    move-result-wide v14

    invoke-static {v1, v14, v15, v5}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 656
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v14

    .line 657
    .local v14, "cIndex":J
    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "newBufferLength":I
    .end local v5    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    .local v16, "newBufferLength":I
    .local v17, "newBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {v0, v2, v3, v14, v15}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->availableInQueue(JJ)J

    move-result-wide v4

    .line 658
    .local v4, "availableInQueue":J
    const-string v7, "availableInQueue"

    invoke-static {v4, v5, v7}, Lorg/jctools/util/RangeUtil;->checkPositive(JLjava/lang/String;)J

    .line 662
    int-to-long v7, v6

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerLimit(J)V

    .line 665
    const-wide/16 v7, 0x2

    add-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 670
    sget-object v7, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {v1, v9, v10, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 671
    return-void
.end method


# virtual methods
.method protected abstract availableInQueue(JJ)J
.end method

.method public abstract capacity()I
.end method

.method public currentConsumerIndex()J
    .locals 4

    .line 451
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 4

    .line 445
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

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

    .line 606
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 3
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 614
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 616
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "m":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 618
    invoke-interface {p1, v2}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    .end local v2    # "m":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
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

    .line 626
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 627
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 630
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 632
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 633
    goto :goto_0

    .line 635
    :cond_0
    const/4 v0, 0x0

    .line 636
    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 637
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 638
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

    .line 507
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 508
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->capacity()I

    move-result v2

    .line 511
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 512
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 514
    long-to-int v4, v0

    return v4

    .line 516
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 518
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 519
    long-to-int v3, v0

    return v3

    .line 518
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 18
    .param p2, "batchSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v7, p0

    .line 531
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerLimit()J

    move-result-wide v8

    .line 532
    .local v8, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v10

    .line 534
    .local v10, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v10, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 536
    goto :goto_0

    .line 543
    :cond_0
    iget-wide v12, v7, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 544
    .local v12, "mask":J
    iget-object v14, v7, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 548
    .local v14, "buffer":[Ljava/lang/Object;, "[TE;"
    mul-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr v0, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 550
    .local v5, "batchIndex":J
    cmp-long v0, v10, v8

    if-gez v0, :cond_2

    cmp-long v0, v8, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v15, v5

    goto :goto_2

    .line 552
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v10

    move-wide v15, v5

    .end local v5    # "batchIndex":J
    .local v15, "batchIndex":J
    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->offerSlowPath(JJJ)I

    move-result v17

    .line 553
    .local v17, "result":I
    packed-switch v17, :pswitch_data_0

    goto :goto_2

    .line 562
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move-wide v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->resize(J[Ljava/lang/Object;JLjava/lang/Object;)V

    .line 563
    const/4 v0, 0x1

    return v0

    .line 560
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 558
    :pswitch_2
    goto :goto_0

    .line 568
    .end local v17    # "result":I
    :goto_2
    move-wide v0, v15

    .end local v15    # "batchIndex":J
    .local v0, "batchIndex":J
    invoke-virtual {v7, v10, v11, v0, v1}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 570
    sub-long v5, v0, v10

    const-wide/16 v2, 0x2

    div-long/2addr v5, v2

    long-to-int v2, v5

    .line 571
    .local v2, "claimedSlots":I
    nop

    .line 575
    .end local v0    # "batchIndex":J
    .end local v8    # "producerLimit":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 577
    mul-int/lit8 v1, v0, 0x2

    int-to-long v3, v1

    add-long/2addr v3, v10

    invoke-static {v3, v4, v12, v13}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v3

    .line 578
    .local v3, "offset":J
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v3, v4, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 575
    .end local v3    # "offset":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 580
    .end local v0    # "i":I
    :cond_3
    return v2

    .line 573
    .end local v2    # "claimedSlots":I
    :cond_4
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 590
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    sget v0, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "idleCounter":I
    :goto_1
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 597
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    goto :goto_1

    .line 599
    .end local v0    # "idleCounter":I
    :cond_1
    goto :goto_0

    .line 601
    :cond_2
    return-void
.end method

.method protected abstract getCurrentBufferCapacity(J)J
.end method

.method protected abstract getNextBufferSize([Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation
.end method

.method public final isEmpty()Z
    .locals 4

    .line 209
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 163
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_3

    .line 232
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerLimit()J

    move-result-wide v9

    .line 233
    .local v9, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v11

    .line 235
    .local v11, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v11, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 237
    goto :goto_0

    .line 242
    :cond_0
    iget-wide v13, v7, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 243
    .local v13, "mask":J
    iget-object v15, v7, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 247
    .local v15, "buffer":[Ljava/lang/Object;, "[TE;"
    cmp-long v0, v9, v11

    const/16 v16, 0x1

    if-gtz v0, :cond_1

    .line 249
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v11

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->offerSlowPath(JJJ)I

    move-result v17

    .line 250
    .local v17, "result":I
    packed-switch v17, :pswitch_data_0

    goto :goto_1

    .line 259
    :pswitch_0
    move-object/from16 v0, p0

    move-wide v1, v13

    move-object v3, v15

    move-wide v4, v11

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->resize(J[Ljava/lang/Object;JLjava/lang/Object;)V

    .line 260
    return v16

    .line 257
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 255
    :pswitch_2
    goto :goto_0

    .line 264
    .end local v17    # "result":I
    :cond_1
    :goto_1
    :pswitch_3
    const-wide/16 v0, 0x2

    add-long/2addr v0, v11

    invoke-virtual {v7, v11, v12, v0, v1}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    nop

    .line 270
    .end local v9    # "producerLimit":J
    invoke-static {v11, v12, v13, v14}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v0

    .line 271
    .local v0, "offset":J
    invoke-static {v15, v0, v1, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 272
    return v16

    .line 268
    .end local v0    # "offset":J
    :cond_2
    goto :goto_0

    .line 223
    .end local v11    # "pIndex":J
    .end local v13    # "mask":J
    .end local v15    # "buffer":[Ljava/lang/Object;, "[TE;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 330
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerIndex:J

    .line 331
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 333
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v5

    .line 334
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 335
    .local v7, "e":Ljava/lang/Object;
    if-nez v7, :cond_1

    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 341
    :cond_0
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 343
    if-eqz v7, :cond_0

    .line 345
    :cond_1
    sget-object v8, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v8, :cond_2

    .line 347
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8, v1, v2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 349
    :cond_2
    return-object v7
.end method

.method public poll()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 285
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerIndex:J

    .line 286
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 288
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v5

    .line 289
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 290
    .local v7, "e":Ljava/lang/Object;
    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 292
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-eqz v9, :cond_1

    .line 299
    :cond_0
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 301
    if-eqz v7, :cond_0

    goto :goto_0

    .line 305
    :cond_1
    return-object v8

    .line 309
    :cond_2
    :goto_0
    sget-object v9, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v9, :cond_3

    .line 311
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    .line 312
    .local v8, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, v8, v1, v2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 315
    .end local v8    # "nextBuffer":[Ljava/lang/Object;, "[TE;"
    :cond_3
    invoke-static {v0, v5, v6, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 316
    const-wide/16 v8, 0x2

    add-long/2addr v8, v1

    invoke-virtual {p0, v8, v9}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 317
    return-object v7
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 492
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerIndex:J

    .line 493
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 495
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v5

    .line 496
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 497
    .local v7, "e":Ljava/lang/Object;
    sget-object v8, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v8, :cond_0

    .line 499
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8, v1, v2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 501
    :cond_0
    return-object v7
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 468
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerIndex:J

    .line 469
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 471
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcElementOffset(JJ)J

    move-result-wide v5

    .line 472
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 473
    .local v7, "e":Ljava/lang/Object;
    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 475
    return-object v8

    .line 477
    :cond_0
    sget-object v9, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v9, :cond_1

    .line 479
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    .line 480
    .local v8, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, v8, v1, v2}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 482
    .end local v8    # "nextBuffer":[Ljava/lang/Object;, "[TE;"
    :cond_1
    invoke-static {v0, v5, v6, v8}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 483
    const-wide/16 v8, 0x2

    add-long/2addr v8, v1

    invoke-virtual {p0, v8, v9}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 484
    return-object v7
.end method

.method public final size()I
    .locals 9

    .line 177
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 181
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 182
    .local v2, "before":J
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 183
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 184
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    .line 186
    sub-long v6, v4, v0

    const/4 v8, 0x1

    shr-long/2addr v6, v8

    .line 187
    .local v6, "size":J
    nop

    .line 192
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 194
    const v2, 0x7fffffff

    return v2

    .line 198
    :cond_0
    long-to-int v2, v6

    return v2

    .line 189
    .end local v6    # "size":J
    :cond_1
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 215
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueue;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
