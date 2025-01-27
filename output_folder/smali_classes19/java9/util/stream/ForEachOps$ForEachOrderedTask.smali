.class final Ljava9/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachOrderedTask"
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
.field private final action:Ljava9/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final completionMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;>;"
        }
    .end annotation
.end field

.field private final helper:Ljava9/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final leftPredecessor:Ljava9/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private node:Ljava9/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/Node<",
            "TT;>;"
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

.field private final targetSize:J


# direct methods
.method constructor <init>(Ljava9/util/stream/ForEachOps$ForEachOrderedTask;Ljava9/util/Spliterator;Ljava9/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;",
            "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 394
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "parent":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    .local p3, "leftPredecessor":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 395
    iget-object v0, p1, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava9/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 396
    iput-object p2, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava9/util/Spliterator;

    .line 397
    iget-wide v0, p1, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 398
    iget-object v0, p1, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    .line 399
    iget-object v0, p1, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava9/util/stream/Sink;

    iput-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava9/util/stream/Sink;

    .line 400
    iput-object p3, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    .line 401
    return-void
.end method

.method protected constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava9/util/Spliterator<",
            "TS;>;",
            "Ljava9/util/stream/Sink<",
            "TT;>;)V"
        }
    .end annotation

    .line 380
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    .local p3, "action":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 381
    iput-object p1, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 382
    iput-object p2, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava9/util/Spliterator;

    .line 383
    invoke-interface {p2}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava9/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v1

    iput-wide v1, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 385
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava9/util/stream/AbstractTask;->getLeafTarget()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 386
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    .line 387
    iput-object p3, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava9/util/stream/Sink;

    .line 388
    iput-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    .line 389
    return-void
.end method

.method private static doCompute(Ljava9/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 409
    .local p0, "task":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    iget-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava9/util/Spliterator;

    .line 410
    .local v0, "rightSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    iget-wide v1, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 411
    .local v1, "sizeThreshold":J
    const/4 v3, 0x0

    .line 412
    .local v3, "forkRight":Z
    :goto_0
    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_3

    .line 413
    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v4

    move-object v5, v4

    .local v5, "leftSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    if-eqz v4, :cond_3

    .line 414
    new-instance v4, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v6, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v4, p0, v5, v6}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava9/util/stream/ForEachOps$ForEachOrderedTask;Ljava9/util/Spliterator;Ljava9/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 416
    .local v4, "leftChild":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    new-instance v6, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v6, p0, v0, v4}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava9/util/stream/ForEachOps$ForEachOrderedTask;Ljava9/util/Spliterator;Ljava9/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 422
    .local v6, "rightChild":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 425
    invoke-virtual {v6, v7}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 426
    iget-object v8, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v4, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v8, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v8, :cond_1

    .line 439
    invoke-virtual {v4, v7}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 442
    iget-object v7, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v8, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-interface {v7, v8, p0, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    .line 445
    invoke-virtual {p0, v8}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v4, v8}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    .line 455
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 456
    const/4 v3, 0x0

    .line 457
    move-object v0, v5

    .line 458
    move-object p0, v4

    .line 459
    move-object v7, v6

    .local v7, "taskToFork":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_2

    .line 462
    .end local v7    # "taskToFork":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :cond_2
    const/4 v3, 0x1

    .line 463
    move-object p0, v6

    .line 464
    move-object v7, v4

    .line 466
    .restart local v7    # "taskToFork":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    :goto_2
    invoke-virtual {v7}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 467
    .end local v4    # "leftChild":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v5    # "leftSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TS;>;"
    .end local v6    # "rightChild":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .end local v7    # "taskToFork":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {p0}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->getPendingCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 481
    new-instance v4, Ljava9/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;-><init>()V

    .line 482
    .local v4, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    iget-object v5, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 483
    invoke-virtual {v5, v0}, Ljava9/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v6

    .line 482
    invoke-virtual {v5, v6, v7, v4}, Ljava9/util/stream/PipelineHelper;->makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;

    move-result-object v5

    .line 485
    .local v5, "nb":Ljava9/util/stream/Node$Builder;, "Ljava9/util/stream/Node$Builder<TT;>;"
    iget-object v6, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v6, v5, v0}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    move-result-object v6

    check-cast v6, Ljava9/util/stream/Node$Builder;

    invoke-interface {v6}, Ljava9/util/stream/Node$Builder;->build()Ljava9/util/stream/Node;

    move-result-object v6

    iput-object v6, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava9/util/stream/Node;

    .line 486
    const/4 v6, 0x0

    iput-object v6, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava9/util/Spliterator;

    .line 488
    .end local v4    # "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    .end local v5    # "nb":Ljava9/util/stream/Node$Builder;, "Ljava9/util/stream/Node$Builder<TT;>;"
    :cond_4
    invoke-virtual {p0}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 489
    return-void
.end method

.method static synthetic lambda$doCompute$157(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "size"    # I

    .line 481
    new-array v0, p0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final compute()V
    .locals 0

    .line 405
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    invoke-static {p0}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljava9/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 406
    return-void
.end method

.method public onCompletion(Ljava9/util/concurrent/CountedCompleter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 493
    .local p0, "this":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    .local p1, "caller":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    iget-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava9/util/stream/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 495
    iget-object v2, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava9/util/stream/Sink;

    invoke-interface {v0, v2}, Ljava9/util/stream/Node;->forEach(Ljava9/util/function/Consumer;)V

    .line 496
    iput-object v1, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava9/util/stream/Node;

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava9/util/Spliterator;

    if-eqz v0, :cond_1

    .line 500
    iget-object v2, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava9/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava9/util/stream/Sink;

    invoke-virtual {v2, v3, v0}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    .line 501
    iput-object v1, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava9/util/Spliterator;

    .line 508
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;

    .line 509
    .local v0, "leftDescendant":Ljava9/util/stream/ForEachOps$ForEachOrderedTask;, "Ljava9/util/stream/ForEachOps$ForEachOrderedTask<TS;TT;>;"
    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {v0}, Ljava9/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    .line 512
    :cond_2
    return-void
.end method
