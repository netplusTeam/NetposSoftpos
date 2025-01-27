.class public Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;
.super Ljava/lang/Object;
.source "WithSingleStrictSubscriber.java"

# interfaces
.implements Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/rx/FlowableWithSingleSubscriber<",
        "TF;TS;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "TF;TS;>;"
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

.field private final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "TF;TS;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<TF;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    .line 44
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 125
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 126
    .local v0, "subscription":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 127
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 129
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 96
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onComplete()V

    .line 99
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 87
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->error:Ljava/lang/Throwable;

    .line 88
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->error:Ljava/lang/Throwable;

    .line 92
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onComplete()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v1, v0}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->error:Ljava/lang/Throwable;

    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public onSingle(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 5
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 48
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p0}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 50
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 52
    .local v3, "requested":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 55
    .end local v3    # "requested":J
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 60
    invoke-virtual {p0}, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->cancel()V

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\u00a72.12 violated: onSubscribe must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 63
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .line 103
    .local p0, "this":Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber<TF;TS;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->cancel()V

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u00a73.9 violated: positive request amount required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscription;

    .line 108
    .local v2, "subscription":Lorg/reactivestreams/Subscription;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    .line 109
    invoke-interface {v2, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 112
    iget-object v3, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/reactivestreams/Subscription;

    .line 113
    if-eqz v2, :cond_2

    if-eq v2, p0, :cond_2

    .line 114
    iget-object v3, p0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 115
    .local v3, "requested":J
    cmp-long v0, v3, v0

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v2, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 121
    .end local v2    # "subscription":Lorg/reactivestreams/Subscription;
    .end local v3    # "requested":J
    :cond_2
    :goto_0
    return-void
.end method
