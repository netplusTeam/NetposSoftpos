.class final Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.super Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava9/util/stream/SpinedBuffer$OfDouble;",
        ">;",
        "Ljava9/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 453
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V

    .line 454
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 447
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V

    .line 448
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 440
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 485
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 486
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->init()V

    .line 489
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/DoubleConsumer;)V

    iget-object v2, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 3

    .line 463
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 464
    .local v0, "b":Ljava9/util/stream/SpinedBuffer$OfDouble;
    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    .line 465
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava9/util/stream/SpinedBuffer$OfDouble;)V

    invoke-virtual {v1, v2}, Ljava9/util/stream/PipelineHelper;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljava9/util/stream/Sink;

    .line 466
    new-instance v1, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V

    iput-object v1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->pusher:Ljava9/util/function/BooleanSupplier;

    .line 467
    return-void
.end method

.method synthetic lambda$initPartialTraversalState$64$java9-util-stream-StreamSpliterators$DoubleWrappingSpliterator()Z
    .locals 2

    .line 466
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljava9/util/Spliterator;

    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljava9/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 440
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 476
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 478
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava9/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava9/util/stream/SpinedBuffer$OfDouble;->get(J)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 480
    :cond_0
    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 471
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 440
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 440
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method wrap(Ljava9/util/Spliterator;)Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;",
            "Ljava/lang/Double;",
            "*>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V

    return-object v0
.end method
