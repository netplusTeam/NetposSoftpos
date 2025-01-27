.class abstract Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.super Ljava9/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava9/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava9/util/stream/Streams$ConcatSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava9/util/Spliterator$OfPrimitive;Ljava9/util/Spliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 782
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Streams$ConcatSpliterator;-><init>(Ljava9/util/Spliterator;Ljava9/util/Spliterator;)V

    .line 783
    return-void
.end method

.method synthetic constructor <init>(Ljava9/util/Spliterator$OfPrimitive;Ljava9/util/Spliterator$OfPrimitive;Ljava9/util/stream/Streams$1;)V
    .locals 0
    .param p1, "x0"    # Ljava9/util/Spliterator$OfPrimitive;
    .param p2, "x1"    # Ljava9/util/Spliterator$OfPrimitive;
    .param p3, "x2"    # Ljava9/util/stream/Streams$1;

    .line 778
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava9/util/Spliterator$OfPrimitive;Ljava9/util/Spliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 802
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 804
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 805
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 788
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 790
    .local v0, "hasNext":Z
    if-nez v0, :cond_1

    .line 791
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    .line 792
    iget-object v1, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 796
    .end local v0    # "hasNext":Z
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 797
    .restart local v0    # "hasNext":Z
    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 778
    .local p0, "this":Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava9/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-super {p0}, Ljava9/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
