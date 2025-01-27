.class final Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfLong;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfLong;
    .param p2, "parent"    # Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;

    .line 964
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava9/util/Spliterator$OfLong;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    .line 965
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfLong;ZLjava9/util/function/LongPredicate;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfLong;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava9/util/function/LongPredicate;

    .line 960
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava9/util/Spliterator$OfLong;ZLjava9/util/function/LongPredicate;)V

    .line 961
    return-void
.end method


# virtual methods
.method makeSpliterator(Ljava9/util/Spliterator$OfLong;)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .param p1, "s"    # Ljava9/util/Spliterator$OfLong;

    .line 996
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljava9/util/Spliterator$OfLong;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 0

    .line 958
    check-cast p1, Ljava9/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->makeSpliterator(Ljava9/util/Spliterator$OfLong;)Ljava9/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 958
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 5
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 969
    const/4 v0, 0x1

    .line 970
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 971
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->s:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfLong;

    .line 972
    invoke-interface {v1, p0}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->p:Ljava9/util/function/LongPredicate;

    iget-wide v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->t:J

    .line 973
    invoke-interface {v1, v3, v4}, Ljava9/util/function/LongPredicate;->test(J)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 974
    iget-wide v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->t:J

    invoke-interface {p1, v3, v4}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 975
    return v2

    .line 979
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->takeOrDrop:Z

    .line 982
    if-nez v0, :cond_1

    .line 983
    iget-object v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 984
    :cond_1
    return v1
.end method

.method public trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 991
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfLong;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 958
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 958
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
