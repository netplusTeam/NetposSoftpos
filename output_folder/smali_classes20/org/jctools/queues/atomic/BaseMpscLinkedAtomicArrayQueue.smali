.class public abstract Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueueColdProducerFields;
.source "BaseMpscLinkedAtomicArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueueColdProducerFields<",
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

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "initialCapacity"    # I

    .line 171
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueueColdProducerFields;-><init>()V

    .line 172
    const/4 v0, 0x2

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 173
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 175
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 177
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 178
    .local v3, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v3, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 179
    iput-wide v1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 180
    iput-object v3, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 181
    iput-wide v1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 183
    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerLimit(J)V

    .line 184
    return-void
.end method

.method private getNextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 3
    .param p2, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, p2, p3}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextArrayOffset(J)I

    move-result v0

    .line 372
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 373
    .local v1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 374
    return-object v1
.end method

.method private newBufferAndOffset(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)I
    .locals 2
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)I"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object p1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 406
    invoke-static {p1}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 407
    iget-wide v0, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v0

    return v0
.end method

.method private newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferAndOffset(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)I

    move-result v0

    .line 397
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 398
    .local v1, "n":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 401
    return-object v1

    .line 399
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "new buffer must have at least one element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferAndOffset(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)I

    move-result v0

    .line 384
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 385
    .local v1, "n":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 389
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 390
    const-wide/16 v2, 0x2

    add-long/2addr v2, p2

    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 391
    return-object v1

    .line 386
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "new buffer must have at least one element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private nextArrayOffset(J)I
    .locals 4
    .param p1, "mask"    # J

    .line 378
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    const-wide/16 v0, 0x2

    add-long/2addr v0, p1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v0

    return v0
.end method

