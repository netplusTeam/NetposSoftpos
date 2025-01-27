.class abstract Ljava9/util/stream/AbstractPipeline;
.super Ljava9/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava9/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava9/util/stream/BaseStream<",
        "TE_OUT;TS;>;>",
        "Ljava9/util/stream/PipelineHelper<",
        "TE_OUT;>;",
        "Ljava9/util/stream/BaseStream<",
        "TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Ljava9/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Ljava9/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Spliterator<",
            "*>;"
        }
    .end annotation
.end field

.field private final sourceStage:Ljava9/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<*>;"
    invoke-direct {p0}, Ljava9/util/stream/PipelineHelper;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    .line 184
    iput-object p1, p0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 185
    iput-object p0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    .line 186
    sget v0, Ljava9/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 189
    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava9/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    .line 191
    iput-boolean p3, p0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    .line 192
    return-void
.end method

.method constructor <init>(Ljava9/util/function/Supplier;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+Ljava9/util/Spliterator<*>;>;"
    invoke-direct {p0}, Ljava9/util/stream/PipelineHelper;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    .line 163
    iput-object p1, p0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    .line 164
    iput-object p0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    .line 165
    sget v0, Ljava9/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 168
    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava9/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    .line 170
    iput-boolean p3, p0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    .line 171
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/AbstractPipeline;I)V
    .locals 3
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "previousStage":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0}, Ljava9/util/stream/PipelineHelper;-><init>()V

    .line 203
    iget-boolean v0, p1, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 206
    iput-object p0, p1, Ljava9/util/stream/AbstractPipeline;->nextStage:Ljava9/util/stream/AbstractPipeline;

    .line 208
    iput-object p1, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    .line 209
    sget v1, Ljava9/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 210
    iget v1, p1, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Ljava9/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    .line 211
    iget-object v1, p1, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iput-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    .line 212
    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iput-boolean v0, v1, Ljava9/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    .line 214
    :cond_0
    iget v1, p1, Ljava9/util/stream/AbstractPipeline;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    .line 215
    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$opEvaluateParallelLazy$36(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # I

    .line 706
    new-array v0, p0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$wrapSpliterator$35(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 0

    .line 531
    return-object p0
.end method

.method private sourceSpliterator(I)Ljava9/util/Spliterator;
    .locals 8
    .param p1, "terminalFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/Spliterator<",
            "*>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    .line 397
    .local v0, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<*>;"
    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-object v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 398
    iget-object v0, v1, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 399
    iput-object v3, v1, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    goto :goto_0

    .line 401
    :cond_0
    iget-object v1, v1, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    if-eqz v1, :cond_6

    .line 402
    invoke-interface {v1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava9/util/Spliterator;

    .line 403
    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iput-object v3, v1, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    .line 409
    :goto_0
    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-boolean v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v2, :cond_4

    .line 413
    const/4 v2, 0x1

    .line 414
    .local v2, "depth":I
    iget-object v3, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    .local v3, "u":Ljava9/util/stream/AbstractPipeline;
    iget-object v1, v1, Ljava9/util/stream/AbstractPipeline;->nextStage:Ljava9/util/stream/AbstractPipeline;

    .local v1, "p":Ljava9/util/stream/AbstractPipeline;
    move-object v4, p0

    .line 415
    .local v4, "e":Ljava9/util/stream/AbstractPipeline;
    :goto_1
    if-eq v3, v4, :cond_4

    .line 418
    iget v5, v1, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 419
    .local v5, "thisOpFlags":I
    invoke-virtual {v1}, Ljava9/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 420
    const/4 v2, 0x0

    .line 422
    sget-object v6, Ljava9/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v6, v5}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 428
    sget v6, Ljava9/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v6, v6

    and-int/2addr v5, v6

    .line 431
    :cond_1
    invoke-virtual {v1, v3, v0}, Ljava9/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v0

    .line 435
    const/16 v6, 0x40

    invoke-interface {v0, v6}, Ljava9/util/Spliterator;->hasCharacteristics(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Ljava9/util/stream/StreamOpFlag;->IS_SIZED:I

    goto :goto_2

    :cond_2
    sget v6, Ljava9/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    :goto_2
    or-int/2addr v6, v7

    move v5, v6

    .line 439
    :cond_3
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "depth":I
    .local v6, "depth":I
    iput v2, v1, Ljava9/util/stream/AbstractPipeline;->depth:I

    .line 440
    iget v2, v3, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v5, v2}, Ljava9/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v2

    iput v2, v1, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    .line 416
    .end local v5    # "thisOpFlags":I
    move-object v3, v1

    iget-object v1, v1, Ljava9/util/stream/AbstractPipeline;->nextStage:Ljava9/util/stream/AbstractPipeline;

    move v2, v6

    goto :goto_1

    .line 444
    .end local v1    # "p":Ljava9/util/stream/AbstractPipeline;
    .end local v3    # "u":Ljava9/util/stream/AbstractPipeline;
    .end local v4    # "e":Ljava9/util/stream/AbstractPipeline;
    .end local v6    # "depth":I
    :cond_4
    if-eqz p1, :cond_5

    .line 446
    iget v1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v1}, Ljava9/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    .line 449
    :cond_5
    return-object v0

    .line 406
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "source already consumed or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 316
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    .line 318
    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 319
    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-object v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 321
    .local v2, "closeAction":Ljava/lang/Runnable;
    iput-object v0, v1, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 322
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 324
    .end local v2    # "closeAction":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method final copyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 478
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-interface {p2}, Ljava9/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava9/util/stream/Sink;->begin(J)V

    .line 482
    invoke-interface {p2, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 483
    invoke-interface {p1}, Ljava9/util/stream/Sink;->end()V

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Z

    .line 488
    :goto_0
    return-void
.end method

.method final copyIntoWithCancel(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation

    .line 494
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    move-object v0, p0

    .line 495
    .local v0, "p":Ljava9/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 496
    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    goto :goto_0

    .line 498
    :cond_0
    invoke-interface {p2}, Ljava9/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 499
    invoke-virtual {v0, p2, p1}, Ljava9/util/stream/AbstractPipeline;->forEachWithCancel(Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)Z

    move-result v1

    .line 500
    .local v1, "cancelled":Z
    invoke-interface {p1}, Ljava9/util/stream/Sink;->end()V

    .line 501
    return v1
.end method

.method final evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/TerminalOp<",
            "TE_OUT;TR;>;)TR;"
        }
    .end annotation

    .line 228
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "terminalOp":Ljava9/util/stream/TerminalOp;, "Ljava9/util/stream/TerminalOp<TE_OUT;TR;>;"
    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 232
    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {p1}, Ljava9/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava9/util/stream/TerminalOp;->evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {p1}, Ljava9/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava9/util/stream/TerminalOp;->evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 2
    .param p2, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TE_OUT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0, p0, p1, p2, p3}, Ljava9/util/stream/AbstractPipeline;->evaluateToNode(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 544
    :cond_0
    nop

    .line 545
    invoke-virtual {p0, p1}, Ljava9/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v0

    .line 544
    invoke-virtual {p0, v0, v1, p3}, Ljava9/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;

    move-result-object v0

    .line 546
    .local v0, "nb":Ljava9/util/stream/Node$Builder;, "Ljava9/util/stream/Node$Builder<TE_OUT;>;"
    invoke-virtual {p0, v0, p1}, Ljava9/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/Node$Builder;

    invoke-interface {v1}, Ljava9/util/stream/Node$Builder;->build()Ljava9/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method final evaluateToArrayNode(Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TE_OUT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 252
    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iput v2, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    .line 258
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    invoke-direct {v0, v2}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava9/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-direct {p0, v2}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Ljava9/util/stream/AbstractPipeline;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract evaluateToNode(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation

    .line 467
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SIZED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava9/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method abstract forEachWithCancel(Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;)Z"
        }
    .end annotation
.end method

.method abstract getOutputShape()Ljava9/util/stream/StreamShape;
.end method

.method final getSourceShape()Ljava9/util/stream/StreamShape;
    .locals 2

    .line 458
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    move-object v0, p0

    .line 459
    .local v0, "p":Ljava9/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 460
    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava9/util/stream/AbstractPipeline;->getOutputShape()Ljava9/util/stream/StreamShape;

    move-result-object v1

    return-object v1
.end method

.method final getStreamAndOpFlags()I
    .locals 1

    .line 506
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method final getStreamFlags()I
    .locals 1

    .line 383
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljava9/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final isOrdered()Z
    .locals 2

    .line 510
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    iget v1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .locals 1

    .line 370
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method synthetic lambda$spliterator$34$java9-util-stream-AbstractPipeline()Ljava9/util/Spliterator;
    .locals 1

    .line 364
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;>;)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method abstract makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node$Builder<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;
    .locals 3
    .param p1, "closeHandler"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 331
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 333
    .local v1, "existingHandler":Ljava/lang/Runnable;
    if-nez v1, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {v1, p1}, Ljava9/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 337
    return-object p0

    .line 330
    .end local v1    # "existingHandler":Ljava/lang/Runnable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 680
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parallel evaluation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 706
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljava9/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract opIsStateful()Z
.end method

.method abstract opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava9/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Ljava9/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 310
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    .line 311
    return-object p0
.end method

.method public final sequential()Ljava9/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 303
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    .line 304
    return-object p0
.end method

.method final sourceStageSpliterator()Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 276
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_3

    .line 279
    iget-boolean v1, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v1, :cond_2

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 283
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 285
    .local v1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE_OUT;>;"
    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 286
    return-object v1

    .line 288
    .end local v1    # "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE_OUT;>;"
    :cond_0
    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    if-eqz v0, :cond_1

    .line 289
    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator;

    .line 290
    .local v0, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE_OUT;>;"
    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    .line 291
    return-object v0

    .line 294
    .end local v0    # "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE_OUT;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public spliterator()Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_3

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 348
    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_2

    .line 349
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 351
    .local v1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE_OUT;>;"
    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    .line 352
    return-object v1

    .line 354
    .end local v1    # "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE_OUT;>;"
    :cond_0
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    .line 356
    .local v1, "s":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TE_OUT;>;>;"
    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    .line 357
    invoke-virtual {p0, v1}, Ljava9/util/stream/AbstractPipeline;->lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 360
    .end local v1    # "s":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TE_OUT;>;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_2
    new-instance v0, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;-><init>(Ljava9/util/stream/AbstractPipeline;)V

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava9/util/stream/AbstractPipeline;->wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S_::",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;>(TS_;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TS_;"
        }
    .end annotation

    .line 472
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava9/util/stream/Sink;, "TS_;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava9/util/stream/AbstractPipeline;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava9/util/stream/AbstractPipeline;->copyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)V

    .line 473
    return-object p1
.end method

.method final wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava9/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TE_OUT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    move-object v0, p0

    .local v0, "p":Ljava9/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 519
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    iget v1, v1, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljava9/util/stream/AbstractPipeline;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object p1

    .line 518
    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    goto :goto_0

    .line 521
    .end local v0    # "p":Ljava9/util/stream/AbstractPipeline;
    :cond_0
    return-object p1
.end method

.method final wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 527
    .local p0, "this":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sourceSpliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    .line 528
    return-object p1

    .line 531
    :cond_0
    new-instance v0, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;-><init>(Ljava9/util/Spliterator;)V

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava9/util/stream/AbstractPipeline;->wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
