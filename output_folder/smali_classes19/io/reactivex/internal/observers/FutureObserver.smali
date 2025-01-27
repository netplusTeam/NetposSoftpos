.class public final Lio/reactivex/internal/observers/FutureObserver;
.super Ljava/util/concurrent/CountDownLatch;
.source "FutureObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Ljava/util/concurrent/Future;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field error:Ljava/lang/Throwable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 50
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 51
    .local v0, "a":Lio/reactivex/disposables/Disposable;
    if-eq v0, p0, :cond_3

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->countDown()V

    .line 60
    const/4 v1, 0x1

    return v1

    .line 62
    .end local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_2
    goto :goto_0

    .line 52
    .restart local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public dispose()V
    .locals 0

    .line 169
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 79
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->await()V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->error:Ljava/lang/Throwable;

    .line 86
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 89
    iget-object v1, p0, Lio/reactivex/internal/observers/FutureObserver;->value:Ljava/lang/Object;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/internal/observers/FutureObserver;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {p1, p2, p3}, Lio/reactivex/internal/util/ExceptionHelper;->timeoutMessage(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->error:Ljava/lang/Throwable;

    .line 106
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    .line 109
    iget-object v1, p0, Lio/reactivex/internal/observers/FutureObserver;->value:Ljava/lang/Object;

    return-object v1

    .line 107
    :cond_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 102
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 67
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 173
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->isDone()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 4

    .line 72
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 150
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "The source is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/FutureObserver;->onError(Ljava/lang/Throwable;)V

    .line 152
    return-void

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 156
    .local v0, "a":Lio/reactivex/disposables/Disposable;
    if-eq v0, p0, :cond_3

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->countDown()V

    .line 161
    return-void

    .line 163
    .end local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_2
    goto :goto_0

    .line 157
    .restart local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_3
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 129
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/observers/FutureObserver;->error:Ljava/lang/Throwable;

    .line 133
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 134
    .local v0, "a":Lio/reactivex/disposables/Disposable;
    if-eq v0, p0, :cond_2

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/observers/FutureObserver;->countDown()V

    .line 140
    return-void

    .line 142
    .end local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_1
    goto :goto_0

    .line 135
    .restart local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_2
    :goto_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 136
    return-void

    .line 144
    .end local v0    # "a":Lio/reactivex/disposables/Disposable;
    :cond_3
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 121
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "More than one element received"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/FutureObserver;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/observers/FutureObserver;->value:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 114
    .local p0, "this":Lio/reactivex/internal/observers/FutureObserver;, "Lio/reactivex/internal/observers/FutureObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/FutureObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 115
    return-void
.end method
