.class Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;
.super Ljava/lang/Object;
.source "ConcurrentCircularArrayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;
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
.field private final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final mask:J

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
.method constructor <init>(JJJ[Ljava/lang/Object;)V
    .locals 1
    .param p1, "cIndex"    # J
    .param p3, "pIndex"    # J
    .param p5, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ[TE;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator<TE;>;"
    .local p7, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextIndex:J

    .line 120
    iput-wide p3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->pIndex:J

    .line 121
    iput-wide p5, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->mask:J

    .line 122
    iput-object p7, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->buffer:[Ljava/lang/Object;

    .line 123
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private getNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator<TE;>;"
    :goto_0
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextIndex:J

    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->pIndex:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 147
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextIndex:J

    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->mask:J

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v0

    .line 148
    .local v0, "offset":J
    iget-object v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->buffer:[Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 150
    return-object v2

    .line 152
    .end local v0    # "offset":J
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 133
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

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

    .line 138
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 139
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 142
    return-object v0

    .line 140
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 128
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
