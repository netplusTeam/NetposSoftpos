.class public Lorg/jctools/queues/MpscUnboundedArrayQueue;
.super Lorg/jctools/queues/BaseMpscLinkedArrayQueue;
.source "MpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseMpscLinkedArrayQueue<",
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

    .line 34
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/BaseMpscLinkedArrayQueue;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected availableInQueue(JJ)J
    .locals 2
    .param p1, "pIndex"    # J
    .param p3, "cIndex"    # J

    .line 41
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public capacity()I
    .locals 1

    .line 47
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    .local p1, "c":Lorg/jctools/queues/MessagePassingQueue$Consumer;, "Lorg/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/MpscUnboundedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    .local p1, "s":Lorg/jctools/queues/MessagePassingQueue$Supplier;, "Lorg/jctools/queues/MessagePassingQueue$Supplier<TE;>;"
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "result":J
    const/16 v2, 0x1000

    .line 63
    .local v2, "capacity":I
    :goto_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/MpscUnboundedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    .line 64
    .local v3, "filled":I
    if-nez v3, :cond_0

    .line 66
    long-to-int v4, v0

    return v4

    .line 68
    :cond_0
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 70
    .end local v3    # "filled":I
    const-wide/16 v3, 0x1000

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 71
    long-to-int v3, v0

    return v3

    .line 70
    :cond_1
    goto :goto_0
.end method

.method protected getCurrentBufferCapacity(J)J
    .locals 0
    .param p1, "mask"    # J

    .line 83
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    return-wide p1
.end method

.method protected getNextBufferSize([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/jctools/queues/MpscUnboundedArrayQueue;, "Lorg/jctools/queues/MpscUnboundedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
