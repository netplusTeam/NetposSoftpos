.class public Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
.super Lorg/HdrHistogram/ConcurrentDoubleHistogram;
.source "PackedConcurrentDoubleHistogram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 74
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;-><init>(JI)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;->setAutoResize(Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 88
    const-class v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;-><init>(JILjava/lang/Class;)V

    .line 89
    return-void
.end method

.method constructor <init>(JILjava/lang/Class;)V
    .locals 0
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p4, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;-><init>(JILjava/lang/Class;)V

    .line 104
    return-void
.end method

.method constructor <init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 0
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I
    .param p5, "internalCountsHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/Class<",
            "+",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ")V"
        }
    .end annotation

    .line 110
    .local p4, "internalCountsHistogramClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/HdrHistogram/AbstractHistogram;>;"
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;-><init>(JILjava/lang/Class;Lorg/HdrHistogram/AbstractHistogram;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 0
    .param p1, "source"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 97
    invoke-direct {p0, p1}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 98
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestToLowestValueRatio"    # J

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 129
    .local v0, "cookie":I
    invoke-static {v0}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;->isNonCompressedDoubleHistogramCookie(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-class v2, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;

    const-class v3, Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-object v1, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;->constructHistogramFromBuffer(ILjava/nio/ByteBuffer;Ljava/lang/Class;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v1

    check-cast v1, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;

    .line 135
    .local v1, "histogram":Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
    return-object v1

    .line 130
    .end local v1    # "histogram":Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The buffer does not contain a DoubleHistogram"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "minBarForHighestToLowestValueRatio":J
    throw v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "cookie":I
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "minBarForHighestToLowestValueRatio":J
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestToLowestValueRatio"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 152
    .local v6, "cookie":I
    invoke-static {v6}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;->isCompressedDoubleHistogramCookie(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-class v2, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;

    const-class v3, Lorg/HdrHistogram/PackedConcurrentHistogram;

    move v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;->constructHistogramFromBuffer(ILjava/nio/ByteBuffer;Ljava/lang/Class;Ljava/lang/Class;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;

    .line 158
    .local v0, "histogram":Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
    return-object v0

    .line 153
    .end local v0    # "histogram":Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The buffer does not contain a compressed DoubleHistogram"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
