.class abstract Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueuePrePad;
.super Ljava/util/AbstractQueue;
.source "BaseSpscLinkedAtomicArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;"
    }
.end annotation


# instance fields
.field p0:J

.field p1:J

.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p2:J

.field p3:J

.field p4:J

.field p5:J

.field p6:J

.field p7:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueuePrePad;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueuePrePad<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method
