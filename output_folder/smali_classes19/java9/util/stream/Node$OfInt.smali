.class public interface abstract Ljava9/util/stream/Node$OfInt;
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
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava9/util/function/IntConsumer;",
        "[I",
        "Ljava9/util/Spliterator$OfInt;",
        "Ljava9/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$truncate$58(I)V
    .locals 0
    .param p0, "e"    # I

    .line 357
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Integer;I)V
    .locals 4
    .param p1, "boxed"    # [Ljava/lang/Integer;
    .param p2, "offset"    # I

    .line 343
    invoke-interface {p0}, Ljava9/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 344
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 345
    add-int v2, p2, v1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 313
    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava9/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public forEach(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava9/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 326
    move-object v0, p1

    check-cast v0, Ljava9/util/function/IntConsumer;

    invoke-interface {p0, v0}, Ljava9/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-interface {p0}, Ljava9/util/stream/Node$OfInt;->spliterator()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfInt;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 331
    :goto_0
    return-void
.end method

.method public getShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 378
    sget-object v0, Ljava9/util/stream/StreamShape;->INT_VALUE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 313
    invoke-interface {p0, p1}, Ljava9/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 1
    .param p1, "count"    # I

    .line 369
    new-array v0, p1, [I

    return-object v0
.end method

.method public truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfInt;
    .locals 7
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava9/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 351
    .local p5, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava9/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 352
    return-object p0

    .line 353
    :cond_0
    sub-long v0, p3, p1

    .line 354
    .local v0, "size":J
    invoke-interface {p0}, Ljava9/util/stream/Node$OfInt;->spliterator()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljava9/util/Spliterator$OfInt;

    .line 355
    .local v2, "spliterator":Ljava9/util/Spliterator$OfInt;
    invoke-static {v0, v1}, Ljava9/util/stream/Nodes;->intBuilder(J)Ljava9/util/stream/Node$Builder$OfInt;

    move-result-object v3

    .line 356
    .local v3, "nodeBuilder":Ljava9/util/stream/Node$Builder$OfInt;
    invoke-interface {v3, v0, v1}, Ljava9/util/stream/Node$Builder$OfInt;->begin(J)V

    .line 357
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    new-instance v5, Ljava9/util/stream/Node$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava9/util/stream/Node$OfInt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava9/util/Spliterator$OfInt;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava9/util/stream/Node$OfInt;->count()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_2

    .line 359
    invoke-interface {v2, v3}, Ljava9/util/Spliterator$OfInt;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    goto :goto_2

    .line 361
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_3

    invoke-interface {v2, v3}, Ljava9/util/Spliterator$OfInt;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 363
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava9/util/stream/Node$Builder$OfInt;->end()V

    .line 364
    invoke-interface {v3}, Ljava9/util/stream/Node$Builder$OfInt;->build()Ljava9/util/stream/Node$OfInt;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfPrimitive;
    .locals 0

    .line 313
    invoke-interface/range {p0 .. p5}, Ljava9/util/stream/Node$OfInt;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 0

    .line 313
    invoke-interface/range {p0 .. p5}, Ljava9/util/stream/Node$OfInt;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
