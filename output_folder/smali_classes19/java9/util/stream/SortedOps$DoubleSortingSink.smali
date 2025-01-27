.class final Ljava9/util/stream/SortedOps$DoubleSortingSink;
.super Ljava9/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSortingSink"
.end annotation


# instance fields
.field private b:Ljava9/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Ljava9/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Sink<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p1, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    .line 681
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 710
    iget-object v0, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 711
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 685
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 687
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfDouble;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava9/util/stream/SpinedBuffer$OfDouble;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfDouble;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfDouble;

    .line 688
    return-void

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 6

    .line 692
    iget-object v0, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0}, Ljava9/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 693
    .local v0, "doubles":[D
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 694
    iget-object v1, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->begin(J)V

    .line 695
    iget-boolean v1, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 696
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 697
    .local v3, "aDouble":D
    iget-object v5, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava9/util/stream/Sink;->accept(D)V

    .line 696
    .end local v3    # "aDouble":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 700
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 701
    .restart local v3    # "aDouble":D
    iget-object v5, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v5}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 702
    :cond_1
    iget-object v5, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava9/util/stream/Sink;->accept(D)V

    .line 700
    .end local v3    # "aDouble":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 705
    :cond_2
    :goto_2
    iget-object v1, p0, Ljava9/util/stream/SortedOps$DoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v1}, Ljava9/util/stream/Sink;->end()V

    .line 706
    return-void
.end method
