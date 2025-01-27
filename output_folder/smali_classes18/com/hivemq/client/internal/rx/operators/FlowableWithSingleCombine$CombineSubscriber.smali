.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;
.super Ljava/lang/Object;
.source "FlowableWithSingleCombine.java"

# interfaces
.implements Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombineSubscriber"
.end annotation

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


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPLETE:Ljava/lang/Object;


# instance fields
.field private done:Ljava/lang/Object;

.field private queued:Ljava/lang/Object;

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->COMPLETE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 62
    return-void
.end method

.method private next(Ljava/lang/Object;)V
    .locals 4
    .param p1, "next"    # Ljava/lang/Object;

    .line 81
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->queued:Ljava/lang/Object;

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 90
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->queued:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->COMPLETE:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->done:Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 101
    :goto_0
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 106
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->queued:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->done:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 112
    :goto_0
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->next(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public onSingle(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->next(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    .line 67
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 68
    return-void
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .line 117
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber<TF;TS;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_5

    .line 118
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->queued:Ljava/lang/Object;

    .line 122
    .local v2, "queued":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 123
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->queued:Ljava/lang/Object;

    .line 124
    iget-object v4, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    invoke-static {v4, v5, v6}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 125
    iget-object v4, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 126
    sub-long/2addr p1, v5

    .line 127
    iget-object v4, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->done:Ljava/lang/Object;

    .line 128
    .local v4, "done":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 129
    iput-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->done:Ljava/lang/Object;

    .line 130
    instance-of v0, v4, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 135
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    .end local v4    # "done":Ljava/lang/Object;
    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 141
    .end local v2    # "queued":Ljava/lang/Object;
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 146
    :cond_4
    :goto_1
    return-void

    .line 117
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
