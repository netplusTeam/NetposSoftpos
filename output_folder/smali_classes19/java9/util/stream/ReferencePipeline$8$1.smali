.class Ljava9/util/stream/ReferencePipeline$8$1;
.super Ljava9/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReferencePipeline$8;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequested:Z

.field downstreamAsInt:Ljava9/util/function/IntConsumer;

.field final synthetic this$1:Ljava9/util/stream/ReferencePipeline$8;


# direct methods
.method constructor <init>(Ljava9/util/stream/ReferencePipeline$8;Ljava9/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Ljava9/util/stream/ReferencePipeline$8;

    .line 311
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$8$1;, "Ljava9/util/stream/ReferencePipeline$8$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava9/util/stream/ReferencePipeline$8$1;->this$1:Ljava9/util/stream/ReferencePipeline$8;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedReference;-><init>(Ljava9/util/stream/Sink;)V

    .line 316
    iget-object v0, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstream:Ljava9/util/stream/Sink;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava9/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Ljava9/util/stream/IntPipeline$$ExternalSyntheticLambda8;-><init>(Ljava9/util/stream/Sink;)V

    iput-object v1, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava9/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 325
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$8$1;, "Ljava9/util/stream/ReferencePipeline$8$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    const/4 v0, 0x0

    .line 327
    .local v0, "result":Ljava9/util/stream/IntStream;
    :try_start_0
    iget-object v1, p0, Ljava9/util/stream/ReferencePipeline$8$1;->this$1:Ljava9/util/stream/ReferencePipeline$8;

    iget-object v1, v1, Ljava9/util/stream/ReferencePipeline$8;->val$mapper:Ljava9/util/function/Function;

    invoke-interface {v1, p1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/IntStream;

    move-object v0, v1

    .line 328
    if-eqz v0, :cond_2

    .line 329
    iget-boolean v1, p0, Ljava9/util/stream/ReferencePipeline$8$1;->cancellationRequested:Z

    if-nez v1, :cond_0

    .line 330
    invoke-interface {v0}, Ljava9/util/stream/IntStream;->sequential()Ljava9/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava9/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljava9/util/stream/IntStream;->forEach(Ljava9/util/function/IntConsumer;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-interface {v0}, Ljava9/util/stream/IntStream;->sequential()Ljava9/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    .line 334
    .local v1, "s":Ljava9/util/Spliterator$OfInt;
    :cond_1
    iget-object v2, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v2}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava9/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljava9/util/Spliterator$OfInt;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 338
    .end local v1    # "s":Ljava9/util/Spliterator$OfInt;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 339
    invoke-interface {v0}, Ljava9/util/stream/IntStream;->close()V

    .line 342
    :cond_3
    return-void

    .line 338
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 339
    invoke-interface {v0}, Ljava9/util/stream/IntStream;->close()V

    :cond_4
    throw v1
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 320
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$8$1;, "Ljava9/util/stream/ReferencePipeline$8$1;"
    iget-object v0, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 321
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 346
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$8$1;, "Ljava9/util/stream/ReferencePipeline$8$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/ReferencePipeline$8$1;->cancellationRequested:Z

    .line 347
    iget-object v0, p0, Ljava9/util/stream/ReferencePipeline$8$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
