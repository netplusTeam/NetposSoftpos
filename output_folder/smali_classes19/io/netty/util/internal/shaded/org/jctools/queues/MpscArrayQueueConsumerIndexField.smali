.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL2Pad;
.source "MpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL2Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 111
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL2Pad;-><init>(I)V

    .line 112
    return-void
.end method


# virtual methods
.method final lpConsumerIndex()J
    .locals 3

    .line 122
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField<TE;>;"
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final lvConsumerIndex()J
    .locals 2

    .line 117
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField<TE;>;"
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->consumerIndex:J

    return-wide v0
.end method

.method final soConsumerIndex(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 127
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;, "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField<TE;>;"
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 128
    return-void
.end method
