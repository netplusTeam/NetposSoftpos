.class abstract Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerColdFields;
.source "BaseSpscLinkedAtomicArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerColdFields<",
        "TE;>;",
        "Lorg/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lorg/jctools/queues/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field private static final JUMP:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 125
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerColdFields;-><init>()V

    return-void
.end method

.method private newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;
    .locals 5
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->lvNextArrayAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    .line 344
    .local v0, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v0, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 345
    invoke-static {v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-long v1, v1

    .line 346
    .local v1, "mask":J
    iput-wide v1, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 347
    invoke-static {p2, p3, v1, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v3

    .line 349
    .local v3, "offset":I
    invoke-static {v0, v3}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;
    .locals 7
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->lvNextArrayAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    .line 354
    .local v0, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iput-object v0, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 355
    invoke-static {v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-long v1, v1

    .line 356
    .local v1, "mask":J
    iput-wide v1, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 357
    invoke-static {p2, p3, v1, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v3

    .line 359
    .local v3, "offset":I
    invoke-static {v0, v3}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 360
    .local v4, "n":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_0

    .line 364
    const-wide/16 v5, 0x1

    add-long/2addr v5, p2

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 366
    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 367
    return-object v4

    .line 361
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "new buffer must have at least one element"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public currentConsumerIndex()J
    .locals 2

    .line 156
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 2

    .line 151
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

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

    .line 190
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 1
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "wait"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
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

    .line 235
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 236
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

    .line 196
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->capacity()I

    move-result v2

    .line 199
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 200
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 201
    long-to-int v4, v0

    return v4

    .line 203
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 204
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 205
    long-to-int v3, v0

    return v3

    .line 204
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 19
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    move-object/from16 v9, p0

    move/from16 v10, p2

    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 217
    iget-object v12, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 218
    .local v12, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v13, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerIndex:J

    .line 219
    .local v13, "index":J
    iget-wide v7, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerMask:J

    .line 220
    .local v7, "mask":J
    invoke-static {v13, v14, v7, v8}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v15

    .line 222
    .local v15, "offset":I
    iget-wide v0, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerBufferLimit:J

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    .line 223
    invoke-interface/range {p1 .. p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v3, v13

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    goto :goto_1

    .line 225
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v7

    move-wide v4, v13

    move v6, v15

    move-wide/from16 v17, v7

    .end local v7    # "mask":J
    .local v17, "mask":J
    move-object/from16 v7, v16

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->offerColdPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJILjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    return v11

    .line 215
    .end local v12    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v13    # "index":J
    .end local v15    # "offset":I
    .end local v17    # "mask":J
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 230
    .end local v11    # "i":I
    :cond_2
    return v10
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "wait"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
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

    .line 240
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    :goto_1
    sget v0, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    goto :goto_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 245
    .local v0, "idleCounter":I
    :goto_2
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    goto :goto_2

    .line 248
    .end local v0    # "idleCounter":I
    :cond_1
    goto :goto_0

    .line 249
    :cond_2
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 141
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

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

    .line 131
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final linkOldToNew(JLjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 2
    .param p1, "currIndex"    # J
    .param p4, "offset"    # I
    .param p6, "offsetInNew"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;I",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p3, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p5, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p7, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p5, p6, p7}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 328
    invoke-virtual {p0, p3, p5}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 329
    sget-object v0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {p3, p4, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 332
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->soProducerIndex(J)V

    .line 333
    return-void
.end method

.method protected final lvNextArrayAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {p1}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->nextArrayOffset(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    .line 167
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 169
    .local v1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 170
    return-object v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v9, p0

    if-eqz p1, :cond_1

    .line 263
    iget-object v10, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 264
    .local v10, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v11, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerIndex:J

    .line 265
    .local v11, "index":J
    iget-wide v13, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerMask:J

    .line 266
    .local v13, "mask":J
    invoke-static {v11, v12, v13, v14}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v15

    .line 268
    .local v15, "offset":I
    iget-wide v0, v9, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->producerBufferLimit:J

    cmp-long v0, v11, v0

    if-gez v0, :cond_0

    .line 269
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide v3, v11

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v13

    move-wide v4, v11

    move v6, v15

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v8}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->offerColdPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJILjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result v0

    return v0

    .line 260
    .end local v10    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v11    # "index":J
    .end local v13    # "mask":J
    .end local v15    # "offset":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method abstract offerColdPath(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJILjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JJITE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public peek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 313
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v1, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerIndex:J

    .line 314
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 315
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v5

    .line 317
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 318
    .local v6, "e":Ljava/lang/Object;
    sget-object v7, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    .line 319
    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 321
    :cond_0
    return-object v6
.end method

.method public poll()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 287
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v1, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerIndex:J

    .line 288
    .local v1, "index":J
    iget-wide v3, p0, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->consumerMask:J

    .line 289
    .local v3, "mask":J
    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->calcElementOffset(JJ)I

    move-result v5

    .line 291
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    .line 292
    .local v6, "e":Ljava/lang/Object;
    sget-object v7, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 293
    .local v7, "isNextBuffer":Z
    :goto_0
    const/4 v8, 0x0

    if-eqz v6, :cond_1

    if-nez v7, :cond_1

    .line 295
    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    invoke-virtual {p0, v9, v10}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 296
    invoke-static {v0, v5, v8}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 297
    return-object v6

    .line 298
    :cond_1
    if-eqz v7, :cond_2

    .line 299
    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;J)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 301
    :cond_2
    return-object v8
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 136
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->size(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method protected final soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {p1}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->nextArrayOffset(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    .line 161
    .local v0, "offset":I
    invoke-static {p1, v0, p2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 146
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V
    .locals 2
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;TE;JI)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1, p5, p2}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 339
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueue;->soProducerIndex(J)V

    .line 340
    return-void
.end method
