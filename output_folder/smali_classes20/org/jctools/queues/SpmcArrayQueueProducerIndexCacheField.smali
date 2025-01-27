.class abstract Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;
.super Lorg/jctools/queues/SpmcArrayQueueMidPad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpmcArrayQueueMidPad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private volatile producerIndexCache:J


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 110
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;, "Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpmcArrayQueueMidPad;-><init>(I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected final lvProducerIndexCache()J
    .locals 2

    .line 115
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;, "Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;->producerIndexCache:J

    return-wide v0
.end method

.method protected final svProducerIndexCache(J)V
    .locals 0
    .param p1, "newValue"    # J

    .line 120
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;, "Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField<TE;>;"
    iput-wide p1, p0, Lorg/jctools/queues/SpmcArrayQueueProducerIndexCacheField;->producerIndexCache:J

    .line 121
    return-void
.end method