.method private offerSlowPath(JJJ)I
    .locals 15
    .param p1, "mask"    # J
    .param p3, "pIndex"    # J
    .param p5, "producerLimit"    # J

    .line 340
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    move-object v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 341
    .local v3, "cIndex":J
    invoke-virtual/range {p0 .. p2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getCurrentBufferCapacity(J)J

    move-result-wide v5

    .line 342
    .local v5, "bufferCapacity":J
    add-long v7, v3, v5

    cmp-long v7, v7, v1

    const/4 v8, 0x1

    if-lez v7, :cond_1

    .line 343
    add-long v9, v3, v5

    move-wide/from16 v11, p5

    invoke-virtual {p0, v11, v12, v9, v10}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerLimit(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 345
    return v8

    .line 348
    :cond_0
    const/4 v7, 0x0

    return v7

    .line 351
    :cond_1
    move-wide/from16 v11, p5

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->availableInQueue(JJ)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-gtz v7, :cond_2

    .line 353
    const/4 v7, 0x2

    return v7

    .line 355
    :cond_2
    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    invoke-virtual {p0, v1, v2, v9, v10}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 357
    const/4 v7, 0x3

    return v7

    .line 360
    :cond_3
    return v8
.end method

.method private resize(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;)V
    .locals 18
    .param p1, "oldMask"    # J
    .param p4, "pIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JTE;)V"
        }
    .end annotation

    .line 572
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p3, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p6, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v4

    .line 573
    .local v4, "newBufferLength":I
    invoke-static {v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    .line 574
    .local v5, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v5, v0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 575
    add-int/lit8 v6, v4, -0x2

    shl-int/lit8 v6, v6, 0x1

    .line 576
    .local v6, "newMask":I
    int-to-long v7, v6

    iput-wide v7, v0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 577
    move-wide/from16 v7, p1

    invoke-static {v2, v3, v7, v8}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v9

    .line 578
    .local v9, "offsetInOld":I
    int-to-long v10, v6

    invoke-static {v2, v3, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v10

    .line 580
    .local v10, "offsetInNew":I
    move-object/from16 v11, p6

    invoke-static {v5, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 582
    invoke-direct/range {p0 .. p2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextArrayOffset(J)I

    move-result v12

    invoke-static {v1, v12, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v12

    .line 585
    .local v12, "cIndex":J
    invoke-virtual {v0, v2, v3, v12, v13}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->availableInQueue(JJ)J

    move-result-wide v14

    .line 586
    .local v14, "availableInQueue":J
    move/from16 v16, v4

    .end local v4    # "newBufferLength":I
    .local v16, "newBufferLength":I
    const-string v4, "availableInQueue"

    invoke-static {v14, v15, v4}, Lorg/jctools/util/RangeUtil;->checkPositive(JLjava/lang/String;)J

    .line 589
    move-object/from16 v17, v5

    .end local v5    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v17, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    int-to-long v4, v6

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerLimit(J)V

    .line 591
    const-wide/16 v4, 0x2

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerIndex(J)V

    .line 594
    sget-object v4, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {v1, v9, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 595
    return-void
.end method


# virtual methods
.method protected abstract availableInQueue(JJ)J
.end method

.method public abstract capacity()I
.end method

.method public currentConsumerIndex()J
    .locals 4

    .line 417
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 4

    .line 412
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

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

    .line 542
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

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

    .line 549
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 551
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "m":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 552
    invoke-interface {p1, v2}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
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

    .line 559
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 560
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 562
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 563
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 564
    goto :goto_0

    .line 566
    :cond_0
    const/4 v0, 0x0

    .line 567
    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 568
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 569
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

    .line 467
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 468
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->capacity()I

    move-result v2

    .line 470
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 471
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 472
    long-to-int v4, v0

    return v4

    .line 474
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 475
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 476
    long-to-int v3, v0

    return v3

    .line 475
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

    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v7, p0

    .line 486
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v8

    .line 487
    .local v8, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v10

    .line 489
    .local v10, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v10, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 490
    goto :goto_0

    .line 496
    :cond_0
    iget-wide v12, v7, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 497
    .local v12, "mask":J
    iget-object v14, v7, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 500
    .local v14, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    mul-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr v0, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 501
    .local v5, "batchIndex":J
    cmp-long v0, v10, v8

    if-gez v0, :cond_2

    cmp-long v0, v8, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v15, v5

    goto :goto_2

    .line 502
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v10

    move-wide v15, v5

    .end local v5    # "batchIndex":J
    .local v15, "batchIndex":J
    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offerSlowPath(JJJ)I

    move-result v17

    .line 503
    .local v17, "result":I
    packed-switch v17, :pswitch_data_0

    goto :goto_2

    .line 511
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move-wide v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->resize(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;)V

    .line 512
    const/4 v0, 0x1

    return v0

    .line 509
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 507
    :pswitch_2
    goto :goto_0

    .line 516
    .end local v17    # "result":I
    :goto_2
    move-wide v0, v15

    .end local v15    # "batchIndex":J
    .local v0, "batchIndex":J
    invoke-virtual {v7, v10, v11, v0, v1}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    sub-long v5, v0, v10

    const-wide/16 v2, 0x2

    div-long/2addr v5, v2

    long-to-int v2, v5

    .line 518
    .local v2, "claimedSlots":I
    nop

    .line 521
    .end local v0    # "batchIndex":J
    .end local v8    # "producerLimit":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 522
    mul-int/lit8 v1, v0, 0x2

    int-to-long v3, v1

    add-long/2addr v3, v10

    invoke-static {v3, v4, v12, v13}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v1

    .line 523
    .local v1, "offset":I
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14, v1, v3}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 521
    .end local v1    # "offset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 525
    .end local v0    # "i":I
    :cond_3
    return v2

    .line 520
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

    .line 530
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    sget v0, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "idleCounter":I
    :goto_1
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 534
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    goto :goto_1

    .line 536
    .end local v0    # "idleCounter":I
    :cond_1
    goto :goto_0

    .line 538
    :cond_2
    return-void
.end method

.method protected abstract getCurrentBufferCapacity(J)J
.end method

.method protected abstract getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation
.end method

.method public final isEmpty()Z
    .locals 4

    .line 222
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

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

    .line 188
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
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

    .line 232
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_3

    .line 239
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v9

    .line 240
    .local v9, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v11

    .line 242
    .local v11, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v11, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 243
    goto :goto_0

    .line 247
    :cond_0
    iget-wide v13, v7, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 248
    .local v13, "mask":J
    iget-object v15, v7, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 250
    .local v15, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    cmp-long v0, v9, v11

    const/16 v16, 0x1

    if-gtz v0, :cond_1

    .line 251
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v11

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offerSlowPath(JJJ)I

    move-result v17

    .line 252
    .local v17, "result":I
    packed-switch v17, :pswitch_data_0

    goto :goto_1

    .line 260
    :pswitch_0
    move-object/from16 v0, p0

    move-wide v1, v13

    move-object v3, v15

    move-wide v4, v11

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->resize(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;)V

    .line 261
    return v16

    .line 258
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 256
    :pswitch_2
    goto :goto_0

    .line 264
    .end local v17    # "result":I
    :cond_1
    :goto_1
    :pswitch_3
    const-wide/16 v0, 0x2

    add-long/2addr v0, v11

    invoke-virtual {v7, v11, v12, v0, v1}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    nop

    .line 269
    .end local v9    # "producerLimit":J
    invoke-static {v11, v12, v13, v14}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v0

    .line 271
    .local v0, "offset":I
    invoke-static {v15, v0, v8}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 272
    return v16

    .line 267
    .end local v0    # "offset":I
    :cond_2
    goto :goto_0

    .line 233
    .end local v11    # "pIndex":J
    .end local v13    # "mask":J
    .end local v15    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 319
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerIndex:J

    .line 320
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 321
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v5

    .line 323
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 324
    .local v6, "e":Ljava/lang/Object;
    if-nez v6, :cond_1

    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 327
    :cond_0
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 328
    if-eqz v6, :cond_0

    .line 330
    :cond_1
    sget-object v7, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v7, :cond_2

    .line 331
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getNextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 333
    :cond_2
    return-object v6
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 284
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerIndex:J

    .line 285
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 286
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v5

    .line 288
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 289
    .local v6, "e":Ljava/lang/Object;
    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 290
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 293
    :cond_0
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 294
    if-eqz v6, :cond_0

    goto :goto_0

    .line 296
    :cond_1
    return-object v7

    .line 299
    :cond_2
    :goto_0
    sget-object v8, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v8, :cond_3

    .line 300
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getNextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    .line 301
    .local v7, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, v7, v1, v2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 304
    .end local v7    # "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    invoke-static {v0, v5, v7}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 306
    const-wide/16 v7, 0x2

    add-long/2addr v7, v1

    invoke-virtual {p0, v7, v8}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 307
    return-object v6
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 453
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerIndex:J

    .line 454
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 455
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v5

    .line 457
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 458
    .local v6, "e":Ljava/lang/Object;
    sget-object v7, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    .line 459
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getNextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 461
    :cond_0
    return-object v6
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 432
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v1, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerIndex:J

    .line 433
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 434
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->modifiedCalcElementOffset(JJ)I

    move-result v5

    .line 436
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 437
    .local v6, "e":Ljava/lang/Object;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 438
    return-object v7

    .line 440
    :cond_0
    sget-object v8, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v8, :cond_1

    .line 441
    invoke-direct {p0, v0, v3, v4}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getNextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    .line 442
    .local v7, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, v7, v1, v2}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 444
    .end local v7    # "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_1
    invoke-static {v0, v5, v7}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 445
    const-wide/16 v7, 0x2

    add-long/2addr v7, v1

    invoke-virtual {p0, v7, v8}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 446
    return-object v6
.end method

.method public final size()I
    .locals 9

    .line 200
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 203
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 204
    .local v2, "before":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 205
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 206
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    .line 207
    sub-long v6, v4, v0

    const/4 v8, 0x1

    shr-long/2addr v6, v8

    .line 208
    .local v6, "size":J
    nop

    .line 212
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 213
    const v2, 0x7fffffff

    return v2

    .line 215
    :cond_0
    long-to-int v2, v6

    return v2

    .line 210
    .end local v6    # "size":J
    :cond_1
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 227
    .local p0, "this":Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
