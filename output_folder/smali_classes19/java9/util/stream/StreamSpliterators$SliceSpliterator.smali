.class abstract Ljava9/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field fence:J

.field index:J

.field s:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 626
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    .line 628
    iput-wide p2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    .line 629
    iput-wide p4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    .line 630
    iput-wide p6, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 631
    iput-wide p8, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 632
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 688
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    .line 683
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 684
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method protected abstract makeSpliterator(Ljava9/util/Spliterator;JJJJ)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 637
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    move-object/from16 v10, p0

    iget-wide v0, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 638
    return-object v1

    .line 640
    :cond_0
    iget-wide v4, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    .line 641
    return-object v1

    .line 650
    :cond_1
    :goto_0
    iget-object v0, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v11

    .line 651
    .local v11, "leftSplit":Ljava9/util/Spliterator;, "TT_SPLITR;"
    if-nez v11, :cond_2

    .line 652
    return-object v1

    .line 654
    :cond_2
    iget-wide v2, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v11}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v4

    add-long v12, v2, v4

    .line 655
    .local v12, "leftSplitFenceUnbounded":J
    iget-wide v2, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 656
    .local v14, "leftSplitFence":J
    iget-wide v2, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v2, v14

    if-ltz v0, :cond_3

    .line 660
    iput-wide v14, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_1

    .line 662
    :cond_3
    iget-wide v4, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v14, v4

    if-ltz v0, :cond_4

    .line 666
    iput-object v11, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    .line 667
    iput-wide v14, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 679
    .end local v11    # "leftSplit":Ljava9/util/Spliterator;, "TT_SPLITR;"
    .end local v12    # "leftSplitFenceUnbounded":J
    .end local v14    # "leftSplitFence":J
    :goto_1
    goto :goto_0

    .line 669
    .restart local v11    # "leftSplit":Ljava9/util/Spliterator;, "TT_SPLITR;"
    .restart local v12    # "leftSplitFenceUnbounded":J
    .restart local v14    # "leftSplitFence":J
    :cond_4
    iget-wide v6, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_5

    cmp-long v0, v12, v4

    if-gtz v0, :cond_5

    .line 672
    iput-wide v14, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 673
    return-object v11

    .line 677
    :cond_5
    iput-wide v14, v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v8, v14

    invoke-virtual/range {v0 .. v9}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljava9/util/Spliterator;JJJJ)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
