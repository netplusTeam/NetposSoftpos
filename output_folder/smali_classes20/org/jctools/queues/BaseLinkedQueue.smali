.class abstract Lorg/jctools/queues/BaseLinkedQueue;
.super Lorg/jctools/queues/BaseLinkedQueuePad2;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseLinkedQueuePad2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseLinkedQueuePad2;-><init>()V

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 286
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const-wide/16 v0, 0x0

    .line 231
    .local v0, "result":J
    :cond_0
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Lorg/jctools/queues/BaseLinkedQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v3

    .line 232
    .local v3, "drained":I
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 234
    if-ne v3, v2, :cond_1

    const-wide/32 v4, 0x7fffefff

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 235
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 4
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseLinkedQueue;->consumerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 242
    .local v0, "chaserNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 244
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 246
    .local v2, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v2, :cond_0

    .line 248
    return v1

    .line 251
    :cond_0
    invoke-virtual {p0, v0, v2}, Lorg/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v3

    .line 252
    .local v3, "nextValue":Ljava/lang/Object;, "TE;"
    move-object v0, v2

    .line 253
    invoke-interface {p1, v3}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 242
    .end local v2    # "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v3    # "nextValue":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_1
    return p2
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 5
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

    .line 261
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/BaseLinkedQueue;->consumerNode:Lorg/jctools/queues/LinkedQueueNode;

    .line 262
    .local v0, "chaserNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v1, 0x0

    .line 263
    .local v1, "idleCounter":I
    :goto_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_1

    .line 267
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 268
    .local v3, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v3, :cond_0

    .line 270
    invoke-interface {p2, v1}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v1

    .line 271
    goto :goto_2

    .line 274
    :cond_0
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, v0, v3}, Lorg/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v4

    .line 277
    .local v4, "nextValue":Ljava/lang/Object;, "TE;"
    move-object v0, v3

    .line 278
    invoke-interface {p1, v4}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 265
    .end local v3    # "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v4    # "nextValue":Ljava/lang/Object;, "TE;"
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_1
    goto :goto_0

    .line 281
    :cond_2
    return-void
.end method

.method protected getSingleConsumerNodeValue(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "currConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .local p2, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p2}, Lorg/jctools/queues/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p1}, Lorg/jctools/queues/LinkedQueueNode;->soNext(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 190
    invoke-virtual {p0, p2}, Lorg/jctools/queues/BaseLinkedQueue;->spConsumerNode(Lorg/jctools/queues/LinkedQueueNode;)V

    .line 192
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 178
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseLinkedQueue;->lvConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 110
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final newNode()Lorg/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    new-instance v0, Lorg/jctools/queues/LinkedQueueNode;

    invoke-direct {v0}, Lorg/jctools/queues/LinkedQueueNode;-><init>()V

    return-object v0
.end method

.method protected final newNode(Ljava/lang/Object;)Lorg/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/jctools/queues/LinkedQueueNode;

    invoke-direct {v0, p1}, Lorg/jctools/queues/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 211
    .local v0, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 215
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 199
    .local v0, "currConsumerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 200
    .local v1, "nextNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0, v0, v1}, Lorg/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lorg/jctools/queues/LinkedQueueNode;Lorg/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 204
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public final size()I
    .locals 4

    .line 144
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseLinkedQueue;->lvConsumerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 145
    .local v0, "chaserNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 146
    .local v1, "producerNode":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v2, 0x0

    .line 148
    .local v2, "size":I
    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    .line 153
    invoke-virtual {v0}, Lorg/jctools/queues/LinkedQueueNode;->lvNext()Lorg/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 155
    .local v3, "next":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    if-ne v3, v0, :cond_0

    .line 157
    return v2

    .line 159
    :cond_0
    move-object v0, v3

    .line 160
    nop

    .end local v3    # "next":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    .local p0, "this":Lorg/jctools/queues/BaseLinkedQueue;, "Lorg/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
