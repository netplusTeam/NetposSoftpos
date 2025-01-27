.class Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;
.super Ljava/lang/Object;
.source "BaseMpscLinkedArrayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;
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
.field private currentBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mask:I

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
.method constructor <init>([Ljava/lang/Object;JJ)V
    .locals 3
    .param p2, "cIndex"    # J
    .param p4, "pIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)V"
        }
    .end annotation

    .line 629
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator<TE;>;"
    .local p1, "currentBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 v0, 0x1

    shr-long v1, p4, v0

    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->pIndex:J

    .line 631
    shr-long v0, p2, v0

    iput-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextIndex:J

    .line 632
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->setBuffer([Ljava/lang/Object;)V

    .line 633
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 634
    return-void
.end method

.method private getNext()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator<TE;>;"
    :goto_0
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextIndex:J

    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->pIndex:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_5

    .line 669
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextIndex:J

    .line 670
    .local v0, "index":J
    iget-object v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->currentBuffer:[Ljava/lang/Object;

    iget v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->mask:I

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 672
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    .line 674
    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->access$000()Ljava/lang/Object;

    move-result-object v4

    if-eq v2, v4, :cond_1

    .line 680
    return-object v2

    .line 684
    :cond_1
    iget v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->mask:I

    add-int/lit8 v4, v4, 0x1

    .line 685
    .local v4, "nextBufferIndex":I
    iget-object v5, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->currentBuffer:[Ljava/lang/Object;

    int-to-long v6, v4

    .line 686
    invoke-static {v6, v7}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcRefElementOffset(J)J

    move-result-wide v6

    .line 685
    invoke-static {v5, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 688
    .local v5, "nextBuffer":Ljava/lang/Object;
    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->access$100()Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_4

    if-nez v5, :cond_2

    goto :goto_1

    .line 694
    :cond_2
    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->setBuffer([Ljava/lang/Object;)V

    .line 696
    iget-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->currentBuffer:[Ljava/lang/Object;

    iget v6, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->mask:I

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 698
    if-nez v2, :cond_3

    .line 700
    goto :goto_0

    .line 704
    :cond_3
    return-object v2

    .line 691
    :cond_4
    :goto_1
    return-object v3

    .line 708
    .end local v0    # "index":J
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "nextBufferIndex":I
    .end local v5    # "nextBuffer":Ljava/lang/Object;
    :cond_5
    return-object v3
.end method

.method private setBuffer([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 661
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->currentBuffer:[Ljava/lang/Object;

    .line 662
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->mask:I

    .line 663
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 644
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

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

    .line 650
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 651
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    .line 656
    return-object v0

    .line 653
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 638
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
