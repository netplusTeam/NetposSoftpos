.class abstract Ljava9/util/stream/ForEachOps$ForEachOp;
.super Ljava/lang/Object;
.source "ForEachOps.java"

# interfaces
.implements Ljava9/util/stream/TerminalOp;
.implements Ljava9/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ForEachOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/ForEachOps$ForEachOp$OfDouble;,
        Ljava9/util/stream/ForEachOps$ForEachOp$OfLong;,
        Ljava9/util/stream/ForEachOps$ForEachOp$OfInt;,
        Ljava9/util/stream/ForEachOps$ForEachOp$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Void;",
        ">;",
        "Ljava9/util/stream/TerminalSink<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final ordered:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "ordered"    # Z

    .line 139
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean p1, p0, Ljava9/util/stream/ForEachOps$ForEachOp;->ordered:Z

    .line 141
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 135
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 159
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    iget-boolean v0, p0, Ljava9/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v0, p1, p2, p0}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)V

    invoke-virtual {v0}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava9/util/stream/ForEachOps$ForEachTask;

    invoke-virtual {p1, p0}, Ljava9/util/stream/PipelineHelper;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava9/util/stream/ForEachOps$ForEachTask;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)V

    invoke-virtual {v0}, Ljava9/util/stream/ForEachOps$ForEachTask;->invoke()Ljava/lang/Object;

    .line 164
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 135
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 153
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    invoke-virtual {p1, p0, p2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/ForEachOps$ForEachOp;

    invoke-virtual {v0}, Ljava9/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 135
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .locals 1

    .line 171
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpFlags()I
    .locals 1

    .line 147
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOp;, "Ljava9/util/stream/ForEachOps$ForEachOp<TT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    return v0
.end method
