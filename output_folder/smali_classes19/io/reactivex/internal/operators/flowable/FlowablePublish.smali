.class public final Lio/reactivex/internal/operators/flowable/FlowablePublish;
.super Lio/reactivex/flowables/ConnectableFlowable;
.source "FlowablePublish.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamPublisher;
.implements Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;,
        Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/ConnectableFlowable<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/HasUpstreamPublisher<",
        "TT;>;",
        "Lio/reactivex/internal/operators/flowable/FlowablePublishClassic<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:J = -0x8000000000000000L


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/Flowable;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish;, "Lio/reactivex/internal/operators/flowable/FlowablePublish<TT;>;"
    .local p1, "onSubscribe":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TT;>;"
    .local p2, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;-><init>()V

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->onSubscribe:Lorg/reactivestreams/Publisher;

    .line 71
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->source:Lio/reactivex/Flowable;

    .line 72
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->bufferSize:I

    .line 74
    return-void
.end method

.method public static create(Lio/reactivex/Flowable;I)Lio/reactivex/flowables/ConnectableFlowable;
    .locals 3
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 64
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 65
    .local v1, "onSubscribe":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TT;>;"
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowablePublish;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/Flowable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/flowables/ConnectableFlowable;)Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish;, "Lio/reactivex/internal/operators/flowable/FlowablePublish<TT;>;"
    .local p1, "connection":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lio/reactivex/disposables/Disposable;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;

    .line 109
    .local v0, "ps":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->bufferSize:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 113
    .local v1, "u":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    move-object v0, v1

    .line 122
    .end local v1    # "u":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    move v1, v2

    .line 123
    .local v1, "doConnect":Z
    nop

    .line 139
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    nop

    .line 144
    if-eqz v1, :cond_4

    .line 145
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->source:Lio/reactivex/Flowable;

    invoke-virtual {v2, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 147
    :cond_4
    return-void

    .line 140
    :catchall_0
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 142
    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public publishBufferSize()I
    .locals 1

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish;, "Lio/reactivex/internal/operators/flowable/FlowablePublish<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->bufferSize:I

    return v0
.end method

.method public publishSource()Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish;, "Lio/reactivex/internal/operators/flowable/FlowablePublish<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->source:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public source()Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish;, "Lio/reactivex/internal/operators/flowable/FlowablePublish<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->source:Lio/reactivex/Flowable;

    return-object v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish;, "Lio/reactivex/internal/operators/flowable/FlowablePublish<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish;->onSubscribe:Lorg/reactivestreams/Publisher;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 98
    return-void
.end method
