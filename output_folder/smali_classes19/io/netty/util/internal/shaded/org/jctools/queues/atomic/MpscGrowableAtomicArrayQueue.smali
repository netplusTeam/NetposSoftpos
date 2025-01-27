.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;
.source "MpscGrowableAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxCapacity"    # I

    .line 40
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;-><init>(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 51
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;-><init>(II)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getCurrentBufferCapacity(J)J
    .locals 4
    .param p1, "mask"    # J

    .line 64
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue<TE;>;"
    const-wide/16 v0, 0x2

    add-long/2addr v0, p1

    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;->maxQueueCapacity:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;->maxQueueCapacity:J

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method protected getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;->maxQueueCapacity:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 57
    .local v0, "maxSize":J
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v2

    const-string v3, "buffer.length"

    invoke-static {v2, v0, v1, v3}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkLessThanOrEqual(IJLjava/lang/String;)I

    .line 58
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    .line 59
    .local v2, "newSize":I
    add-int/lit8 v3, v2, 0x1

    return v3
.end method
