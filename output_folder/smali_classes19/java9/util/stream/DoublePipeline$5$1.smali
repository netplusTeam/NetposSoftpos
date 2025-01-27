.class Ljava9/util/stream/DoublePipeline$5$1;
.super Ljava9/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/DoublePipeline$5;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequested:Z

.field downstreamAsDouble:Ljava9/util/function/DoubleConsumer;

.field final synthetic this$1:Ljava9/util/stream/DoublePipeline$5;


# direct methods
.method constructor <init>(Ljava9/util/stream/DoublePipeline$5;Ljava9/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Ljava9/util/stream/DoublePipeline$5;

    .line 260
    .local p0, "this":Ljava9/util/stream/DoublePipeline$5$1;, "Ljava9/util/stream/DoublePipeline$5$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava9/util/stream/DoublePipeline$5$1;->this$1:Ljava9/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedDouble;-><init>(Ljava9/util/stream/Sink;)V

    .line 265
    iget-object v0, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstream:Ljava9/util/stream/Sink;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda4;-><init>(Ljava9/util/stream/Sink;)V

    iput-object v1, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava9/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 274
    .local p0, "this":Ljava9/util/stream/DoublePipeline$5$1;, "Ljava9/util/stream/DoublePipeline$5$1;"
    const/4 v0, 0x0

    .line 276
    .local v0, "result":Ljava9/util/stream/DoubleStream;
    :try_start_0
    iget-object v1, p0, Ljava9/util/stream/DoublePipeline$5$1;->this$1:Ljava9/util/stream/DoublePipeline$5;

    iget-object v1, v1, Ljava9/util/stream/DoublePipeline$5;->val$mapper:Ljava9/util/function/DoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava9/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/DoubleStream;

    move-object v0, v1

    .line 277
    if-eqz v0, :cond_2

    .line 278
    iget-boolean v1, p0, Ljava9/util/stream/DoublePipeline$5$1;->cancellationRequested:Z

    if-nez v1, :cond_0

    .line 279
    invoke-interface {v0}, Ljava9/util/stream/DoubleStream;->sequential()Ljava9/util/stream/DoubleStream;

    move-result-object v1

    iget-object v2, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava9/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Ljava9/util/stream/DoubleStream;->forEach(Ljava9/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-interface {v0}, Ljava9/util/stream/DoubleStream;->sequential()Ljava9/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava9/util/stream/DoubleStream;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v1

    .line 283
    .local v1, "s":Ljava9/util/Spliterator$OfDouble;
    :cond_1
    iget-object v2, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v2}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava9/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 287
    .end local v1    # "s":Ljava9/util/Spliterator$OfDouble;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 288
    invoke-interface {v0}, Ljava9/util/stream/DoubleStream;->close()V

    .line 291
    :cond_3
    return-void

    .line 287
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 288
    invoke-interface {v0}, Ljava9/util/stream/DoubleStream;->close()V

    :cond_4
    throw v1
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 269
    .local p0, "this":Ljava9/util/stream/DoublePipeline$5$1;, "Ljava9/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 270
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 299
    .local p0, "this":Ljava9/util/stream/DoublePipeline$5$1;, "Ljava9/util/stream/DoublePipeline$5$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/DoublePipeline$5$1;->cancellationRequested:Z

    .line 300
    iget-object v0, p0, Ljava9/util/stream/DoublePipeline$5$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
