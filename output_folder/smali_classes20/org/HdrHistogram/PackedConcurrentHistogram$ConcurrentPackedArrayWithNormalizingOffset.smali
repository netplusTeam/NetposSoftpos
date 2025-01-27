.class Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;
.super Ljava/lang/Object;
.source "PackedConcurrentHistogram.java"

# interfaces
.implements Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/PackedConcurrentHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcurrentPackedArrayWithNormalizingOffset"
.end annotation


# instance fields
.field private doubleToIntegerValueConversionRatio:D

.field private normalizingIndexOffset:I

.field private packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "normalizingIndexOffset"    # I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-direct {v0, p1}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;-><init>(I)V

    iput-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    .line 260
    iput p2, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->normalizingIndexOffset:I

    .line 261
    return-void
.end method


# virtual methods
.method public atomicAdd(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "valueToAdd"    # J

    .line 291
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {v0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->add(IJ)V

    .line 292
    return-void
.end method

.method public atomicIncrement(I)V
    .locals 1
    .param p1, "index"    # I

    .line 286
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->increment(I)V

    .line 287
    return-void
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    .line 281
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleToIntegerValueConversionRatio()D
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->doubleToIntegerValueConversionRatio:D

    return-wide v0
.end method

.method public getEstimatedFootprintInBytes()I
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getPhysicalLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public getNormalizingIndexOffset()I
    .locals 1

    .line 264
    iget v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->normalizingIndexOffset:I

    return v0
.end method

.method public lazySet(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newValue"    # J

    .line 296
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {v0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->set(IJ)V

    .line 297
    return-void
.end method

.method public length()I
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->packedCounts:Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->length()I

    move-result v0

    return v0
.end method

.method public setDoubleToIntegerValueConversionRatio(D)V
    .locals 0
    .param p1, "doubleToIntegerValueConversionRatio"    # D

    .line 276
    iput-wide p1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->doubleToIntegerValueConversionRatio:D

    .line 277
    return-void
.end method

.method public setNormalizingIndexOffset(I)V
    .locals 0
    .param p1, "normalizingIndexOffset"    # I

    .line 268
    iput p1, p0, Lorg/HdrHistogram/PackedConcurrentHistogram$ConcurrentPackedArrayWithNormalizingOffset;->normalizingIndexOffset:I

    .line 269
    return-void
.end method
