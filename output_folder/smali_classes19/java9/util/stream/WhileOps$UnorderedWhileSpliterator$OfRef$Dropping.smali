.class final Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
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
.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;",
            "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<",
            "TT;>;)V"
        }
    .end annotation

    .line 791
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    .line 792
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

    .line 787
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    .local p3, "p":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;ZLjava9/util/function/Predicate;)V

    .line 788
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

    .line 823
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V

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

    .line 796
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "dropped":Z
    :goto_0
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Ljava9/util/Spliterator;

    invoke-interface {v1, p0}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->p:Ljava9/util/function/Predicate;

    iget-object v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    .line 802
    invoke-interface {v1, v3}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const/4 v0, 0x1

    goto :goto_0

    .line 807
    :cond_0
    if-eqz v2, :cond_2

    .line 810
    if-eqz v0, :cond_1

    .line 811
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 812
    :cond_1
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 814
    :cond_2
    return v2

    .line 817
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_3
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
