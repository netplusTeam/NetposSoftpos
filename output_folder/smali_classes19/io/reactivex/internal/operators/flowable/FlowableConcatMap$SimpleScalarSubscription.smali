.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "FlowableConcatMap.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleScalarSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 358
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "downstream":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 359
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->value:Ljava/lang/Object;

    .line 360
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 361
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 375
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription<TT;>;"
    return-void
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 365
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 367
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 368
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 370
    .end local v0    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_0
    return-void
.end method
