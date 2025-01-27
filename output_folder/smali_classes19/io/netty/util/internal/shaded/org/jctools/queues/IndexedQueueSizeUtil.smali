.class public final Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;
.super Ljava/lang/Object;
.source "IndexedQueueSizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z
    .locals 4
    .param p0, "iq"    # Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;

    .line 60
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static size(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I
    .locals 8
    .param p0, "iq"    # Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;

    .line 29
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 33
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 34
    .local v2, "before":J
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 35
    .local v4, "currentProducerIndex":J
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 36
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    .line 38
    sub-long v6, v4, v0

    .line 39
    .local v6, "size":J
    nop

    .line 44
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 46
    const v2, 0x7fffffff

    return v2

    .line 50
    :cond_0
    long-to-int v2, v6

    return v2

    .line 41
    .end local v6    # "size":J
    :cond_1
    goto :goto_0
.end method
