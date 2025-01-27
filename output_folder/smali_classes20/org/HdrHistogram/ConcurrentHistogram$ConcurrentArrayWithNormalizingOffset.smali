.class interface abstract Lorg/HdrHistogram/ConcurrentHistogram$ConcurrentArrayWithNormalizingOffset;
.super Ljava/lang/Object;
.source "ConcurrentHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/ConcurrentHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ConcurrentArrayWithNormalizingOffset"
.end annotation


# virtual methods
.method public abstract atomicAdd(IJ)V
.end method

.method public abstract atomicIncrement(I)V
.end method

.method public abstract get(I)J
.end method

.method public abstract getDoubleToIntegerValueConversionRatio()D
.end method

.method public abstract getEstimatedFootprintInBytes()I
.end method

.method public abstract getNormalizingIndexOffset()I
.end method

.method public abstract lazySet(IJ)V
.end method

.method public abstract length()I
.end method

.method public abstract setDoubleToIntegerValueConversionRatio(D)V
.end method

.method public abstract setNormalizingIndexOffset(I)V
.end method
