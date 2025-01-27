.class abstract Lorg/jctools/queues/SpmcArrayQueueL3Pad;
.super Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField<",
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

    .line 131
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueL3Pad;, "Lorg/jctools/queues/SpmcArrayQueueL3Pad<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;-><init>(I)V

    .line 132
    return-void
.end method
