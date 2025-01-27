.class final Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;
.super Ljava9/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedDoubleSortingSink"
.end annotation


# instance fields
.field private array:[D

.field private offset:I


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

    .line 641
    .local p1, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    .line 642
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 669
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    aput-wide p1, v0, v1

    .line 670
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 646
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 648
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 649
    return-void

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 4

    .line 653
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([DII)V

    .line 654
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    iget v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 655
    iget-boolean v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_1

    .line 656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_0

    .line 657
    iget-object v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    iget-object v2, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->accept(D)V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 660
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v1}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 661
    iget-object v1, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    iget-object v2, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->accept(D)V

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->end()V

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 665
    return-void
.end method
