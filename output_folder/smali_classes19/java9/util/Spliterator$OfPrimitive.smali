.class public interface abstract Ljava9/util/Spliterator$OfPrimitive;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
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
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 650
    .local p0, "this":Ljava9/util/Spliterator$OfPrimitive;, "Ljava9/util/Spliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    :goto_0
    invoke-interface {p0, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    return-void

    .line 650
    :cond_0
    goto :goto_0
.end method

.method public abstract tryAdvance(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation
.end method

.method public abstract trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 615
    .local p0, "this":Ljava9/util/Spliterator$OfPrimitive;, "Ljava9/util/Spliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-interface {p0}, Ljava9/util/Spliterator$OfPrimitive;->trySplit()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
