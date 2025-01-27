.class abstract Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerColdFields;
.super Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueuePrePad;
.source "BaseSpscLinkedAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueuePrePad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected consumerMask:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerColdFields;, "Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueueConsumerColdFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/atomic/BaseSpscLinkedAtomicArrayQueuePrePad;-><init>()V

    return-void
.end method
