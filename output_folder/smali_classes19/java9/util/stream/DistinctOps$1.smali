.class final Ljava9/util/stream/DistinctOps$1;
.super Ljava9/util/stream/ReferencePipeline$StatefulOp;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/DistinctOps;->makeRef(Ljava9/util/stream/AbstractPipeline;)Ljava9/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V
    .locals 0
    .param p2, "inputShape"    # Ljava9/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 61
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TT;*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallel$71(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "t"    # Ljava/lang/Object;

    .line 90
    if-nez p2, :cond_0

    .line 91
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->DISTINCT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, p2, v1, p3}, Ljava9/util/stream/PipelineHelper;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/DistinctOps$1;->reduce(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    .local v0, "seenNull":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x200

    .line 88
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 89
    .local v2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TT;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;)V

    invoke-static {v3, v1}, Ljava9/util/stream/ForEachOps;->makeRef(Ljava9/util/function/Consumer;Z)Ljava9/util/stream/TerminalOp;

    move-result-object v1

    .line 96
    .local v1, "forEachOp":Ljava9/util/stream/TerminalOp;, "Ljava9/util/stream/TerminalOp<TT;Ljava/lang/Void;>;"
    invoke-interface {v1, p1, p2}, Ljava9/util/stream/TerminalOp;->evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    .line 100
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 101
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    .line 103
    .local v4, "size":I
    const/16 v6, 0x7f

    if-lt v4, v6, :cond_2

    .line 105
    new-instance v5, Ljava9/util/stream/DistinctOps$KeysAndNullSet;

    invoke-direct {v5, v3, v4}, Ljava9/util/stream/DistinctOps$KeysAndNullSet;-><init>(Ljava/util/Set;I)V

    move-object v3, v5

    goto :goto_0

    .line 107
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    add-int/lit8 v7, v4, 0x1

    int-to-float v7, v7

    div-float/2addr v7, v5

    float-to-int v5, v7

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v5, v6

    .line 108
    .local v5, "tmp":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 109
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    move-object v3, v5

    .line 113
    .end local v4    # "size":I
    .end local v5    # "tmp":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    :cond_3
    :goto_0
    invoke-static {v3}, Ljava9/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava9/util/stream/Node;

    move-result-object v4

    return-object v4
.end method

.method opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 119
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->DISTINCT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1, p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/DistinctOps$1;->reduce(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    new-instance v0, Ljava9/util/stream/StreamSpliterators$DistinctSpliterator;

    invoke-virtual {p1, p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava9/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava9/util/Spliterator;)V

    return-object v0
.end method

.method opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "TT;>;)",
            "Ljava9/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->DISTINCT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-object p2

    .line 139
    :cond_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SORTED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava9/util/stream/DistinctOps$1$1;

    invoke-direct {v0, p0, p2}, Ljava9/util/stream/DistinctOps$1$1;-><init>(Ljava9/util/stream/DistinctOps$1;Ljava9/util/stream/Sink;)V

    return-object v0

    .line 171
    :cond_1
    new-instance v0, Ljava9/util/stream/DistinctOps$1$2;

    invoke-direct {v0, p0, p2}, Ljava9/util/stream/DistinctOps$1$2;-><init>(Ljava9/util/stream/DistinctOps$1;Ljava9/util/stream/Sink;)V

    return-object v0
.end method

.method reduce(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 66
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava9/util/stream/DistinctOps$1$$ExternalSyntheticLambda3;-><init>()V

    .line 67
    invoke-static {v0, v1, v2}, Ljava9/util/stream/ReduceOps;->makeRef(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    .line 69
    .local v0, "reduceOp":Ljava9/util/stream/TerminalOp;, "Ljava9/util/stream/TerminalOp<TT;Ljava/util/LinkedHashSet<TT;>;>;"
    invoke-interface {v0, p1, p2}, Ljava9/util/stream/TerminalOp;->evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljava9/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava9/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
