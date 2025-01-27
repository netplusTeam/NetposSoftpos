.class public interface abstract Lorg/HdrHistogram/DoubleValueRecorder;
.super Ljava/lang/Object;
.source "DoubleValueRecorder.java"


# virtual methods
.method public abstract recordValue(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract recordValueWithCount(DJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract recordValueWithExpectedInterval(DD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
