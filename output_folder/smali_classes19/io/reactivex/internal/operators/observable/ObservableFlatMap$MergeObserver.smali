.class final Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field lastId:J

.field lastIndex:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field

.field sources:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field uniqueId:J

.field upstream:Lio/reactivex/disposables/Disposable;

.field wip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 80
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;ZII)V
    .locals 2
    .param p3, "delayErrors"    # Z
    .param p4, "maxConcurrency"    # I
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/ObservableSource<+TU;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 72
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->mapper:Lio/reactivex/functions/Function;

    .line 96
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    .line 97
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    .line 98
    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    .line 99
    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    .line 102
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    return-void
.end method


# virtual methods
.method addInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 174
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 175
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    .line 177
    return v2

    .line 179
    :cond_0
    array-length v1, v0

    .line 180
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 181
    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    aput-object p1, v3, v1

    .line 183
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const/4 v2, 0x1

    return v2

    .line 186
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :cond_1
    goto :goto_0
.end method

.method checkTerminate()Z
    .locals 3

    .line 503
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 504
    return v1

    .line 506
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 507
    .local v0, "e":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    .line 509
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 510
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 511
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 513
    :cond_1
    return v1

    .line 515
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public dispose()V
    .locals 2

    .line 308
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    .line 310
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 312
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    .line 313
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 317
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method disposeAll()Z
    .locals 4

    .line 519
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 520
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 521
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->CANCELLED:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 522
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 523
    if-eq v0, v1, :cond_1

    .line 524
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 525
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    .line 524
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 530
    :cond_1
    return v2
.end method

