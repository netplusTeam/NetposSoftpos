.class abstract Lorg/jctools/queues/atomic/BaseLinkedAtomicQueuePad0;
.super Ljava/util/AbstractQueue;
.source "BaseLinkedAtomicQueue.java"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lorg/jctools/queues/MessagePassingQueue<",
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
.method constructor <init>()V
    .locals 0

    .line 34
    .local p0, "this":Lorg/jctools/queues/atomic/BaseLinkedAtomicQueuePad0;, "Lorg/jctools/queues/atomic/BaseLinkedAtomicQueuePad0<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method
