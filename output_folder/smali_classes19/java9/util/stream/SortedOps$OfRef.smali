.class final Ljava9/util/stream/SortedOps$OfRef;
.super Ljava9/util/stream/ReferencePipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final isNaturalSort:Z


# direct methods
.method constructor <init>(Ljava9/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*TT;*>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Ljava9/util/stream/SortedOps$OfRef;, "Ljava9/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TT;*>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->REFERENCE:Ljava9/util/stream/StreamShape;

    sget v1, Ljava9/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava9/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljava9/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    .line 119
    invoke-static {}, Ljava9/util/Comparators;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 120
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iput-object v0, p0, Ljava9/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    .line 121
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/AbstractPipeline;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Ljava9/util/stream/SortedOps$OfRef;, "Ljava9/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TT;*>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->REFERENCE:Ljava9/util/stream/StreamShape;

    sget v1, Ljava9/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljava9/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    .line 132
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Ljava9/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    .line 133
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 2
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

    .line 155
    .local p0, "this":Ljava9/util/stream/SortedOps$OfRef;, "Ljava9/util/stream/SortedOps$OfRef<TT;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SORTED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava9/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava9/util/stream/PipelineHelper;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Ljava9/util/stream/PipelineHelper;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava9/util/stream/Node;->asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "flattenedData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava9/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava9/util/J8Arrays;->parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 162
    invoke-static {v0}, Ljava9/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava9/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method public opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 2
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

    .line 137
    .local p0, "this":Ljava9/util/stream/SortedOps$OfRef;, "Ljava9/util/stream/SortedOps$OfRef<TT;>;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SORTED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava9/util/stream/SortedOps$OfRef;->isNaturalSort:Z

    if-eqz v0, :cond_0

    .line 142
    return-object p2

    .line 143
    :cond_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SIZED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Ljava9/util/stream/SortedOps$SizedRefSortingSink;

    iget-object v1, p0, Ljava9/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljava9/util/stream/SortedOps$SizedRefSortingSink;-><init>(Ljava9/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0

    .line 146
    :cond_1
    new-instance v0, Ljava9/util/stream/SortedOps$RefSortingSink;

    iget-object v1, p0, Ljava9/util/stream/SortedOps$OfRef;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljava9/util/stream/SortedOps$RefSortingSink;-><init>(Ljava9/util/stream/Sink;Ljava/util/Comparator;)V

    return-object v0
.end method
