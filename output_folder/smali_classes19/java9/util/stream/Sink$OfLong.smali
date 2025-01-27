.class public interface abstract Ljava9/util/stream/Sink$OfLong;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava9/util/stream/Sink;
.implements Ljava9/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Sink<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava9/util/function/LongConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 2
    .param p1, "i"    # Ljava/lang/Long;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava9/util/stream/Sink$OfLong;->accept(J)V

    .line 211
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljava9/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method
