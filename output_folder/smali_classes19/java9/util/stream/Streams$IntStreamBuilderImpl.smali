.class final Ljava9/util/stream/Streams$IntStreamBuilderImpl;
.super Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava9/util/stream/IntStream$Builder;
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Integer;",
        "Ljava9/util/Spliterator$OfInt;",
        ">;",
        "Ljava9/util/stream/IntStream$Builder;",
        "Ljava9/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field buffer:Ljava9/util/stream/SpinedBuffer$OfInt;

.field first:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava9/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "t"    # I

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava9/util/stream/Streams$1;)V

    .line 434
    iput p1, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 435
    const/4 v0, -0x2

    iput v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 436
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .line 442
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 443
    iput p1, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 444
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    goto :goto_0

    .line 446
    :cond_0
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 447
    iget-object v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfInt;

    if-nez v0, :cond_1

    .line 448
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfInt;

    .line 449
    iget v1, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-virtual {v0, v1}, Ljava9/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 450
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 453
    :cond_1
    iget-object v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava9/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public build()Ljava9/util/stream/IntStream;
    .locals 3

    .line 462
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 463
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 465
    iget v1, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 468
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v1}, Ljava9/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    invoke-static {v1, v2}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 471
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 412
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava9/util/function/IntConsumer;

    .line 494
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 497
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 500
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 412
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava9/util/function/IntConsumer;

    .line 480
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 483
    iget v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 484
    const/4 v0, -0x1

    iput v0, p0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 485
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 412
    invoke-super {p0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 412
    invoke-super {p0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
