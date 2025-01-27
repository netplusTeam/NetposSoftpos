.class final Ljava9/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/SliceOps$SliceTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JJ)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 37
    invoke-static {p0, p1, p2, p3}, Ljava9/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Ljava9/util/stream/StreamShape;Ljava9/util/Spliterator;JJ)Ljava9/util/Spliterator;
    .locals 1
    .param p0, "x0"    # Ljava9/util/stream/StreamShape;
    .param p1, "x1"    # Ljava9/util/Spliterator;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 37
    invoke-static/range {p0 .. p5}, Ljava9/util/stream/SliceOps;->sliceSpliterator(Ljava9/util/stream/StreamShape;Ljava9/util/Spliterator;JJ)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(JJJ)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J

    .line 37
    invoke-static/range {p0 .. p5}, Ljava9/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static calcSize(JJJ)J
    .locals 5
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_0

    sub-long v3, p0, p2

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method private static calcSliceFence(JJ)J
    .locals 7
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    if-ltz v2, :cond_0

    add-long v5, p0, p2

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 67
    .local v5, "sliceFence":J
    :goto_0
    cmp-long v0, v5, v0

    if-ltz v0, :cond_1

    move-wide v3, v5

    :cond_1
    return-wide v3
.end method

.method private static flags(J)I
    .locals 3
    .param p0, "limit"    # J

    .line 543
    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    sget v1, Ljava9/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public static makeDouble(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/DoubleStream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava9/util/stream/DoubleStream;"
        }
    .end annotation

    .line 444
    .local p0, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 447
    new-instance v0, Ljava9/util/stream/SliceOps$4;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    .line 448
    invoke-static {p3, p4}, Ljava9/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava9/util/stream/SliceOps$4;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeInt(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/IntStream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava9/util/stream/IntStream;"
        }
    .end annotation

    .line 226
    .local p0, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 229
    new-instance v0, Ljava9/util/stream/SliceOps$2;

    sget-object v3, Ljava9/util/stream/StreamShape;->INT_VALUE:Ljava9/util/stream/StreamShape;

    .line 230
    invoke-static {p3, p4}, Ljava9/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava9/util/stream/SliceOps$2;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeLong(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/LongStream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava9/util/stream/LongStream;"
        }
    .end annotation

    .line 335
    .local p0, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 338
    new-instance v0, Ljava9/util/stream/SliceOps$3;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    .line 339
    invoke-static {p3, p4}, Ljava9/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava9/util/stream/SliceOps$3;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeRef(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/Stream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*TT;*>;JJ)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TT;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 113
    new-instance v0, Ljava9/util/stream/SliceOps$1;

    sget-object v3, Ljava9/util/stream/StreamShape;->REFERENCE:Ljava9/util/stream/StreamShape;

    .line 114
    invoke-static {p3, p4}, Ljava9/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava9/util/stream/SliceOps$1;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sliceSpliterator(Ljava9/util/stream/StreamShape;Ljava9/util/Spliterator;JJ)Ljava9/util/Spliterator;
    .locals 9
    .param p0, "shape"    # Ljava9/util/stream/StreamShape;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/StreamShape;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation

    .line 79
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-static {p2, p3, p4, p5}, Ljava9/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v6

    .line 80
    .local v6, "sliceFence":J
    sget-object v0, Ljava9/util/stream/SliceOps$5;->$SwitchMap$java9$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava9/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_0
    new-instance v8, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava9/util/Spliterator$OfDouble;

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava9/util/Spliterator$OfDouble;JJ)V

    return-object v8

    .line 88
    :pswitch_1
    new-instance v8, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Ljava9/util/Spliterator$OfLong;

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava9/util/Spliterator$OfLong;JJ)V

    return-object v8

    .line 85
    :pswitch_2
    new-instance v8, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Ljava9/util/Spliterator$OfInt;

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;JJ)V

    return-object v8

    .line 82
    :pswitch_3
    new-instance v8, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;JJ)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
