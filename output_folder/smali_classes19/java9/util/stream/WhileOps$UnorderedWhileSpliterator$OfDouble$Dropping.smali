.class final Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfDouble;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1106
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava9/util/Spliterator$OfDouble;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    .line 1107
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfDouble;ZLjava9/util/function/DoublePredicate;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava9/util/function/DoublePredicate;

    .line 1102
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava9/util/Spliterator$OfDouble;ZLjava9/util/function/DoublePredicate;)V

    .line 1103
    return-void
.end method


# virtual methods
.method makeSpliterator(Ljava9/util/Spliterator$OfDouble;)Ljava9/util/Spliterator$OfDouble;
    .locals 1
    .param p1, "s"    # Ljava9/util/Spliterator$OfDouble;

    .line 1138
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava9/util/Spliterator$OfDouble;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 0

    .line 1100
    check-cast p1, Ljava9/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->makeSpliterator(Ljava9/util/Spliterator$OfDouble;)Ljava9/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1100
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 5
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 1111
    iget-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, "dropped":Z
    :goto_0
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfDouble;

    invoke-interface {v1, p0}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_0

    .line 1116
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->p:Ljava9/util/function/DoublePredicate;

    iget-wide v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    .line 1117
    invoke-interface {v1, v3, v4}, Ljava9/util/function/DoublePredicate;->test(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    const/4 v0, 0x1

    goto :goto_0

    .line 1122
    :cond_0
    if-eqz v2, :cond_2

    .line 1125
    if-eqz v0, :cond_1

    .line 1126
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1127
    :cond_1
    iget-wide v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    invoke-interface {p1, v3, v4}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 1129
    :cond_2
    return v2

    .line 1132
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_3
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 1100
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1100
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
