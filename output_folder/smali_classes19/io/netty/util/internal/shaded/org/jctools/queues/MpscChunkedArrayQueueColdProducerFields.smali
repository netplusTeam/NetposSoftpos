.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;
.source "MpscChunkedArrayQueue.java"


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
.field protected final maxQueueCapacity:J


# direct methods
.method constructor <init>(II)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 30
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields<TE;>;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;-><init>(I)V

    .line 31
    const/4 v0, 0x4

    const-string v1, "maxCapacity"

    invoke-static {p2, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    .line 32
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    invoke-static {p2}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    const-string v2, "initialCapacity"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkLessThan(IILjava/lang/String;)I

    .line 34
    invoke-static {p2}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;->maxQueueCapacity:J

    .line 35
    return-void
.end method
