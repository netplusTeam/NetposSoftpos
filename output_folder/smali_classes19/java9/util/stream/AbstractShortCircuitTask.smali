.class abstract Ljava9/util/stream/AbstractShortCircuitTask;
.super Ljava9/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


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
        "Ljava9/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava9/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field protected volatile canceled:Z

.field protected final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava9/util/stream/AbstractShortCircuitTask;Ljava9/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/AbstractTask;-><init>(Ljava9/util/stream/AbstractTask;Ljava9/util/Spliterator;)V

    .line 85
    iget-object v0, p1, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
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

    .line 71
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/AbstractTask;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .line 198
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 199
    return-void
.end method

.method protected cancelLaterNodes()V
    .locals 4

    .line 224
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/AbstractShortCircuitTask;

    .local v0, "parent":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    move-object v1, p0

    .line 225
    .local v1, "node":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_0
    if-eqz v0, :cond_1

    .line 228
    iget-object v2, v0, Ljava9/util/stream/AbstractShortCircuitTask;->leftChild:Ljava9/util/stream/AbstractTask;

    if-ne v2, v1, :cond_0

    .line 229
    iget-object v2, v0, Ljava9/util/stream/AbstractShortCircuitTask;->rightChild:Ljava9/util/stream/AbstractTask;

    check-cast v2, Ljava9/util/stream/AbstractShortCircuitTask;

    .line 230
    .local v2, "rightSibling":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-boolean v3, v2, Ljava9/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v3, :cond_0

    .line 231
    invoke-virtual {v2}, Ljava9/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 226
    .end local v2    # "rightSibling":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v0}, Ljava9/util/stream/AbstractShortCircuitTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava9/util/stream/AbstractShortCircuitTask;

    goto :goto_0

    .line 234
    .end local v0    # "parent":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v1    # "node":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_1
    return-void
.end method

.method public compute()V
    .locals 13

    .line 103
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->spliterator:Ljava9/util/Spliterator;

    .line 104
    .local v0, "rs":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 105
    .local v1, "sizeEstimate":J
    invoke-virtual {p0, v1, v2}, Ljava9/util/stream/AbstractShortCircuitTask;->getTargetSize(J)J

    move-result-wide v3

    .line 106
    .local v3, "sizeThreshold":J
    const/4 v5, 0x0

    .line 107
    .local v5, "forkRight":Z
    move-object v6, p0

    .line 108
    .local v6, "task":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    iget-object v7, p0, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    .local v7, "sr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TR;>;"
    :goto_0
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    .local v9, "result":Ljava/lang/Object;, "TR;"
    if-nez v8, :cond_4

    .line 111
    invoke-virtual {v6}, Ljava9/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    invoke-virtual {v6}, Ljava9/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v9

    .line 113
    goto :goto_3

    .line 115
    :cond_0
    cmp-long v8, v1, v3

    if-lez v8, :cond_3

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v8

    move-object v10, v8

    .local v10, "ls":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    if-nez v8, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    invoke-virtual {v6, v10}, Ljava9/util/stream/AbstractShortCircuitTask;->makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljava9/util/stream/AbstractShortCircuitTask;

    move-object v11, v8

    .local v11, "leftChild":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v8, v6, Ljava9/util/stream/AbstractShortCircuitTask;->leftChild:Ljava9/util/stream/AbstractTask;

    .line 121
    invoke-virtual {v6, v0}, Ljava9/util/stream/AbstractShortCircuitTask;->makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljava9/util/stream/AbstractShortCircuitTask;

    move-object v12, v8

    .local v12, "rightChild":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    iput-object v8, v6, Ljava9/util/stream/AbstractShortCircuitTask;->rightChild:Ljava9/util/stream/AbstractTask;

    .line 122
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava9/util/stream/AbstractShortCircuitTask;->setPendingCount(I)V

    .line 123
    if-eqz v5, :cond_2

    .line 124
    const/4 v5, 0x0

    .line 125
    move-object v0, v10

    .line 126
    move-object v6, v11

    .line 127
    move-object v8, v12

    .local v8, "taskToFork":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_1

    .line 130
    .end local v8    # "taskToFork":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_2
    const/4 v5, 0x1

    .line 131
    move-object v6, v12

    .line 132
    move-object v8, v11

    .line 134
    .restart local v8    # "taskToFork":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_1
    invoke-virtual {v8}, Ljava9/util/stream/AbstractShortCircuitTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 135
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 136
    .end local v8    # "taskToFork":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v10    # "ls":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .end local v11    # "leftChild":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    .end local v12    # "rightChild":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    goto :goto_0

    .line 116
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava9/util/stream/AbstractShortCircuitTask;->doLeaf()Ljava/lang/Object;

    move-result-object v9

    .line 137
    :cond_4
    :goto_3
    invoke-virtual {v6, v9}, Ljava9/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v6}, Ljava9/util/stream/AbstractShortCircuitTask;->tryComplete()V

    .line 139
    return-void
.end method

.method protected abstract getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getLocalResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 186
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "answer":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 191
    .end local v0    # "answer":Ljava/lang/Object;, "TR;"
    :cond_1
    invoke-super {p0}, Ljava9/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 177
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_0
    invoke-super {p0, p1}, Ljava9/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 170
    :cond_1
    :goto_0
    return-void
.end method

.method protected shortCircuit(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method protected taskCanceled()Z
    .locals 3

    .line 208
    .local p0, "this":Ljava9/util/stream/AbstractShortCircuitTask;, "Ljava9/util/stream/AbstractShortCircuitTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-boolean v0, p0, Ljava9/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 209
    .local v0, "cancel":Z
    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/AbstractShortCircuitTask;

    .local v1, "parent":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 211
    iget-boolean v0, v1, Ljava9/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 210
    invoke-virtual {v1}, Ljava9/util/stream/AbstractShortCircuitTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava9/util/stream/AbstractShortCircuitTask;

    goto :goto_0

    .line 214
    .end local v1    # "parent":Ljava9/util/stream/AbstractShortCircuitTask;, "TK;"
    :cond_0
    return v0
.end method
