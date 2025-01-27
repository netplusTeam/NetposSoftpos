.class final Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "ParallelReduceFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelReduceFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelReduceFullMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4a8674a85e439ebdL


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final subscribers:[Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/functions/BiFunction;)V
    .locals 3
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber<TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TT;TT;TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-array v0, p2, [Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;

    .line 71
    .local v0, "a":[Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;, "[Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 72
    new-instance v2, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;

    invoke-direct {v2, p0, p3}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;-><init>(Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;Lio/reactivex/functions/BiFunction;)V

    aput-object v2, v0, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;

    .line 75
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    .line 76
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 77
    return-void
.end method


# virtual methods
.method addValue(Ljava/lang/Object;)Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;

    .line 83
    .local v0, "curr":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    new-instance v2, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;

    invoke-direct {v2}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;-><init>()V

    move-object v0, v2

    .line 85
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->tryAcquireSlot()I

    move-result v2

    .line 91
    .local v2, "c":I
    if-gez v2, :cond_1

    .line 92
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    if-nez v2, :cond_2

    .line 96
    iput-object p1, v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->first:Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_2
    iput-object p1, v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->second:Ljava/lang/Object;

    .line 101
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->releaseSlot()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    return-object v0

    .line 105
    :cond_3
    return-object v1
.end method

.method public cancel()V
    .locals 4

    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 112
    .local v3, "inner":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;->cancel()V

    .line 111
    .end local v3    # "inner":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method innerComplete(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 130
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->addValue(Ljava/lang/Object;)Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;

    move-result-object v0

    .line 132
    .local v0, "sp":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->first:Ljava/lang/Object;

    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->second:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The reducer returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 140
    nop

    .line 145
    .end local v0    # "sp":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    goto :goto_0

    .line 136
    .restart local v0    # "sp":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    :catchall_0
    move-exception v1

    .line 137
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->innerError(Ljava/lang/Throwable;)V

    .line 139
    return-void

    .line 148
    .end local v0    # "sp":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;

    .line 150
    .restart local v0    # "sp":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 152
    if-eqz v0, :cond_1

    .line 153
    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->complete(Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 158
    .end local v0    # "sp":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair<TT;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->cancel()V

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 122
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 125
    :cond_1
    :goto_0
    return-void
.end method
