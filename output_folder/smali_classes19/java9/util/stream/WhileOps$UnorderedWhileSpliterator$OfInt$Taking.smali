.class final Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 854
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    .line 855
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava9/util/function/IntPredicate;

    .line 850
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V

    .line 851
    return-void
.end method


# virtual methods
.method makeSpliterator(Ljava9/util/Spliterator$OfInt;)Ljava9/util/Spliterator$OfInt;
    .locals 1
    .param p1, "s"    # Ljava9/util/Spliterator$OfInt;

    .line 886
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 0

    .line 848
    check-cast p1, Ljava9/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->makeSpliterator(Ljava9/util/Spliterator$OfInt;)Ljava9/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 848
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava9/util/function/IntConsumer;

    .line 859
    const/4 v0, 0x1

    .line 860
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->s:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfInt;

    .line 862
    invoke-interface {v1, p0}, Ljava9/util/Spliterator$OfInt;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->p:Ljava9/util/function/IntPredicate;

    iget v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    .line 863
    invoke-interface {v1, v3}, Ljava9/util/function/IntPredicate;->test(I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 864
    iget v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    invoke-interface {p1, v1}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 865
    return v2

    .line 869
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    .line 872
    if-nez v0, :cond_1

    .line 873
    iget-object v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 874
    :cond_1
    return v1
.end method

.method public trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 881
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 848
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 848
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
