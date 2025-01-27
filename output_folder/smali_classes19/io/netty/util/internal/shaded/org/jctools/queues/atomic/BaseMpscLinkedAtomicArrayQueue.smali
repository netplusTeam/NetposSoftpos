.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueueColdProducerFields;
.source "BaseMpscLinkedAtomicArrayQueue.java"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueueColdProducerFields<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_CONSUMED:Ljava/lang/Object;

.field private static final CONTINUE_TO_P_INDEX_CAS:I = 0x0

.field private static final JUMP:Ljava/lang/Object;

.field private static final QUEUE_FULL:I = 0x2

.field private static final QUEUE_RESIZE:I = 0x3

.field private static final RETRY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    nop

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "initialCapacity"    # I

    .line 172
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueueColdProducerFields;-><init>()V

    .line 173
    const/4 v0, 0x2

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 174
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 176
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 178
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->allocateRefArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 179
    .local v3, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 180
    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 181
    iput-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 182
    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 184
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerLimit(J)V

    .line 185
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 153
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 153
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    return-object v0
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

    .line 389
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v0

    .line 390
    .local v0, "offset":I
    invoke-static {p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 391
    .local v1, "n":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 394
    return-object v1

    .line 392
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

    .line 378
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v0

    .line 379
    .local v0, "offset":I
    invoke-static {p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 380
    .local v1, "n":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 383
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 384
    const-wide/16 v2, 0x2

    add-long/2addr v2, p2

    invoke-virtual {p0, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 385
    return-object v1

    .line 381
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "new buffer must have at least one element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static nextArrayOffset(J)I
    .locals 4
    .param p0, "mask"    # J

    .line 374
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v0

    return v0
.end method

.method private nextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 4
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

    .line 365
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextArrayOffset(J)I

    move-result v0

    .line 366
    .local v0, "offset":I
    invoke-static {p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 367
    .local v1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 368
    invoke-static {v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    shl-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    iput-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 369
    sget-object v2, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 370
    return-object v1
.end method

.method private offerSlowPath(JJJ)I
    .locals 15
    .param p1, "mask"    # J
    .param p3, "pIndex"    # J
    .param p5, "producerLimit"    # J

    .line 334
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    move-object v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 335
    .local v3, "cIndex":J
    invoke-virtual/range {p0 .. p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getCurrentBufferCapacity(J)J

    move-result-wide v5

    .line 336
    .local v5, "bufferCapacity":J
    add-long v7, v3, v5

    cmp-long v7, v7, v1

    const/4 v8, 0x1

    if-lez v7, :cond_1

    .line 337
    add-long v9, v3, v5

    move-wide/from16 v11, p5

    invoke-virtual {p0, v11, v12, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerLimit(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 339
    return v8

    .line 342
    :cond_0
    const/4 v7, 0x0

    return v7

    .line 345
    :cond_1
    move-wide/from16 v11, p5

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->availableInQueue(JJ)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-gtz v7, :cond_2

    .line 347
    const/4 v7, 0x2

    return v7

    .line 349
    :cond_2
    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    invoke-virtual {p0, v1, v2, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 351
    const/4 v7, 0x3

    return v7

    .line 354
    :cond_3
    return v8
.end method

.method private resize(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V
    .locals 16
    .param p1, "oldMask"    # J
    .param p4, "pIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JTE;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)V"
        }
    .end annotation

    .line 637
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p3, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p6, "e":Ljava/lang/Object;, "TE;"
    .local p7, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    if-eqz p6, :cond_0

    if-eqz p7, :cond_2

    :cond_0
    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 638
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v5

    .line 641
    .local v5, "newBufferLength":I
    :try_start_0
    invoke-static {v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->allocateRefArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .local v0, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    nop

    .line 647
    iput-object v0, v1, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 648
    add-int/lit8 v6, v5, -0x2

    shl-int/lit8 v6, v6, 0x1

    .line 649
    .local v6, "newMask":I
    int-to-long v7, v6

    iput-wide v7, v1, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 650
    move-wide/from16 v7, p1

    invoke-static {v3, v4, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v9

    .line 651
    .local v9, "offsetInOld":I
    int-to-long v10, v6

    invoke-static {v3, v4, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v10

    .line 653
    .local v10, "offsetInNew":I
    if-nez p6, :cond_3

    invoke-interface/range {p7 .. p7}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    goto :goto_1

    :cond_3
    move-object/from16 v11, p6

    :goto_1
    invoke-static {v0, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 655
    invoke-static/range {p1 .. p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextArrayOffset(J)I

    move-result v11

    invoke-static {v2, v11, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v11

    .line 658
    .local v11, "cIndex":J
    invoke-virtual {v1, v3, v4, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->availableInQueue(JJ)J

    move-result-wide v13

    .line 659
    .local v13, "availableInQueue":J
    const-string v15, "availableInQueue"

    invoke-static {v13, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkPositive(JLjava/lang/String;)J

    .line 662
    int-to-long v7, v6

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v3

    invoke-virtual {v1, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerLimit(J)V

    .line 664
    const-wide/16 v7, 0x2

    add-long/2addr v7, v3

    invoke-virtual {v1, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerIndex(J)V

    .line 667
    sget-object v7, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {v2, v9, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 668
    return-void

    .line 642
    .end local v0    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v6    # "newMask":I
    .end local v9    # "offsetInOld":I
    .end local v10    # "offsetInNew":I
    .end local v11    # "cIndex":J
    .end local v13    # "availableInQueue":J
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 643
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v8, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 644
    :cond_4
    invoke-virtual {v1, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soProducerIndex(J)V

    .line 645
    throw v0
.end method


# virtual methods
.method protected abstract availableInQueue(JJ)J
.end method

.method public abstract capacity()I
.end method

.method public currentConsumerIndex()J
    .locals 4

    .line 404
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 4

    .line 399
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

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

    .line 527
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 1
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 532
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
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

    .line 537
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 538
    return-void
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 452
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 453
    .local v0, "result":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->capacity()I

    move-result v2

    .line 455
    .local v2, "capacity":I
    :goto_0
    sget v3, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 456
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 457
    long-to-int v4, v0

    return v4

    .line 459
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 460
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 461
    long-to-int v3, v0

    return v3

    .line 460
    :cond_1
    goto :goto_0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 22
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 466
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    if-eqz p1, :cond_6

    .line 468
    if-ltz v9, :cond_5

    .line 470
    const/4 v7, 0x0

    if-nez v9, :cond_0

    .line 471
    return v7

    .line 477
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v10

    .line 478
    .local v10, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v12

    .line 480
    .local v12, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v12, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 481
    goto :goto_0

    .line 487
    :cond_1
    iget-wide v14, v8, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 488
    .local v14, "mask":J
    iget-object v5, v8, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 492
    .local v5, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    int-to-long v0, v9

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    add-long/2addr v0, v12

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 493
    .local v3, "batchIndex":J
    cmp-long v0, v12, v10

    if-ltz v0, :cond_2

    .line 494
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v18, v3

    .end local v3    # "batchIndex":J
    .local v18, "batchIndex":J
    move-wide v3, v12

    move-object/from16 v20, v5

    .end local v5    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v20, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offerSlowPath(JJJ)I

    move-result v21

    .line 495
    .local v21, "result":I
    packed-switch v21, :pswitch_data_0

    goto :goto_1

    .line 503
    :pswitch_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v20

    move-wide v4, v12

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->resize(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V

    .line 504
    const/4 v0, 0x1

    return v0

    .line 501
    :pswitch_1
    return v7

    .line 499
    :pswitch_2
    goto :goto_0

    .line 493
    .end local v18    # "batchIndex":J
    .end local v20    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v21    # "result":I
    .restart local v3    # "batchIndex":J
    .restart local v5    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_2
    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    .line 508
    .end local v3    # "batchIndex":J
    .end local v5    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v18    # "batchIndex":J
    .restart local v20    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_1
    move-wide/from16 v0, v18

    .end local v18    # "batchIndex":J
    .local v0, "batchIndex":J
    invoke-virtual {v8, v12, v13, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    sub-long v3, v0, v12

    div-long v3, v3, v16

    long-to-int v2, v3

    .line 510
    .local v2, "claimedSlots":I
    nop

    .line 513
    .end local v0    # "batchIndex":J
    .end local v10    # "producerLimit":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 514
    int-to-long v3, v0

    mul-long v3, v3, v16

    add-long/2addr v3, v12

    invoke-static {v3, v4, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v1

    .line 515
    .local v1, "offset":I
    invoke-interface/range {p1 .. p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v20

    .end local v20    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v4, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {v4, v1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 513
    .end local v1    # "offset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 517
    .end local v0    # "i":I
    .end local v4    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v20    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    return v2

    .line 508
    .end local v2    # "claimedSlots":I
    .local v0, "batchIndex":J
    .restart local v10    # "producerLimit":J
    :cond_4
    move-object/from16 v4, v20

    .line 512
    .end local v0    # "batchIndex":J
    .end local v10    # "producerLimit":J
    .end local v20    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v4    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    goto :goto_0

    .line 469
    .end local v4    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v12    # "pIndex":J
    .end local v14    # "mask":J
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit is negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "supplier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 522
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 523
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

.method public isEmpty()Z
    .locals 4

    .line 218
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

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

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    new-instance v6, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue$WeakIterator;

    iget-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue$WeakIterator;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJ)V

    return-object v6
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_3

    .line 235
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerLimit()J

    move-result-wide v10

    .line 236
    .local v10, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v12

    .line 238
    .local v12, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v12, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 239
    goto :goto_0

    .line 243
    :cond_0
    iget-wide v14, v8, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerMask:J

    .line 244
    .local v14, "mask":J
    iget-object v7, v8, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 246
    .local v7, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    cmp-long v0, v10, v12

    const/16 v16, 0x1

    if-gtz v0, :cond_1

    .line 247
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v12

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offerSlowPath(JJJ)I

    move-result v17

    .line 248
    .local v17, "result":I
    packed-switch v17, :pswitch_data_0

    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v19, "producerLimit":J
    goto :goto_1

    .line 256
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "producerLimit":J
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object v3, v7

    move-wide v4, v12

    move-object/from16 v6, p1

    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v19    # "producerLimit":J
    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->resize(JLjava/util/concurrent/atomic/AtomicReferenceArray;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V

    .line 257
    return v16

    .line 254
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "producerLimit":J
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 252
    :pswitch_2
    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v19    # "producerLimit":J
    goto :goto_0

    .line 250
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "producerLimit":J
    :pswitch_3
    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v19    # "producerLimit":J
    goto :goto_1

    .line 246
    .end local v17    # "result":I
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "producerLimit":J
    :cond_1
    move-wide/from16 v19, v10

    move-object v10, v7

    .line 260
    .end local v7    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v10, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .restart local v19    # "producerLimit":J
    :goto_1
    const-wide/16 v0, 0x2

    add-long/2addr v0, v12

    invoke-virtual {v8, v12, v13, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    nop

    .line 265
    .end local v19    # "producerLimit":J
    invoke-static {v12, v13, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v0

    .line 267
    .local v0, "offset":I
    invoke-static {v10, v0, v9}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 268
    return v16

    .line 263
    .end local v0    # "offset":I
    :cond_2
    goto :goto_0

    .line 229
    .end local v10    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v12    # "pIndex":J
    .end local v14    # "mask":J
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

    .line 313
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 314
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 315
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 316
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v5

    .line 317
    .local v5, "offset":I
    invoke-static {v0, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 318
    .local v6, "e":Ljava/lang/Object;
    if-nez v6, :cond_1

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 321
    :cond_0
    invoke-static {v0, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 322
    if-eqz v6, :cond_0

    .line 324
    :cond_1
    sget-object v7, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v7, :cond_2

    .line 325
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 327
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

    .line 279
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 280
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 281
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 282
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v5

    .line 283
    .local v5, "offset":I
    invoke-static {v0, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 284
    .local v6, "e":Ljava/lang/Object;
    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 285
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 288
    :cond_0
    invoke-static {v0, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 289
    if-eqz v6, :cond_0

    goto :goto_0

    .line 291
    :cond_1
    return-object v7

    .line 294
    :cond_2
    :goto_0
    sget-object v8, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v8, :cond_3

    .line 295
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    .line 296
    .local v7, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, v7, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 299
    .end local v7    # "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    invoke-static {v0, v5, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 301
    const-wide/16 v7, 0x2

    add-long/2addr v7, v1

    invoke-virtual {p0, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 302
    return-object v6
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 412
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

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

    .line 438
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 439
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 440
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 441
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v5

    .line 442
    .local v5, "offset":I
    invoke-static {v0, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 443
    .local v6, "e":Ljava/lang/Object;
    sget-object v7, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    .line 444
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 446
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

    .line 418
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 419
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 420
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 421
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)I

    move-result v5

    .line 422
    .local v5, "offset":I
    invoke-static {v0, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 423
    .local v6, "e":Ljava/lang/Object;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 424
    return-object v7

    .line 426
    :cond_0
    sget-object v8, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v8, :cond_1

    .line 427
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->nextBuffer(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    .line 428
    .local v7, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, v7, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 430
    .end local v7    # "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_1
    invoke-static {v0, v5, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 431
    const-wide/16 v7, 0x2

    add-long/2addr v7, v1

    invoke-virtual {p0, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 432
    return-object v6
.end method

.method public size()I
    .locals 9

    .line 196
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 199
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 200
    .local v2, "before":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 201
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 202
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    .line 203
    sub-long v6, v4, v0

    const/4 v8, 0x1

    shr-long/2addr v6, v8

    .line 204
    .local v6, "size":J
    nop

    .line 208
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 209
    const v2, 0x7fffffff

    return v2

    .line 211
    :cond_0
    long-to-int v2, v6

    return v2

    .line 206
    .end local v6    # "size":J
    :cond_1
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 223
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
