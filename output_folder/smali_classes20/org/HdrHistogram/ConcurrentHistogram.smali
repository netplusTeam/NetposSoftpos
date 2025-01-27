.class public Lorg/HdrHistogram/ConcurrentHistogram;
.super Lorg/HdrHistogram/Histogram;
.source "ConcurrentHistogram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;,
        Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/ConcurrentHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

.field volatile inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

.field volatile totalCount:J

.field transient wrp:Lorg/HdrHistogram/WriterReaderPhaser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    nop

    .line 43
    const-class v0, Lorg/HdrHistogram/ConcurrentHistogram;

    .line 44
    const-string/jumbo v1, "totalCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/ConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 498
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(JJI)V

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/ConcurrentHistogram;->setAutoResize(Z)V

    .line 500
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 513
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(JJI)V

    .line 514
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 534
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(JJIZ)V

    .line 536
    return-void
.end method

.method constructor <init>(JJIZ)V
    .locals 7
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I
    .param p6, "allocateCountsArray"    # Z

    .line 558
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/Histogram;-><init>(JJIZ)V

    .line 49
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 560
    if-eqz p6, :cond_0

    .line 561
    new-instance v0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;

    iget v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;-><init>(II)V

    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 562
    new-instance v0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;

    iget v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;-><init>(II)V

    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 564
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wordSizeInBytes:I

    .line 565
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 1
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 544
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 545
    return-void
.end method

.method constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Z)V
    .locals 3
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "allocateCountsArray"    # Z

    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;Z)V

    .line 49
    new-instance v1, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v1}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 549
    if-eqz p2, :cond_0

    .line 550
    new-instance v1, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;

    iget v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    invoke-direct {v1, v2, v0}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;-><init>(II)V

    iput-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 551
    new-instance v1, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;

    iget v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    invoke-direct {v1, v2, v0}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;-><init>(II)V

    iput-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 553
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wordSizeInBytes:I

    .line 554
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 575
    const-class v0, Lorg/HdrHistogram/ConcurrentHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/ConcurrentHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 588
    const-class v0, Lorg/HdrHistogram/ConcurrentHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/ConcurrentHistogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 601
    nop

    .line 602
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 601
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/ConcurrentHistogram;

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

    .line 608
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 609
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 610
    return-void
.end method

.method private setNormalizingIndexOffset(IIZD)V
    .locals 2
    .param p1, "newNormalizingIndexOffset"    # I
    .param p2, "shiftedAmount"    # I
    .param p3, "lowestHalfBucketPopulated"    # Z
    .param p4, "newIntegerToDoubleValueConversionRatio"    # D

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 214
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 215
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 217
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 220
    return-void

    .line 223
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/ConcurrentHistogram;->setNormalizingIndexOffsetForInactive(IIZD)V

    .line 227
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 228
    .local v0, "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iput-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 229
    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 231
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V

    .line 233
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/ConcurrentHistogram;->setNormalizingIndexOffsetForInactive(IIZD)V

    .line 237
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    move-object v0, v1

    .line 238
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iput-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 239
    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 241
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v0    # "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 248
    nop

    .line 249
    return-void

    .line 217
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newNormalizingIndexOffset":I
    .end local p2    # "shiftedAmount":I
    .end local p3    # "lowestHalfBucketPopulated":Z
    .end local p4    # "newIntegerToDoubleValueConversionRatio":D
    throw v0

    .line 215
    .restart local p1    # "newNormalizingIndexOffset":I
    .restart local p2    # "shiftedAmount":I
    .restart local p3    # "lowestHalfBucketPopulated":Z
    .restart local p4    # "newIntegerToDoubleValueConversionRatio":D
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newNormalizingIndexOffset":I
    .end local p2    # "shiftedAmount":I
    .end local p3    # "lowestHalfBucketPopulated":Z
    .end local p4    # "newIntegerToDoubleValueConversionRatio":D
    throw v0

    .line 214
    .restart local p1    # "newNormalizingIndexOffset":I
    .restart local p2    # "shiftedAmount":I
    .restart local p3    # "lowestHalfBucketPopulated":Z
    .restart local p4    # "newIntegerToDoubleValueConversionRatio":D
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newNormalizingIndexOffset":I
    .end local p2    # "shiftedAmount":I
    .end local p3    # "lowestHalfBucketPopulated":Z
    .end local p4    # "newIntegerToDoubleValueConversionRatio":D
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .restart local p1    # "newNormalizingIndexOffset":I
    .restart local p2    # "shiftedAmount":I
    .restart local p3    # "lowestHalfBucketPopulated":Z
    .restart local p4    # "newIntegerToDoubleValueConversionRatio":D
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 248
    throw v0
