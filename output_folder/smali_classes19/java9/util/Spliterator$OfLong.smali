.class public interface abstract Ljava9/util/Spliterator$OfLong;
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
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava9/util/function/LongConsumer;",
        "Ljava9/util/Spliterator$OfLong;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 716
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfLong;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 761
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava9/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 762
    move-object v0, p1

    check-cast v0, Ljava9/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfLong;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    goto :goto_0

    .line 765
    :cond_0
    invoke-static {p1}, Ljava9/util/RefConsumer;->toLongConsumer(Ljava9/util/function/Consumer;)Ljava9/util/function/LongConsumer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfLong;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    .line 767
    :goto_0
    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 726
    :goto_0
    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    return-void

    .line 726
    :cond_0
    goto :goto_0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 716
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

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
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 741
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava9/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 742
    move-object v0, p1

    check-cast v0, Ljava9/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v0

    return v0

    .line 745
    :cond_0
    invoke-static {p1}, Ljava9/util/RefConsumer;->toLongConsumer(Ljava9/util/function/Consumer;)Ljava9/util/function/LongConsumer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public abstract tryAdvance(Ljava9/util/function/LongConsumer;)Z
.end method

.method public abstract trySplit()Ljava9/util/Spliterator$OfLong;
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 716
    invoke-interface {p0}, Ljava9/util/Spliterator$OfLong;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 716
    invoke-interface {p0}, Ljava9/util/Spliterator$OfLong;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
