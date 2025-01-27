.class public Lorg/jpos/core/IgnoreLuhnCardValidator;
.super Lorg/jpos/core/DefaultCardValidator;
.source "IgnoreLuhnCardValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/jpos/core/DefaultCardValidator;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/core/IgnoreLuhnCardValidator;->setLuhnCalculator(Lorg/jpos/core/LUHNCalculator;)V

    .line 25
    return-void
.end method
