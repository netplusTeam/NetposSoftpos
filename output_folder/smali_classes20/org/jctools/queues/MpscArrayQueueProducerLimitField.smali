.class abstract Lorg/jctools/queues/MpscArrayQueueProducerLimitField;
.super Lorg/jctools/queues/MpscArrayQueueMidPad;
.source "MpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscArrayQueueMidPad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_LIMIT_OFFSET:J


# instance fields
.field private volatile producerLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-class v0, Lorg/jctools/queues/MpscArrayQueueProducerLimitField;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/MpscArrayQueueProducerLimitField;->P_LIMIT_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 78
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueueProducerLimitField;, "Lorg/jctools/queues/MpscArrayQueueProducerLimitField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/MpscArrayQueueMidPad;-><init>(I)V

    .line 79
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jctools/queues/MpscArrayQueueProducerLimitField;->producerLimit:J

    .line 80
    return-void
.end method


# virtual methods
.method protected final lvProducerLimit()J
    .locals 2

    .line 84
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueueProducerLimitField;, "Lorg/jctools/queues/MpscArrayQueueProducerLimitField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/MpscArrayQueueProducerLimitField;->producerLimit:J

    return-wide v0
.end method

.method protected final soProducerLimit(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 89
    .local p0, "this":Lorg/jctools/queues/MpscArrayQueueProducerLimitField;, "Lorg/jctools/queues/MpscArrayQueueProducerLimitField<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/MpscArrayQueueProducerLimitField;->P_LIMIT_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 90
    return-void
.end method
