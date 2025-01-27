.class public Lorg/jctools/queues/MpscCompoundQueue;
.super Lorg/jctools/queues/MpscCompoundQueueConsumerQueueIndex;
.source "MpscCompoundQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscCompoundQueueConsumerQueueIndex<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J

.field p17:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 86
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    sget v0, Lorg/jctools/util/PortableJvmInfo;->CPUs:I

    invoke-direct {p0, p1, v0}, Lorg/jctools/queues/MpscCompoundQueue;-><init>(II)V

    .line 87
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "queueParallelism"    # I

    .line 91
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/jctools/queues/MpscCompoundQueueConsumerQueueIndex;-><init>(II)V

    .line 92
    return-void
.end method

.method private slowOffer([Lorg/jctools/queues/MpscArrayQueue;IILjava/lang/Object;)Z
    .locals 6
    .param p2, "parallelQueuesMask"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jctools/queues/MpscArrayQueue<",
            "TE;>;IITE;)Z"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "queues":[Lorg/jctools/queues/MpscArrayQueue;, "[Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, p2, 0x1

    .line 117
    .local v0, "queueCount":I
    add-int v1, p3, v0

    .line 120
    .local v1, "end":I
    :goto_0
    const/4 v2, 0x0

    .line 121
    .local v2, "status":I
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 123
    and-int v4, v3, p2

    aget-object v4, p1, v4

    invoke-virtual {v4, p4}, Lorg/jctools/queues/MpscArrayQueue;->failFastOffer(Ljava/lang/Object;)I

    move-result v4

    .line 124
    .local v4, "s":I
    if-nez v4, :cond_0

    .line 126
    const/4 v5, 0x1

    return v5

    .line 128
    :cond_0
    add-int/2addr v2, v4

    .line 121
    .end local v4    # "s":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    .end local v3    # "i":I
    :cond_1
    if-ne v2, v0, :cond_2

    .line 132
    const/4 v3, 0x0

    return v3

    .line 134
    .end local v2    # "status":I
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public capacity()I
    .locals 3

    .line 264
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    array-length v0, v0

    iget-object v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/jctools/queues/MpscArrayQueue;->capacity()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscCompoundQueue;->capacity()I

    move-result v0

    .line 272
    .local v0, "limit":I
    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/MpscCompoundQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v1

    return v1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 2
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 298
    invoke-virtual {p0}, Lorg/jctools/queues/MpscCompoundQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 299
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 301
    return v0

    .line 303
    :cond_0
    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 296
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
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

    .line 341
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {p0}, Lorg/jctools/queues/MpscCompoundQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 345
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 347
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 348
    goto :goto_0

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 351
    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 352
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 353
    :cond_1
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

    .line 278
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 279
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/jctools/queues/MpscCompoundQueue;->capacity()I

    move-result v2

    .line 282
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/MpscCompoundQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 283
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 285
    long-to-int v4, v0

    return v4

    .line 287
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 289
    .end local v3    # "filled":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 290
    long-to-int v3, v0

    return v3

    .line 289
    :cond_1
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 7
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    .line 312
    .local v0, "parallelQueuesMask":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    int-to-long v3, v0

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 313
    .local v1, "start":I
    iget-object v2, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    .line 314
    .local v2, "queues":[Lorg/jctools/queues/MpscArrayQueue;, "[Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    aget-object v3, v2, v1

    invoke-virtual {v3, p1, p2}, Lorg/jctools/queues/MpscArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 315
    .local v3, "filled":I
    if-ne v3, p2, :cond_0

    .line 317
    return p2

    .line 322
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    :goto_0
    add-int v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    if-ge v4, v5, :cond_2

    .line 324
    and-int v5, v4, v0

    aget-object v5, v2, v5

    sub-int v6, p2, v3

    invoke-virtual {v5, p1, v6}, Lorg/jctools/queues/MpscArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 325
    if-ne v3, p2, :cond_1

    .line 327
    return p2

    .line 322
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    .end local v4    # "i":I
    :cond_2
    return v3
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .param p2, "w"    # Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;
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

    .line 358
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const/4 v0, 0x0

    .line 359
    .local v0, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/MpscCompoundQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    .line 364
    goto :goto_0

    .line 366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :cond_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1

    .line 101
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    .line 102
    .local v0, "parallelQueuesMask":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    int-to-long v3, v0

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 103
    .local v1, "start":I
    iget-object v2, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    .line 104
    .local v2, "queues":[Lorg/jctools/queues/MpscArrayQueue;, "[Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lorg/jctools/queues/MpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const/4 v3, 0x1

    return v3

    .line 110
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v2, v0, v3, p1}, Lorg/jctools/queues/MpscCompoundQueue;->slowOffer([Lorg/jctools/queues/MpscArrayQueue;IILjava/lang/Object;)Z

    move-result v3

    return v3

    .line 99
    .end local v0    # "parallelQueuesMask":I
    .end local v1    # "start":I
    .end local v2    # "queues":[Lorg/jctools/queues/MpscArrayQueue;, "[Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v0, v1

    .line 159
    .local v0, "qIndex":I
    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueues:I

    add-int/2addr v1, v0

    .line 160
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 161
    .local v2, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    if-ge v0, v1, :cond_1

    .line 163
    iget-object v3, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    iget v4, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/jctools/queues/MpscArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_0

    .line 166
    goto :goto_1

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    .line 170
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v0, v1

    .line 141
    .local v0, "qIndex":I
    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueues:I

    add-int/2addr v1, v0

    .line 142
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 143
    .local v2, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    iget-object v3, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    iget v4, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/jctools/queues/MpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 148
    goto :goto_1

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    .line 152
    return-object v2
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 199
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 203
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    .line 204
    .local v0, "parallelQueuesMask":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    int-to-long v3, v0

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 205
    .local v1, "start":I
    iget-object v2, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    .line 206
    .local v2, "queues":[Lorg/jctools/queues/MpscArrayQueue;, "[Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lorg/jctools/queues/MpscArrayQueue;->failFastOffer(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 208
    return v4

    .line 213
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    :goto_0
    add-int v5, v1, v0

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_2

    .line 215
    and-int v5, v3, v0

    aget-object v5, v2, v5

    invoke-virtual {v5, p1}, Lorg/jctools/queues/MpscArrayQueue;->failFastOffer(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    .line 217
    return v4

    .line 213
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 201
    .end local v0    # "parallelQueuesMask":I
    .end local v1    # "start":I
    .end local v2    # "queues":[Lorg/jctools/queues/MpscArrayQueue;, "[Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v0, v1

    .line 247
    .local v0, "qIndex":I
    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueues:I

    add-int/2addr v1, v0

    .line 248
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 249
    .local v2, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    if-ge v0, v1, :cond_1

    .line 251
    iget-object v3, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    iget v4, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/jctools/queues/MpscArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_0

    .line 254
    goto :goto_1

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    .line 258
    return-object v2
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v0, v1

    .line 229
    .local v0, "qIndex":I
    iget v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueues:I

    add-int/2addr v1, v0

    .line 230
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 231
    .local v2, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    if-ge v0, v1, :cond_1

    .line 233
    iget-object v3, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    iget v4, p0, Lorg/jctools/queues/MpscCompoundQueue;->parallelQueuesMask:I

    and-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/jctools/queues/MpscArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_0

    .line 236
    goto :goto_1

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jctools/queues/MpscCompoundQueue;->consumerQueueIndex:I

    .line 240
    return-object v2
.end method

.method public size()I
    .locals 6

    .line 176
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "size":I
    iget-object v1, p0, Lorg/jctools/queues/MpscCompoundQueue;->queues:[Lorg/jctools/queues/MpscArrayQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 179
    .local v4, "lane":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    invoke-virtual {v4}, Lorg/jctools/queues/MpscArrayQueue;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 177
    .end local v4    # "lane":Lorg/jctools/queues/MpscArrayQueue;, "Lorg/jctools/queues/MpscArrayQueue<TE;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 193
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueue;, "Lorg/jctools/queues/MpscCompoundQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
