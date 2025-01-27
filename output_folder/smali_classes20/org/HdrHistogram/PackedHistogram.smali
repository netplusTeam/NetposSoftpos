.class public Lorg/HdrHistogram/PackedHistogram;
.super Lorg/HdrHistogram/Histogram;
.source "PackedHistogram.java"


# instance fields
.field private packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 156
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/PackedHistogram;-><init>(JJI)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/PackedHistogram;->setAutoResize(Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 171
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/PackedHistogram;-><init>(JJI)V

    .line 172
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 191
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/Histogram;-><init>(JJIZ)V

    .line 192
    new-instance v0, Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-direct {v0, v1}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(I)V

    iput-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 193
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/PackedHistogram;->wordSizeInBytes:I

    .line 194
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 2
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 203
    new-instance v0, Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-direct {v0, v1}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(I)V

    iput-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 204
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/PackedHistogram;->wordSizeInBytes:I

    .line 205
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 215
    const-class v0, Lorg/HdrHistogram/PackedHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/PackedHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/PackedHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 228
    const-class v0, Lorg/HdrHistogram/PackedHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/PackedHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/PackedHistogram;

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

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 234
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->getPhysicalLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method addToCountAtIndex(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 69
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/PackedHistogram;->normalizeIndex(III)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->add(IJ)V

    .line 70
    return-void
.end method

.method clearCounts()V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->clear()V

    .line 85
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-virtual {v0, v1}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setVirtualLength(I)V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/PackedHistogram;->totalCount:J

    .line 87
    return-void
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/HdrHistogram/PackedHistogram;->copy()Lorg/HdrHistogram/PackedHistogram;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/Histogram;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/HdrHistogram/PackedHistogram;->copy()Lorg/HdrHistogram/PackedHistogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/PackedHistogram;
    .locals 1

    .line 91
    new-instance v0, Lorg/HdrHistogram/PackedHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/PackedHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 92
    .local v0, "copy":Lorg/HdrHistogram/PackedHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/PackedHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 93
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/PackedHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedHistogram;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/PackedHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedHistogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 98
    new-instance v0, Lorg/HdrHistogram/PackedHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/PackedHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 99
    .local v0, "toHistogram":Lorg/HdrHistogram/PackedHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/PackedHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 100
    return-object v0
.end method

.method getCountAtIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 53
    iget v0, p0, Lorg/HdrHistogram/PackedHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/PackedHistogram;->normalizeIndex(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/PackedHistogram;->getCountAtNormalizedIndex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCountAtNormalizedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 58
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/PackedLongArray;->get(I)J

    move-result-wide v0

    .line 59
    .local v0, "count":J
    return-wide v0
.end method

.method incrementCountAtIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 64
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->normalizingIndexOffset:I

    iget v2, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/PackedHistogram;->normalizeIndex(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/HdrHistogram/packedarray/PackedLongArray;->increment(I)V

    .line 65
    return-void
.end method

.method resize(J)V
    .locals 10
    .param p1, "newHighestTrackableValue"    # J

    .line 105
    iget v0, p0, Lorg/HdrHistogram/PackedHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/HdrHistogram/PackedHistogram;->normalizeIndex(III)I

    move-result v0

    .line 106
    .local v0, "oldNormalizedZeroIndex":I
    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    .line 108
    .local v1, "oldCountsArrayLength":I
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/PackedHistogram;->establishSize(J)V

    .line 110
    if-eqz v0, :cond_4

    .line 116
    new-instance v2, Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v3, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    iget-object v4, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v4}, Lorg/HdrHistogram/packedarray/PackedLongArray;->getPhysicalLength()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(II)V

    .line 118
    .local v2, "newPackedCounts":Lorg/HdrHistogram/packedarray/PackedLongArray;
    const/4 v3, 0x0

    .local v3, "fromIndex":I
    :goto_0
    const-wide/16 v4, 0x0

    if-ge v3, v0, :cond_1

    .line 119
    iget-object v6, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v6, v3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->get(I)J

    move-result-wide v6

    .line 120
    .local v6, "value":J
    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v2, v3, v6, v7}, Lorg/HdrHistogram/packedarray/PackedLongArray;->set(IJ)V

    .line 118
    .end local v6    # "value":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "fromIndex":I
    :cond_1
    iget v3, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    sub-int/2addr v3, v1

    .line 127
    .local v3, "countsDelta":I
    move v6, v0

    .local v6, "fromIndex":I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 128
    iget-object v7, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v7, v6}, Lorg/HdrHistogram/packedarray/PackedLongArray;->get(I)J

    move-result-wide v7

    .line 129
    .local v7, "value":J
    cmp-long v9, v7, v4

    if-eqz v9, :cond_2

    .line 130
    add-int v9, v6, v3

    .line 131
    .local v9, "toIndex":I
    invoke-virtual {v2, v9, v7, v8}, Lorg/HdrHistogram/packedarray/PackedLongArray;->set(IJ)V

    .line 127
    .end local v7    # "value":J
    .end local v9    # "toIndex":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v6    # "fromIndex":I
    :cond_3
    iput-object v2, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    .line 137
    .end local v2    # "newPackedCounts":Lorg/HdrHistogram/packedarray/PackedLongArray;
    .end local v3    # "countsDelta":I
    goto :goto_2

    .line 138
    :cond_4
    iget-object v2, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    iget v3, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-virtual {v2, v3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setVirtualLength(I)V

    .line 140
    :goto_2
    return-void
.end method

.method setCountAtIndex(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 74
    iget v0, p0, Lorg/HdrHistogram/PackedHistogram;->normalizingIndexOffset:I

    iget v1, p0, Lorg/HdrHistogram/PackedHistogram;->countsArrayLength:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/PackedHistogram;->normalizeIndex(III)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/HdrHistogram/PackedHistogram;->setCountAtNormalizedIndex(IJ)V

    .line 75
    return-void
.end method

.method setCountAtNormalizedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 79
    iget-object v0, p0, Lorg/HdrHistogram/PackedHistogram;->packedCounts:Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {v0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/PackedLongArray;->set(IJ)V

    .line 80
    return-void
.end method
