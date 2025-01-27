.class final Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BlockingObservableIterable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Ljava/util/Iterator;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/BlockingObservableIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingObservableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5cea3901b29dcb72L


# instance fields
.field final condition:Ljava/util/concurrent/locks/Condition;

.field volatile done:Z

.field volatile error:Ljava/lang/Throwable;

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "batchSize"    # I

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    .line 61
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    .line 62
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 155
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    .line 157
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->error:Ljava/lang/Throwable;

    .line 69
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 72
    return v1

    .line 70
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    .line 75
    .local v0, "d":Z
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v2

    .line 76
    .local v2, "empty":Z
    if-eqz v0, :cond_3

    .line 77
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->error:Ljava/lang/Throwable;

    .line 78
    .local v3, "e":Ljava/lang/Throwable;
    if-nez v3, :cond_2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    return v1

    .line 79
    :cond_2
    invoke-static {v3}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 85
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_3
    if-eqz v2, :cond_5

    .line 87
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 88
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    :cond_4
    :try_start_2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    nop

    .line 100
    nop

    .line 104
    .end local v0    # "d":Z
    .end local v2    # "empty":Z
    goto :goto_0

    .line 94
    .restart local v0    # "d":Z
    .restart local v2    # "empty":Z
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    nop

    .end local v0    # "d":Z
    .end local v2    # "empty":Z
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .restart local v0    # "d":Z
    .restart local v2    # "empty":Z
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 98
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    .line 99
    invoke-static {v1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 102
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 161
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    .line 137
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 128
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->error:Ljava/lang/Throwable;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->done:Z

    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    .line 131
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->signalConsumer()V

    .line 124
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 118
    return-void
.end method

.method public remove()V
    .locals 2

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method signalConsumer()V
    .locals 2

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    throw v0
.end method
