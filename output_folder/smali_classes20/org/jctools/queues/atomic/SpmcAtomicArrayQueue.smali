.class public Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL3Pad;
.source "SpmcAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 157
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL3Pad;-><init>(I)V

    .line 158
    return-void
.end method

.method private removeElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 3
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JI)TE;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p2, p3, p4}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v0

    .line 210
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 213
    return-object v1
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 154
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL3Pad;->clear()V

    return-void
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->capacity()I

    move-result v0

    .line 271
    .local v0, "capacity":I
    const/4 v1, 0x0

    .line 272
    .local v1, "sum":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "drained":I
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v3

    move v2, v3

    if-nez v3, :cond_0

    .line 275
    goto :goto_1

    .line 277
    :cond_0
    add-int/2addr v1, v2

    .line 278
    .end local v2    # "drained":I
    goto :goto_0

    .line 279
    :cond_1
    :goto_1
    return v1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 10
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 290
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 291
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 292
    .local v2, "currProducerIndexCache":J
    const/4 v4, 0x0

    .line 295
    .local v4, "adjustedLimit":I
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v5

    .line 297
    .local v5, "currentConsumerIndex":J
    cmp-long v7, v5, v2

    if-ltz v7, :cond_1

    .line 298
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    .line 299
    .local v7, "currProducerIndex":J
    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    .line 300
    const/4 v9, 0x0

    return v9

    .line 302
    :cond_0
    move-wide v2, v7

    .line 303
    invoke-virtual {p0, v7, v8}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->svProducerIndexCache(J)V

    .line 307
    .end local v7    # "currProducerIndex":J
    :cond_1
    sub-long v7, v2, v5

    long-to-int v7, v7

    .line 308
    .local v7, "remaining":I
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 309
    .end local v7    # "remaining":I
    int-to-long v7, v4

    add-long/2addr v7, v5

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->casConsumerIndex(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 310
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_2

    .line 311
    int-to-long v8, v7

    add-long/2addr v8, v5

    invoke-direct {p0, v0, v8, v9, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->removeElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 313
    .end local v7    # "i":I
    :cond_2
    return v4

    .line 309
    :cond_3
    goto :goto_0
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

    .line 337
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 338
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 341
    goto :goto_0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    return v0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 8
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 319
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 320
    .local v1, "mask":I
    iget-wide v2, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->producerIndex:J

    .line 321
    .local v2, "producerIndex":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 322
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v5

    .line 323
    .local v5, "offset":I
    invoke-static {v0, v5}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 324
    return v4

    .line 326
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 328
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 330
    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soProducerIndex(J)V

    .line 321
    .end local v5    # "offset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    .end local v4    # "i":I
    :cond_1
    return p2
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 9
    .param p2, "w"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "e"    # Lorg/jctools/queues/MessagePassingQueue$ExitCondition;
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

    .line 349
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 350
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 351
    .local v1, "mask":I
    iget-wide v2, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->producerIndex:J

    .line 352
    .local v2, "producerIndex":J
    const/4 v4, 0x0

    .line 353
    .local v4, "counter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 354
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x1000

    if-ge v5, v6, :cond_1

    .line 355
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    .line 356
    .local v6, "offset":I
    invoke-static {v0, v6}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 358
    invoke-interface {p2, v4}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v4

    .line 359
    goto :goto_2

    .line 361
    :cond_0
    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    .line 362
    const/4 v4, 0x0

    .line 364
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 366
    invoke-virtual {p0, v2, v3}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soProducerIndex(J)V

    .line 354
    .end local v6    # "offset":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 369
    :cond_2
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 154
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL3Pad;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_2

    .line 165
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 166
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 167
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    .line 168
    .local v2, "currProducerIndex":J
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 169
    .local v4, "offset":I
    invoke-static {v0, v4}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 170
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v5

    sub-long v5, v2, v5

    .line 171
    .local v5, "size":J
    int-to-long v7, v1

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 172
    const/4 v7, 0x0

    return v7

    .line 175
    :cond_0
    :goto_0
    invoke-static {v0, v4}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 180
    .end local v5    # "size":J
    :cond_1
    invoke-static {v0, v4, p1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 183
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soProducerIndex(J)V

    .line 184
    const/4 v5, 0x1

    return v5

    .line 163
    .end local v0    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "mask":I
    .end local v2    # "currProducerIndex":J
    .end local v4    # "offset":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 219
    .local v0, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndexCache()J

    move-result-wide v1

    .line 223
    .local v1, "currProducerIndexCache":J
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v3

    .line 224
    .local v3, "currentConsumerIndex":J
    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    .line 225
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v5

    .line 226
    .local v5, "currProducerIndex":J
    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 227
    const/4 v7, 0x0

    return-object v7

    .line 229
    :cond_0
    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->svProducerIndexCache(J)V

    .line 232
    .end local v5    # "currProducerIndex":J
    :cond_1
    iget-object v5, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v3, v4, v0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    invoke-static {v5, v6}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v5, :cond_2

    .line 233
    return-object v6

    .line 232
    :cond_2
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndexCache()J

    move-result-wide v0

    .line 192
    .local v0, "currProducerIndexCache":J
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    .line 193
    .local v2, "currentConsumerIndex":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 194
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 195
    .local v4, "currProducerIndex":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 196
    const/4 v6, 0x0

    return-object v6

    .line 198
    :cond_0
    move-wide v0, v4

    .line 199
    invoke-virtual {p0, v4, v5}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->svProducerIndexCache(J)V

    .line 202
    .end local v4    # "currProducerIndex":J
    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->casConsumerIndex(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v5, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    invoke-direct {p0, v4, v2, v3, v5}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->removeElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 202
    :cond_2
    goto :goto_0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 242
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 243
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    .line 244
    .local v2, "producerIndex":J
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 245
    .local v4, "offset":I
    invoke-static {v0, v4}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 246
    const/4 v5, 0x0

    return v5

    .line 248
    :cond_0
    invoke-static {v0, v4, p1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 251
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->soProducerIndex(J)V

    .line 252
    const/4 v5, 0x1

    return v5

    .line 239
    .end local v0    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "mask":I
    .end local v2    # "producerIndex":J
    .end local v4    # "offset":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 263
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->mask:I

    .line 264
    .local v1, "mask":I
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    .line 265
    .local v2, "consumerIndex":J
    invoke-virtual {p0, v2, v3, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    invoke-static {v0, v4}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 154
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueL3Pad;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
