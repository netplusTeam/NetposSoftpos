.class public Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;
.source "SpscChunkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final maxQueueCapacity:I

.field private producerQueueLimit:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 46
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;-><init>(II)V

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "chunkSize"    # I
    .param p2, "capacity"    # I

    .line 49
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;-><init>()V

    .line 50
    const/16 v0, 0x10

    const-string v1, "capacity"

    invoke-static {p2, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 52
    const/16 v0, 0x8

    const-string v1, "chunkSize"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 53
    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->maxQueueCapacity:I

    .line 54
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    .line 55
    .local v1, "chunkCapacity":I
    const-string v2, "chunkCapacity"

    invoke-static {v1, v0, v2}, Lorg/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 56
    add-int/lit8 v2, v1, -0x1

    int-to-long v2, v2

    .line 58
    .local v2, "mask":J
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v4

    .line 59
    .local v4, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v4, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 60
    iput-wide v2, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerMask:J

    .line 61
    iput-object v4, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 62
    iput-wide v2, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->consumerMask:J

    .line 64
    const-wide/16 v5, 0x1

    sub-long v5, v2, v5

    iput-wide v5, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerBufferLimit:J

    .line 65
    int-to-long v5, v0

    iput-wide v5, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerQueueLimit:J

    .line 66
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 108
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->maxQueueCapacity:I

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final offerColdPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJILjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 20
    .param p2, "mask"    # J
    .param p4, "pIndex"    # J
    .param p6, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JJITE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p7, "v":Ljava/lang/Object;, "TE;"
    .local p8, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<+TE;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    const-wide/16 v0, 0x1

    add-long v2, v10, v0

    const-wide/16 v4, 0x4

    div-long v12, v2, v4

    .line 72
    .local v12, "lookAheadStep":J
    add-long v2, p4, v12

    .line 73
    .local v2, "pBufferLimit":J
    iget-wide v4, v8, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerQueueLimit:J

    .line 74
    .local v4, "pQueueLimit":J
    cmp-long v6, p4, v4

    if-ltz v6, :cond_1

    .line 76
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v6

    .line 77
    .local v6, "cIndex":J
    iget v14, v8, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->maxQueueCapacity:I

    int-to-long v14, v14

    add-long/2addr v14, v6

    move-wide v4, v14

    iput-wide v14, v8, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerQueueLimit:J

    .line 79
    cmp-long v14, p4, v4

    if-ltz v14, :cond_0

    .line 80
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    move-wide v14, v4

    goto :goto_0

    .line 74
    .end local v6    # "cIndex":J
    :cond_1
    move-wide v14, v4

    .line 84
    .end local v4    # "pQueueLimit":J
    .local v14, "pQueueLimit":J
    :goto_0
    sub-long v4, v2, v14

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 85
    move-wide v2, v14

    move-wide v6, v2

    goto :goto_1

    .line 84
    :cond_2
    move-wide v6, v2

    .line 88
    .end local v2    # "pBufferLimit":J
    .local v6, "pBufferLimit":J
    :goto_1
    add-long v2, p4, v0

    cmp-long v2, v6, v2

    if-lez v2, :cond_4

    .line 89
    invoke-static {v6, v7, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v2

    invoke-static {v9, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 91
    sub-long v0, v6, v0

    iput-wide v0, v8, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerBufferLimit:J

    .line 92
    if-nez p7, :cond_3

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object/from16 v2, p7

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    move-wide/from16 v18, v6

    goto :goto_5

    .line 93
    :cond_4
    add-long v0, p4, v0

    invoke-static {v0, v1, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v0

    invoke-static {v9, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 95
    if-nez p7, :cond_5

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_5
    move-object/from16 v2, p7

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    move-wide/from16 v18, v6

    goto :goto_5

    .line 99
    :cond_6
    const-wide/16 v0, 0x2

    add-long/2addr v0, v10

    long-to-int v0, v0

    invoke-static {v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    .line 100
    .local v5, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v5, v8, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 101
    if-nez p7, :cond_7

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_7
    move-object/from16 v16, p7

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p1

    move/from16 v4, p6

    move-object/from16 v17, v5

    .end local v5    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v17, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    move-wide/from16 v18, v6

    .end local v6    # "pBufferLimit":J
    .local v18, "pBufferLimit":J
    move/from16 v6, p6

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;->linkOldToNew(JLjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 103
    .end local v17    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_5
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 39
    .local p0, "this":Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
