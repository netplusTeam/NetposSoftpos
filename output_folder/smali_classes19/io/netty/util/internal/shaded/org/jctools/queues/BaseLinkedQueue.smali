.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2;-><init>()V

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 260
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
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

    .line 248
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
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

    .line 221
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_4

    .line 223
    if-ltz p2, :cond_3

    .line 225
    if-nez p2, :cond_0

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 229
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 231
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 233
    .local v2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v2, :cond_1

    .line 235
    return v1

    .line 238
    :cond_1
    invoke-virtual {p0, v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v3

    .line 239
    .local v3, "nextValue":Ljava/lang/Object;, "TE;"
    move-object v0, v2

    .line 240
    invoke-interface {p1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 229
    .end local v2    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v3    # "nextValue":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    :cond_2
    return p2

    .line 224
    .end local v0    # "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
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

    .line 222
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

    .line 254
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 255
    return-void
.end method

.method protected getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    .local p2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p2}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 184
    invoke-virtual {p0, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 186
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 172
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

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

    .line 104
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final newNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    invoke-direct {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;-><init>()V

    return-object v0
.end method

.method protected final newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    invoke-direct {v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 215
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->offer(Ljava/lang/Object;)Z

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

    .line 204
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 205
    .local v0, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 209
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

    .line 192
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 193
    .local v0, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 194
    .local v1, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 198
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public final size()I
    .locals 4

    .line 138
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 139
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 140
    .local v1, "producerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v2, 0x0

    .line 142
    .local v2, "size":I
    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    .line 147
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 149
    .local v3, "next":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-ne v3, v0, :cond_0

    .line 151
    return v2

    .line 153
    :cond_0
    move-object v0, v3

    .line 154
    nop

    .end local v3    # "next":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 110
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
