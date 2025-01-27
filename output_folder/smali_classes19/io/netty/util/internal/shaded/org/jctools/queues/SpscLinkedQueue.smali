.class public Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;
.source "SpscLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;-><init>()V

    .line 36
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->newNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 37
    .local v0, "node":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 38
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic capacity()I
    .locals 1

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

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

    .line 99
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
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

    .line 105
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-eqz p1, :cond_3

    .line 107
    if-ltz p2, :cond_2

    .line 109
    if-nez p2, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-interface {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 113
    .local v0, "tail":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    move-object v1, v0

    .line 114
    .local v1, "head":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 116
    invoke-interface {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 117
    .local v3, "temp":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 118
    move-object v0, v3

    .line 114
    .end local v3    # "temp":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 121
    .local v2, "oldPNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v2, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 122
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 123
    return p2

    .line 108
    .end local v0    # "tail":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v1    # "head":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v2    # "oldPNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
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

    .line 106
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

    .line 129
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    if-eqz p2, :cond_4

    .line 131
    if-eqz p3, :cond_3

    .line 133
    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 137
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    :goto_0
    invoke-interface {p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    .line 141
    invoke-interface {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 142
    .local v2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 143
    move-object v0, v2

    .line 144
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 139
    .end local v2    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 147
    :cond_1
    return-void

    .line 134
    .end local v0    # "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "supplier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exit condition is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "waiter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->isEmpty()Z

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

    .line 60
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 65
    .local v0, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 66
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 67
    const/4 v1, 0x1

    return v1

    .line 62
    .end local v0    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
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
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->relaxedPeek()Ljava/lang/Object;

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
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 31
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
