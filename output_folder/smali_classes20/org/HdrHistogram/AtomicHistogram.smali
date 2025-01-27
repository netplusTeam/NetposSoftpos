.class public Lorg/HdrHistogram/AtomicHistogram;
.super Lorg/HdrHistogram/Histogram;
.source "AtomicHistogram.java"


# static fields
.field static final totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/AtomicHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile counts:Ljava/util/concurrent/atomic/AtomicLongArray;

.field volatile totalCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Lorg/HdrHistogram/AtomicHistogram;

    .line 36
    const-string/jumbo v1, "totalCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/AtomicHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 35
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 168
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/AtomicHistogram;-><init>(JJI)V

    .line 169
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 189
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/Histogram;-><init>(JJIZ)V

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    iget v1, p0, Lorg/HdrHistogram/AtomicHistogram;->countsArrayLength:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 191
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/AtomicHistogram;->wordSizeInBytes:I

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 2
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    iget v1, p0, Lorg/HdrHistogram/AtomicHistogram;->countsArrayLength:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 202
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/AtomicHistogram;->wordSizeInBytes:I

    .line 203
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/AtomicHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 213
    const-class v0, Lorg/HdrHistogram/AtomicHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/AtomicHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/AtomicHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/AtomicHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 226
    const-class v0, Lorg/HdrHistogram/AtomicHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/AtomicHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/AtomicHistogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/AtomicHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 239
    nop

    .line 240
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/AtomicHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/AtomicHistogram;

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

    .line 246
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 247
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x200

    return v0
.end method

.method addToCountAtIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 57
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    .line 58
    return-void
.end method

.method addToTotalCount(J)V
    .locals 1
    .param p1, "value"    # J

    .line 149
    sget-object v0, Lorg/HdrHistogram/AtomicHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 150
    return-void
.end method

.method clearCounts()V
    .locals 4

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lorg/HdrHistogram/AtomicHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 116
    return-void
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/HdrHistogram/AtomicHistogram;->copy()Lorg/HdrHistogram/AtomicHistogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/AtomicHistogram;
    .locals 1

    .line 120
    new-instance v0, Lorg/HdrHistogram/AtomicHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/AtomicHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 121
    .local v0, "copy":Lorg/HdrHistogram/AtomicHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/AtomicHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 122
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/Histogram;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/HdrHistogram/AtomicHistogram;->copy()Lorg/HdrHistogram/AtomicHistogram;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AtomicHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AtomicHistogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AtomicHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 127
    new-instance v0, Lorg/HdrHistogram/AtomicHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/AtomicHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 128
    .local v0, "toHistogram":Lorg/HdrHistogram/AtomicHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/AtomicHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 129
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AtomicHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AtomicHistogram;

    move-result-object p1

    return-object p1
.end method

.method getCountAtIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 42
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCountAtNormalizedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 47
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getNormalizingIndexOffset()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 134
    sget-object v0, Lorg/HdrHistogram/AtomicHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method incrementCountAtIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 52
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndIncrement(I)J

    .line 53
    return-void
.end method

.method incrementTotalCount()V
    .locals 1

    .line 144
    sget-object v0, Lorg/HdrHistogram/AtomicHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 145
    return-void
.end method

.method resize(J)V
    .locals 2
    .param p1, "newHighestTrackableValue"    # J

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AtomicHistogram does not support resizing operations. Use ConcurrentHistogram Instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoResize(Z)V
    .locals 2
    .param p1, "autoResize"    # Z

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AtomicHistogram does not support AutoResize operation. Use ConcurrentHistogram Instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCountAtIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 62
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 63
    return-void
.end method

.method setCountAtNormalizedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 67
    iget-object v0, p0, Lorg/HdrHistogram/AtomicHistogram;->counts:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 68
    return-void
.end method

.method setNormalizingIndexOffset(I)V
    .locals 2
    .param p1, "normalizingIndexOffset"    # I

    .line 77
    if-nez p1, :cond_0

    .line 82
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AtomicHistogram does not support non-zero normalizing index settings. Use ConcurrentHistogram Instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTotalCount(J)V
    .locals 1
    .param p1, "totalCount"    # J

    .line 139
    sget-object v0, Lorg/HdrHistogram/AtomicHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 140
    return-void
.end method

.method shiftNormalizingIndexByOffset(IZD)V
    .locals 2
    .param p1, "offsetToAdd"    # I
    .param p2, "lowestHalfBucketPopulated"    # Z
    .param p3, "newIntegerToDoubleValueConversionRatio"    # D

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AtomicHistogram does not support Shifting operations. Use ConcurrentHistogram Instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsAutoResize()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method
