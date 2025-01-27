.class public Lorg/jctools/queues/SpscGrowableArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.source "SpscGrowableArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<",
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

    .line 39
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jctools/queues/SpscGrowableArrayQueue;-><init>(II)V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "chunkSize"    # I
    .param p2, "capacity"    # I

    .line 43
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;-><init>()V

    .line 44
    const/16 v0, 0x10

    const-string v1, "capacity"

    invoke-static {p2, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 46
    const/16 v0, 0x8

    const-string v1, "chunkSize"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 48
    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->maxQueueCapacity:I

    .line 49
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    .line 50
    .local v1, "chunkCapacity":I
    const-string v2, "chunkCapacity"

    invoke-static {v1, v0, v2}, Lorg/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 52
    add-int/lit8 v0, v1, -0x1

    int-to-long v2, v0

    .line 54
    .local v2, "mask":J
    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v0, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 56
    iput-wide v2, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerMask:J

    .line 57
    iput-object v0, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 58
    iput-wide v2, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->consumerMask:J

    .line 59
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBufferLimit:J

    .line 60
    invoke-direct {p0, v1}, Lorg/jctools/queues/SpscGrowableArrayQueue;->adjustLookAheadStep(I)V

    .line 61
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 163
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lorg/jctools/queues/SpscArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->lookAheadStep:J

    .line 164
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 169
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/SpscGrowableArrayQueue;->maxQueueCapacity:I

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 25
    .param p2, "mask"    # J
    .param p4, "index"    # J
    .param p6, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJJTE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p8, "v":Ljava/lang/Object;, "TE;"
    .local p9, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<+TE;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    iget-wide v7, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->lookAheadStep:J

    .line 74
    .local v7, "lookAheadStep":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    const/4 v1, 0x0

    const/16 v16, 0x1

    if-lez v0, :cond_9

    .line 76
    add-long v2, v14, v7

    invoke-static {v2, v3, v12, v13}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v5

    .line 78
    .local v5, "lookAheadElementOffset":J
    invoke-static {v11, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v17, 0x1

    if-nez v0, :cond_1

    .line 80
    add-long v0, v14, v7

    sub-long v0, v0, v17

    iput-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBufferLimit:J

    .line 81
    if-nez p8, :cond_0

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p8

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v19, v5

    .end local v5    # "lookAheadElementOffset":J
    .local v19, "lookAheadElementOffset":J
    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscGrowableArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    .line 82
    return v16

    .line 85
    .end local v19    # "lookAheadElementOffset":J
    .restart local v5    # "lookAheadElementOffset":J
    :cond_1
    move-wide/from16 v19, v5

    .end local v5    # "lookAheadElementOffset":J
    .restart local v19    # "lookAheadElementOffset":J
    iget v9, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->maxQueueCapacity:I

    .line 86
    .local v9, "maxCapacity":I
    add-long v2, v12, v17

    int-to-long v4, v9

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 88
    move-wide/from16 v5, p6

    invoke-static {v11, v5, v6}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 90
    if-nez p8, :cond_2

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object/from16 v2, p8

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscGrowableArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    .line 91
    return v16

    .line 94
    :cond_3
    return v1

    .line 97
    :cond_4
    add-long v0, v14, v17

    invoke-static {v0, v1, v12, v13}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 99
    if-nez p8, :cond_5

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_5
    move-object/from16 v2, p8

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscGrowableArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    move-wide v11, v7

    move v13, v9

    goto :goto_4

    .line 104
    :cond_6
    const-wide/16 v0, 0x2

    add-long v2, v12, v17

    mul-long/2addr v2, v0

    add-long v2, v2, v17

    long-to-int v0, v2

    invoke-static {v0}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v6

    .line 106
    .local v6, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v6, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 107
    invoke-static {v6}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    iput-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerMask:J

    .line 109
    iget-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerMask:J

    invoke-static {v14, v15, v0, v1}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v21

    .line 110
    .local v21, "offsetInNew":J
    if-nez p8, :cond_7

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_3

    :cond_7
    move-object/from16 v23, p8

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p1

    move-wide/from16 v4, p6

    move-object/from16 v24, v6

    .end local v6    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    .local v24, "newBuffer":[Ljava/lang/Object;, "[TE;"
    move-wide v11, v7

    .end local v7    # "lookAheadStep":J
    .local v11, "lookAheadStep":J
    move-wide/from16 v7, v21

    move v13, v9

    .end local v9    # "maxCapacity":I
    .local v13, "maxCapacity":I
    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/SpscGrowableArrayQueue;->linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    iget-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerMask:J

    add-long v0, v0, v17

    long-to-int v0, v0

    .line 112
    .local v0, "newCapacity":I
    if-ne v0, v13, :cond_8

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/SpscGrowableArrayQueue;->lvConsumerIndex()J

    move-result-wide v1

    .line 116
    .local v1, "currConsumerIndex":J
    sub-long v3, v14, v1

    neg-long v3, v3

    iput-wide v3, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->lookAheadStep:J

    .line 117
    int-to-long v3, v13

    add-long/2addr v3, v1

    sub-long v3, v3, v17

    iput-wide v3, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBufferLimit:J

    .line 118
    .end local v1    # "currConsumerIndex":J
    goto :goto_4

    .line 121
    :cond_8
    iget-wide v1, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerMask:J

    add-long/2addr v1, v14

    sub-long v1, v1, v17

    iput-wide v1, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBufferLimit:J

    .line 122
    invoke-direct {v10, v0}, Lorg/jctools/queues/SpscGrowableArrayQueue;->adjustLookAheadStep(I)V

    .line 125
    .end local v0    # "newCapacity":I
    .end local v21    # "offsetInNew":J
    .end local v24    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    :goto_4
    return v16

    .line 131
    .end local v11    # "lookAheadStep":J
    .end local v13    # "maxCapacity":I
    .end local v19    # "lookAheadElementOffset":J
    .restart local v7    # "lookAheadStep":J
    :cond_9
    move-wide v11, v7

    .end local v7    # "lookAheadStep":J
    .restart local v11    # "lookAheadStep":J
    neg-long v7, v11

    .line 134
    .local v7, "prevElementsInOtherBuffers":J
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/SpscGrowableArrayQueue;->lvConsumerIndex()J

    move-result-wide v17

    .line 135
    .local v17, "currConsumerIndex":J
    sub-long v2, v14, v17

    long-to-int v9, v2

    .line 136
    .local v9, "size":I
    move-wide/from16 v19, v11

    move-wide/from16 v11, p2

    .end local v11    # "lookAheadStep":J
    .local v19, "lookAheadStep":J
    long-to-int v0, v11

    add-int/lit8 v13, v0, 0x1

    .line 137
    .restart local v13    # "maxCapacity":I
    if-ne v9, v13, :cond_a

    .line 140
    return v1

    .line 143
    :cond_a
    iget-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBufferLimit:J

    int-to-long v2, v13

    sub-long/2addr v0, v2

    add-long v21, v0, v7

    .line 144
    .local v21, "firstIndexInCurrentBuffer":J
    cmp-long v0, v17, v21

    if-ltz v0, :cond_b

    .line 147
    invoke-direct {v10, v13}, Lorg/jctools/queues/SpscGrowableArrayQueue;->adjustLookAheadStep(I)V

    goto :goto_5

    .line 153
    :cond_b
    sub-long v0, v17, v21

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->lookAheadStep:J

    .line 155
    :goto_5
    int-to-long v0, v13

    add-long v0, v17, v0

    iput-wide v0, v10, Lorg/jctools/queues/SpscGrowableArrayQueue;->producerBufferLimit:J

    .line 156
    if-nez p8, :cond_c

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_c
    move-object/from16 v2, p8

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscGrowableArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    .line 157
    return v16
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 32
    .local p0, "this":Lorg/jctools/queues/SpscGrowableArrayQueue;, "Lorg/jctools/queues/SpscGrowableArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
