.class Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;
.super Ljava/util/concurrent/atomic/AtomicLongArray;
.source "ConcurrentHistogram.java"

# interfaces
.implements Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/ConcurrentHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AtomicLongArrayWithNormalizingOffset"
.end annotation


# instance fields
.field private doubleToIntegerValueConversionRatio:D

.field private normalizingIndexOffset:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "normalizingIndexOffset"    # I

    .line 651
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 652
    iput p2, p0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->normalizingIndexOffset:I

    .line 653
    return-void
.end method


# virtual methods
.method public atomicAdd(IJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "valueToAdd"    # J

    .line 687
    invoke-virtual {p0, p1, p2, p3}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->addAndGet(IJ)J

    .line 688
    return-void
.end method

.method public atomicIncrement(I)V
    .locals 0
    .param p1, "index"    # I

    .line 682
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->incrementAndGet(I)J

    .line 683
    return-void
.end method

.method public getDoubleToIntegerValueConversionRatio()D
    .locals 2

    .line 667
    iget-wide v0, p0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->doubleToIntegerValueConversionRatio:D

    return-wide v0
.end method

.method public getEstimatedFootprintInBytes()I
    .locals 1

    .line 677
    invoke-virtual {p0}, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getNormalizingIndexOffset()I
    .locals 1

    .line 657
    iget v0, p0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->normalizingIndexOffset:I

    return v0
.end method

.method public setDoubleToIntegerValueConversionRatio(D)V
    .locals 0
    .param p1, "doubleToIntegerValueConversionRatio"    # D

    .line 672
    iput-wide p1, p0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->doubleToIntegerValueConversionRatio:D

    .line 673
    return-void
.end method

.method public setNormalizingIndexOffset(I)V
    .locals 0
    .param p1, "normalizingIndexOffset"    # I

    .line 662
    iput p1, p0, Lorg/HdrHistogram/ConcurrentHistogram$AtomicLongArrayWithNormalizingOffset;->normalizingIndexOffset:I

    .line 663
    return-void
.end method
