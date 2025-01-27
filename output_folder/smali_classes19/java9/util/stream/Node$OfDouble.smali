.class public interface abstract Ljava9/util/stream/Node$OfDouble;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava9/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava9/util/function/DoubleConsumer;",
        "[D",
        "Ljava9/util/Spliterator$OfDouble;",
        "Ljava9/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$truncate$60(D)V
    .locals 0
    .param p0, "e"    # D

    .line 503
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Double;I)V
    .locals 5
    .param p1, "boxed"    # [Ljava/lang/Double;
    .param p2, "offset"    # I

    .line 489
    invoke-interface {p0}, Ljava9/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 490
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 491
    add-int v2, p2, v1

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v2

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 457
    check-cast p1, [Ljava/lang/Double;

    invoke-interface {p0, p1, p2}, Ljava9/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public forEach(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 469
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava9/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 470
    move-object v0, p1

    check-cast v0, Ljava9/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava9/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-interface {p0}, Ljava9/util/stream/Node$OfDouble;->spliterator()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfDouble;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 475
    :goto_0
    return-void
.end method

.method public getShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 525
    sget-object v0, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 457
    invoke-interface {p0, p1}, Ljava9/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[D
    .locals 1
    .param p1, "count"    # I

    .line 515
    new-array v0, p1, [D

    return-object v0
.end method

.method public truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfDouble;
    .locals 7
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Node$OfDouble;"
        }
    .end annotation

    .line 497
    .local p5, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava9/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 498
    return-object p0

    .line 499
    :cond_0
    sub-long v0, p3, p1

    .line 500
    .local v0, "size":J
    invoke-interface {p0}, Ljava9/util/stream/Node$OfDouble;->spliterator()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljava9/util/Spliterator$OfDouble;

    .line 501
    .local v2, "spliterator":Ljava9/util/Spliterator$OfDouble;
    invoke-static {v0, v1}, Ljava9/util/stream/Nodes;->doubleBuilder(J)Ljava9/util/stream/Node$Builder$OfDouble;

    move-result-object v3

    .line 502
    .local v3, "nodeBuilder":Ljava9/util/stream/Node$Builder$OfDouble;
    invoke-interface {v3, v0, v1}, Ljava9/util/stream/Node$Builder$OfDouble;->begin(J)V

    .line 503
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    new-instance v5, Ljava9/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava9/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava9/util/stream/Node$OfDouble;->count()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_2

    .line 505
    invoke-interface {v2, v3}, Ljava9/util/Spliterator$OfDouble;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    goto :goto_2

    .line 507
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_3

    invoke-interface {v2, v3}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 509
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava9/util/stream/Node$Builder$OfDouble;->end()V

    .line 510
    invoke-interface {v3}, Ljava9/util/stream/Node$Builder$OfDouble;->build()Ljava9/util/stream/Node$OfDouble;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfPrimitive;
    .locals 0

    .line 457
    invoke-interface/range {p0 .. p5}, Ljava9/util/stream/Node$OfDouble;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 0

    .line 457
    invoke-interface/range {p0 .. p5}, Ljava9/util/stream/Node$OfDouble;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
