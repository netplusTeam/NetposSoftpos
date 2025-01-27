.class abstract Ljava9/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConcatSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Streams$ConcatSpliterator$OfDouble;,
        Ljava9/util/stream/Streams$ConcatSpliterator$OfLong;,
        Ljava9/util/stream/Streams$ConcatSpliterator$OfInt;,
        Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;,
        Ljava9/util/stream/Streams$ConcatSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final aSpliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field protected final bSpliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field beforeSplit:Z

.field final unsized:Z


# direct methods
.method public constructor <init>(Ljava9/util/Spliterator;Ljava9/util/Spliterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 700
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava9/util/Spliterator;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava9/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p1, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava9/util/Spliterator;

    .line 702
    iput-object p2, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 706
    invoke-interface {p1}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->unsized:Z

    .line 707
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .line 754
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v1}, Ljava9/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    iget-boolean v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4040

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x5

    not-int v1, v1

    and-int/2addr v0, v1

    return v0

    .line 761
    :cond_1
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 741
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-object v2, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v2}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 745
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    return-wide v2

    .line 748
    .end local v0    # "size":J
    :cond_1
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 734
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 736
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 737
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 767
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 720
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    .line 722
    .local v0, "hasNext":Z
    if-nez v0, :cond_1

    .line 723
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 724
    iget-object v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v1, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    goto :goto_0

    .line 728
    .end local v0    # "hasNext":Z
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    .line 729
    .restart local v0    # "hasNext":Z
    :cond_1
    :goto_0
    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 712
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator;, "Ljava9/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava9/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    .line 713
    .local v0, "ret":Ljava9/util/Spliterator;, "TT_SPLITR;"
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 714
    return-object v0
.end method
