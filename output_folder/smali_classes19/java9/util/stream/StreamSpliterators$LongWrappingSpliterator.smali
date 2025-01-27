.class final Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;
.super Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava9/util/stream/SpinedBuffer$OfLong;",
        ">;",
        "Ljava9/util/Spliterator$OfLong;"
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
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 395
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V

    .line 396
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 389
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V

    .line 390
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 382
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 427
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 428
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->init()V

    .line 431
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/LongConsumer;)V

    iget-object v2, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 3

    .line 405
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 406
    .local v0, "b":Ljava9/util/stream/SpinedBuffer$OfLong;
    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    .line 407
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava9/util/stream/SpinedBuffer$OfLong;)V

    invoke-virtual {v1, v2}, Ljava9/util/stream/PipelineHelper;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Ljava9/util/stream/Sink;

    .line 408
    new-instance v1, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;)V

    iput-object v1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->pusher:Ljava9/util/function/BooleanSupplier;

    .line 409
    return-void
.end method

.method synthetic lambda$initPartialTraversalState$63$java9-util-stream-StreamSpliterators$LongWrappingSpliterator()Z
    .locals 2

    .line 408
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Ljava9/util/Spliterator;

    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Ljava9/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 382
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 418
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 420
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava9/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava9/util/stream/SpinedBuffer$OfLong;

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava9/util/stream/SpinedBuffer$OfLong;->get(J)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 422
    :cond_0
    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 413
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 382
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 382
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava9/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            "*>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;

    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava9/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)V

    return-object v0
.end method
