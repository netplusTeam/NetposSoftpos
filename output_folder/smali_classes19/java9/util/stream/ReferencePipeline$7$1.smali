.class Ljava9/util/stream/ReferencePipeline$7$1;
.super Ljava9/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReferencePipeline$7;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedReference<",
        "TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field cancellationRequested:Z

.field final synthetic this$1:Ljava9/util/stream/ReferencePipeline$7;


# direct methods
.method constructor <init>(Ljava9/util/stream/ReferencePipeline$7;Ljava9/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava9/util/stream/ReferencePipeline$7;

    .line 260
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$7$1;, "Ljava9/util/stream/ReferencePipeline$7$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Ljava9/util/stream/ReferencePipeline$7$1;->this$1:Ljava9/util/stream/ReferencePipeline$7;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedReference;-><init>(Ljava9/util/stream/Sink;)V

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

    .line 271
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$7$1;, "Ljava9/util/stream/ReferencePipeline$7$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    const/4 v0, 0x0

    .line 273
    .local v0, "result":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<+TR;>;"
    :try_start_0
    iget-object v1, p0, Ljava9/util/stream/ReferencePipeline$7$1;->this$1:Ljava9/util/stream/ReferencePipeline$7;

    iget-object v1, v1, Ljava9/util/stream/ReferencePipeline$7;->val$mapper:Ljava9/util/function/Function;

    invoke-interface {v1, p1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/Stream;

    move-object v0, v1

    .line 274
    if-eqz v0, :cond_2

    .line 275
    iget-boolean v1, p0, Ljava9/util/stream/ReferencePipeline$7$1;->cancellationRequested:Z

    if-nez v1, :cond_0

    .line 276
    invoke-interface {v0}, Ljava9/util/stream/Stream;->sequential()Ljava9/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/Stream;

    iget-object v2, p0, Ljava9/util/stream/ReferencePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v1, v2}, Ljava9/util/stream/Stream;->forEach(Ljava9/util/function/Consumer;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v0}, Ljava9/util/stream/Stream;->sequential()Ljava9/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/Stream;

    invoke-interface {v1}, Ljava9/util/stream/Stream;->spliterator()Ljava9/util/Spliterator;

    move-result-object v1

    .line 280
    .local v1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<+TR;>;"
    :cond_1
    iget-object v2, p0, Ljava9/util/stream/ReferencePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v2}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava9/util/stream/ReferencePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v1, v2}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 284
    .end local v1    # "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<+TR;>;"
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 285
    invoke-interface {v0}, Ljava9/util/stream/Stream;->close()V

    .line 288
    :cond_3
    return-void

    .line 284
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 285
    invoke-interface {v0}, Ljava9/util/stream/Stream;->close()V

    :cond_4
    throw v1
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 266
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$7$1;, "Ljava9/util/stream/ReferencePipeline$7$1;"
    iget-object v0, p0, Ljava9/util/stream/ReferencePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 267
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 296
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$7$1;, "Ljava9/util/stream/ReferencePipeline$7$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/ReferencePipeline$7$1;->cancellationRequested:Z

    .line 297
    iget-object v0, p0, Ljava9/util/stream/ReferencePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
