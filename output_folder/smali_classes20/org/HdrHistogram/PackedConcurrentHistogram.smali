.class public Lorg/HdrHistogram/PackedConcurrentHistogram;
.super Lorg/HdrHistogram/ConcurrentHistogram;
.source "PackedConcurrentHistogram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 125
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(JJI)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/PackedConcurrentHistogram;->setAutoResize(Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 140
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(JJI)V

    .line 141
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 161
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(JJIZ)V

    .line 163
    return-void
.end method

.method constructor <init>(JJIZ)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I
    .param p6, "allocateCountsArray"    # Z

    .line 186
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(JJIZ)V

    .line 188
    if-eqz p6, :cond_0

    .line 189
    new-instance v0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;

    iget v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->countsArrayLength:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;-><init>(II)V

    iput-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 190
    new-instance v0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;

    iget v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->countsArrayLength:I

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;-><init>(II)V

    iput-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 192
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wordSizeInBytes:I

    .line 193
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 172
    return-void
.end method

.method constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Z)V
    .locals 3
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "allocateCountsArray"    # Z

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 177
    if-eqz p2, :cond_0

    .line 178
    new-instance v1, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;

    iget v2, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->countsArrayLength:I

    invoke-direct {v1, v2, v0}, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;-><init>(II)V

    iput-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 179
    new-instance v1, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;

    iget v2, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->countsArrayLength:I

    invoke-direct {v1, v2, v0}, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;-><init>(II)V

    iput-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 181
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wordSizeInBytes:I

    .line 182
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedConcurrentHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 203
    const-class v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedConcurrentHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 216
    const-class v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/PackedConcurrentHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 229
    nop

    .line 230
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 229
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "o"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 237
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 238
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 110
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getEstimatedFootprintInBytes()I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getEstimatedFootprintInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 110
    return v0

    .line 112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 113
    throw v0
.end method

.method addToTotalCount(J)V
    .locals 1
    .param p1, "value"    # J

    .line 102
    sget-object v0, Lorg/HdrHistogram/PackedConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 103
    return-void
.end method

.method allocateArray(II)Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .locals 1
    .param p1, "length"    # I
    .param p2, "normalizingIndexOffset"    # I

    .line 52
    new-instance v0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;

    invoke-direct {v0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;-><init>(II)V

    return-object v0
.end method

.method clearCounts()V
    .locals 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 59
    iget v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 60
    iget v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, v0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 63
    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, v0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lorg/HdrHistogram/PackedConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 68
    nop

    .line 69
    return-void

    .line 60
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 68
    throw v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/HdrHistogram/PackedConcurrentHistogram;->copy()Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/HdrHistogram/PackedConcurrentHistogram;->copy()Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/Histogram;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/HdrHistogram/PackedConcurrentHistogram;->copy()Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/PackedConcurrentHistogram;
    .locals 1

    .line 73
    new-instance v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 74
    .local v0, "copy":Lorg/HdrHistogram/PackedConcurrentHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/PackedConcurrentHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 75
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedConcurrentHistogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/PackedConcurrentHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 80
    new-instance v0, Lorg/HdrHistogram/PackedConcurrentHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 81
    .local v0, "toHistogram":Lorg/HdrHistogram/PackedConcurrentHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/PackedConcurrentHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 82
    return-object v0
.end method

.method declared-synchronized fillBufferFromCountsArray(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 244
    invoke-super {p0, p1}, Lorg/HdrHistogram/ConcurrentHistogram;->fillBufferFromCountsArray(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    nop

    .line 248
    monitor-exit p0

    return-void

    .line 246
    .end local p0    # "this":Lorg/HdrHistogram/PackedConcurrentHistogram;
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 247
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTotalCount()J
    .locals 2

    .line 87
    sget-object v0, Lorg/HdrHistogram/PackedConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method incrementTotalCount()V
    .locals 1

    .line 97
    sget-object v0, Lorg/HdrHistogram/PackedConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 98
    return-void
.end method

.method setTotalCount(J)V
    .locals 1
    .param p1, "totalCount"    # J

    .line 92
    sget-object v0, Lorg/HdrHistogram/PackedConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 93
    return-void
.end method
