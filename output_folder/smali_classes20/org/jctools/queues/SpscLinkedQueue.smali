.class public Lorg/jctools/queues/SpscLinkedQueue;
.super Lorg/jctools/queues/BaseLinkedQueue;
.source "SpscLinkedQueue.java"


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
.method public constructor <init>()V
    .locals 2

    .line 35
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseLinkedQueue;-><init>()V

    .line 36
    invoke-virtual {p0}, Lorg/jctools/queues/SpscLinkedQueue;->newNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 37
    .local v0, "node":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lorg/jctools/queues/SpscLinkedQueue;->spProducerNode(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 38
    invoke-virtual {p0, v0}, Lorg/jctools/queues/SpscLinkedQueue;->spConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseLinkedQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseLinkedQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
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

    .line 99
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 102
    .local v0, "result":J
    :goto_0
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Lorg/jctools/queues/SpscLinkedQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    .line 103
    const-wide/16 v2, 0x1000

    add-long/2addr v0, v2

    .line 105
    const-wide/32 v2, 0x7fffefff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 106
    long-to-int v2, v0

    return v2

    .line 105
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

    .line 112
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-nez p2, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_0
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 117
    .local v0, "tail":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    move-object v1, v0

    .line 118
    .local v1, "head":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 120
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 121
    .local v3, "temp":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0, v3}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 122
    move-object v0, v3

    .line 118
    .end local v3    # "temp":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/jctools/queues/SpscLinkedQueue;->lpProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 125
    .local v2, "oldPNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v2, v1}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 126
    invoke-virtual {p0, v0}, Lorg/jctools/queues/SpscLinkedQueue;->spProducerNode(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 127
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

    .line 133
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/SpscLinkedQueue;->producerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 134
    .local v0, "chaserNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    .line 138
    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 139
    .local v2, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0, v2}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 140
    move-object v0, v2

    .line 141
    iput-object v0, p0, Lorg/jctools/queues/SpscLinkedQueue;->producerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 136
    .end local v2    # "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 144
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

    .line 60
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lorg/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 65
    .local v0, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscLinkedQueue;->lpProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/jctools/queues/SpscLinkedQueue;->spProducerNode(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 67
    const/4 v1, 0x1

    return v1

    .line 62
    .end local v0    # "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
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

    .line 93
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscLinkedQueue;->relaxedPeek()Ljava/lang/Object;

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

    .line 87
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/SpscLinkedQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseLinkedQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 31
    .local p0, "this":Lorg/jctools/queues/SpscLinkedQueue;, "Lorg/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lorg/jctools/queues/BaseLinkedQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
