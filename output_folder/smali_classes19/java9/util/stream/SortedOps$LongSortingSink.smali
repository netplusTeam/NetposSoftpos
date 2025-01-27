.class final Ljava9/util/stream/SortedOps$LongSortingSink;
.super Ljava9/util/stream/SortedOps$AbstractLongSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSortingSink"
.end annotation


# instance fields
.field private b:Ljava9/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava9/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Sink<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 581
    .local p1, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/SortedOps$AbstractLongSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    .line 582
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 611
    iget-object v0, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 612
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 586
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 588
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfLong;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava9/util/stream/SpinedBuffer$OfLong;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfLong;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfLong;

    .line 589
    return-void

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 6

    .line 593
    iget-object v0, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0}, Ljava9/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 594
    .local v0, "longs":[J
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 595
    iget-object v1, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->downstream:Ljava9/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->begin(J)V

    .line 596
    iget-boolean v1, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 597
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 598
    .local v3, "aLong":J
    iget-object v5, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava9/util/stream/Sink;->accept(J)V

    .line 597
    .end local v3    # "aLong":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 602
    .restart local v3    # "aLong":J
    iget-object v5, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v5}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 603
    :cond_1
    iget-object v5, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava9/util/stream/Sink;->accept(J)V

    .line 601
    .end local v3    # "aLong":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    :cond_2
    :goto_2
    iget-object v1, p0, Ljava9/util/stream/SortedOps$LongSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v1}, Ljava9/util/stream/Sink;->end()V

    .line 607
    return-void
.end method
