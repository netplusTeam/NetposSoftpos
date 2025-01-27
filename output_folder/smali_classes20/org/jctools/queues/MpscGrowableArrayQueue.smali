.class public Lorg/jctools/queues/MpscGrowableArrayQueue;
.super Lorg/jctools/queues/MpscChunkedArrayQueue;
.source "MpscGrowableArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscChunkedArrayQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxCapacity"    # I

    .line 35
    .local p0, "this":Lorg/jctools/queues/MpscGrowableArrayQueue;, "Lorg/jctools/queues/MpscGrowableArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/jctools/queues/MpscChunkedArrayQueue;-><init>(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 47
    .local p0, "this":Lorg/jctools/queues/MpscGrowableArrayQueue;, "Lorg/jctools/queues/MpscGrowableArrayQueue<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/jctools/queues/MpscChunkedArrayQueue;-><init>(II)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getCurrentBufferCapacity(J)J
    .locals 4
    .param p1, "mask"    # J

    .line 63
    .local p0, "this":Lorg/jctools/queues/MpscGrowableArrayQueue;, "Lorg/jctools/queues/MpscGrowableArrayQueue<TE;>;"
    const-wide/16 v0, 0x2

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/jctools/queues/MpscGrowableArrayQueue;->maxQueueCapacity:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/jctools/queues/MpscGrowableArrayQueue;->maxQueueCapacity:J

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method protected getNextBufferSize([Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/jctools/queues/MpscGrowableArrayQueue;, "Lorg/jctools/queues/MpscGrowableArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v0, p0, Lorg/jctools/queues/MpscGrowableArrayQueue;->maxQueueCapacity:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 55
    .local v0, "maxSize":J
    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v2

    const-string v3, "buffer.length"

    invoke-static {v2, v0, v1, v3}, Lorg/jctools/util/RangeUtil;->checkLessThanOrEqual(IJLjava/lang/String;)I

    .line 56
    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    .line 57
    .local v2, "newSize":I
    add-int/lit8 v3, v2, 0x1

    return v3
.end method
