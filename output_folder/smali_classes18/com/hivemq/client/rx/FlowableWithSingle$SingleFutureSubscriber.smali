.class Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;
.super Lio/reactivex/Flowable;
.source "FlowableWithSingle.java"

# interfaces
.implements Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/rx/FlowableWithSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleFutureSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TF;>;",
        "Lcom/hivemq/client/rx/FlowableWithSingleSubscriber<",
        "TF;TS;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final future:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final source:Lcom/hivemq/client/rx/FlowableWithSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation
.end field

.field private subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TF;>;"
        }
    .end annotation
.end field

.field private final subscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    const-class v0, Lcom/hivemq/client/rx/FlowableWithSingle;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;)V"
        }
    .end annotation

    .line 370
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    .local p1, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 360
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    .line 371
    iput-object p1, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    .line 354
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private cancel(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 447
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 448
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 449
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    if-eqz v0, :cond_0

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 452
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 440
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 441
    .local v0, "subscription":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 442
    invoke-direct {p0, v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->cancel(Lorg/reactivestreams/Subscription;)V

    .line 444
    :cond_0
    return-void
.end method

.method getFutureBeforeSubscribe()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 376
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    if-eqz v0, :cond_0

    .line 377
    return-object v0

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public onComplete()V
    .locals 2

    .line 411
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 413
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    if-eqz v0, :cond_0

    .line 414
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 417
    return-void

    .line 411
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 421
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 423
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 427
    return-void

    .line 421
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 407
    return-void

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onSingle(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 397
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->future:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 398
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 388
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->cancel(Lorg/reactivestreams/Subscription;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 393
    return-void

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 431
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 432
    .local v0, "subscription":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_1

    .line 433
    if-eq v0, p0, :cond_0

    .line 434
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 436
    :cond_0
    return-void

    .line 432
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TF;>;)V"
        }
    .end annotation

    .line 382
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TF;>;"
    iput-object p1, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 383
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    invoke-virtual {v0, p0}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 384
    return-void
.end method
