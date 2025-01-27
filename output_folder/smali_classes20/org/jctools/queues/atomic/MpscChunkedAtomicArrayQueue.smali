.class public Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;
.super Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;
.source "MpscChunkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields<",
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

    .line 66
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;-><init>(II)V

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 77
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;-><init>(II)V

    .line 78
    return-void
.end method


# virtual methods
.method protected availableInQueue(JJ)J
    .locals 4
    .param p1, "pIndex"    # J
    .param p3, "cIndex"    # J

    .line 82
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;->maxQueueCapacity:J

    sub-long v2, p1, p3

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public capacity()I
    .locals 4

    .line 87
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;->maxQueueCapacity:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentBufferCapacity(J)J
    .locals 0
    .param p1, "mask"    # J

    .line 97
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
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

    .line 92
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-static {p1}, Lorg/jctools/queues/atomic/LinkedAtomicArrayQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    return v0
.end method
