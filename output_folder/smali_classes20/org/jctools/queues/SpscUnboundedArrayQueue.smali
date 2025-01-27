.class public Lorg/jctools/queues/SpscUnboundedArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.source "SpscUnboundedArrayQueue.java"


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


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "chunkSize"    # I

    .line 33
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;-><init>()V

    .line 34
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 35
    .local v0, "chunkCapacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    .line 36
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v3, p0, Lorg/jctools/queues/SpscUnboundedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 38
    iput-wide v1, p0, Lorg/jctools/queues/SpscUnboundedArrayQueue;->producerMask:J

    .line 39
    iput-object v3, p0, Lorg/jctools/queues/SpscUnboundedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 40
    iput-wide v1, p0, Lorg/jctools/queues/SpscUnboundedArrayQueue;->consumerMask:J

    .line 41
    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    iput-wide v4, p0, Lorg/jctools/queues/SpscUnboundedArrayQueue;->producerBufferLimit:J

    .line 42
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 77
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 20
    .param p2, "mask"    # J
    .param p4, "pIndex"    # J
    .param p6, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJJTE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p8, "v":Ljava/lang/Object;, "TE;"
    .local p9, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<+TE;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    const-wide/16 v0, 0x1

    add-long v2, v12, v0

    const-wide/16 v4, 0x4

    div-long v14, v2, v4

    .line 49
    .local v14, "lookAheadStep":J
    add-long v7, p4, v14

    .line 52
    .local v7, "pBufferLimit":J
    invoke-static {v7, v8, v12, v13}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v2

    invoke-static {v11, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 54
    sub-long v0, v7, v0

    iput-wide v0, v10, Lorg/jctools/queues/SpscUnboundedArrayQueue;->producerBufferLimit:J

    .line 55
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

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    move-wide/from16 v17, v7

    goto :goto_3

    .line 57
    :cond_1
    add-long v2, p4, v0

    invoke-static {v2, v3, v12, v13}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v2

    invoke-static {v11, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 59
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

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    move-wide/from16 v17, v7

    goto :goto_3

    .line 65
    :cond_3
    const-wide/16 v2, 0x2

    add-long/2addr v2, v12

    long-to-int v2, v2

    invoke-static {v2}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v9

    .line 66
    .local v9, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v9, v10, Lorg/jctools/queues/SpscUnboundedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 67
    add-long v2, p4, v12

    sub-long/2addr v2, v0

    iput-wide v2, v10, Lorg/jctools/queues/SpscUnboundedArrayQueue;->producerBufferLimit:J

    .line 69
    if-nez p8, :cond_4

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    :cond_4
    move-object/from16 v16, p8

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p1

    move-wide/from16 v4, p6

    move-object v6, v9

    move-wide/from16 v17, v7

    .end local v7    # "pBufferLimit":J
    .local v17, "pBufferLimit":J
    move-wide/from16 v7, p6

    move-object/from16 v19, v9

    .end local v9    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    .local v19, "newBuffer":[Ljava/lang/Object;, "[TE;"
    move-object/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V

    .line 71
    .end local v19    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 29
    .local p0, "this":Lorg/jctools/queues/SpscUnboundedArrayQueue;, "Lorg/jctools/queues/SpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
