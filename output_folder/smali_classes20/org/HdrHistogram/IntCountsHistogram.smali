.class public Lorg/HdrHistogram/IntCountsHistogram;
.super Lorg/HdrHistogram/AbstractHistogram;
.source "IntCountsHistogram.java"


# instance fields
.field counts:[I

.field normalizingIndexOffset:I

.field totalCount:J


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 169
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/IntCountsHistogram;-><init>(JJI)V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/IntCountsHistogram;->setAutoResize(Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 184
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/IntCountsHistogram;-><init>(JJI)V

    .line 185
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 205
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/AbstractHistogram;-><init>(JJI)V

    .line 206
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    .line 207
    const/4 v0, 0x4

    iput v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->wordSizeInBytes:I

    .line 208
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 216
    invoke-direct {p0, p1}, Lorg/HdrHistogram/AbstractHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 217
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    .line 218
    const/4 v0, 0x4

    iput v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->wordSizeInBytes:I

    .line 219
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/IntCountsHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 229
    const-class v0, Lorg/HdrHistogram/IntCountsHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/IntCountsHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/IntCountsHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 242
    const-class v0, Lorg/HdrHistogram/IntCountsHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/IntCountsHistogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/IntCountsHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 255
    nop

    .line 256
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 255
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/IntCountsHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/IntCountsHistogram;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "o"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 263
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x200

    return v0
.end method

.method addToCountAtIndex(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 50
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/IntCountsHistogram;->normalizeIndex(III)I

    move-result v0

    .line 52
    .local v0, "normalizedIndex":I
    iget-object v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    aget v2, v1, v0

    int-to-long v2, v2

    .line 53
    .local v2, "currentCount":J
    add-long v4, v2, p2

    .line 54
    .local v4, "newCount":J
    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 57
    long-to-int v6, v4

    aput v6, v1, v0

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "would overflow integer count"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addToTotalCount(J)V
    .locals 2
    .param p1, "value"    # J

    .line 133
    iget-wide v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    .line 134
    return-void
.end method

.method clearCounts()V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    .line 100
    return-void
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/HdrHistogram/IntCountsHistogram;->copy()Lorg/HdrHistogram/IntCountsHistogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/IntCountsHistogram;
    .locals 1

    .line 104
    new-instance v0, Lorg/HdrHistogram/IntCountsHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/IntCountsHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 105
    .local v0, "copy":Lorg/HdrHistogram/IntCountsHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/IntCountsHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 106
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/IntCountsHistogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/IntCountsHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 111
    new-instance v0, Lorg/HdrHistogram/IntCountsHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/IntCountsHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 112
    .local v0, "toHistogram":Lorg/HdrHistogram/IntCountsHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 113
    return-object v0
.end method

.method getCountAtIndex(I)J
    .locals 3
    .param p1, "index"    # I

    .line 29
    iget-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    iget v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/IntCountsHistogram;->normalizeIndex(III)I

    move-result v1

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method getCountAtNormalizedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 34
    iget-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method getNormalizingIndexOffset()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    return-wide v0
.end method

.method incrementCountAtIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 39
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/IntCountsHistogram;->normalizeIndex(III)I

    move-result v0

    .line 40
    .local v0, "normalizedIndex":I
    iget-object v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    aget v2, v1, v0

    .line 41
    .local v2, "currentCount":I
    add-int/lit8 v3, v2, 0x1

    .line 42
    .local v3, "newCount":I
    if-ltz v3, :cond_0

    .line 45
    aput v3, v1, v0

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "would overflow integer count"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method incrementTotalCount()V
    .locals 4

    .line 128
    iget-wide v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    .line 129
    return-void
.end method

.method resize(J)V
    .locals 6
    .param p1, "newHighestTrackableValue"    # J

    .line 143
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/HdrHistogram/IntCountsHistogram;->normalizeIndex(III)I

    move-result v0

    .line 145
    .local v0, "oldNormalizedZeroIndex":I
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->establishSize(J)V

    .line 147
    iget v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    iget-object v3, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    array-length v4, v3

    sub-int/2addr v1, v4

    .line 149
    .local v1, "countsDelta":I
    iget v4, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    .line 151
    if-eqz v0, :cond_0

    .line 153
    add-int v3, v0, v1

    .line 154
    .local v3, "newNormalizedZeroIndex":I
    iget v4, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    .line 155
    .local v4, "lengthToCopy":I
    iget-object v5, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    invoke-static {v5, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v5, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    invoke-static {v5, v0, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 158
    .end local v3    # "newNormalizedZeroIndex":I
    .end local v4    # "lengthToCopy":I
    :cond_0
    return-void
.end method

.method setCountAtIndex(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 62
    iget v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/IntCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/IntCountsHistogram;->normalizeIndex(III)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/HdrHistogram/IntCountsHistogram;->setCountAtNormalizedIndex(IJ)V

    .line 63
    return-void
.end method

.method setCountAtNormalizedIndex(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/HdrHistogram/IntCountsHistogram;->counts:[I

    long-to-int v1, p2

    aput v1, v0, p1

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "would overflow integer count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setIntegerToDoubleValueConversionRatio(D)V
    .locals 0
    .param p1, "integerToDoubleValueConversionRatio"    # D

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->nonConcurrentSetIntegerToDoubleValueConversionRatio(D)V

    .line 87
    return-void
.end method

.method setNormalizingIndexOffset(I)V
    .locals 0
    .param p1, "normalizingIndexOffset"    # I

    .line 80
    iput p1, p0, Lorg/HdrHistogram/IntCountsHistogram;->normalizingIndexOffset:I

    .line 81
    return-void
.end method

.method setTotalCount(J)V
    .locals 0
    .param p1, "totalCount"    # J

    .line 123
    iput-wide p1, p0, Lorg/HdrHistogram/IntCountsHistogram;->totalCount:J

    .line 124
    return-void
.end method

.method shiftNormalizingIndexByOffset(IZD)V
    .locals 0
    .param p1, "offsetToAdd"    # I
    .param p2, "lowestHalfBucketPopulated"    # Z
    .param p3, "newIntegerToDoubleValueConversionRatio"    # D

    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/IntCountsHistogram;->nonConcurrentNormalizingIndexShift(IZ)V

    .line 94
    return-void
.end method
