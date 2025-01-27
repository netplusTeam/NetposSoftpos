.class final Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;
.super Ljava/lang/Object;
.source "LinkedArrayQueueUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static length([Ljava/lang/Object;)I
    .locals 1
    .param p0, "buf"    # [Ljava/lang/Object;

    .line 13
    array-length v0, p0

    return v0
.end method

.method static modifiedCalcCircularRefElementOffset(JJ)J
    .locals 5
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 23
    sget-wide v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    and-long v2, p0, p2

    sget v4, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    add-int/lit8 v4, v4, -0x1

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static nextArrayOffset([Ljava/lang/Object;)J
    .locals 5
    .param p0, "curr"    # [Ljava/lang/Object;

    .line 28
    sget-wide v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    sget v4, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
