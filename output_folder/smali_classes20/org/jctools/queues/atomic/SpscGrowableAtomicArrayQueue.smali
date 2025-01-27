.class public Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;
.source "SpscGrowableAtomicArrayQueue.java"


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
.field private lookAheadStep:J

.field private final maxQueueCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 48
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;-><init>(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "chunkSize"    # I
    .param p2, "capacity"    # I

    .line 51
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;-><init>()V

    .line 52
    const/16 v0, 0x10

    const-string v1, "capacity"

    invoke-static {p2, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 54
    const/16 v0, 0x8

    const-string v1, "chunkSize"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 55
    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->maxQueueCapacity:I

    .line 56
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    .line 57
    .local v1, "chunkCapacity":I
    const-string v2, "chunkCapacity"

    invoke-static {v1, v0, v2}, Lorg/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 58
    add-int/lit8 v0, v1, -0x1

    int-to-long v2, v0

    .line 60
    .local v2, "mask":J
    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    .line 61
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v0, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 62
    iput-wide v2, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerMask:J

    .line 63
    iput-object v0, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 64
    iput-wide v2, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->consumerMask:J

    .line 66
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBufferLimit:J

    .line 67
    invoke-direct {p0, v1}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->adjustLookAheadStep(I)V

    .line 68
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 147
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->lookAheadStep:J

    .line 148
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 152
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->maxQueueCapacity:I

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final offerColdPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJILjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 23
    .param p2, "mask"    # J
    .param p4, "index"    # J
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

    .line 72
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p7, "v":Ljava/lang/Object;, "TE;"
    .local p8, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<+TE;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    iget-wide v14, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->lookAheadStep:J

    .line 74
    .local v14, "lookAheadStep":J
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    const/4 v1, 0x0

    const/16 v16, 0x1

    if-lez v0, :cond_9

    .line 75
    add-long v2, v12, v14

    invoke-static {v2, v3, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v7

    .line 77
    .local v7, "lookAheadElementOffset":I
    invoke-static {v9, v7}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v17, 0x1

    if-nez v0, :cond_1

    .line 79
    add-long v0, v12, v14

    sub-long v0, v0, v17

    iput-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBufferLimit:J

    .line 80
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

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    .line 81
    return v16

    .line 84
    :cond_1
    iget v6, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->maxQueueCapacity:I

    .line 85
    .local v6, "maxCapacity":I
    add-long v2, v10, v17

    int-to-long v4, v6

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 86
    move/from16 v5, p6

    invoke-static {v9, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 87
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

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    .line 88
    return v16

    .line 91
    :cond_3
    return v1

    .line 94
    :cond_4
    add-long v0, v12, v17

    invoke-static {v0, v1, v10, v11}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v0

    invoke-static {v9, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 96
    if-nez p7, :cond_5

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_5
    move-object/from16 v2, p7

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    move v9, v6

    move/from16 v22, v7

    goto :goto_4

    .line 99
    :cond_6
    const-wide/16 v0, 0x2

    add-long v2, v10, v17

    mul-long/2addr v2, v0

    add-long v2, v2, v17

    long-to-int v0, v2

    invoke-static {v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->allocate(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    .line 100
    .local v5, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v5, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 101
    invoke-static {v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    iput-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerMask:J

    .line 102
    iget-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerMask:J

    invoke-static {v12, v13, v0, v1}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v19

    .line 103
    .local v19, "offsetInNew":I
    if-nez p7, :cond_7

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_3

    :cond_7
    move-object/from16 v20, p7

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p1

    move/from16 v4, p6

    move-object/from16 v21, v5

    .end local v5    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local v21, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    move v9, v6

    .end local v6    # "maxCapacity":I
    .local v9, "maxCapacity":I
    move/from16 v6, v19

    move/from16 v22, v7

    .end local v7    # "lookAheadElementOffset":I
    .local v22, "lookAheadElementOffset":I
    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->linkOldToNew(JLjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 104
    iget-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerMask:J

    add-long v0, v0, v17

    long-to-int v0, v0

    .line 105
    .local v0, "newCapacity":I
    if-ne v0, v9, :cond_8

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v1

    .line 108
    .local v1, "currConsumerIndex":J
    sub-long v3, v12, v1

    neg-long v3, v3

    iput-wide v3, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->lookAheadStep:J

    .line 109
    int-to-long v3, v9

    add-long/2addr v3, v1

    sub-long v3, v3, v17

    iput-wide v3, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBufferLimit:J

    .line 110
    .end local v1    # "currConsumerIndex":J
    goto :goto_4

    .line 111
    :cond_8
    iget-wide v1, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerMask:J

    add-long/2addr v1, v12

    sub-long v1, v1, v17

    iput-wide v1, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBufferLimit:J

    .line 112
    invoke-direct {v8, v0}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->adjustLookAheadStep(I)V

    .line 115
    .end local v0    # "newCapacity":I
    .end local v19    # "offsetInNew":I
    .end local v21    # "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_4
    return v16

    .line 119
    .end local v9    # "maxCapacity":I
    .end local v22    # "lookAheadElementOffset":I
    :cond_9
    neg-long v6, v14

    .line 122
    .local v6, "prevElementsInOtherBuffers":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v17

    .line 123
    .local v17, "currConsumerIndex":J
    sub-long v2, v12, v17

    long-to-int v9, v2

    .line 125
    .local v9, "size":I
    long-to-int v0, v10

    add-int/lit8 v5, v0, 0x1

    .line 126
    .local v5, "maxCapacity":I
    if-ne v9, v5, :cond_a

    .line 128
    return v1

    .line 131
    :cond_a
    iget-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBufferLimit:J

    int-to-long v2, v5

    sub-long/2addr v0, v2

    add-long v19, v0, v6

    .line 132
    .local v19, "firstIndexInCurrentBuffer":J
    cmp-long v0, v17, v19

    if-ltz v0, :cond_b

    .line 134
    invoke-direct {v8, v5}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->adjustLookAheadStep(I)V

    goto :goto_5

    .line 138
    :cond_b
    sub-long v0, v17, v19

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->lookAheadStep:J

    .line 140
    :goto_5
    int-to-long v0, v5

    add-long v0, v17, v0

    iput-wide v0, v8, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->producerBufferLimit:J

    .line 141
    if-nez p7, :cond_c

    invoke-interface/range {p8 .. p8}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_c
    move-object/from16 v2, p7

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move/from16 v21, v5

    .end local v5    # "maxCapacity":I
    .local v21, "maxCapacity":I
    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    .line 142
    return v16
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 41
    .local p0, "this":Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpscGrowableAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
