.class abstract Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;
.super Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;
.source "SequencedAtomicReferenceArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "capacity"    # I

    .line 25
    .local p0, "this":Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/atomic/AtomicReferenceArrayQueue;-><init>(I)V

    .line 26
    iget v0, p0, Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;->mask:I

    add-int/lit8 v0, v0, 0x1

    .line 28
    .local v0, "actualCapacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v1, p0, Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    iget-object v2, p0, Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;->sequenceBuffer:Ljava/util/concurrent/atomic/AtomicLongArray;

    int-to-long v3, v1

    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;->soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static calcSequenceOffset(JI)I
    .locals 1
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .line 42
    long-to-int v0, p0

    and-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method protected final calcSequenceOffset(J)J
    .locals 2
    .param p1, "index"    # J

    .line 37
    .local p0, "this":Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue<TE;>;"
    iget v0, p0, Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;->mask:I

    invoke-static {p1, p2, v0}, Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;->calcSequenceOffset(JI)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected final lvSequence(Ljava/util/concurrent/atomic/AtomicLongArray;I)J
    .locals 2
    .param p1, "buffer"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .param p2, "offset"    # I

    .line 52
    .local p0, "this":Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final soSequence(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V
    .locals 0
    .param p1, "buffer"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .param p2, "offset"    # I
    .param p3, "e"    # J

    .line 47
    .local p0, "this":Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue;, "Lorg/jctools/queues/atomic/SequencedAtomicReferenceArrayQueue<TE;>;"
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 48
    return-void
.end method
