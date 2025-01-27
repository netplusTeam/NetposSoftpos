.class final Ljava9/util/stream/FindOps$FindOp;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava9/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/TerminalOp<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field final emptyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field final opFlags:I

.field final presentPredicate:Ljava9/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Predicate<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final shape:Ljava9/util/stream/StreamShape;

.field final sinkSupplier:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/stream/TerminalSink<",
            "TT;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava9/util/stream/StreamShape;Ljava/lang/Object;Ljava9/util/function/Predicate;Ljava9/util/function/Supplier;)V
    .locals 2
    .param p1, "mustFindFirst"    # Z
    .param p2, "shape"    # Ljava9/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava9/util/stream/StreamShape;",
            "TO;",
            "Ljava9/util/function/Predicate<",
            "TO;>;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/stream/TerminalSink<",
            "TT;TO;>;>;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Ljava9/util/stream/FindOps$FindOp;, "Ljava9/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p3, "emptyValue":Ljava/lang/Object;, "TO;"
    .local p4, "presentPredicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TO;>;"
    .local p5, "sinkSupplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/stream/TerminalSink<TT;TO;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget v0, Ljava9/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Ljava9/util/stream/FindOps$FindOp;->opFlags:I

    .line 158
    iput-object p2, p0, Ljava9/util/stream/FindOps$FindOp;->shape:Ljava9/util/stream/StreamShape;

    .line 159
    iput-object p3, p0, Ljava9/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    .line 160
    iput-object p4, p0, Ljava9/util/stream/FindOps$FindOp;->presentPredicate:Ljava9/util/function/Predicate;

    .line 161
    iput-object p5, p0, Ljava9/util/stream/FindOps$FindOp;->sinkSupplier:Ljava9/util/function/Supplier;

    .line 162
    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TO;"
        }
    .end annotation

    .line 186
    .local p0, "this":Ljava9/util/stream/FindOps$FindOp;, "Ljava9/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    .line 187
    .local v0, "mustFindFirst":Z
    new-instance v1, Ljava9/util/stream/FindOps$FindTask;

    invoke-direct {v1, p0, v0, p1, p2}, Ljava9/util/stream/FindOps$FindTask;-><init>(Ljava9/util/stream/FindOps$FindOp;ZLjava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)V

    invoke-virtual {v1}, Ljava9/util/stream/FindOps$FindTask;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;)TO;"
        }
    .end annotation

    .line 177
    .local p0, "this":Ljava9/util/stream/FindOps$FindOp;, "Ljava9/util/stream/FindOps$FindOp<TT;TO;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    iget-object v0, p0, Ljava9/util/stream/FindOps$FindOp;->sinkSupplier:Ljava9/util/function/Supplier;

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Sink;

    invoke-virtual {p1, v0, p2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/TerminalSink;

    invoke-interface {v0}, Ljava9/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "result":Ljava/lang/Object;, "TO;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava9/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public getOpFlags()I
    .locals 1

    .line 166
    .local p0, "this":Ljava9/util/stream/FindOps$FindOp;, "Ljava9/util/stream/FindOps$FindOp<TT;TO;>;"
    iget v0, p0, Ljava9/util/stream/FindOps$FindOp;->opFlags:I

    return v0
.end method

.method public inputShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 171
    .local p0, "this":Ljava9/util/stream/FindOps$FindOp;, "Ljava9/util/stream/FindOps$FindOp<TT;TO;>;"
    iget-object v0, p0, Ljava9/util/stream/FindOps$FindOp;->shape:Ljava9/util/stream/StreamShape;

    return-object v0
.end method