.end method

.method private setNormalizingIndexOffsetForInactive(IIZD)V
    .locals 7
    .param p1, "newNormalizingIndexOffset"    # I
    .param p2, "shiftedAmount"    # I
    .param p3, "lowestHalfBucketPopulated"    # Z
    .param p4, "newIntegerToDoubleValueConversionRatio"    # D

    .line 259
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 260
    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    .line 259
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v0

    .line 261
    .local v0, "zeroIndex":I
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v3

    .line 262
    .local v3, "inactiveZeroValueCount":J
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v0, v5, v6}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 265
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->setNormalizingIndexOffset(I)V

    .line 268
    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 269
    invoke-direct {p0, p2, v0}, Lorg/HdrHistogram/ConcurrentHistogram;->shiftLowestInactiveHalfBucketContentsLeft(II)V

    .line 273
    :cond_0
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v1

    iget-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v5}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v5

    invoke-virtual {p0, v2, v1, v5}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v0

    .line 274
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, v0, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 276
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, p4

    invoke-interface {v1, v5, v6}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->setDoubleToIntegerValueConversionRatio(D)V

    .line 277
    return-void
.end method

.method private shiftLowestInactiveHalfBucketContentsLeft(II)V
    .locals 12
    .param p1, "shiftAmount"    # I
    .param p2, "preShiftZeroIndex"    # I

    .line 280
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->subBucketHalfCountMagnitude:I

    shr-int v0, p1, v0

    .line 297
    .local v0, "numberOfBinaryOrdersOfMagnitude":I
    const/4 v1, 0x1

    .local v1, "fromIndex":I
    :goto_0
    iget v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->subBucketHalfCount:I

    if-ge v1, v2, :cond_0

    .line 298
    invoke-virtual {p0, v1}, Lorg/HdrHistogram/ConcurrentHistogram;->valueFromIndex(I)J

    move-result-wide v2

    shl-long/2addr v2, v0

    .line 299
    .local v2, "toValue":J
    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayIndex(J)I

    move-result v4

    .line 300
    .local v4, "toIndex":I
    iget-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 301
    invoke-interface {v5}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v5

    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v6}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v5

    .line 302
    .local v5, "normalizedToIndex":I
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    add-int v7, v1, p2

    invoke-interface {v6, v7}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v6

    .line 303
    .local v6, "countAtFromIndex":J
    iget-object v8, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v8, v5, v6, v7}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 304
    iget-object v8, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    add-int v9, v1, p2

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 297
    .end local v2    # "toValue":J
    .end local v4    # "toIndex":I
    .end local v5    # "normalizedToIndex":I
    .end local v6    # "countAtFromIndex":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "fromIndex":I
    :cond_0
    return-void
.end method


# virtual methods
.method _getEstimatedFootprintInBytes()I
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x200

    return v0
.end method

