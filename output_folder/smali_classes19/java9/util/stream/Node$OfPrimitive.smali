.class public interface abstract Ljava9/util/stream/Node$OfPrimitive;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava9/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Node;
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
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava9/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 267
    .local p0, "this":Ljava9/util/stream/Node$OfPrimitive;, "Ljava9/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    invoke-interface {p0}, Ljava9/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v0

    .line 268
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 270
    invoke-interface {p0}, Ljava9/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1, v2}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 271
    .local v2, "boxed":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Ljava9/util/stream/Node$OfPrimitive;->copyInto([Ljava/lang/Object;I)V

    .line 272
    return-object v2

    .line 269
    .end local v2    # "boxed":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract asPrimitiveArray()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation
.end method

.method public abstract copyInto(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method public getChild(I)Ljava9/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    .line 252
    .local p0, "this":Ljava9/util/stream/Node$OfPrimitive;, "Ljava9/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getChild(I)Ljava9/util/stream/Node;
    .locals 0

    .line 227
    .local p0, "this":Ljava9/util/stream/Node$OfPrimitive;, "Ljava9/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface {p0, p1}, Ljava9/util/stream/Node$OfPrimitive;->getChild(I)Ljava9/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method public abstract spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 227
    .local p0, "this":Ljava9/util/stream/Node$OfPrimitive;, "Ljava9/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface {p0}, Ljava9/util/stream/Node$OfPrimitive;->spliterator()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)TT_NODE;"
        }
    .end annotation
.end method

.method public bridge synthetic truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 0

    .line 227
    .local p0, "this":Ljava9/util/stream/Node$OfPrimitive;, "Ljava9/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface/range {p0 .. p5}, Ljava9/util/stream/Node$OfPrimitive;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method
