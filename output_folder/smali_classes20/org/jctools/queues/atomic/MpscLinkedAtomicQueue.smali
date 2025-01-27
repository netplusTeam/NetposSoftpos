.class public final Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;
.super Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;
.source "MpscLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;-><init>()V

    .line 48
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->newNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 49
    .local v0, "node":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->spConsumerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 50
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->xchgProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    .line 51
    return-void
.end method

.method private getNextConsumerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "currConsumerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 213
    .local v0, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->lvProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->spinWaitForNextNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 216
    :cond_0
    return-object v0
.end method

.method private spinWaitForNextNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)",
            "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "currNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

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

    .line 179
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 181
    .local v0, "result":J
    :goto_0
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    .line 182
    const-wide/16 v2, 0x1000

    add-long/2addr v0, v2

    .line 183
    const-wide/32 v2, 0x7fffefff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 184
    long-to-int v2, v0

    return v2

    .line 183
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

    .line 189
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-nez p2, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 193
    .local v0, "tail":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    move-object v1, v0

    .line 194
    .local v1, "head":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 195
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v3

    .line 196
    .local v3, "temp":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0, v3}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 197
    move-object v0, v3

    .line 194
    .end local v3    # "temp":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->xchgProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    .line 200
    .local v2, "oldPNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v2, v1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 201
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

    .line 206
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    goto :goto_0

    .line 209
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

    .line 71
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 75
    .local v0, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->xchgProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 79
    .local v1, "prevProducerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v1, v0}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 80
    const/4 v2, 0x1

    return v2

    .line 72
    .end local v0    # "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    .end local v1    # "prevProducerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
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

    .line 118
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->lpConsumerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 119
    .local v0, "currConsumerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 120
    .local v1, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->lvProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 123
    invoke-direct {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->spinWaitForNextNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 127
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

    .line 103
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->lpConsumerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 104
    .local v0, "currConsumerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 105
    .local v1, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->lvProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 108
    invoke-direct {p0, v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->spinWaitForNextNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 112
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 138
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 140
    return v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->lpConsumerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 143
    .local v1, "originalConsumerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    move-object v2, v1

    .line 144
    .local v2, "prevConsumerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-direct {p0, v1}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->getNextConsumerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v3

    .line 145
    .local v3, "currConsumerNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :goto_0
    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {v3}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->lpValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-direct {p0, v3}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->getNextConsumerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 149
    .local v0, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v2, v0}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v2, v4}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 159
    invoke-virtual {p0, v3, v2}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->casProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 161
    invoke-direct {p0, v3}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->spinWaitForNextNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 166
    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 167
    invoke-virtual {v3, v4}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->spValue(Ljava/lang/Object;)V

    .line 168
    const/4 v4, 0x1

    return v4

    .line 170
    .end local v0    # "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :cond_3
    move-object v2, v3

    .line 171
    invoke-direct {p0, v3}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;->getNextConsumerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v3

    goto :goto_0

    .line 173
    :cond_4
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
