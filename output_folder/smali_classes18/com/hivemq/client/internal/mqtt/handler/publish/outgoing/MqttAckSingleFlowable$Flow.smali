.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
.source "MqttAckSingleFlowable.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flow"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final STATE_CANCELLED:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_REQUESTED:I = 0x2

.field private static final STATE_RESULT:I = 0x1


# instance fields
.field private final outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

.field private result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V
    .locals 2
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "outgoingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;>;"
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 83
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    .line 84
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->init()Z

    .line 85
    return-void
.end method

.method private done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 2
    .param p1, "result"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 110
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->acknowledged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->acknowledged(J)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method acknowledged(J)V
    .locals 3
    .param p1, "acknowledged"    # J

    .line 118
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->setDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->request(J)V

    .line 123
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "a single publish must be acknowledged exactly once"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCancel()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_0
    return-void
.end method

.method onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 3
    .param p1, "result"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 90
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 103
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 101
    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 97
    nop

    .line 106
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 143
    .local v0, "result":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    if-eqz v0, :cond_1

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 145
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 150
    :cond_1
    return-void
.end method