.method addToCountAtIndex(IJ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 126
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 128
    .local v0, "criticalValue":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 129
    invoke-interface {v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v3

    iget-object v4, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v3

    .line 128
    invoke-interface {v2, v3, p2, p3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->atomicAdd(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 132
    throw v2
.end method

.method addToTotalCount(J)V
    .locals 1
    .param p1, "value"    # J

    .line 481
    sget-object v0, Lorg/HdrHistogram/ConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 482
    return-void
.end method

.method allocateArray(II)Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .locals 1
    .param p1, "length"    # I
    .param p2, "normalizingIndexOffset"    # I

    .line 333
    new-instance v0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;

    invoke-direct {v0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;-><init>(II)V

    return-object v0
.end method

.method clearCounts()V
    .locals 4

    .line 437
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 438
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 439
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 441
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, v0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 442
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1, v0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lorg/HdrHistogram/ConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 447
    nop

    .line 448
    return-void

    .line 439
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 447
    throw v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/HdrHistogram/ConcurrentHistogram;->copy()Lorg/HdrHistogram/ConcurrentHistogram;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 1

    .line 452
    new-instance v0, Lorg/HdrHistogram/ConcurrentHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 453
    .local v0, "copy":Lorg/HdrHistogram/ConcurrentHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/ConcurrentHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 454
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/Histogram;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/HdrHistogram/ConcurrentHistogram;->copy()Lorg/HdrHistogram/ConcurrentHistogram;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/ConcurrentHistogram;

    move-result-object p1

    return-object p1
.end method

.method public copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/ConcurrentHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    .line 459
    new-instance v0, Lorg/HdrHistogram/ConcurrentHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/ConcurrentHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 460
    .local v0, "toHistogram":Lorg/HdrHistogram/ConcurrentHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 461
    return-object v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/ConcurrentHistogram;

    move-result-object p1

    return-object p1
.end method

.method copyInactiveCountsContentsOnResize(Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;I)V
    .locals 6
    .param p1, "oldInactiveCounts"    # Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .param p2, "countsDelta"    # I

    .line 403
    nop

    .line 405
    invoke-interface {p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v0

    .line 406
    invoke-interface {p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    .line 404
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v0

    .line 408
    .local v0, "oldNormalizedZeroIndex":I
    if-nez v0, :cond_1

    .line 410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 411
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {p1, v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_3

    .line 417
    :cond_1
    const/4 v1, 0x0

    .local v1, "fromIndex":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 418
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {p1, v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v1    # "fromIndex":I
    :cond_2
    move v1, v0

    .restart local v1    # "fromIndex":I
    :goto_2
    invoke-interface {p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 423
    add-int v2, v1, p2

    .line 424
    .local v2, "toIndex":I
    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {p1, v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v4

    invoke-interface {v3, v2, v4, v5}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 422
    .end local v2    # "toIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    .end local v1    # "fromIndex":I
    :cond_3
    :goto_3
    return-void
.end method

.method declared-synchronized fillBufferFromCountsArray(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 616
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->fillBufferFromCountsArray(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :try_start_1
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    nop

    .line 620
    monitor-exit p0

    return-void

    .line 618
    .end local p0    # "this":Lorg/HdrHistogram/ConcurrentHistogram;
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 619
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getCountAtIndex(I)J
    .locals 7
    .param p1, "index"    # I

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 87
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 88
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 90
    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v1

    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v1

    .line 89
    invoke-interface {v0, v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v0

    .line 91
    .local v0, "activeCount":J
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 92
    invoke-interface {v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v3

    iget-object v4, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v3

    .line 91
    invoke-interface {v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .local v2, "inactiveCount":J
    add-long v4, v0, v2

    .line 95
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v6}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 93
    return-wide v4

    .line 88
    .end local v0    # "activeCount":J
    .end local v2    # "inactiveCount":J
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    throw v0

    .line 87
    .restart local p1    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .restart local p1    # "index":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 96
    throw v0
.end method

.method getCountAtNormalizedIndex(I)J
    .locals 7
    .param p1, "index"    # I

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 103
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 104
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0, p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v0

    .line 106
    .local v0, "activeCount":J
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v2, p1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->get(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .local v2, "inactiveCount":J
    add-long v4, v0, v2

    .line 109
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v6}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 107
    return-wide v4

    .line 104
    .end local v0    # "activeCount":J
    .end local v2    # "inactiveCount":J
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    throw v0

    .line 103
    .restart local p1    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .restart local p1    # "index":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 110
    throw v0
.end method

.method getNormalizingIndexOffset()I
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v0

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 466
    sget-object v0, Lorg/HdrHistogram/ConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method incrementCountAtIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 115
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 117
    .local v0, "criticalValue":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 118
    invoke-interface {v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v3

    iget-object v4, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v3

    .line 117
    invoke-interface {v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->atomicIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 121
    throw v2
.end method

.method incrementTotalCount()V
    .locals 1

    .line 476
    sget-object v0, Lorg/HdrHistogram/ConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 477
    return-void
.end method

.method recordConvertedDoubleValue(D)V
    .locals 8
    .param p1, "value"    # D

    .line 166
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 168
    .local v0, "criticalValue":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v2, p1

    double-to-long v2, v2

    .line 169
    .local v2, "integerValue":J
    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayIndex(J)I

    move-result v4

    .line 170
    .local v4, "index":I
    iget-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 171
    invoke-interface {v6}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v6

    iget-object v7, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v7}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v7

    invoke-virtual {p0, v4, v6, v7}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v6

    .line 170
    invoke-interface {v5, v6}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->atomicIncrement(I)V

    .line 172
    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram;->updateMinAndMax(J)V

    .line 173
    invoke-virtual {p0}, Lorg/HdrHistogram/ConcurrentHistogram;->incrementTotalCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v2    # "integerValue":J
    .end local v4    # "index":I
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 176
    throw v2
.end method

.method public recordConvertedDoubleValueWithCount(DJ)V
    .locals 8
    .param p1, "value"    # D
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    .line 184
    .local v0, "criticalValue":J
    :try_start_0
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getDoubleToIntegerValueConversionRatio()D

    move-result-wide v2

    mul-double/2addr v2, p1

    double-to-long v2, v2

    .line 185
    .local v2, "integerValue":J
    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayIndex(J)I

    move-result v4

    .line 186
    .local v4, "index":I
    iget-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 187
    invoke-interface {v6}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v6

    iget-object v7, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v7}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v7

    invoke-virtual {p0, v4, v6, v7}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v6

    .line 186
    invoke-interface {v5, v6, p3, p4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->atomicAdd(IJ)V

    .line 188
    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram;->updateMinAndMax(J)V

    .line 189
    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/ConcurrentHistogram;->addToTotalCount(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v2    # "integerValue":J
    .end local v4    # "index":I
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3, v0, v1}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 192
    throw v2
.end method

.method resize(J)V
    .locals 8
    .param p1, "newHighestTrackableValue"    # J

    .line 339
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 341
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 342
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 344
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->determineArrayLengthNeeded(J)I

    move-result v0

    .line 345
    .local v0, "newArrayLength":I
    iget v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v1, v0, v1

    .line 347
    .local v1, "countsDelta":I
    if-gtz v1, :cond_0

    .line 397
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 349
    return-void

    .line 353
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 354
    invoke-interface {v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/HdrHistogram/ConcurrentHistogram;->allocateArray(II)Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    move-result-object v2

    .line 355
    .local v2, "newInactiveCounts1":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 356
    invoke-interface {v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/HdrHistogram/ConcurrentHistogram;->allocateArray(II)Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    move-result-object v3

    .line 360
    .local v3, "newInactiveCounts2":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v4, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 361
    .local v4, "oldInactiveCounts":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iput-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 364
    invoke-virtual {p0, v4, v1}, Lorg/HdrHistogram/ConcurrentHistogram;->copyInactiveCountsContentsOnResize(Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;I)V

    .line 367
    iget-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 368
    .local v5, "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iput-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 369
    iput-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 371
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v6}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V

    .line 374
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    move-object v4, v6

    .line 375
    iput-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 378
    invoke-virtual {p0, v4, v1}, Lorg/HdrHistogram/ConcurrentHistogram;->copyInactiveCountsContentsOnResize(Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;I)V

    .line 381
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    move-object v5, v6

    .line 382
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iput-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 383
    iput-object v5, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 385
    iget-object v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v6}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V

    .line 391
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/ConcurrentHistogram;->establishSize(J)V

    .line 393
    iget v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v7, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v7}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 394
    iget v6, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v7, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v7}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v7, :cond_1

    .line 397
    .end local v0    # "newArrayLength":I
    .end local v1    # "countsDelta":I
    .end local v2    # "newInactiveCounts1":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .end local v3    # "newInactiveCounts2":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .end local v4    # "oldInactiveCounts":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .end local v5    # "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 398
    nop

    .line 399
    return-void

    .line 394
    .restart local v0    # "newArrayLength":I
    .restart local v1    # "countsDelta":I
    .restart local v2    # "newInactiveCounts1":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .restart local v3    # "newInactiveCounts2":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .restart local v4    # "oldInactiveCounts":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .restart local v5    # "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newHighestTrackableValue":J
    throw v6

    .line 393
    .restart local p1    # "newHighestTrackableValue":J
    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newHighestTrackableValue":J
    throw v6

    .line 342
    .end local v0    # "newArrayLength":I
    .end local v1    # "countsDelta":I
    .end local v2    # "newInactiveCounts1":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .end local v3    # "newInactiveCounts2":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .end local v4    # "oldInactiveCounts":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .end local v5    # "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    .restart local p1    # "newHighestTrackableValue":J
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newHighestTrackableValue":J
    throw v0

    .line 341
    .restart local p1    # "newHighestTrackableValue":J
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newHighestTrackableValue":J
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    .restart local p1    # "newHighestTrackableValue":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 398
    throw v0
.end method

.method public setAutoResize(Z)V
    .locals 1
    .param p1, "autoResize"    # Z

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->autoResize:Z

    .line 432
    return-void
.end method

.method setCountAtIndex(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 139
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 140
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 142
    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v1

    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v1

    .line 141
    invoke-interface {v0, v1, p2, p3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 143
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 144
    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->getNormalizingIndexOffset()I

    move-result v1

    iget-object v2, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 145
    invoke-interface {v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v2

    .line 144
    invoke-virtual {p0, p1, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram;->normalizeIndex(III)I

    move-result v1

    const-wide/16 v2, 0x0

    .line 143
    invoke-interface {v0, v1, v2, v3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 148
    nop

    .line 149
    return-void

    .line 140
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    .end local p2    # "value":J
    throw v0

    .line 139
    .restart local p1    # "index":I
    .restart local p2    # "value":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    .end local p2    # "value":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .restart local p1    # "index":I
    .restart local p2    # "value":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 148
    throw v0
.end method

.method setCountAtNormalizedIndex(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 155
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 156
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v0, p1, p2, p3}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V

    .line 158
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->lazySet(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 161
    nop

    .line 162
    return-void

    .line 156
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    .end local p2    # "value":J
    throw v0

    .line 155
    .restart local p1    # "index":I
    .restart local p2    # "value":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "index":I
    .end local p2    # "value":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .restart local p1    # "index":I
    .restart local p2    # "value":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 161
    throw v0
.end method

.method setIntegerToDoubleValueConversionRatio(D)V
    .locals 5
    .param p1, "integerToDoubleValueConversionRatio"    # D

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 56
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v3, v1, p1

    invoke-interface {v0, v3, v4}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->setDoubleToIntegerValueConversionRatio(D)V

    .line 59
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 60
    .local v0, "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iput-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 61
    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 63
    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v3}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V

    .line 65
    iget-object v3, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    div-double/2addr v1, p1

    invoke-interface {v3, v1, v2}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->setDoubleToIntegerValueConversionRatio(D)V

    .line 68
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    move-object v0, v1

    .line 69
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    iput-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 70
    iput-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    .line 72
    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0    # "tmp":Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 79
    nop

    .line 80
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->setIntegerToDoubleValueConversionRatio(D)V

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 79
    throw v0
.end method

.method setNormalizingIndexOffset(I)V
    .locals 6
    .param p1, "normalizingIndexOffset"    # I

    .line 202
    nop

    .line 203
    invoke-virtual {p0}, Lorg/HdrHistogram/ConcurrentHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v4

    .line 202
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/ConcurrentHistogram;->setNormalizingIndexOffset(IIZD)V

    .line 204
    return-void
.end method

.method setTotalCount(J)V
    .locals 1
    .param p1, "totalCount"    # J

    .line 471
    sget-object v0, Lorg/HdrHistogram/ConcurrentHistogram;->totalCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 472
    return-void
.end method

.method shiftNormalizingIndexByOffset(IZD)V
    .locals 7
    .param p1, "offsetToAdd"    # I
    .param p2, "lowestHalfBucketPopulated"    # Z
    .param p3, "newIntegerToDoubleValueConversionRatio"    # D

    .line 318
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 319
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->activeCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 320
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->countsArrayLength:I

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->inactiveCounts:Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;

    invoke-interface {v1}, Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lorg/HdrHistogram/ConcurrentHistogram;->getNormalizingIndexOffset()I

    move-result v0

    add-int/2addr v0, p1

    .line 322
    .local v0, "newNormalizingIndexOffset":I
    move-object v1, p0

    move v2, v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/ConcurrentHistogram;->setNormalizingIndexOffset(IIZD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v0    # "newNormalizingIndexOffset":I
    iget-object v0, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 329
    nop

    .line 330
    return-void

    .line 320
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "offsetToAdd":I
    .end local p2    # "lowestHalfBucketPopulated":Z
    .end local p3    # "newIntegerToDoubleValueConversionRatio":D
    throw v0

    .line 319
    .restart local p1    # "offsetToAdd":I
    .restart local p2    # "lowestHalfBucketPopulated":Z
    .restart local p3    # "newIntegerToDoubleValueConversionRatio":D
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "offsetToAdd":I
    .end local p2    # "lowestHalfBucketPopulated":Z
    .end local p3    # "newIntegerToDoubleValueConversionRatio":D
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .restart local p1    # "offsetToAdd":I
    .restart local p2    # "lowestHalfBucketPopulated":Z
    .restart local p3    # "newIntegerToDoubleValueConversionRatio":D
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/ConcurrentHistogram;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 329
    throw v0
.end method
