.class final Ljava9/util/stream/SortedOps$OfLong;
.super Ljava9/util/stream/LongPipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/LongPipeline$StatefulOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;)V"
        }
    .end annotation

    .line 211
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v1, Ljava9/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava9/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljava9/util/stream/LongPipeline$StatefulOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    .line 213
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 231
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Long;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SORTED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava9/util/stream/PipelineHelper;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Ljava9/util/stream/PipelineHelper;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node$OfLong;

    .line 237
    .local v0, "n":Ljava9/util/stream/Node$OfLong;
    invoke-interface {v0}, Ljava9/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 238
    .local v1, "content":[J
    invoke-static {v1}, Ljava9/util/J8Arrays;->parallelSort([J)V

    .line 240
    invoke-static {v1}, Ljava9/util/stream/Nodes;->node([J)Ljava9/util/stream/Node$OfLong;

    move-result-object v2

    return-object v2
.end method

.method public opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 217
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Long;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SORTED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    return-object p2

    .line 221
    :cond_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SIZED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava9/util/stream/SortedOps$SizedLongSortingSink;

    invoke-direct {v0, p2}, Ljava9/util/stream/SortedOps$SizedLongSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    return-object v0

    .line 224
    :cond_1
    new-instance v0, Ljava9/util/stream/SortedOps$LongSortingSink;

    invoke-direct {v0, p2}, Ljava9/util/stream/SortedOps$LongSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    return-object v0
.end method
