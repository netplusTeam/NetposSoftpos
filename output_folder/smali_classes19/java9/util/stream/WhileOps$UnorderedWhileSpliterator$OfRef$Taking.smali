.class final Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;",
            "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<",
            "TT;>;)V"
        }
    .end annotation

    .line 749
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    .line 750
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator;ZLjava9/util/function/Predicate;)V
    .locals 0
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;Z",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 745
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    .local p3, "p":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;ZLjava9/util/function/Predicate;)V

    .line 746
    return-void
.end method


# virtual methods
.method makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 781
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V

    return-object v0
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 754
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    const/4 v0, 0x1

    .line 755
    .local v0, "test":Z
    iget-boolean v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->s:Ljava9/util/Spliterator;

    .line 757
    invoke-interface {v1, p0}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->p:Ljava9/util/function/Predicate;

    iget-object v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    .line 758
    invoke-interface {v1, v3}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 760
    return v2

    .line 764
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    .line 767
    if-nez v0, :cond_1

    .line 768
    iget-object v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 769
    :cond_1
    return v1
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 776
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method
