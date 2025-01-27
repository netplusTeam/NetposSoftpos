.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad2;
.source "BaseLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad2;-><init>()V

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 264
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 254
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result v0

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 4
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 232
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_4

    .line 234
    if-ltz p2, :cond_3

    .line 236
    if-nez p2, :cond_0

    .line 237
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 239
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 240
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v2

    .line 241
    .local v2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-nez v2, :cond_1

    .line 242
    return v1

    .line 245
    :cond_1
    invoke-virtual {p0, v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)Ljava/lang/Object;

    move-result-object v3

    .line 246
    .local v3, "nextValue":Ljava/lang/Object;, "TE;"
    move-object v0, v2

    .line 247
    invoke-interface {p1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 239
    .end local v2    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    .end local v3    # "nextValue":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_2
    return p2

    .line 235
    .end local v0    # "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 259
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 260
    return-void
.end method

.method protected getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    .local p2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 201
    invoke-virtual {p0, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    .line 203
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 191
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

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

    .line 129
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final newNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    invoke-direct {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;-><init>()V

    return-object v0
.end method

.method protected final newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    invoke-direct {v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->offer(Ljava/lang/Object;)Z

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

    .line 218
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 219
    .local v0, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->lpValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 222
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

    .line 208
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 209
    .local v0, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 210
    .local v1, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 213
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public final size()I
    .locals 4

    .line 159
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    .line 160
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v1

    .line 161
    .local v1, "producerNode":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    const/4 v2, 0x0

    .line 163
    .local v2, "size":I
    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    .line 168
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v3

    .line 170
    .local v3, "next":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    if-ne v3, v0, :cond_0

    .line 171
    return v2

    .line 173
    :cond_0
    move-object v0, v3

    .line 174
    nop

    .end local v3    # "next":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    .line 175
    goto :goto_0

    .line 176
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
