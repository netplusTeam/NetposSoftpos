.class public Lorg/jctools/queues/SpscChunkedArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.source "SpscChunkedArrayQueue.java"


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
.field private final maxQueueCapacity:I

.field private producerQueueLimit:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 37
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jctools/queues/SpscChunkedArrayQueue;-><init>(II)V

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "chunkSize"    # I
    .param p2, "capacity"    # I

    .line 41
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;-><init>()V

    .line 42
    const/16 v0, 0x10

    const-string v1, "capacity"

    invoke-static {p2, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 44
    const/16 v0, 0x8

    const-string v1, "chunkSize"

    invoke-static {p1, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 46
    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->maxQueueCapacity:I

    .line 47
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    .line 48
    .local v1, "chunkCapacity":I
    const-string v2, "chunkCapacity"

    invoke-static {v1, v0, v2}, Lorg/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 50
    add-int/lit8 v2, v1, -0x1

    int-to-long v2, v2

    .line 52
    .local v2, "mask":J
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v4

    .line 53
    .local v4, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v4, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 54
    iput-wide v2, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerMask:J

    .line 55
    iput-object v4, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->consumerBuffer:[Ljava/lang/Object;

    .line 56
    iput-wide v2, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->consumerMask:J

    .line 57
    const-wide/16 v5, 0x1

    sub-long v5, v2, v5

    iput-wide v5, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerBufferLimit:J

    .line 58
    int-to-long v5, v0

    iput-wide v5, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerQueueLimit:J

    .line 59
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 114
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/SpscChunkedArrayQueue;->maxQueueCapacity:I

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 22
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

    .line 65
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
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

    .line 66
    .local v14, "lookAheadStep":J
    add-long v2, p4, v14

    .line 68
    .local v2, "pBufferLimit":J
    iget-wide v4, v10, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerQueueLimit:J

    .line 70
    .local v4, "pQueueLimit":J
    cmp-long v6, p4, v4

    if-ltz v6, :cond_1

    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/queues/SpscChunkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v6

    .line 74
    .local v6, "cIndex":J
    iget v8, v10, Lorg/jctools/queues/SpscChunkedArrayQueue;->maxQueueCapacity:I

    int-to-long v8, v8

    add-long/2addr v8, v6

    move-wide v4, v8

    iput-wide v8, v10, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerQueueLimit:J

    .line 76
    cmp-long v8, p4, v4

    if-ltz v8, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    move-wide/from16 v16, v4

    goto :goto_0

    .line 70
    .end local v6    # "cIndex":J
    :cond_1
    move-wide/from16 v16, v4

    .line 83
    .end local v4    # "pQueueLimit":J
    .local v16, "pQueueLimit":J
    :goto_0
    sub-long v4, v2, v16

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 85
    move-wide/from16 v2, v16

    move-wide v7, v2

    goto :goto_1

    .line 83
    :cond_2
    move-wide v7, v2

    .line 89
    .end local v2    # "pBufferLimit":J
    .local v7, "pBufferLimit":J
    :goto_1
    add-long v2, p4, v0

    cmp-long v2, v7, v2

    if-lez v2, :cond_4

    .line 90
    invoke-static {v7, v8, v12, v13}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v2

    invoke-static {v11, v2, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 92
    sub-long v0, v7, v0

    iput-wide v0, v10, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerBufferLimit:J

    .line 93
    if-nez p8, :cond_3

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object/from16 v2, p8

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscChunkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    move-wide/from16 v19, v7

    goto :goto_5

    .line 95
    :cond_4
    add-long v0, p4, v0

    invoke-static {v0, v1, v12, v13}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 97
    if-nez p8, :cond_5

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_5
    move-object/from16 v2, p8

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/SpscChunkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    move-wide/from16 v19, v7

    goto :goto_5

    .line 103
    :cond_6
    const-wide/16 v0, 0x2

    add-long/2addr v0, v12

    long-to-int v0, v0

    invoke-static {v0}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v9

    .line 104
    .local v9, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v9, v10, Lorg/jctools/queues/SpscChunkedArrayQueue;->producerBuffer:[Ljava/lang/Object;

    .line 106
    if-nez p8, :cond_7

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_4

    :cond_7
    move-object/from16 v18, p8

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p1

    move-wide/from16 v4, p6

    move-object v6, v9

    move-wide/from16 v19, v7

    .end local v7    # "pBufferLimit":J
    .local v19, "pBufferLimit":J
    move-wide/from16 v7, p6

    move-object/from16 v21, v9

    .end local v9    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    .local v21, "newBuffer":[Ljava/lang/Object;, "[TE;"
    move-object/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/SpscChunkedArrayQueue;->linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    .end local v21    # "newBuffer":[Ljava/lang/Object;, "[TE;"
    :goto_5
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 30
    .local p0, "this":Lorg/jctools/queues/SpscChunkedArrayQueue;, "Lorg/jctools/queues/SpscChunkedArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
