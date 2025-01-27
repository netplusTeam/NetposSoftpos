.class public interface abstract Lorg/HdrHistogram/ValueRecorder;
.super Ljava/lang/Object;
.source "ValueRecorder.java"


# virtual methods
.method public abstract recordValue(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract recordValueWithCount(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract recordValueWithExpectedInterval(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
