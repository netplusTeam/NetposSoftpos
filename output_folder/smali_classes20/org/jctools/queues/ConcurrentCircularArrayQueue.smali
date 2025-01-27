.class public abstract Lorg/jctools/queues/ConcurrentCircularArrayQueue;
.super Lorg/jctools/queues/ConcurrentCircularArrayQueueL0Pad;
.source "ConcurrentCircularArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/ConcurrentCircularArrayQueueL0Pad<",
        "TE;>;"
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
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 42
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/ConcurrentCircularArrayQueueL0Pad;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 44
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    .line 45
    invoke-static {v0}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    .line 46
    return-void
.end method

.method protected static calcElementOffset(JJ)J
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 55
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected final calcElementOffset(J)J
    .locals 2
    .param p1, "index"    # J

    .line 64
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    invoke-static {p1, p2, v0, v1}, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public capacity()I
    .locals 4

    .line 103
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 94
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public final currentConsumerIndex()J
    .locals 2

    .line 115
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final currentProducerIndex()J
    .locals 2

    .line 109
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/ConcurrentCircularArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 82
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 76
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->size(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueue;, "Lorg/jctools/queues/ConcurrentCircularArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
