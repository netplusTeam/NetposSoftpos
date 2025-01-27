.class abstract Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;
.super Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;
.source "MpscChunkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final maxQueueCapacity:J


# direct methods
.method constructor <init>(II)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 42
    .local p0, "this":Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;, "Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;-><init>(I)V

    .line 43
    const/4 v0, 0x4

    const-string v1, "maxCapacity"

    invoke-static {p2, v0, v1}, Lorg/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 44
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    const-string v2, "initialCapacity"

    invoke-static {v0, v1, v2}, Lorg/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 45
    invoke-static {p2}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->maxQueueCapacity:J

    .line 46
    return-void
.end method
