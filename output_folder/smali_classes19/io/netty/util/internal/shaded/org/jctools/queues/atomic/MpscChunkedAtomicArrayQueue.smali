.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;
.source "MpscChunkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields<",
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
    .locals 2
    .param p1, "maxCapacity"    # I

    .line 62
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;-><init>(II)V

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 73
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;-><init>(II)V

    .line 74
    return-void
.end method


# virtual methods
.method protected availableInQueue(JJ)J
    .locals 4
    .param p1, "pIndex"    # J
    .param p3, "cIndex"    # J

    .line 78
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;->maxQueueCapacity:J

    sub-long v2, p1, p3

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public capacity()I
    .locals 4

    .line 83
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;->maxQueueCapacity:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method protected getCurrentBufferCapacity(J)J
    .locals 0
    .param p1, "mask"    # J

    .line 93
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    return-wide p1
.end method

.method protected getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
