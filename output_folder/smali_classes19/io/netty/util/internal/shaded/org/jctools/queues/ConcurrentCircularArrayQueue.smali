.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueueL0Pad;
.source "ConcurrentCircularArrayQueue.java"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/SupportsIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueueL0Pad<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/SupportsIterator;"
    }
.end annotation


# instance fields
.field protected final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected final mask:J


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 42
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueueL0Pad;-><init>()V

    .line 43
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 44
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    .line 45
    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 4

    .line 78
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 69
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public currentConsumerIndex()J
    .locals 2

    .line 90
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 2

    .line 84
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 57
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    .line 106
    .local v8, "cIndex":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->lvProducerIndex()J

    move-result-wide v10

    .line 108
    .local v10, "pIndex":J
    new-instance v12, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;

    iget-wide v5, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    iget-object v7, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    move-object v0, v12

    move-wide v1, v8

    move-wide v3, v10

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;-><init>(JJJ[Ljava/lang/Object;)V

    return-object v12
.end method

.method public size()I
    .locals 1

    .line 51
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;->size(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
