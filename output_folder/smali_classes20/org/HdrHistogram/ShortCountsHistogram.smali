.class public Lorg/HdrHistogram/ShortCountsHistogram;
.super Lorg/HdrHistogram/AbstractHistogram;
.source "ShortCountsHistogram.java"


# instance fields
.field counts:[S

.field normalizingIndexOffset:I

.field totalCount:J


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 166
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/ShortCountsHistogram;-><init>(JJI)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/ShortCountsHistogram;->setAutoResize(Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 181
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/ShortCountsHistogram;-><init>(JJI)V

    .line 182
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 202
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/AbstractHistogram;-><init>(JJI)V

    .line 203
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->wordSizeInBytes:I

    .line 205
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 213
    invoke-direct {p0, p1}, Lorg/HdrHistogram/AbstractHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 214
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    .line 215
    const/4 v0, 0x2

    iput v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->wordSizeInBytes:I

    .line 216
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/ShortCountsHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 226
    const-class v0, Lorg/HdrHistogram/ShortCountsHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/ShortCountsHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/ShortCountsHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 239
    const-class v0, Lorg/HdrHistogram/ShortCountsHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/ShortCountsHistogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/ShortCountsHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 252
    nop

    .line 253
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/ShortCountsHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/ShortCountsHistogram;

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

    .line 259
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 260
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x200

    return v0
.end method

.method addToCountAtIndex(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 50
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/ShortCountsHistogram;->normalizeIndex(III)I

    move-result v0

    .line 51
    .local v0, "normalizedIndex":I
    iget-object v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    aget-short v2, v1, v0

    int-to-long v2, v2

    .line 52
    .local v2, "currentCount":J
    add-long v4, v2, p2

    .line 53
    .local v4, "newCount":J
    const-wide/16 v6, -0x8000

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7fff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 56
    long-to-int v6, v4

    int-to-short v6, v6

    aput-short v6, v1, v0

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "would overflow short integer count"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addToTotalCount(J)V
    .locals 2
    .param p1, "value"    # J

    .line 130
    iget-wide v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    .line 131
    return-void
.end method

.method clearCounts()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    .line 98
    return-void
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/HdrHistogram/ShortCountsHistogram;->copy()Lorg/HdrHistogram/ShortCountsHistogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/ShortCountsHistogram;
    .locals 1

    .line 101
    new-instance v0, Lorg/HdrHistogram/ShortCountsHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/ShortCountsHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 102
    .local v0, "copy":Lorg/HdrHistogram/ShortCountsHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/ShortCountsHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 103
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/ShortCountsHistogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/ShortCountsHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 108
    new-instance v0, Lorg/HdrHistogram/ShortCountsHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/ShortCountsHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 109
    .local v0, "toHistogram":Lorg/HdrHistogram/ShortCountsHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 110
    return-object v0
.end method

.method getCountAtIndex(I)J
    .locals 3
    .param p1, "index"    # I

    .line 29
    iget-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    iget v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/ShortCountsHistogram;->normalizeIndex(III)I

    move-result v1

    aget-short v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method getCountAtNormalizedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 34
    iget-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    aget-short v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method getNormalizingIndexOffset()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    return-wide v0
.end method

.method incrementCountAtIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 39
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/ShortCountsHistogram;->normalizeIndex(III)I

    move-result v0

    .line 40
    .local v0, "normalizedIndex":I
    iget-object v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    aget-short v2, v1, v0

    .line 41
    .local v2, "currentCount":S
    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    .line 42
    .local v3, "newCount":S
    if-ltz v3, :cond_0

    .line 45
    aput-short v3, v1, v0

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "would overflow short integer count"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method incrementTotalCount()V
    .locals 4

    .line 125
    iget-wide v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    .line 126
    return-void
.end method

.method resize(J)V
    .locals 6
    .param p1, "newHighestTrackableValue"    # J

    .line 140
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/HdrHistogram/ShortCountsHistogram;->normalizeIndex(III)I

    move-result v0

    .line 142
    .local v0, "oldNormalizedZeroIndex":I
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->establishSize(J)V

    .line 144
    iget v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    iget-object v3, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    array-length v4, v3

    sub-int/2addr v1, v4

    .line 146
    .local v1, "countsDelta":I
    iget v4, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v3

    iput-object v3, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    .line 148
    if-eqz v0, :cond_0

    .line 150
    add-int v3, v0, v1

    .line 151
    .local v3, "newNormalizedZeroIndex":I
    iget v4, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    .line 152
    .local v4, "lengthToCopy":I
    iget-object v5, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    invoke-static {v5, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v5, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    invoke-static {v5, v0, v3, v2}, Ljava/util/Arrays;->fill([SIIS)V

    .line 155
    .end local v3    # "newNormalizedZeroIndex":I
    .end local v4    # "lengthToCopy":I
    :cond_0
    return-void
.end method

.method setCountAtIndex(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 61
    iget v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/ShortCountsHistogram;->normalizeIndex(III)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/HdrHistogram/ShortCountsHistogram;->setCountAtNormalizedIndex(IJ)V

    .line 62
    return-void
.end method

.method setCountAtNormalizedIndex(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x7fff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/HdrHistogram/ShortCountsHistogram;->counts:[S

    long-to-int v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "would overflow short integer count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setIntegerToDoubleValueConversionRatio(D)V
    .locals 0
    .param p1, "integerToDoubleValueConversionRatio"    # D

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->nonConcurrentSetIntegerToDoubleValueConversionRatio(D)V

    .line 85
    return-void
.end method

.method setNormalizingIndexOffset(I)V
    .locals 0
    .param p1, "normalizingIndexOffset"    # I

    .line 79
    iput p1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->normalizingIndexOffset:I

    .line 80
    return-void
.end method

.method setTotalCount(J)V
    .locals 0
    .param p1, "totalCount"    # J

    .line 120
    iput-wide p1, p0, Lorg/HdrHistogram/ShortCountsHistogram;->totalCount:J

    .line 121
    return-void
.end method

.method shiftNormalizingIndexByOffset(IZD)V
    .locals 0
    .param p1, "offsetToAdd"    # I
    .param p2, "lowestHalfBucketPopulated"    # Z
    .param p3, "newIntegerToDoubleValueConversionRatio"    # D

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ShortCountsHistogram;->nonConcurrentNormalizingIndexShift(IZ)V

    .line 92
    return-void
.end method
