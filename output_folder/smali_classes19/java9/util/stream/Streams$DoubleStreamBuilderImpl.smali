.class final Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;
.super Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava9/util/stream/DoubleStream$Builder;
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Double;",
        "Ljava9/util/Spliterator$OfDouble;",
        ">;",
        "Ljava9/util/stream/DoubleStream$Builder;",
        "Ljava9/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field buffer:Ljava9/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .locals 1

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava9/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(D)V
    .locals 1
    .param p1, "t"    # D

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava9/util/stream/Streams$1;)V

    .line 622
    iput-wide p1, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 623
    const/4 v0, -0x2

    iput v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 624
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 630
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 631
    iput-wide p1, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 632
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    goto :goto_0

    .line 634
    :cond_0
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 635
    iget-object v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfDouble;

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfDouble;

    .line 637
    iget-wide v1, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-virtual {v0, v1, v2}, Ljava9/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 638
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 641
    :cond_1
    iget-object v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public build()Ljava9/util/stream/DoubleStream;
    .locals 3

    .line 650
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 651
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 653
    iget v1, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 656
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v1}, Ljava9/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-static {v1, v2}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 659
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 600
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 682
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 685
    iget-wide v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 686
    const/4 v0, -0x1

    iput v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 688
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 600
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 668
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 671
    iget-wide v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 672
    const/4 v0, -0x1

    iput v0, p0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 673
    const/4 v0, 0x1

    return v0

    .line 676
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 600
    invoke-super {p0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 600
    invoke-super {p0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
