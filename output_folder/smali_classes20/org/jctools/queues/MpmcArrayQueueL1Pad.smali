.class abstract Lorg/jctools/queues/MpmcArrayQueueL1Pad;
.super Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p00:J

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


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 31
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueueL1Pad;, "Lorg/jctools/queues/MpmcArrayQueueL1Pad<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/ConcurrentSequencedCircularArrayQueue;-><init>(I)V

    .line 32
    return-void
.end method
