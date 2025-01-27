.class abstract Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;
.super Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad3;
.source "BaseMpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad3<",
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

    .line 99
    const-class v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->P_LIMIT_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 97
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad3;-><init>()V

    return-void
.end method


# virtual methods
.method final casProducerLimit(JJ)Z
    .locals 8
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 112
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->P_LIMIT_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final lvProducerLimit()J
    .locals 2

    .line 107
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerLimit:J

    return-wide v0
.end method

.method final soProducerLimit(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 117
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->P_LIMIT_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 118
    return-void
.end method
