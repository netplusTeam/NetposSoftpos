.class abstract Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField;
.super Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueMidPad;
.source "SpmcAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueMidPad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private volatile producerIndexCache:J


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 123
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueMidPad;-><init>(I)V

    .line 124
    return-void
.end method


# virtual methods
.method protected final lvProducerIndexCache()J
    .locals 2

    .line 127
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField;->producerIndexCache:J

    return-wide v0
.end method

.method protected final svProducerIndexCache(J)V
    .locals 0
    .param p1, "newValue"    # J

    .line 131
    .local p0, "this":Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField;, "Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField<TE;>;"
    iput-wide p1, p0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueueProducerIndexCacheField;->producerIndexCache:J

    .line 132
    return-void
.end method
