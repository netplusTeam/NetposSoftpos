.class Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;
.super Ljava/lang/Object;
.source "AtomicReferenceArrayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mask:I

.field private nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextIndex:J

.field private final pIndex:J


# direct methods
.method constructor <init>(JJILjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .param p1, "cIndex"    # J
    .param p3, "pIndex"    # J
    .param p5, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator<TE;>;"
    .local p6, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-wide p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextIndex:J

    .line 119
    iput-wide p3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->pIndex:J

    .line 120
    iput p5, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->mask:I

    .line 121
    iput-object p6, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 122
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private getNext()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator<TE;>;"
    iget v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->mask:I

    .line 146
    .local v0, "mask":I
    iget-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 147
    .local v1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_0
    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextIndex:J

    iget-wide v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->pIndex:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 148
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextIndex:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v2

    .line 149
    .local v2, "offset":I
    invoke-static {v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, "e":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_0

    .line 151
    return-object v3

    .line 153
    .end local v2    # "offset":I
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 132
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 138
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 141
    return-object v0

    .line 139
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 127
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue$WeakIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
