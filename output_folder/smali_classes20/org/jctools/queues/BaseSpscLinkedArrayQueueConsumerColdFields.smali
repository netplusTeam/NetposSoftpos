.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueuePrePad;
.source "BaseSpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueuePrePad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected consumerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected consumerMask:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;, "Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueuePrePad;-><init>()V

    return-void
.end method
