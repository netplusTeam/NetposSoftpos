.class abstract Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableCreate.java"

# interfaces
.implements Lio/reactivex/FlowableEmitter;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableEmitter<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final serial:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    .local p1, "downstream":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 252
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    .line 253
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 254
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 301
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 302
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onUnsubscribed()V

    .line 303
    return-void
.end method

.method protected complete()V
    .locals 2

    .line 262
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 269
    nop

    .line 270
    return-void

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 269
    throw v0
.end method

.method protected error(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 285
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 295
    nop

    .line 296
    const/4 v0, 0x1

    return v0

    .line 294
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 295
    throw v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 311
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .line 258
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->complete()V

    .line 259
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 274
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 277
    :cond_0
    return-void
.end method

.method onRequested()V
    .locals 0

    .line 324
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method onUnsubscribed()V
    .locals 0

    .line 307
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method public final request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 316
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 318
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onRequested()V

    .line 320
    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    .line 338
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final serialize()Lio/reactivex/FlowableEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/FlowableEmitter<",
            "TT;>;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;-><init>(Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;)V

    return-object v0
.end method

.method public final setCancellable(Lio/reactivex/functions/Cancellable;)V
    .locals 1
    .param p1, "c"    # Lio/reactivex/functions/Cancellable;

    .line 333
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    new-instance v0, Lio/reactivex/internal/disposables/CancellableDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/CancellableDisposable;-><init>(Lio/reactivex/functions/Cancellable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 334
    return-void
.end method

.method public final setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 328
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    .line 329
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 348
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 281
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;, "Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->error(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
