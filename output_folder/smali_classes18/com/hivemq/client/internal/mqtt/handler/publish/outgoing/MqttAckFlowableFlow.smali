.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
.source "MqttAckFlowableFlow.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# static fields
.field private static final STATE_BLOCKED:I = 0x2

.field private static final STATE_NEW_REQUESTS:I = 0x1

.field private static final STATE_NO_NEW_REQUESTS:I


# instance fields
.field private volatile acknowledged:J

.field private error:Ljava/lang/Throwable;

.field private final linkedFlow:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final newRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

.field private final published:Ljava/util/concurrent/atomic/AtomicLong;

.field private final queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;",
            ">;"
        }
    .end annotation
.end field

.field private final requestState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private requested:J

.field private final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V
    .locals 2
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "outgoingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ")V"
        }
    .end annotation

    .line 64
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;>;"
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->newRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->published:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->linkedFlow:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 66
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    .line 67
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->init()Z

    .line 68
    return-void
.end method

.method private addNewRequested()J
    .locals 5

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    .line 173
    return-wide v3

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->newRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 180
    .local v0, "newRequested":J
    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    .line 181
    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requested:J

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requested:J

    return-wide v2

    .line 183
    .end local v0    # "newRequested":J
    :cond_1
    goto :goto_0
.end method

.method private cancelLink()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->linkedFlow:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;->CANCELLED:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;

    .line 197
    .local v0, "linkedFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;->cancelLink()V

    .line 200
    :cond_0
    return-void
.end method

.method private requested()J
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requested:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->addNewRequested()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method acknowledged(J)V
    .locals 4
    .param p1, "newAcknowledged"    # J

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 118
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->acknowledged:J

    add-long/2addr v0, p1

    .line 119
    .local v0, "acknowledged":J
    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->acknowledged:J

    .line 120
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->published:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->setDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 122
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 127
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->request(J)V

    .line 129
    .end local v0    # "acknowledged":J
    :cond_2
    return-void
.end method

.method link(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;)V
    .locals 2
    .param p1, "linkedFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;

    .line 203
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->linkedFlow:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;->cancelLink()V

    .line 206
    :cond_0
    return-void
.end method

.method protected onCancel()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->cancelLink()V

    .line 193
    return-void
.end method

.method onComplete(J)V
    .locals 3
    .param p1, "published"    # J

    .line 132
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->published:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->acknowledged:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 138
    :cond_1
    return-void
.end method

.method onError(Ljava/lang/Throwable;J)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "published"    # J

    .line 141
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->error:Ljava/lang/Throwable;

    .line 142
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->published:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 144
    return-void

    .line 146
    :cond_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->acknowledged:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 149
    :cond_1
    return-void
.end method

.method onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 1
    .param p1, "result"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 73
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offer(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->run()V

    .line 75
    return-void
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->newRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 155
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "emitted":J
    const-wide/16 v2, 0x0

    .line 82
    .local v2, "acknowledged":J
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requested()J

    move-result-wide v4

    .line 84
    .local v4, "requested":J
    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_5

    .line 86
    :cond_0
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 87
    .local v6, "result":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    if-nez v6, :cond_1

    .line 88
    goto :goto_2

    .line 90
    :cond_1
    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v7, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->acknowledged()Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_2

    .line 92
    add-long/2addr v2, v8

    .line 94
    :cond_2
    add-long/2addr v0, v8

    .line 95
    .end local v6    # "result":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    move-object v7, v6

    .local v7, "result":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    if-eqz v6, :cond_5

    .line 100
    invoke-virtual {v7}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->acknowledged()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    add-long/2addr v2, v8

    goto :goto_1

    .line 106
    .end local v7    # "result":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    :cond_4
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->addNewRequested()J

    move-result-wide v4

    goto :goto_0

    .line 108
    :cond_5
    :goto_2
    iget-wide v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requested:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    .line 109
    sub-long/2addr v6, v0

    iput-wide v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->requested:J

    .line 111
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->acknowledged(J)V

    .line 112
    return-void
.end method
