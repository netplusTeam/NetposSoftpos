.class public interface abstract Lorg/jpos/core/LUHNCalculator;
.super Ljava/lang/Object;
.source "LUHNCalculator.java"


# virtual methods
.method public abstract calculate(Ljava/lang/String;)C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation
.end method
