.class public Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;
.super Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;
.source "SpscLinkedAtomicQueue.java"


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
    .locals 2

    .line 47
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;-><init>()V

    .line 48
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 49
    .local v0, "node":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 50
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->spConsumerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
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

    .line 108
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 110
    .local v0, "result":J
    :goto_0
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    .line 111
    const-wide/16 v2, 0x1000

    add-long/2addr v0, v2

    .line 112
    const-wide/32 v2, 0x7fffefff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 113
    long-to-int v2, v0

    return v2

    .line 112
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

    .line 118
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-nez p2, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 122
    .local v0, "tail":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    move-object v1, v0

    .line 123
    .local v1, "head":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 124
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v3

    .line 125
    .local v3, "temp":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0, v3}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 126
    move-object v0, v3

    .line 123
    .end local v3    # "temp":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    .line 129
    .local v2, "oldPNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v2, v1}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 131
    return p2
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 3
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

    .line 136
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->producerNode:Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    .line 137
    .local v0, "chaserNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    .line 139
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    .line 140
    .local v2, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0, v2}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 141
    move-object v0, v2

    .line 142
    iput-object v0, p0, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->producerNode:Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    .line 138
    .end local v2    # "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 76
    .local v0, "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 77
    invoke-virtual {p0, v0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 78
    const/4 v1, 0x1

    return v1

    .line 73
    .end local v0    # "nextNode":Lorg/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lorg/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 45
    .local p0, "this":Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/atomic/BaseLinkedAtomicQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