.method drain()V
    .locals 1

    .line 325
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    .line 328
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 19

    .line 331
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    .line 332
    .local v2, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    const/4 v0, 0x1

    move v3, v0

    .line 334
    .local v3, "missed":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 338
    .local v0, "innerCompleted":I
    iget-object v4, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 340
    .local v4, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    if-eqz v4, :cond_3

    .line 342
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    return-void

    .line 346
    :cond_1
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 348
    .local v5, "o":Ljava/lang/Object;, "TU;"
    if-nez v5, :cond_2

    .line 349
    move v5, v0

    goto :goto_2

    .line 352
    :cond_2
    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 353
    nop

    .end local v5    # "o":Ljava/lang/Object;, "TU;"
    add-int/lit8 v0, v0, 0x1

    .line 354
    goto :goto_1

    .line 340
    :cond_3
    move v5, v0

    .line 357
    .end local v0    # "innerCompleted":I
    .local v5, "innerCompleted":I
    :goto_2
    const v6, 0x7fffffff

    if-eqz v5, :cond_5

    .line 358
    iget v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    if-eq v0, v6, :cond_4

    .line 359
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeMore(I)V

    .line 360
    const/4 v0, 0x0

    move-object/from16 v17, v2

    .end local v5    # "innerCompleted":I
    .restart local v0    # "innerCompleted":I
    goto/16 :goto_e

    .line 358
    .end local v0    # "innerCompleted":I
    .restart local v5    # "innerCompleted":I
    :cond_4
    move-object/from16 v17, v2

    goto/16 :goto_e

    .line 365
    :cond_5
    iget-boolean v7, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    .line 366
    .local v7, "d":Z
    iget-object v4, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 367
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 368
    .local v8, "inner":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    array-length v9, v8

    .line 370
    .local v9, "n":I
    const/4 v10, 0x0

    .line 371
    .local v10, "nSources":I
    iget v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    if-eq v0, v6, :cond_6

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    move v10, v0

    .line 374
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 377
    :cond_6
    :goto_3
    if-eqz v7, :cond_a

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    if-nez v9, :cond_a

    if-nez v10, :cond_a

    .line 378
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 379
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v6, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v6, :cond_9

    .line 380
    if-nez v0, :cond_8

    .line 381
    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_4

    .line 383
    :cond_8
    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 386
    :cond_9
    :goto_4
    return-void

    .line 389
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_a
    if-eqz v9, :cond_1c

    .line 390
    iget-wide v11, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    .line 391
    .local v11, "startId":J
    iget v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    .line 393
    .local v0, "index":I
    if-le v9, v0, :cond_c

    aget-object v13, v8, v0

    iget-wide v13, v13, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    cmp-long v13, v13, v11

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_b
    move v6, v0

    move/from16 v16, v7

    goto :goto_8

    .line 394
    :cond_c
    :goto_5
    if-gt v9, v0, :cond_d

    .line 395
    const/4 v0, 0x0

    .line 397
    :cond_d
    move v13, v0

    .line 398
    .local v13, "j":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v9, :cond_10

    .line 399
    aget-object v15, v8, v13

    move/from16 v16, v7

    .end local v7    # "d":Z
    .local v16, "d":Z
    iget-wide v6, v15, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_e

    .line 400
    goto :goto_7

    .line 402
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 403
    if-ne v13, v9, :cond_f

    .line 404
    const/4 v6, 0x0

    move v13, v6

    .line 398
    :cond_f
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    const v6, 0x7fffffff

    goto :goto_6

    .end local v16    # "d":Z
    .restart local v7    # "d":Z
    :cond_10
    move/from16 v16, v7

    .line 407
    .end local v7    # "d":Z
    .end local v14    # "i":I
    .restart local v16    # "d":Z
    :goto_7
    move v0, v13

    .line 408
    iput v13, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    .line 409
    aget-object v6, v8, v13

    iget-wide v6, v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    iput-wide v6, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    move v6, v0

    .line 412
    .end local v0    # "index":I
    .end local v13    # "j":I
    .local v6, "index":I
    :goto_8
    move v0, v6

    .line 414
    .local v0, "j":I
    const/4 v7, 0x0

    move v13, v7

    move v7, v5

    move v5, v0

    .end local v0    # "j":I
    .local v5, "j":I
    .local v7, "innerCompleted":I
    .local v13, "i":I
    :goto_9
    if-ge v13, v9, :cond_1b

    .line 415
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 416
    return-void

    .line 420
    :cond_11
    aget-object v14, v8, v5

    .line 421
    .local v14, "is":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    iget-object v15, v14, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 422
    .local v15, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-eqz v15, :cond_16

    .line 426
    :goto_a
    :try_start_1
    invoke-interface {v15}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    .local v0, "o":Ljava/lang/Object;, "TU;"
    nop

    .line 442
    if-nez v0, :cond_12

    .line 443
    move-object/from16 v17, v2

    goto :goto_b

    .line 446
    :cond_12
    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 449
    return-void

    .line 451
    .end local v0    # "o":Ljava/lang/Object;, "TU;"
    :cond_13
    goto :goto_a

    .line 427
    :catchall_1
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    .line 428
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 429
    invoke-virtual {v14}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->dispose()V

    .line 430
    move-object/from16 v17, v2

    .end local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local v17, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 431
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 432
    return-void

    .line 434
    :cond_14
    invoke-virtual {v1, v14}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    .line 435
    add-int/lit8 v7, v7, 0x1

    .line 436
    add-int/lit8 v5, v5, 0x1

    .line 437
    if-ne v5, v9, :cond_15

    .line 438
    const/4 v5, 0x0

    .line 440
    :cond_15
    goto :goto_c

    .line 422
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .restart local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    :cond_16
    move-object/from16 v17, v2

    .line 454
    .end local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .restart local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    :goto_b
    iget-boolean v0, v14, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 455
    .local v0, "innerDone":Z
    iget-object v2, v14, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 456
    .local v2, "innerQueue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-eqz v0, :cond_19

    if-eqz v2, :cond_17

    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 457
    :cond_17
    invoke-virtual {v1, v14}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->checkTerminate()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 459
    return-void

    .line 461
    :cond_18
    add-int/lit8 v7, v7, 0x1

    .line 464
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 465
    if-ne v5, v9, :cond_1a

    .line 466
    const/4 v5, 0x0

    .line 414
    .end local v0    # "innerDone":Z
    .end local v2    # "innerQueue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    .end local v14    # "is":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    .end local v15    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_1a
    :goto_c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v17

    goto :goto_9

    .end local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local v2, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    :cond_1b
    move-object/from16 v17, v2

    .line 469
    .end local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .end local v13    # "i":I
    .restart local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    iput v5, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastIndex:I

    .line 470
    aget-object v0, v8, v5

    iget-wide v13, v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    iput-wide v13, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->lastId:J

    move v5, v7

    goto :goto_d

    .line 389
    .end local v6    # "index":I
    .end local v11    # "startId":J
    .end local v16    # "d":Z
    .end local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .restart local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local v5, "innerCompleted":I
    .local v7, "d":Z
    :cond_1c
    move-object/from16 v17, v2

    move/from16 v16, v7

    .line 473
    .end local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .end local v7    # "d":Z
    .restart local v16    # "d":Z
    .restart local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    :goto_d
    if-eqz v5, :cond_1e

    .line 474
    iget v0, v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1d

    .line 475
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeMore(I)V

    .line 476
    const/4 v0, 0x0

    .line 334
    .end local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .end local v5    # "innerCompleted":I
    .end local v8    # "inner":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v9    # "n":I
    .end local v10    # "nSources":I
    .end local v16    # "d":Z
    .end local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .restart local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    :cond_1d
    :goto_e
    move-object/from16 v2, v17

    .end local v2    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .restart local v17    # "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    goto/16 :goto_0

    .line 481
    .restart local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v5    # "innerCompleted":I
    .restart local v8    # "inner":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .restart local v9    # "n":I
    .restart local v10    # "nSources":I
    .restart local v16    # "d":Z
    :cond_1e
    neg-int v0, v3

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addAndGet(I)I

    move-result v3

    .line 482
    if-nez v3, :cond_1f

    .line 483
    nop

    .line 486
    .end local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .end local v5    # "innerCompleted":I
    .end local v8    # "inner":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v9    # "n":I
    .end local v10    # "nSources":I
    .end local v16    # "d":Z
    return-void

    .line 485
    :cond_1f
    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 321
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 299
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    if-eqz v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    .line 303
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    .line 304
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 285
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    .line 291
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 295
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->done:Z

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    .local v0, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    nop

    .line 129
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    .line 136
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 139
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeInner(Lio/reactivex/ObservableSource;)V

    .line 140
    return-void

    .line 122
    .end local v0    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    :catchall_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 125
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 111
    :cond_0
    return-void
