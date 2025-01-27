.class final Ljava9/util/stream/SliceOps$2;
.super Ljava9/util/stream/IntPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/SliceOps;->makeInt(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/IntPipeline$StatefulOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;IJJ)V
    .locals 0
    .param p2, "inputShape"    # Ljava9/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 230
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-wide p4, p0, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iput-wide p6, p0, Ljava9/util/stream/SliceOps$2;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/IntPipeline$StatefulOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava9/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 266
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Integer;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v10

    .line 267
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    const/4 v8, 0x1

    if-lez v0, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Ljava9/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual/range {p1 .. p1}, Ljava9/util/stream/PipelineHelper;->getSourceShape()Ljava9/util/stream/StreamShape;

    move-result-object v1

    iget-wide v3, v9, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iget-wide v5, v9, Ljava9/util/stream/SliceOps$2;->val$limit:J

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Ljava9/util/stream/SliceOps;->access$100(Ljava9/util/stream/StreamShape;Ljava9/util/Spliterator;JJ)Ljava9/util/Spliterator;

    move-result-object v0

    .line 274
    .local v0, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    move-object/from16 v13, p1

    invoke-static {v13, v0, v8}, Ljava9/util/stream/Nodes;->collectInt(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)Ljava9/util/stream/Node$OfInt;

    move-result-object v1

    return-object v1

    .line 267
    .end local v0    # "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    :cond_0
    move-object/from16 v13, p1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    move-object/from16 v12, p2

    .line 275
    :goto_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    nop

    .line 277
    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava9/util/Spliterator$OfInt;

    iget-wide v2, v9, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, v9, Ljava9/util/stream/SliceOps$2;->val$limit:J

    .line 276
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Ljava9/util/stream/SliceOps$2;->unorderedSkipLimitSpliterator(Ljava9/util/Spliterator$OfInt;JJJ)Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    .line 283
    .local v0, "s":Ljava9/util/Spliterator$OfInt;
    invoke-static {p0, v0, v8}, Ljava9/util/stream/Nodes;->collectInt(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)Ljava9/util/stream/Node$OfInt;

    move-result-object v1

    return-object v1

    .line 286
    .end local v0    # "s":Ljava9/util/Spliterator$OfInt;
    :cond_2
    new-instance v14, Ljava9/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iget-wide v7, v9, Ljava9/util/stream/SliceOps$2;->val$limit:J

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Ljava9/util/stream/SliceOps$SliceTask;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;JJ)V

    .line 287
    invoke-virtual {v14}, Ljava9/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node;

    return-object v0
.end method

.method opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    move-object v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v10

    .line 246
    .local v10, "size":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Ljava9/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    .line 248
    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava9/util/Spliterator$OfInt;

    iget-wide v3, v9, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iget-wide v5, v9, Ljava9/util/stream/SliceOps$2;->val$limit:J

    .line 250
    invoke-static {v3, v4, v5, v6}, Ljava9/util/stream/SliceOps;->access$000(JJ)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;JJ)V

    return-object v0

    .line 246
    :cond_0
    move-object/from16 v12, p2

    .line 251
    :cond_1
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    nop

    .line 253
    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava9/util/Spliterator$OfInt;

    iget-wide v2, v9, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, v9, Ljava9/util/stream/SliceOps$2;->val$limit:J

    .line 252
    move-object v0, p0

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Ljava9/util/stream/SliceOps$2;->unorderedSkipLimitSpliterator(Ljava9/util/Spliterator$OfInt;JJJ)Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0

    .line 257
    :cond_2
    new-instance v13, Ljava9/util/stream/SliceOps$SliceTask;

    sget-object v4, Ljava9/util/stream/WhileOps;->INT_ARR_GEN:Ljava9/util/function/IntFunction;

    iget-wide v5, v9, Ljava9/util/stream/SliceOps$2;->val$skip:J

    iget-wide v7, v9, Ljava9/util/stream/SliceOps$2;->val$limit:J

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava9/util/stream/SliceOps$SliceTask;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;JJ)V

    .line 258
    invoke-virtual {v13}, Ljava9/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node;

    invoke-interface {v0}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava9/util/stream/SliceOps$2$1;

    invoke-direct {v0, p0, p2}, Ljava9/util/stream/SliceOps$2$1;-><init>(Ljava9/util/stream/SliceOps$2;Ljava9/util/stream/Sink;)V

    return-object v0
.end method

.method unorderedSkipLimitSpliterator(Ljava9/util/Spliterator$OfInt;JJJ)Ljava9/util/Spliterator$OfInt;
    .locals 7
    .param p1, "s"    # Ljava9/util/Spliterator$OfInt;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    .line 233
    cmp-long v0, p2, p6

    if-gtz v0, :cond_1

    .line 236
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    sub-long v0, p6, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sub-long v0, p6, p2

    :goto_0
    move-wide p4, v0

    .line 237
    const-wide/16 p2, 0x0

    .line 239
    :cond_1
    new-instance v6, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;JJ)V

    return-object v6
.end method
