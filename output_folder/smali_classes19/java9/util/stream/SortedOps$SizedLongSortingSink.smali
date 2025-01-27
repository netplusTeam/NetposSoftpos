.class final Ljava9/util/stream/SortedOps$SizedLongSortingSink;
.super Ljava9/util/stream/SortedOps$AbstractLongSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedLongSortingSink"
.end annotation


# instance fields
.field private array:[J

.field private offset:I


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

    .line 542
    .local p1, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/SortedOps$AbstractLongSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    .line 543
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 570
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    iget v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    aput-wide p1, v0, v1

    .line 571
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 547
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 549
    long-to-int v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    .line 550
    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 4

    .line 554
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    iget v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([JII)V

    .line 555
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->downstream:Ljava9/util/stream/Sink;

    iget v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 556
    iget-boolean v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_1

    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    if-ge v0, v1, :cond_0

    .line 558
    iget-object v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->downstream:Ljava9/util/stream/Sink;

    iget-object v2, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->accept(J)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 561
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v1}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    iget-object v1, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->downstream:Ljava9/util/stream/Sink;

    iget-object v2, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->accept(J)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->end()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    .line 566
    return-void
.end method
