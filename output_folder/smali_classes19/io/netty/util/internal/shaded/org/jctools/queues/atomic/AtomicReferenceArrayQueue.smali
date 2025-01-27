.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;
.super Ljava/util/AbstractQueue;
.source "AtomicReferenceArrayQueue.java"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/SupportsIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/QueueProgressIndicators;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/SupportsIterator;"
    }
.end annotation


# instance fields
.field protected final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final mask:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 36
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 37
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 38
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 40
    return-void
.end method


# virtual methods
.method public final capacity()I
    .locals 1

    .line 60
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    iget v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 51
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final currentConsumerIndex()J
    .locals 2

    .line 88
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final currentProducerIndex()J
    .locals 2

    .line 82
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 76
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvConsumerIndex()J

    move-result-wide v7

    .line 104
    .local v7, "cIndex":J
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvProducerIndex()J

    move-result-wide v9

    .line 106
    .local v9, "pIndex":J
    new-instance v11, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;

    iget v5, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    iget-object v6, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v0, v11

    move-wide v1, v7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;-><init>(JJILjava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-object v11
.end method

.method public final size()I
    .locals 1

    .line 70
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;->size(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
