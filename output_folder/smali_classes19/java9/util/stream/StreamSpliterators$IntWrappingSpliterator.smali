.class final Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;
.super Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava9/util/stream/SpinedBuffer$OfInt;",
        ">;",
        "Ljava9/util/Spliterator$OfInt;"
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V

    .line 338
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V

    .line 332
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 324
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 369
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 370
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->init()V

    .line 373
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/IntConsumer;)V

    iget-object v2, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 3

    .line 347
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 348
    .local v0, "b":Ljava9/util/stream/SpinedBuffer$OfInt;
    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    .line 349
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava9/util/stream/SpinedBuffer$OfInt;)V

    invoke-virtual {v1, v2}, Ljava9/util/stream/PipelineHelper;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Ljava9/util/stream/Sink;

    .line 350
    new-instance v1, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;)V

    iput-object v1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->pusher:Ljava9/util/function/BooleanSupplier;

    .line 351
    return-void
.end method

.method synthetic lambda$initPartialTraversalState$62$java9-util-stream-StreamSpliterators$IntWrappingSpliterator()Z
    .locals 2

    .line 350
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Ljava9/util/Spliterator;

    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Ljava9/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 324
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 360
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 362
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava9/util/stream/SpinedBuffer$OfInt;

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava9/util/stream/SpinedBuffer$OfInt;->get(J)I

    move-result v1

    invoke-interface {p1, v1}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 364
    :cond_0
    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 355
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 324
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 324
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V

    return-object v0
.end method
