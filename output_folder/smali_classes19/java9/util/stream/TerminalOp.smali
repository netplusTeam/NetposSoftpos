.class interface abstract Ljava9/util/stream/TerminalOp;
.super Ljava/lang/Object;
.source "TerminalOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_IN;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 82
    .local p0, "this":Ljava9/util/stream/TerminalOp;, "Ljava9/util/stream/TerminalOp<TE_IN;TR;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TE_IN;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-interface {p0, p1, p2}, Ljava9/util/stream/TerminalOp;->evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_IN;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation
.end method

.method public getOpFlags()I
    .locals 1

    .line 66
    .local p0, "this":Ljava9/util/stream/TerminalOp;, "Ljava9/util/stream/TerminalOp<TE_IN;TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public inputShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 53
    .local p0, "this":Ljava9/util/stream/TerminalOp;, "Ljava9/util/stream/TerminalOp<TE_IN;TR;>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->REFERENCE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method
