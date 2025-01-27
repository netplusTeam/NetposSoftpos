.class public Lio/reactivex/observers/TestObserver;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "TestObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/TestObserver$EmptyObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/observers/TestObserver<",
        "TT;>;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# instance fields
.field private final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private qd:Lio/reactivex/internal/fuseable/QueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    sget-object v0, Lio/reactivex/observers/TestObserver$EmptyObserver;->INSTANCE:Lio/reactivex/observers/TestObserver$EmptyObserver;

    invoke-direct {p0, v0}, Lio/reactivex/observers/TestObserver;-><init>(Lio/reactivex/Observer;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/observers/BaseTestConsumer;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    iput-object p1, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    .line 77
    return-void
.end method

.method public static create()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    return-object v0
.end method

.method public static create(Lio/reactivex/Observer;)Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "-TT;>;)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "delegate":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0, p0}, Lio/reactivex/observers/TestObserver;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method static fusionModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 311
    packed-switch p0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    :pswitch_0
    const-string v0, "ASYNC"

    return-object v0

    .line 313
    :pswitch_1
    const-string v0, "SYNC"

    return-object v0

    .line 312
    :pswitch_2
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final assertFuseable()Lio/reactivex/observers/TestObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_0

    .line 329
    return-object p0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Upstream is not fuseable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final assertFusionMode(I)Lio/reactivex/observers/TestObserver;
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    .line 299
    .local v0, "m":I
    if-eq v0, p1, :cond_1

    .line 300
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fusion mode different. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lio/reactivex/observers/TestObserver;->fusionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    invoke-static {v0}, Lio/reactivex/observers/TestObserver;->fusionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 304
    :cond_0
    const-string v1, "Upstream is not fuseable"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 307
    :cond_1
    return-object p0
.end method

.method final assertNotFuseable()Lio/reactivex/observers/TestObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    if-nez v0, :cond_0

    .line 342
    return-object p0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Upstream is fuseable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .line 34
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->assertNotSubscribed()Lio/reactivex/observers/TestObserver;

    move-result-object v0

    return-object v0
.end method

.method public final assertNotSubscribed()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    return-object p0

    .line 259
    :cond_0
    const-string v0, "Not subscribed but errors found"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 256
    :cond_1
    const-string v0, "Subscribed!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final assertOf(Lio/reactivex/functions/Consumer;)Lio/reactivex/observers/TestObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;>;)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "check":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lio/reactivex/observers/TestObserver<TT;>;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    nop

    .line 275
    return-object p0

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .line 34
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->assertSubscribed()Lio/reactivex/observers/TestObserver;

    move-result-object v0

    return-object v0
.end method

.method public final assertSubscribed()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    return-object p0

    .line 244
    :cond_0
    const-string v0, "Not subscribed!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/TestObserver;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final cancel()V
    .locals 0

    .line 215
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->dispose()V

    .line 216
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 220
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 221
    return-void
.end method

.method public final hasSubscription()Z
    .locals 1

    .line 234
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 206
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 225
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 184
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 186
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 193
    iget-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/observers/TestObserver;->completions:J

    .line 195
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 161
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 163
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 170
    if-nez p1, :cond_1

    .line 171
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 179
    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 130
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 137
    iget v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 139
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :cond_1
    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->dispose()V

    .line 147
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    if-nez p1, :cond_3

    .line 153
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 7
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 82
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onSubscribe received a null Subscription"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 90
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscribe received multiple subscriptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    return-void

    .line 96
    :cond_2
    iget v0, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    if-eqz v0, :cond_4

    .line 97
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_4

    .line 98
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueDisposable;

    iput-object v0, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    .line 100
    iget v1, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v0

    .line 101
    .local v0, "m":I
    iput v0, p0, Lio/reactivex/observers/TestObserver;->establishedFusionMode:I

    .line 103
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 104
    iput-boolean v1, p0, Lio/reactivex/observers/TestObserver;->checkSubscriptionOnce:Z

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/observers/TestObserver;->lastThread:Ljava/lang/Thread;

    .line 108
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_3
    iget-wide v3, p0, Lio/reactivex/observers/TestObserver;->completions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/reactivex/observers/TestObserver;->completions:J

    .line 113
    iget-object v1, p0, Lio/reactivex/observers/TestObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/reactivex/observers/TestObserver;->errors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 123
    .end local v0    # "m":I
    :cond_4
    iget-object v0, p0, Lio/reactivex/observers/TestObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 124
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 347
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/observers/TestObserver;->onNext(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lio/reactivex/observers/TestObserver;->onComplete()V

    .line 349
    return-void
.end method

.method final setInitialFusionMode(I)Lio/reactivex/observers/TestObserver;
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lio/reactivex/observers/TestObserver;, "Lio/reactivex/observers/TestObserver<TT;>;"
    iput p1, p0, Lio/reactivex/observers/TestObserver;->initialFusionMode:I

    .line 287
    return-object p0
.end method
