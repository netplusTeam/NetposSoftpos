.class abstract Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;
.super Ljava/util/AbstractQueue;
.source "AtomicReferenceArrayQueue.java"

# interfaces
.implements Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;
.implements Lorg/jctools/queues/MessagePassingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;",
        "Lorg/jctools/queues/QueueProgressIndicators;",
        "Lorg/jctools/queues/MessagePassingQueue<",
        "TE;>;"
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

    .line 33
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 34
    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 35
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 37
    return-void
.end method

.method public static lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 77
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 72
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 97
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 87
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static svElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 107
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected final calcElementOffset(J)I
    .locals 2
    .param p1, "index"    # J

    .line 67
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    long-to-int v0, p1

    iget v1, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method protected final calcElementOffset(JI)I
    .locals 1
    .param p1, "index"    # J
    .param p3, "mask"    # I

    .line 62
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    long-to-int v0, p1

    and-int/2addr v0, p3

    return v0
.end method

.method public final capacity()I
    .locals 1

    .line 118
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 54
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public final currentConsumerIndex()J
    .locals 2

    .line 146
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final currentProducerIndex()J
    .locals 2

    .line 140
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 134
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final lpElement(I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lvElement(I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0, p1}, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 128
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->size(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method protected final soElement(ILjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method protected final spElement(ILjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    .local p0, "this":Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
