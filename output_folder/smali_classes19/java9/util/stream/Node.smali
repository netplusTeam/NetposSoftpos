.class interface abstract Ljava9/util/stream/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Node$OfDouble;,
        Ljava9/util/stream/Node$OfLong;,
        Ljava9/util/stream/Node$OfInt;,
        Ljava9/util/stream/Node$OfPrimitive;,
        Ljava9/util/stream/Node$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$truncate$57(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    .line 127
    return-void
.end method


# virtual methods
.method public abstract asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract copyInto([Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract forEach(Ljava9/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public getChild(I)Ljava9/util/stream/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .line 89
    .local p0, "this":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 178
    .local p0, "this":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->REFERENCE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract spliterator()Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 7
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    .local p5, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava9/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 122
    return-object p0

    .line 123
    :cond_0
    invoke-interface {p0}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    .line 124
    .local v0, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    sub-long v1, p3, p1

    .line 125
    .local v1, "size":J
    invoke-static {v1, v2, p5}, Ljava9/util/stream/Nodes;->builder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;

    move-result-object v3

    .line 126
    .local v3, "nodeBuilder":Ljava9/util/stream/Node$Builder;, "Ljava9/util/stream/Node$Builder<TT;>;"
    invoke-interface {v3, v1, v2}, Ljava9/util/stream/Node$Builder;->begin(J)V

    .line 127
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    new-instance v5, Ljava9/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava9/util/stream/Node$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v5}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava9/util/stream/Node;->count()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_2

    .line 129
    invoke-interface {v0, v3}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    goto :goto_2

    .line 131
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    int-to-long v5, v4

    cmp-long v5, v5, v1

    if-gez v5, :cond_3

    invoke-interface {v0, v3}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava9/util/stream/Node$Builder;->end()V

    .line 134
    invoke-interface {v3}, Ljava9/util/stream/Node$Builder;->build()Ljava9/util/stream/Node;

    move-result-object v4

    return-object v4
.end method
