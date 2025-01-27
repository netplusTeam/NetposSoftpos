.class public interface abstract Ljava9/util/stream/Sink$OfInt;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava9/util/stream/Sink;
.implements Ljava9/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Sink<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava9/util/function/IntConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(I)V
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "i"    # Ljava/lang/Integer;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava9/util/stream/Sink$OfInt;->accept(I)V

    .line 196
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava9/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method
