.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueuePad1;
.source "BaseMpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueuePad1<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method final casProducerIndex(JJ)Z
    .locals 8
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 58
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final lvProducerIndex()J
    .locals 2

    .line 48
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->producerIndex:J

    return-wide v0
.end method

.method final soProducerIndex(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 53
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 54
    return-void
.end method
