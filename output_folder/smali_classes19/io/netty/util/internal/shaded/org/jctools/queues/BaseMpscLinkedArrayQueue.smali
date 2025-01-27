.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;
.source "BaseMpscLinkedArrayQueue.java"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<",
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

    .line 131
    nop

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "initialCapacity"    # I

    .line 148
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;-><init>()V

    .line 149
    const/4 v0, 0x2

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 151
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 153
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 155
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 157
    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 158
    iput-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 159
    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 160
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerLimit(J)V

    .line 161
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 131
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 131
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    return-object v0
.end method

.method private newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v0

    .line 426
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 427
    .local v2, "n":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 431
    return-object v2

    .line 429
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

    .line 412
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v0

    .line 413
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 414
    .local v2, "n":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 418
    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 419
    const-wide/16 v3, 0x2

    add-long/2addr v3, p2

    invoke-virtual {p0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 420
    return-object v2

    .line 416
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "new buffer must have at least one element"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static nextArrayOffset(J)J
    .locals 4
    .param p0, "mask"    # J

    .line 407
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;
    .locals 5
    .param p2, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)[TE;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextArrayOffset(J)J

    move-result-wide v0

    .line 398
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 399
    .local v2, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 400
    invoke-static {v2}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    shl-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    iput-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 401
    sget-object v3, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 402
    return-object v2
.end method

.method private offerSlowPath(JJJ)I
    .locals 15
    .param p1, "mask"    # J
    .param p3, "pIndex"    # J
    .param p5, "producerLimit"    # J

    .line 354
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    move-object v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 355
    .local v3, "cIndex":J
    invoke-virtual/range {p0 .. p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->getCurrentBufferCapacity(J)J

    move-result-wide v5

    .line 357
    .local v5, "bufferCapacity":J
    add-long v7, v3, v5

    cmp-long v7, v7, v1

    const/4 v8, 0x1

    if-lez v7, :cond_1

    .line 359
    add-long v9, v3, v5

    move-wide/from16 v11, p5

    invoke-virtual {p0, v11, v12, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerLimit(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 362
    return v8

    .line 367
    :cond_0
    const/4 v7, 0x0

    return v7

    .line 371
    :cond_1
    move-wide/from16 v11, p5

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->availableInQueue(JJ)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-gtz v7, :cond_2

    .line 374
    const/4 v7, 0x2

    return v7

    .line 377
    :cond_2
    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    invoke-virtual {p0, v1, v2, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerIndex(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 380
    const/4 v7, 0x3

    return v7

    .line 385
    :cond_3
    return v8
.end method

.method private resize(J[Ljava/lang/Object;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V
    .locals 17
    .param p1, "oldMask"    # J
    .param p4, "pIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TE;JTE;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)V"
        }
    .end annotation

    .line 714
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p3, "oldBuffer":[Ljava/lang/Object;, "[TE;"
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

    .line 715
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBufferSize([Ljava/lang/Object;)I

    move-result v5

    .line 719
    .local v5, "newBufferLength":I
    :try_start_0
    invoke-static {v5}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .local v0, "newBuffer":[Ljava/lang/Object;, "[TE;"
    nop

    .line 728
    iput-object v0, v1, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 729
    add-int/lit8 v6, v5, -0x2

    shl-int/lit8 v6, v6, 0x1

    .line 730
    .local v6, "newMask":I
    int-to-long v7, v6

    iput-wide v7, v1, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 732
    move-wide/from16 v7, p1

    invoke-static {v3, v4, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v9

    .line 733
    .local v9, "offsetInOld":J
    int-to-long v11, v6

    invoke-static {v3, v4, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v11

    .line 735
    .local v11, "offsetInNew":J
    if-nez p6, :cond_3

    invoke-interface/range {p7 .. p7}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    goto :goto_1

    :cond_3
    move-object/from16 v13, p6

    :goto_1
    invoke-static {v0, v11, v12, v13}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 736
    invoke-static/range {p1 .. p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextArrayOffset(J)J

    move-result-wide v13

    invoke-static {v2, v13, v14, v0}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v13

    .line 740
    .local v13, "cIndex":J
    invoke-virtual {v1, v3, v4, v13, v14}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->availableInQueue(JJ)J

    move-result-wide v7

    .line 741
    .local v7, "availableInQueue":J
    const-string v15, "availableInQueue"

    invoke-static {v7, v8, v15}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkPositive(JLjava/lang/String;)J

    .line 745
    move-wide v15, v11

    .end local v11    # "offsetInNew":J
    .local v15, "offsetInNew":J
    int-to-long v11, v6

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    add-long/2addr v11, v3

    invoke-virtual {v1, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerLimit(J)V

    .line 748
    const-wide/16 v11, 0x2

    add-long/2addr v11, v3

    invoke-virtual {v1, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 753
    sget-object v11, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {v2, v9, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 754
    return-void

    .line 721
    .end local v0    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    .end local v6    # "newMask":I
    .end local v7    # "availableInQueue":J
    .end local v9    # "offsetInOld":J
    .end local v13    # "cIndex":J
    .end local v15    # "offsetInNew":J
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 723
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v8, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 724
    :cond_4
    invoke-virtual {v1, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 725
    throw v0
.end method


# virtual methods
.method protected abstract availableInQueue(JJ)J
.end method

.method public abstract capacity()I
.end method

.method public currentConsumerIndex()J
    .locals 4

    .line 443
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 4

    .line 437
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

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

    .line 590
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

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

    .line 596
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
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

    .line 602
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 603
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

    .line 499
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 500
    .local v0, "result":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->capacity()I

    move-result v2

    .line 503
    .local v2, "capacity":I
    :goto_0
    sget v3, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 504
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 506
    long-to-int v4, v0

    return v4

    .line 508
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 510
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 511
    long-to-int v3, v0

    return v3

    .line 510
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

    .line 517
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    if-eqz p1, :cond_6

    .line 519
    if-ltz v9, :cond_5

    .line 521
    const/4 v7, 0x0

    if-nez v9, :cond_0

    .line 522
    return v7

    .line 530
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerLimit()J

    move-result-wide v10

    .line 531
    .local v10, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v12

    .line 533
    .local v12, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v12, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 535
    goto :goto_0

    .line 542
    :cond_1
    iget-wide v14, v8, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 543
    .local v14, "mask":J
    iget-object v5, v8, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 547
    .local v5, "buffer":[Ljava/lang/Object;, "[TE;"
    int-to-long v0, v9

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    add-long/2addr v0, v12

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 549
    .local v3, "batchIndex":J
    cmp-long v0, v12, v10

    if-ltz v0, :cond_2

    .line 551
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v18, v3

    .end local v3    # "batchIndex":J
    .local v18, "batchIndex":J
    move-wide v3, v12

    move-object/from16 v20, v5

    .end local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v20, "buffer":[Ljava/lang/Object;, "[TE;"
    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offerSlowPath(JJJ)I

    move-result v21

    .line 552
    .local v21, "result":I
    packed-switch v21, :pswitch_data_0

    goto :goto_1

    .line 561
    :pswitch_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v20

    move-wide v4, v12

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->resize(J[Ljava/lang/Object;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V

    .line 562
    const/4 v0, 0x1

    return v0

    .line 559
    :pswitch_1
    return v7

    .line 557
    :pswitch_2
    goto :goto_0

    .line 549
    .end local v18    # "batchIndex":J
    .end local v20    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v21    # "result":I
    .restart local v3    # "batchIndex":J
    .restart local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
    :cond_2
    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    .line 567
    .end local v3    # "batchIndex":J
    .end local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v18    # "batchIndex":J
    .restart local v20    # "buffer":[Ljava/lang/Object;, "[TE;"
    :goto_1
    move-wide/from16 v0, v18

    .end local v18    # "batchIndex":J
    .local v0, "batchIndex":J
    invoke-virtual {v8, v12, v13, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 569
    sub-long v3, v0, v12

    div-long v3, v3, v16

    long-to-int v2, v3

    .line 570
    .local v2, "claimedSlots":I
    nop

    .line 574
    .end local v0    # "batchIndex":J
    .end local v10    # "producerLimit":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 576
    int-to-long v3, v0

    mul-long v3, v3, v16

    add-long/2addr v3, v12

    invoke-static {v3, v4, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v3

    .line 577
    .local v3, "offset":J
    invoke-interface/range {p1 .. p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v5, v20

    .end local v20    # "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {v5, v3, v4, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 574
    .end local v3    # "offset":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 579
    .end local v0    # "i":I
    .end local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v20    # "buffer":[Ljava/lang/Object;, "[TE;"
    :cond_3
    return v2

    .line 567
    .end local v2    # "claimedSlots":I
    .local v0, "batchIndex":J
    .restart local v10    # "producerLimit":J
    :cond_4
    move-object/from16 v5, v20

    .line 572
    .end local v0    # "batchIndex":J
    .end local v10    # "producerLimit":J
    .end local v20    # "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
    goto :goto_0

    .line 520
    .end local v5    # "buffer":[Ljava/lang/Object;, "[TE;"
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

    .line 518
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

    .line 585
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 586
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

.method public isEmpty()Z
    .locals 4

    .line 206
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

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

    .line 617
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    new-instance v6, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;

    iget-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;-><init>([Ljava/lang/Object;JJ)V

    return-object v6
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 218
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_3

    .line 229
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerLimit()J

    move-result-wide v10

    .line 230
    .local v10, "producerLimit":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v12

    .line 232
    .local v12, "pIndex":J
    const-wide/16 v0, 0x1

    and-long v2, v12, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 234
    goto :goto_0

    .line 239
    :cond_0
    iget-wide v14, v8, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerMask:J

    .line 240
    .local v14, "mask":J
    iget-object v7, v8, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 244
    .local v7, "buffer":[Ljava/lang/Object;, "[TE;"
    cmp-long v0, v10, v12

    const/16 v16, 0x1

    if-gtz v0, :cond_1

    .line 246
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v12

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offerSlowPath(JJJ)I

    move-result v17

    .line 247
    .local v17, "result":I
    packed-switch v17, :pswitch_data_0

    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    .local v19, "producerLimit":J
    goto :goto_1

    .line 256
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
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

    .end local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v19    # "producerLimit":J
    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->resize(J[Ljava/lang/Object;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V

    .line 257
    return v16

    .line 254
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "producerLimit":J
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 252
    :pswitch_2
    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v19    # "producerLimit":J
    goto :goto_0

    .line 250
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "producerLimit":J
    :pswitch_3
    move-wide/from16 v19, v10

    move-object v10, v7

    .end local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v19    # "producerLimit":J
    goto :goto_1

    .line 244
    .end local v17    # "result":I
    .end local v19    # "producerLimit":J
    .restart local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "producerLimit":J
    :cond_1
    move-wide/from16 v19, v10

    move-object v10, v7

    .line 261
    .end local v7    # "buffer":[Ljava/lang/Object;, "[TE;"
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    .restart local v19    # "producerLimit":J
    :goto_1
    const-wide/16 v0, 0x2

    add-long/2addr v0, v12

    invoke-virtual {v8, v12, v13, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    nop

    .line 267
    .end local v19    # "producerLimit":J
    invoke-static {v12, v13, v14, v15}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v0

    .line 268
    .local v0, "offset":J
    invoke-static {v10, v0, v1, v9}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 269
    return v16

    .line 265
    .end local v0    # "offset":J
    :cond_2
    goto :goto_0

    .line 220
    .end local v10    # "buffer":[Ljava/lang/Object;, "[TE;"
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 327
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 328
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 330
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v5

    .line 331
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 332
    .local v7, "e":Ljava/lang/Object;
    if-nez v7, :cond_1

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v8

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 338
    :cond_0
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 340
    if-eqz v7, :cond_0

    .line 342
    :cond_1
    sget-object v8, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v8, :cond_2

    .line 344
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 346
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

    .line 281
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 282
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 283
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 285
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v5

    .line 286
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 287
    .local v7, "e":Ljava/lang/Object;
    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 289
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-eqz v9, :cond_1

    .line 296
    :cond_0
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 298
    if-eqz v7, :cond_0

    goto :goto_0

    .line 302
    :cond_1
    return-object v8

    .line 306
    :cond_2
    :goto_0
    sget-object v9, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v9, :cond_3

    .line 308
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    .line 309
    .local v8, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, v8, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 312
    .end local v8    # "nextBuffer":[Ljava/lang/Object;, "[TE;"
    :cond_3
    invoke-static {v0, v5, v6, v8}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 313
    const-wide/16 v8, 0x2

    add-long/2addr v8, v1

    invoke-virtual {p0, v8, v9}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 314
    return-object v7
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 452
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

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

    .line 483
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 484
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 485
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 487
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v5

    .line 488
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 489
    .local v7, "e":Ljava/lang/Object;
    sget-object v8, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v8, :cond_0

    .line 491
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 493
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

    .line 459
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 460
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 461
    .local v1, "index":J
    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->consumerMask:J

    .line 463
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v5

    .line 464
    .local v5, "offset":J
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 465
    .local v7, "e":Ljava/lang/Object;
    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 467
    return-object v8

    .line 469
    :cond_0
    sget-object v9, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v9, :cond_1

    .line 471
    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v8

    .line 472
    .local v8, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, v8, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 474
    .end local v8    # "nextBuffer":[Ljava/lang/Object;, "[TE;"
    :cond_1
    invoke-static {v0, v5, v6, v8}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 475
    const-wide/16 v8, 0x2

    add-long/2addr v8, v1

    invoke-virtual {p0, v8, v9}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 476
    return-object v7
.end method

.method public size()I
    .locals 9

    .line 174
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 178
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 179
    .local v2, "before":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 180
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 181
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    .line 183
    sub-long v6, v4, v0

    const/4 v8, 0x1

    shr-long/2addr v6, v8

    .line 184
    .local v6, "size":J
    nop

    .line 189
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 191
    const v2, 0x7fffffff

    return v2

    .line 195
    :cond_0
    long-to-int v2, v6

    return v2

    .line 186
    .end local v6    # "size":J
    :cond_1
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
