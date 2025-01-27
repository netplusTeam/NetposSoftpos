.class public Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;
.source "MpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p0:J

.field p1:J

.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J

.field p17:J

.field p2:J

.field p3:J

.field p4:J

.field p5:J

.field p6:J

.field p7:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .line 30
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected availableInQueue(JJ)J
    .locals 2
    .param p1, "pIndex"    # J
    .param p3, "cIndex"    # J

    .line 37
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public capacity()I
    .locals 1

    .line 43
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
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

    .line 49
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

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

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillUnbounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method protected getCurrentBufferCapacity(J)J
    .locals 0
    .param p1, "mask"    # J

    .line 67
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    return-wide p1
.end method

.method protected getNextBufferSize([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation

    .line 61
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 23
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
