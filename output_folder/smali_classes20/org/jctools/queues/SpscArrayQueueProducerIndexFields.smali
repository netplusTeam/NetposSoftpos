.class abstract Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;
.super Lorg/jctools/queues/SpscArrayQueueL1Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpscArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final P_INDEX_OFFSET:J


# instance fields
.field protected producerIndex:J

.field protected producerLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;->P_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 54
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;, "Lorg/jctools/queues/SpscArrayQueueProducerIndexFields<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpscArrayQueueL1Pad;-><init>(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public final lvProducerIndex()J
    .locals 3

    .line 60
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;, "Lorg/jctools/queues/SpscArrayQueueProducerIndexFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final soProducerIndex(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 65
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;, "Lorg/jctools/queues/SpscArrayQueueProducerIndexFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/SpscArrayQueueProducerIndexFields;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 66
    return-void
.end method
