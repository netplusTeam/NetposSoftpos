.class abstract Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL2Pad;
.super Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;
.source "MpmcAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J

.field p17:J


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 72
    .local p0, "this":Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL2Pad;, "Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueL2Pad<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueueProducerIndexField;-><init>(I)V

    .line 73
    return-void
.end method
