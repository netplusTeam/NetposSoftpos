.class public abstract Lorg/jctools/queues/MpscLinkedQueue;
.super Lorg/jctools/queues/BaseLinkedQueue;
.source "MpscLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseLinkedQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 54
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseLinkedQueue;-><init>()V

    .line 55
    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->newNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 56
    .local v0, "node":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->spConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 57
    invoke-virtual {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->xchgProducerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    .line 58
    return-void
.end method

.method private getNextConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    .local p1, "currConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p1}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 249
    .local v0, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->lvProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lorg/jctools/queues/MpscLinkedQueue;->spinWaitForNextNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 253
    :cond_0
    return-object v0
.end method

.method public static newMpscLinkedQueue()Lorg/jctools/queues/MpscLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/jctools/queues/MpscLinkedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 43
    sget-boolean v0, Lorg/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_SET:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lorg/jctools/queues/MpscLinkedQueue8;

    invoke-direct {v0}, Lorg/jctools/queues/MpscLinkedQueue8;-><init>()V

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lorg/jctools/queues/MpscLinkedQueue7;

    invoke-direct {v0}, Lorg/jctools/queues/MpscLinkedQueue7;-><init>()V

    return-object v0
.end method

.method private spinWaitForNextNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    .local p1, "currNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseLinkedQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseLinkedQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseLinkedQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 207
    .local v0, "result":J
    :goto_0
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Lorg/jctools/queues/MpscLinkedQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    .line 208
    const-wide/16 v2, 0x1000

    add-long/2addr v0, v2

    .line 210
    const-wide/32 v2, 0x7fffefff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 211
    long-to-int v2, v0

    return v2

    .line 210
    :cond_0
    goto :goto_0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 4
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-nez p2, :cond_0

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 222
    .local v0, "tail":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    move-object v1, v0

    .line 223
    .local v1, "head":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 225
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jctools/queues/MpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 226
    .local v3, "temp":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0, v3}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 227
    move-object v0, v3

    .line 223
    .end local v3    # "temp":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->xchgProducerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 230
    .local v2, "oldPNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v2, v1}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 231
    return p2
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 1
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

    .line 237
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/MpscLinkedQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lorg/jctools/queues/MpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 84
    .local v0, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->xchgProducerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 87
    .local v1, "prevProducerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v1, v0}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 81
    .end local v0    # "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v1    # "prevProducerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->lpConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 130
    .local v0, "currConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 131
    .local v1, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lorg/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->lvProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 137
    invoke-direct {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->spinWaitForNextNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lorg/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 141
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->lpConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 112
    .local v0, "currConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 113
    .local v1, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/MpscLinkedQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->lvProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 119
    invoke-direct {p0, v0}, Lorg/jctools/queues/MpscLinkedQueue;->spinWaitForNextNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 121
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/MpscLinkedQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 123
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseLinkedQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 153
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 155
    return v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/MpscLinkedQueue;->lpConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 159
    .local v1, "originalConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    move-object v2, v1

    .line 160
    .local v2, "prevConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-direct {p0, v1}, Lorg/jctools/queues/MpscLinkedQueue;->getNextConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 161
    .local v3, "currConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    :goto_0
    if-eqz v3, :cond_4

    .line 163
    invoke-virtual {v3}, Lorg/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    invoke-direct {p0, v3}, Lorg/jctools/queues/MpscLinkedQueue;->getNextConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 167
    .local v0, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v2, v0}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v2, v4}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 181
    invoke-virtual {p0, v3, v2}, Lorg/jctools/queues/MpscLinkedQueue;->casProducerNode(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 184
    invoke-direct {p0, v3}, Lorg/jctools/queues/MpscLinkedQueue;->spinWaitForNextNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 185
    invoke-virtual {v2, v0}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 191
    invoke-virtual {v3, v4}, Lorg/jctools/queues/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 193
    const/4 v4, 0x1

    return v4

    .line 195
    .end local v0    # "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    :cond_3
    move-object v2, v3

    .line 196
    invoke-direct {p0, v3}, Lorg/jctools/queues/MpscLinkedQueue;->getNextConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v3

    goto :goto_0

    .line 198
    :cond_4
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 33
    .local p0, "this":Lorg/jctools/queues/MpscLinkedQueue;, "Lorg/jctools/queues/MpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract xchgProducerNode(Lorg/jctools/queues/LinkedQueueNode;)Lorg/jctools/queues/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end method
