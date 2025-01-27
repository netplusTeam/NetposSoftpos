.class final Ljava9/util/stream/ForEachOps$ForEachTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final helper:Ljava9/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sink:Ljava9/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/Sink<",
            "TS;>;"
        }
    .end annotation
.end field

.field private spliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field private targetSize:J


# direct methods
.method constructor <init>(Ljava9/util/stream/ForEachOps$ForEachTask;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/ForEachOps$ForEachTask<",
            "TS;TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;)V"
        }
    .end annotation

    .line 274
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "parent":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 275
    iput-object p2, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava9/util/Spliterator;

    .line 276
    iget-object v0, p1, Ljava9/util/stream/ForEachOps$ForEachTask;->sink:Ljava9/util/stream/Sink;

    iput-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->sink:Ljava9/util/stream/Sink;

    .line 277
    iget-wide v0, p1, Ljava9/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 278
    iget-object v0, p1, Ljava9/util/stream/ForEachOps$ForEachTask;->helper:Ljava9/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 279
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;",
            "Ljava9/util/stream/Sink<",
            "TS;>;)V"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    .local p3, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 267
    iput-object p3, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->sink:Ljava9/util/stream/Sink;

    .line 268
    iput-object p1, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 269
    iput-object p2, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava9/util/Spliterator;

    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 271
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 12

    .line 283
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    iget-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava9/util/Spliterator;

    .line 284
    .local v0, "rightSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 285
    .local v1, "sizeEstimate":J
    iget-wide v3, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->targetSize:J

    move-wide v5, v3

    .local v5, "sizeThreshold":J
    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_0

    .line 286
    invoke-static {v1, v2}, Ljava9/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v3

    move-wide v5, v3

    iput-wide v3, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 288
    :cond_0
    sget-object v3, Ljava9/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava9/util/stream/StreamOpFlag;

    iget-object v4, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v4}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v3

    .line 289
    .local v3, "isShortCircuit":Z
    const/4 v4, 0x0

    .line 290
    .local v4, "forkRight":Z
    iget-object v7, p0, Ljava9/util/stream/ForEachOps$ForEachTask;->sink:Ljava9/util/stream/Sink;

    .line 291
    .local v7, "taskSink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TS;>;"
    move-object v8, p0

    .line 292
    .local v8, "task":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v7}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v9

    if-nez v9, :cond_5

    .line 293
    :cond_1
    cmp-long v9, v1, v5

    if-lez v9, :cond_4

    .line 294
    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v9

    move-object v10, v9

    .local v10, "leftSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    if-nez v9, :cond_2

    goto :goto_2

    .line 298
    :cond_2
    new-instance v9, Ljava9/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v9, v8, v10}, Ljava9/util/stream/ForEachOps$ForEachTask;-><init>(Ljava9/util/stream/ForEachOps$ForEachTask;Ljava9/util/Spliterator;)V

    .line 299
    .local v9, "leftTask":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava9/util/stream/ForEachOps$ForEachTask;->addToPendingCount(I)V

    .line 301
    if-eqz v4, :cond_3

    .line 302
    const/4 v4, 0x0

    .line 303
    move-object v0, v10

    .line 304
    move-object v11, v8

    .line 305
    .local v11, "taskToFork":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    move-object v8, v9

    goto :goto_1

    .line 308
    .end local v11    # "taskToFork":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :cond_3
    const/4 v4, 0x1

    .line 309
    move-object v11, v9

    .line 311
    .restart local v11    # "taskToFork":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_1
    invoke-virtual {v11}, Ljava9/util/stream/ForEachOps$ForEachTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 312
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 313
    .end local v9    # "leftTask":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .end local v10    # "leftSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    .end local v11    # "taskToFork":Ljava9/util/stream/ForEachOps$ForEachTask;, "Ljava9/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    goto :goto_0

    .line 295
    :cond_4
    :goto_2
    iget-object v9, v8, Ljava9/util/stream/ForEachOps$ForEachTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v9, v7, v0}, Ljava9/util/stream/PipelineHelper;->copyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)V

    .line 296
    nop

    .line 314
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v8, Ljava9/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava9/util/Spliterator;

    .line 315
    invoke-virtual {v8}, Ljava9/util/stream/ForEachOps$ForEachTask;->propagateCompletion()V

    .line 316
    return-void
.end method
