.class final Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
.super Ljava9/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;",
        "Ljava9/util/Spliterator<",
        "TT;>;>;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;JJ)V
    .locals 14
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 696
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    invoke-interface {p1}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v12, p4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v11}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;JJJJ)V

    .line 697
    return-void
.end method

.method private constructor <init>(Ljava9/util/Spliterator;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;JJJJ)V"
        }
    .end annotation

    .line 701
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p9}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava9/util/Spliterator;JJJJ)V

    .line 702
    return-void
.end method

.method static synthetic lambda$forEachRemaining$66(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    .line 747
    return-void
.end method

.method static synthetic lambda$tryAdvance$65(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    .line 719
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 732
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 738
    return-void

    .line 740
    :cond_1
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-object v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v2}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceFence:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 742
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 743
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    iput-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_2

    .line 746
    :cond_2
    :goto_0
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-lez v0, :cond_3

    .line 747
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    new-instance v3, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    .line 748
    iget-wide v3, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_0

    .line 751
    :cond_3
    :goto_1
    iget-wide v3, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v5, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 752
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    .line 751
    iget-wide v3, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_1

    .line 755
    :cond_4
    :goto_2
    return-void
.end method

.method protected makeSpliterator(Ljava9/util/Spliterator;JJJJ)Ljava9/util/Spliterator;
    .locals 11
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;JJJJ)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 708
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    new-instance v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;JJJJ)V

    return-object v10
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 713
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 716
    return v1

    .line 718
    :cond_0
    :goto_0
    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    if-lez v0, :cond_1

    .line 719
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    new-instance v4, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    .line 720
    iget-wide v4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_0

    .line 723
    :cond_1
    iget-wide v4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v6, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 724
    return v1

    .line 726
    :cond_2
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    .line 727
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
