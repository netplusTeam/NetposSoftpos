.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;
.source "SpscLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;-><init>()V

    .line 47
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 48
    .local v0, "node":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 49
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillUnbounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result v0

    return v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 4
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-eqz p1, :cond_3

    .line 113
    if-ltz p2, :cond_2

    .line 115
    if-nez p2, :cond_0

    .line 116
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    invoke-interface {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 118
    .local v0, "tail":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    move-object v1, v0

    .line 119
    .local v1, "head":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 120
    invoke-interface {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v3

    .line 121
    .local v3, "temp":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 122
    move-object v0, v3

    .line 119
    .end local v3    # "temp":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    .line 125
    .local v2, "oldPNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v2, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 126
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 127
    return p2

    .line 114
    .end local v0    # "tail":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    .end local v1    # "head":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    .end local v2    # "oldPNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit is negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "supplier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 3
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-eqz p2, :cond_4

    .line 134
    if-eqz p3, :cond_3

    .line 136
    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 139
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :goto_0
    invoke-interface {p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    .line 141
    invoke-interface {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    .line 142
    .local v2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 143
    move-object v0, v2

    .line 144
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 140
    .end local v2    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 147
    :cond_1
    return-void

    .line 137
    .end local v0    # "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "supplier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exit condition is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "waiter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 75
    .local v0, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 76
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 77
    const/4 v1, 0x1

    return v1

    .line 72
    .end local v0    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
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

    .line 101
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

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

    .line 96
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 44
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
