.class abstract Lorg/jctools/queues/SpmcArrayQueueMidPad;
.super Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField<",
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

    .line 97
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueMidPad;, "Lorg/jctools/queues/SpmcArrayQueueMidPad<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;-><init>(I)V

    .line 98
    return-void
.end method
