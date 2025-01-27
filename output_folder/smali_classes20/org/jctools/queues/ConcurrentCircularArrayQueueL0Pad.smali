.class abstract Lorg/jctools/queues/ConcurrentCircularArrayQueueL0Pad;
.super Ljava/util/AbstractQueue;
.source "ConcurrentCircularArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;
.implements Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lorg/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;",
        "Lorg/jctools/queues/QueueProgressIndicators;"
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
.method constructor <init>()V
    .locals 0

    .line 22
    .local p0, "this":Lorg/jctools/queues/ConcurrentCircularArrayQueueL0Pad;, "Lorg/jctools/queues/ConcurrentCircularArrayQueueL0Pad<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method
