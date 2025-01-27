.class abstract Lorg/jctools/queues/MpscCompoundQueueMidPad;
.super Lorg/jctools/queues/MpscCompoundQueueColdFields;
.source "MpscCompoundQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscCompoundQueueColdFields<",
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
.method public constructor <init>(II)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "queueParallelism"    # I

    .line 65
    .local p0, "this":Lorg/jctools/queues/MpscCompoundQueueMidPad;, "Lorg/jctools/queues/MpscCompoundQueueMidPad<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/jctools/queues/MpscCompoundQueueColdFields;-><init>(II)V

    .line 66
    return-void
.end method
