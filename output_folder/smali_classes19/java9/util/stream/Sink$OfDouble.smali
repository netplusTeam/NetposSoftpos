.class public interface abstract Ljava9/util/stream/Sink$OfDouble;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava9/util/stream/Sink;
.implements Ljava9/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Sink<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava9/util/function/DoubleConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 2
    .param p1, "i"    # Ljava/lang/Double;

    .line 225
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava9/util/stream/Sink$OfDouble;->accept(D)V

    .line 226
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Ljava9/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method
