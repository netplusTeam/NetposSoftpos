.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueuePad3;
.source "BaseMpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueuePad3<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_LIMIT_OFFSET:J


# instance fields
.field protected producerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private volatile producerLimit:J

.field protected producerMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->P_LIMIT_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 101
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueuePad3;-><init>()V

    return-void
.end method


# virtual methods
.method final casProducerLimit(JJ)Z
    .locals 8
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 116
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->P_LIMIT_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final lvProducerLimit()J
    .locals 2

    .line 111
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerLimit:J

    return-wide v0
.end method

.method final soProducerLimit(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 121
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->P_LIMIT_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 122
    return-void
.end method
