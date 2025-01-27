.class public interface abstract Lcom/sleepycat/je/evictor/OffHeapAllocator;
.super Ljava/lang/Object;
.source "OffHeapAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/evictor/OffHeapAllocator$OffHeapOverflowException;
    }
.end annotation


# virtual methods
.method public abstract allocate(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Lcom/sleepycat/je/evictor/OffHeapAllocator$OffHeapOverflowException;
        }
    .end annotation
.end method

.method public abstract copy(JIJII)V
.end method

.method public abstract copy(JI[BII)V
.end method

.method public abstract copy([BIJII)V
.end method

.method public abstract free(J)I
.end method

.method public abstract getUsedBytes()J
.end method

.method public abstract setMaxBytes(J)V
.end method

.method public abstract size(J)I
.end method

.method public abstract totalSize(J)I
.end method