.end method

.method removeInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 192
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    array-length v1, v0

    .line 193
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    const/4 v2, -0x1

    .line 197
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 198
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 199
    move v2, v3

    .line 200
    goto :goto_2

    .line 197
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 204
    return-void

    .line 207
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 208
    sget-object v3, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    goto :goto_3

    .line 210
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 211
    .local v4, "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 214
    .end local v4    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .restart local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 215
    return-void

    .line 217
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<**>;"
    :cond_5
    goto :goto_0
.end method

.method subscribeInner(Lio/reactivex/ObservableSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    :goto_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 146
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->tryEmitScalar(Ljava/util/concurrent/Callable;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "empty":Z
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    move-object p1, v1

    .line 150
    if-nez p1, :cond_0

    .line 151
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    .line 157
    goto :goto_1

    .line 159
    .end local v0    # "empty":Z
    :cond_1
    goto :goto_0

    .line 154
    .restart local v0    # "empty":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 163
    .end local v0    # "empty":Z
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->uniqueId:J

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V

    .line 164
    .local v0, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addInner(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 170
    .end local v0    # "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method subscribeMore(I)V
    .locals 2
    .param p1, "innerCompleted"    # I

    .line 489
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "innerCompleted":I
    .local v0, "innerCompleted":I
    if-eqz p1, :cond_1

    .line 491
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->sources:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    .line 493
    .local p1, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    if-nez p1, :cond_0

    .line 494
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->wip:I

    .line 495
    monitor-exit p0

    goto :goto_1

    .line 497
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->subscribeInner(Lio/reactivex/ObservableSource;)V

    .line 499
    .end local p1    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    nop

    .line 489
    :goto_1
    move p1, v0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 500
    :cond_1
    return-void
.end method

.method tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 264
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    .local p2, "inner":Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 267
    return-void

    .line 270
    :cond_0
    iget-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 271
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-nez v0, :cond_1

    .line 272
    new-instance v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 273
    iput-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 275
    :cond_1
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    return-void

    .line 280
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    .line 281
    return-void
.end method

.method tryEmitScalar(Ljava/util/concurrent/Callable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;)Z"
        }
    .end annotation

    .line 223
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver<TT;TU;>;"
    .local p1, "value":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TU;>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v1, "u":Ljava/lang/Object;, "TU;"
    nop

    .line 231
    if-nez v1, :cond_0

    .line 232
    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v3, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_5

    .line 238
    return v0

    .line 241
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 242
    .local v2, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    if-nez v2, :cond_3

    .line 243
    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    .line 244
    new-instance v4, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->bufferSize:I

    invoke-direct {v4, v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    move-object v2, v4

    goto :goto_0

    .line 246
    :cond_2
    new-instance v4, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->maxConcurrency:I

    invoke-direct {v4, v5}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v2, v4

    .line 248
    :goto_0
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 251
    :cond_3
    invoke-interface {v2, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 252
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Scalar queue full?!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    .line 253
    return v0

    .line 255
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    return v3

    .line 259
    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drainLoop()V

    .line 260
    return v0

    .line 224
    .end local v1    # "u":Ljava/lang/Object;, "TU;"
    :catchall_0
    move-exception v1

    .line 225
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 226
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 227
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    .line 228
    return v0
.end method
