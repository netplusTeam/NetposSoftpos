.class abstract Ljava9/util/stream/AbstractTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "AbstractTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava9/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava9/util/concurrent/CountedCompleter<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final LEAF_TARGET:I


# instance fields
.field protected final helper:Ljava9/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected leftChild:Ljava9/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private localResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected rightChild:Ljava9/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected spliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Ljava9/util/stream/AbstractTask;->LEAF_TARGET:I

    return-void
.end method

.method protected constructor <init>(Ljava9/util/stream/AbstractTask;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava9/util/stream/AbstractTask;, "TK;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 149
    iput-object p2, p0, Ljava9/util/stream/AbstractTask;->spliterator:Ljava9/util/Spliterator;

    .line 150
    iget-object v0, p1, Ljava9/util/stream/AbstractTask;->helper:Ljava9/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava9/util/stream/AbstractTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 151
    iget-wide v0, p1, Ljava9/util/stream/AbstractTask;->targetSize:J

    iput-wide v0, p0, Ljava9/util/stream/AbstractTask;->targetSize:J

    .line 152
    return-void
.end method

.method protected constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 134
    iput-object p1, p0, Ljava9/util/stream/AbstractTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 135
    iput-object p2, p0, Ljava9/util/stream/AbstractTask;->spliterator:Ljava9/util/Spliterator;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/stream/AbstractTask;->targetSize:J

    .line 137
    return-void
.end method

.method public static getLeafTarget()I
    .locals 2

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 162
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 163
    move-object v1, v0

    check-cast v1, Ljava9/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v1}, Ljava9/util/concurrent/ForkJoinWorkerThread;->getPool()Ljava9/util/concurrent/ForkJoinPool;

    move-result-object v1

    invoke-virtual {v1}, Ljava9/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    return v1

    .line 166
    :cond_0
    sget v1, Ljava9/util/stream/AbstractTask;->LEAF_TARGET:I

    return v1
.end method

.method public static suggestTargetSize(J)J
    .locals 4
    .param p0, "sizeEstimate"    # J

    .line 195
    invoke-static {}, Ljava9/util/stream/AbstractTask;->getLeafTarget()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 196
    .local v0, "est":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public compute()V
    .locals 11

    .line 303
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractTask;->spliterator:Ljava9/util/Spliterator;

    .line 304
    .local v0, "rs":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 305
    .local v1, "sizeEstimate":J
    invoke-virtual {p0, v1, v2}, Ljava9/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v3

    .line 306
    .local v3, "sizeThreshold":J
    const/4 v5, 0x0

    .line 307
    .local v5, "forkRight":Z
    move-object v6, p0

    .line 308
    .local v6, "task":Ljava9/util/stream/AbstractTask;, "TK;"
    :goto_0
    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v7

    move-object v8, v7

    .local v8, "ls":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    if-eqz v7, :cond_1

    .line 310
    invoke-virtual {v6, v8}, Ljava9/util/stream/AbstractTask;->makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;

    move-result-object v7

    move-object v9, v7

    .local v9, "leftChild":Ljava9/util/stream/AbstractTask;, "TK;"
    iput-object v7, v6, Ljava9/util/stream/AbstractTask;->leftChild:Ljava9/util/stream/AbstractTask;

    .line 311
    invoke-virtual {v6, v0}, Ljava9/util/stream/AbstractTask;->makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;

    move-result-object v7

    move-object v10, v7

    .local v10, "rightChild":Ljava9/util/stream/AbstractTask;, "TK;"
    iput-object v7, v6, Ljava9/util/stream/AbstractTask;->rightChild:Ljava9/util/stream/AbstractTask;

    .line 312
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava9/util/stream/AbstractTask;->setPendingCount(I)V

    .line 313
    if-eqz v5, :cond_0

    .line 314
    const/4 v5, 0x0

    .line 315
    move-object v0, v8

    .line 316
    move-object v6, v9

    .line 317
    move-object v7, v10

    .local v7, "taskToFork":Ljava9/util/stream/AbstractTask;, "TK;"
    goto :goto_1

    .line 320
    .end local v7    # "taskToFork":Ljava9/util/stream/AbstractTask;, "TK;"
    :cond_0
    const/4 v5, 0x1

    .line 321
    move-object v6, v10

    .line 322
    move-object v7, v9

    .line 324
    .restart local v7    # "taskToFork":Ljava9/util/stream/AbstractTask;, "TK;"
    :goto_1
    invoke-virtual {v7}, Ljava9/util/stream/AbstractTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 325
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 326
    .end local v7    # "taskToFork":Ljava9/util/stream/AbstractTask;, "TK;"
    .end local v8    # "ls":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .end local v9    # "leftChild":Ljava9/util/stream/AbstractTask;, "TK;"
    .end local v10    # "rightChild":Ljava9/util/stream/AbstractTask;, "TK;"
    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v6}, Ljava9/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava9/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v6}, Ljava9/util/stream/AbstractTask;->tryComplete()V

    .line 329
    return-void
.end method

.method protected abstract doLeaf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected getLocalResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 244
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected getParent()Ljava9/util/stream/AbstractTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 285
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractTask;->getCompleter()Ljava9/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/AbstractTask;

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 220
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getTargetSize(J)J
    .locals 6
    .param p1, "sizeEstimate"    # J

    .line 205
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-wide v0, p0, Ljava9/util/stream/AbstractTask;->targetSize:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {p1, p2}, Ljava9/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/stream/AbstractTask;->targetSize:J

    :goto_0
    return-wide v0
.end method

.method protected isLeaf()Z
    .locals 1

    .line 266
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractTask;->leftChild:Ljava9/util/stream/AbstractTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isLeftmostNode()Z
    .locals 3

    .line 354
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    move-object v0, p0

    .line 355
    .local v0, "node":Ljava9/util/stream/AbstractTask;, "TK;"
    :goto_0
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Ljava9/util/stream/AbstractTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v1

    .line 357
    .local v1, "parent":Ljava9/util/stream/AbstractTask;, "TK;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava9/util/stream/AbstractTask;->leftChild:Ljava9/util/stream/AbstractTask;

    if-eq v2, v0, :cond_0

    .line 358
    const/4 v2, 0x0

    return v2

    .line 359
    :cond_0
    move-object v0, v1

    .line 360
    .end local v1    # "parent":Ljava9/util/stream/AbstractTask;, "TK;"
    goto :goto_0

    .line 361
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected isRoot()Z
    .locals 1

    .line 275
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TK;"
        }
    .end annotation
.end method

.method public onCompletion(Ljava9/util/concurrent/CountedCompleter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 341
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "caller":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractTask;->spliterator:Ljava9/util/Spliterator;

    .line 342
    iput-object v0, p0, Ljava9/util/stream/AbstractTask;->rightChild:Ljava9/util/stream/AbstractTask;

    iput-object v0, p0, Ljava9/util/stream/AbstractTask;->leftChild:Ljava9/util/stream/AbstractTask;

    .line 343
    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Ljava9/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    .line 255
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljava9/util/stream/AbstractTask;, "Ljava9/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 235
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
