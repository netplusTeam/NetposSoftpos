.class final Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;
.super Ljava/lang/Object;
.source "FlowableAnySingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableAnySingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->predicate:Lio/reactivex/functions/Predicate;

    .line 58
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 115
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 116
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 117
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 121
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    .line 108
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 94
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 96
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    .line 100
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .local v0, "b":Z
    nop

    .line 84
    if-eqz v0, :cond_1

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->done:Z

    .line 86
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 87
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 90
    :cond_1
    return-void

    .line 77
    .end local v0    # "b":Z
    :catchall_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 79
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 80
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 81
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 65
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 67
    :cond_0
    return-void
.end method
