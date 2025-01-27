.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;
.source "BaseSpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected producerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected producerBufferLimit:J

.field protected producerMask:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;-><init>()V

    return-void
.end method
