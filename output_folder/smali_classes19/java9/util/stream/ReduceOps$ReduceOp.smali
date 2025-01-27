.class abstract Ljava9/util/stream/ReduceOps$ReduceOp;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReduceOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/TerminalOp<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final inputShape:Ljava9/util/stream/StreamShape;


# direct methods
.method constructor <init>(Ljava9/util/stream/StreamShape;)V
    .locals 0
    .param p1, "shape"    # Ljava9/util/stream/StreamShape;

    .line 899
    .local p0, "this":Ljava9/util/stream/ReduceOps$ReduceOp;, "Ljava9/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Ljava9/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava9/util/stream/StreamShape;

    .line 901
    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 919
    .local p0, "this":Ljava9/util/stream/ReduceOps$ReduceOp;, "Ljava9/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/ReduceOps$ReduceTask;-><init>(Ljava9/util/stream/ReduceOps$ReduceOp;Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)V

    invoke-virtual {v0}, Ljava9/util/stream/ReduceOps$ReduceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Ljava9/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    .line 913
    .local p0, "this":Ljava9/util/stream/ReduceOps$ReduceOp;, "Ljava9/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava9/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Ljava9/util/stream/ReduceOps$AccumulatingSink;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inputShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 907
    .local p0, "this":Ljava9/util/stream/ReduceOps$ReduceOp;, "Ljava9/util/stream/ReduceOps$ReduceOp<TT;TR;TS;>;"
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava9/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract makeSink()Ljava9/util/stream/ReduceOps$AccumulatingSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
