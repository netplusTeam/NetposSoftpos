.class public interface abstract Ljava9/util/Spliterator$OfDouble;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava9/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava9/util/function/DoubleConsumer;",
        "Ljava9/util/Spliterator$OfDouble;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 774
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfDouble;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava9/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 821
    move-object v0, p1

    check-cast v0, Ljava9/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfDouble;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 824
    :cond_0
    invoke-static {p1}, Ljava9/util/RefConsumer;->toDoubleConsumer(Ljava9/util/function/Consumer;)Ljava9/util/function/DoubleConsumer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfDouble;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    .line 826
    :goto_0
    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 784
    :goto_0
    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    return-void

    .line 784
    :cond_0
    goto :goto_0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 774
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 799
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava9/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 800
    move-object v0, p1

    check-cast v0, Ljava9/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v0

    return v0

    .line 803
    :cond_0
    invoke-static {p1}, Ljava9/util/RefConsumer;->toDoubleConsumer(Ljava9/util/function/Consumer;)Ljava9/util/function/DoubleConsumer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public abstract tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
.end method

.method public abstract trySplit()Ljava9/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 774
    invoke-interface {p0}, Ljava9/util/Spliterator$OfDouble;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 774
    invoke-interface {p0}, Ljava9/util/Spliterator$OfDouble;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
