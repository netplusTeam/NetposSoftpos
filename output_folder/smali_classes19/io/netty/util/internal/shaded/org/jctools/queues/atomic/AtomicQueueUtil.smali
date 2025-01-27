.class final Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;
.super Ljava/lang/Object;
.source "AtomicQueueUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allocateLongArray(I)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 1
    .param p0, "capacity"    # I

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    return-object v0
.end method

.method static allocateRefArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method static calcCircularLongElementOffset(JI)I
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .line 75
    int-to-long v0, p2

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method static calcCircularRefElementOffset(JJ)I
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 40
    and-long v0, p0, p2

    long-to-int v0, v0

    return v0
.end method

.method static calcLongElementOffset(J)I
    .locals 1
    .param p0, "index"    # J

    .line 70
    long-to-int v0, p0

    return v0
.end method

.method static calcRefElementOffset(J)I
    .locals 1
    .param p0, "index"    # J

    .line 35
    long-to-int v0, p0

    return v0
.end method

.method static length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "*>;)I"
        }
    .end annotation

    .line 85
    .local p0, "buf":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    return v0
.end method

.method static lpLongElement(Ljava/util/concurrent/atomic/AtomicLongArray;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .param p1, "offset"    # I

    .line 60
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static lpRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
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

    .line 15
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lvLongElement(Ljava/util/concurrent/atomic/AtomicLongArray;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .param p1, "offset"    # I

    .line 65
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
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

    .line 10
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static modifiedCalcCircularRefElementOffset(JJ)I
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 93
    and-long v0, p0, p2

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static nextArrayOffset(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "*>;)I"
        }
    .end annotation

    .line 98
    .local p0, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<*>;"
    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static soLongElement(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V
    .locals 0
    .param p0, "buffer"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .param p1, "offset"    # I
    .param p2, "e"    # J

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 56
    return-void
.end method

.method static soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p0, "buffer"    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .param p1, "offset"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 26
    return-void
.end method

.method static spLongElement(Ljava/util/concurrent/atomic/AtomicLongArray;IJ)V
    .locals 0
    .param p0, "buffer"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .param p1, "offset"    # I
    .param p2, "e"    # J

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 51
    return-void
.end method

.method static spRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
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

    .line 20
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method static svRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
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

    .line 30
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 31
    return-void
.end method
