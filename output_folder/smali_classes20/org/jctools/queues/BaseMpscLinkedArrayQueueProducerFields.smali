.class abstract Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;
.super Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad1;
.source "BaseMpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad1<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field protected producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method final casProducerIndex(JJ)Z
    .locals 8
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 59
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final lvProducerIndex()J
    .locals 3

    .line 49
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final soProducerIndex(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 54
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 55
    return-void
.end method
