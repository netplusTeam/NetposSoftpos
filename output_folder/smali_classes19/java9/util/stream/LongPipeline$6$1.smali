.class Ljava9/util/stream/LongPipeline$6$1;
.super Ljava9/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/LongPipeline$6;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequested:Z

.field downstreamAsLong:Ljava9/util/function/LongConsumer;

.field final synthetic this$1:Ljava9/util/stream/LongPipeline$6;


# direct methods
.method constructor <init>(Ljava9/util/stream/LongPipeline$6;Ljava9/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Ljava9/util/stream/LongPipeline$6;

    .line 277
    .local p0, "this":Ljava9/util/stream/LongPipeline$6$1;, "Ljava9/util/stream/LongPipeline$6$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava9/util/stream/LongPipeline$6$1;->this$1:Ljava9/util/stream/LongPipeline$6;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedLong;-><init>(Ljava9/util/stream/Sink;)V

    .line 282
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$6$1;->downstream:Ljava9/util/stream/Sink;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda11;-><init>(Ljava9/util/stream/Sink;)V

    iput-object v1, p0, Ljava9/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava9/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 291
    .local p0, "this":Ljava9/util/stream/LongPipeline$6$1;, "Ljava9/util/stream/LongPipeline$6$1;"
    const/4 v0, 0x0

    .line 293
    .local v0, "result":Ljava9/util/stream/LongStream;
    :try_start_0
    iget-object v1, p0, Ljava9/util/stream/LongPipeline$6$1;->this$1:Ljava9/util/stream/LongPipeline$6;

    iget-object v1, v1, Ljava9/util/stream/LongPipeline$6;->val$mapper:Ljava9/util/function/LongFunction;

    invoke-interface {v1, p1, p2}, Ljava9/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/LongStream;

    move-object v0, v1

    .line 294
    if-eqz v0, :cond_2

    .line 295
    iget-boolean v1, p0, Ljava9/util/stream/LongPipeline$6$1;->cancellationRequested:Z

    if-nez v1, :cond_0

    .line 296
    invoke-interface {v0}, Ljava9/util/stream/LongStream;->sequential()Ljava9/util/stream/LongStream;

    move-result-object v1

    iget-object v2, p0, Ljava9/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava9/util/function/LongConsumer;

    invoke-interface {v1, v2}, Ljava9/util/stream/LongStream;->forEach(Ljava9/util/function/LongConsumer;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava9/util/stream/LongStream;->sequential()Ljava9/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava9/util/stream/LongStream;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v1

    .line 300
    .local v1, "s":Ljava9/util/Spliterator$OfLong;
    :cond_1
    iget-object v2, p0, Ljava9/util/stream/LongPipeline$6$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v2}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava9/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava9/util/function/LongConsumer;

    invoke-interface {v1, v2}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 304
    .end local v1    # "s":Ljava9/util/Spliterator$OfLong;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 305
    invoke-interface {v0}, Ljava9/util/stream/LongStream;->close()V

    .line 308
    :cond_3
    return-void

    .line 304
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 305
    invoke-interface {v0}, Ljava9/util/stream/LongStream;->close()V

    :cond_4
    throw v1
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 286
    .local p0, "this":Ljava9/util/stream/LongPipeline$6$1;, "Ljava9/util/stream/LongPipeline$6$1;"
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$6$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 287
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 316
    .local p0, "this":Ljava9/util/stream/LongPipeline$6$1;, "Ljava9/util/stream/LongPipeline$6$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/LongPipeline$6$1;->cancellationRequested:Z

    .line 317
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$6$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
