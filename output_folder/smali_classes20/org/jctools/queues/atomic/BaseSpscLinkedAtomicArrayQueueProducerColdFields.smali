.class abstract Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerColdFields;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;
.source "BaseSpscLinkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected producerBufferLimit:J

.field protected producerMask:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerColdFields;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerColdFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueProducerFields;-><init>()V

    return-void
.end method
