.class public Lorg/HdrHistogram/Histogram;
.super Lorg/HdrHistogram/AbstractHistogram;
.source "Histogram.java"


# instance fields
.field counts:[J

.field normalizingIndexOffset:I

.field totalCount:J


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 174
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/Histogram;-><init>(JJI)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/Histogram;->setAutoResize(Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 189
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/Histogram;-><init>(JJI)V

    .line 190
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 210
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/Histogram;-><init>(JJIZ)V

    .line 211
    return-void
.end method

.method constructor <init>(JJIZ)V
    .locals 1
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I
    .param p6, "allocateCountsArray"    # Z

    .line 232
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/AbstractHistogram;-><init>(JJI)V

    .line 233
    if-eqz p6, :cond_0

    .line 234
    iget v0, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    .line 236
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/Histogram;->wordSizeInBytes:I

    .line 237
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 220
    return-void
.end method

.method constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Z)V
    .locals 1
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "allocateCountsArray"    # Z

    .line 223
    invoke-direct {p0, p1}, Lorg/HdrHistogram/AbstractHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 224
    if-eqz p2, :cond_0

    .line 225
    iget v0, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    .line 227
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/Histogram;->wordSizeInBytes:I

    .line 228
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 247
    const-class v0, Lorg/HdrHistogram/Histogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/Histogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/Histogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 260
    const-class v0, Lorg/HdrHistogram/Histogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/Histogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/Histogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/Histogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 278
    nop

    .line 279
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 278
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/Histogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/Histogram;

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

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 266
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x200

    return v0
.end method

.method addToCountAtIndex(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 66
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    iget v1, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/Histogram;->normalizeIndex(III)I

    move-result v1

    aget-wide v2, v0, v1

    add-long/2addr v2, p2

    aput-wide v2, v0, v1

    .line 67
    return-void
.end method

.method addToTotalCount(J)V
    .locals 2
    .param p1, "value"    # J

    .line 138
    iget-wide v0, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    .line 139
    return-void
.end method

.method clearCounts()V
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 104
    iput-wide v1, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    .line 105
    return-void
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/HdrHistogram/Histogram;->copy()Lorg/HdrHistogram/Histogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/Histogram;
    .locals 1

    .line 109
    new-instance v0, Lorg/HdrHistogram/Histogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 110
    .local v0, "copy":Lorg/HdrHistogram/Histogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/Histogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 111
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 116
    new-instance v0, Lorg/HdrHistogram/Histogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 117
    .local v0, "copy":Lorg/HdrHistogram/Histogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/Histogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 118
    return-object v0
.end method

.method getCountAtIndex(I)J
    .locals 3
    .param p1, "index"    # I

    .line 51
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    iget v1, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/Histogram;->normalizeIndex(III)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getCountAtNormalizedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 56
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getNormalizingIndexOffset()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    return-wide v0
.end method

.method incrementCountAtIndex(I)V
    .locals 6
    .param p1, "index"    # I

    .line 61
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    iget v1, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/Histogram;->normalizeIndex(III)I

    move-result v1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 62
    return-void
.end method

.method incrementTotalCount()V
    .locals 4

    .line 133
    iget-wide v0, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    .line 134
    return-void
.end method

.method resize(J)V
    .locals 7
    .param p1, "newHighestTrackableValue"    # J

    .line 148
    iget v0, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/HdrHistogram/Histogram;->normalizeIndex(III)I

    move-result v0

    .line 150
    .local v0, "oldNormalizedZeroIndex":I
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->establishSize(J)V

    .line 152
    iget v1, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    iget-object v2, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    array-length v3, v2

    sub-int/2addr v1, v3

    .line 154
    .local v1, "countsDelta":I
    iget v3, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    .line 156
    if-eqz v0, :cond_0

    .line 158
    add-int v2, v0, v1

    .line 159
    .local v2, "newNormalizedZeroIndex":I
    iget v3, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    .line 160
    .local v3, "lengthToCopy":I
    iget-object v4, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    invoke-static {v4, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v4, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    const-wide/16 v5, 0x0

    invoke-static {v4, v0, v2, v5, v6}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 163
    .end local v2    # "newNormalizedZeroIndex":I
    .end local v3    # "lengthToCopy":I
    :cond_0
    return-void
.end method

.method setCountAtIndex(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 71
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    iget v1, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/Histogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/Histogram;->normalizeIndex(III)I

    move-result v1

    aput-wide p2, v0, v1

    .line 72
    return-void
.end method

.method setCountAtNormalizedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 76
    iget-object v0, p0, Lorg/HdrHistogram/Histogram;->counts:[J

    aput-wide p2, v0, p1

    .line 77
    return-void
.end method

.method setIntegerToDoubleValueConversionRatio(D)V
    .locals 0
    .param p1, "integerToDoubleValueConversionRatio"    # D

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->nonConcurrentSetIntegerToDoubleValueConversionRatio(D)V

    .line 92
    return-void
.end method

.method setNormalizingIndexOffset(I)V
    .locals 0
    .param p1, "normalizingIndexOffset"    # I

    .line 86
    iput p1, p0, Lorg/HdrHistogram/Histogram;->normalizingIndexOffset:I

    .line 87
    return-void
.end method

.method setTotalCount(J)V
    .locals 0
    .param p1, "totalCount"    # J

    .line 128
    iput-wide p1, p0, Lorg/HdrHistogram/Histogram;->totalCount:J

    .line 129
    return-void
.end method

.method shiftNormalizingIndexByOffset(IZD)V
    .locals 0
    .param p1, "offsetToAdd"    # I
    .param p2, "lowestHalfBucketPopulated"    # Z
    .param p3, "newIntegerToDoubleValueConversionRatio"    # D

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->nonConcurrentNormalizingIndexShift(IZ)V

    .line 99
    return-void
.end method
