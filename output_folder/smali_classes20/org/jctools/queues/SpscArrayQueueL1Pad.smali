.class abstract Lorg/jctools/queues/SpscArrayQueueL1Pad;
.super Lorg/jctools/queues/SpscArrayQueueColdField;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpscArrayQueueColdField<",
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

    .line 40
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueueL1Pad;, "Lorg/jctools/queues/SpscArrayQueueL1Pad<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpscArrayQueueColdField;-><init>(I)V

    .line 41
    return-void
.end method
