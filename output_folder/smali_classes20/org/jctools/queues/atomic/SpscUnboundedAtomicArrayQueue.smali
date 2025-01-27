.class public Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;
.source "SpscUnboundedAtomicArrayQueue.java"


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


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "chunkSize"    # I

    .line 40
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;-><init>()V

    .line 41
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 42
    .local v0, "chunkCapacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    .line 43
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 44
    .local v3, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v3, p0, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 45
    iput-wide v1, p0, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:J

    .line 46
    iput-object v3, p0, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 47
    iput-wide v1, p0, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:J

    .line 49
    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    iput-wide v4, p0, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->producerBufferLimit:J

    .line 50
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 78
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final offerColdPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJILjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 18
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

    .line 55
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
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

    .line 56
    .local v12, "lookAheadStep":J
    add-long v14, p4, v12

    .line 58
    .local v14, "pBufferLimit":J
    invoke-static {v14, v15, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v2

    invoke-static {v9, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 60
    sub-long v0, v14, v0

    iput-wide v0, v8, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->producerBufferLimit:J

    .line 61
    if-nez p7, :cond_0

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p7

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    goto :goto_3

    .line 62
    :cond_1
    add-long v2, p4, v0

    invoke-static {v2, v3, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v2

    invoke-static {v9, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 64
    if-nez p7, :cond_2

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object/from16 v2, p7

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    goto :goto_3

    .line 68
    :cond_3
    const-wide/16 v2, 0x2

    add-long/2addr v2, v10

    long-to-int v2, v2

    invoke-static {v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    .line 69
    .local v7, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v7, v8, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 70
    add-long v2, p4, v10

    sub-long/2addr v2, v0

    iput-wide v2, v8, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->producerBufferLimit:J

    .line 71
    if-nez p7, :cond_4

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    :cond_4
    move-object/from16 v16, p7

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p1

    move/from16 v4, p6

    move-object v5, v7

    move/from16 v6, p6

    move-object/from16 v17, v7

    .end local v7    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v17, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;->linkOldToNew(JLjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 73
    .end local v17    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscUnboundedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
