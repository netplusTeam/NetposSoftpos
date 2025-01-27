.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.source "MqttOutgoingQosHandler.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;
.implements Lcom/hivemq/client/internal/netty/ContextFuture$Listener;


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lcom/hivemq/client/internal/netty/ContextFuture$Listener<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field private static final MAX_CONCURRENT_PUBLISH_FLOWABLES:I = 0x40

.field public static final NAME:Ljava/lang/String; = "qos.outgoing"

.field private static final QOS_2_COMPLETE_RESULT:Z = false


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

.field private final packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

.field private final pending:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

.field private final queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/queues/SpscUnboundedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

.field private sendMaximum:I

.field private shrinkRequests:I

.field private subscription:Lorg/reactivestreams/Subscription;

.field private topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    nop

    .line 82
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    .line 83
    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 3
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;-><init>()V

    .line 92
    new-instance v0, Lorg/jctools/queues/SpscUnboundedArrayQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v0, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 95
    new-instance v0, Lcom/hivemq/client/internal/util/Ranges;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/util/Ranges;-><init>(II)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    .line 98
    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;-><init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    .line 109
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 110
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    .line 111
    return-void
.end method

.method private buildPubRel(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 4
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 553
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    .line 554
    .local v0, "pubRelBuilder":Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v1

    .line 555
    .local v1, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getOutgoingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    move-result-object v2

    .line 557
    .local v2, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    if-eqz v2, :cond_0

    .line 558
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v2, v3, p1, p2, v0}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;->onPubRec(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;)V

    .line 561
    .end local v2    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v2

    return-object v2
.end method

.method private clearQueued(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, "polled":I
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 515
    .local v1, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    if-nez v1, :cond_1

    .line 516
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 517
    nop

    .line 526
    .end local v1    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    return-void

    .line 519
    .restart local v1    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    :cond_0
    const/4 v0, 0x0

    .line 520
    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 524
    nop

    .end local v1    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    add-int/lit8 v0, v0, 0x1

    .line 525
    goto :goto_0
.end method

.method private completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "oldPending"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 451
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 453
    iget v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    .line 454
    .local v0, "packetIdentifier":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    .line 455
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    if-le v0, v1, :cond_0

    .line 456
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/Ranges;->resize(I)I

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-eqz v1, :cond_1

    .line 460
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 462
    :cond_1
    return-void
.end method

.method private static error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "reasonString"    # Ljava/lang/String;

    .line 529
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-static {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private isRepublishIfSessionExpired()Z
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->isRepublishIfSessionExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onSessionStartOrResume$1(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 0
    .param p0, "f"    # Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    return-object p0
.end method

.method static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)I
    .locals 1
    .param p0, "x"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 84
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    return v0
.end method

.method private onPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V
    .locals 3
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "pubAck"    # Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    .line 533
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    .line 534
    .local v0, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getOutgoingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    move-result-object v1

    .line 536
    .local v1, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;
    if-eqz v1, :cond_0

    .line 537
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v1, v2, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;->onPubAck(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;)V

    .line 540
    .end local v1    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;
    :cond_0
    return-void
.end method

.method private onPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 3
    .param p1, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .param p2, "pubComp"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    .line 565
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    .line 566
    .local v0, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getOutgoingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    move-result-object v1

    .line 568
    .local v1, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    if-eqz v1, :cond_0

    .line 569
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v1, v2, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;->onPubComp(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRel;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubComp;)V

    .line 572
    .end local v1    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    :cond_0
    return-void
.end method

.method private onPubRecError(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 3
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 543
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    .line 544
    .local v0, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getOutgoingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    move-result-object v1

    .line 546
    .local v1, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    if-eqz v1, :cond_0

    .line 547
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v1, v2, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;->onPubRecError(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;)V

    .line 550
    .end local v1    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    :cond_0
    return-void
.end method

.method private readPubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubAck"    # Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    .line 324
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;->getPacketIdentifier()I

    move-result v0

    .line 325
    .local v0, "packetIdentifier":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 327
    .local v1, "removed":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    if-nez v1, :cond_0

    .line 328
    const-string v2, "PUBACK contained unknown packet identifier"

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 329
    return-void

    .line 331
    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-nez v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "PUBACK must not be received for a PUBREL"

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 334
    return-void

    .line 336
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 337
    .local v2, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v3

    .line 338
    .local v3, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v4

    sget-object v5, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v4, v5, :cond_2

    .line 339
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v4, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v4, "PUBACK must not be received for a QoS 2 PUBLISH"

    invoke-static {p1, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 341
    return-void

    .line 344
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    .line 346
    invoke-direct {p0, v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    .line 348
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;->isError()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    const-string v5, "PUBACK contained an Error Code"

    invoke-direct {v4, p2, v5}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 350
    .local v4, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v5

    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos1Result;

    invoke-direct {v6, v3, v4, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos1Result;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    invoke-virtual {v5, v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 351
    return-void
.end method

.method private readPubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubComp"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    .line 412
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;->getPacketIdentifier()I

    move-result v0

    .line 413
    .local v0, "packetIdentifier":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 415
    .local v1, "removed":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    if-nez v1, :cond_0

    .line 416
    const-string v2, "PUBCOMP contained unknown packet identifier"

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 417
    return-void

    .line 419
    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    if-nez v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 422
    .local v2, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_1

    .line 423
    const-string v3, "PUBCOMP must not be received for a QoS 1 PUBLISH"

    invoke-static {p1, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_1
    const-string v3, "PUBCOMP must not be received when the PUBREL has not been sent yet"

    invoke-static {p1, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 429
    .end local v2    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    .line 430
    .local v2, "pubRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v3

    .line 431
    .local v3, "pubRel":Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v4

    .line 433
    .local v4, "ackFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
    invoke-direct {p0, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    .line 435
    invoke-direct {p0, v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    .line 441
    move-object v5, v2

    check-cast v5, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;

    .line 442
    .local v5, "intermediate":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->getAsBoolean()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 443
    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->acknowledged(J)V

    .line 446
    .end local v5    # "intermediate":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    :cond_3
    return-void
.end method

.method private readPubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 354
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->getPacketIdentifier()I

    move-result v0

    .line 355
    .local v0, "packetIdentifier":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 357
    .local v1, "got":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    if-nez v1, :cond_0

    .line 358
    const-string v2, "PUBREC contained unknown packet identifier"

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 359
    return-void

    .line 361
    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-nez v2, :cond_1

    .line 362
    const-string v2, "PUBREC must not be received when the PUBREL has already been sent"

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 363
    return-void

    .line 365
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 366
    .local v2, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v3

    .line 367
    .local v3, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v4

    sget-object v5, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v4, v5, :cond_2

    .line 368
    const-string v4, "PUBREC must not be received for a QoS 1 PUBLISH"

    invoke-static {p1, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 369
    return-void

    .line 371
    :cond_2
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v4

    .line 373
    .local v4, "ackFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-virtual {v5}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->isError()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 374
    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v5, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    .line 375
    invoke-direct {p0, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    .line 377
    invoke-direct {p0, v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onPubRecError(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    .line 379
    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    const-string v6, "PUBREC contained an Error Code"

    invoke-direct {v5, p2, v6}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;Ljava/lang/String;)V

    .line 380
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    invoke-direct {v6, v3, v5, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    invoke-virtual {v4, v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 382
    .end local v5    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 383
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->buildPubRel(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v5

    .line 388
    .local v5, "pubRel":Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;

    invoke-direct {v6, v5, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    .line 389
    .local v6, "pubRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    invoke-direct {p0, v2, v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->replacePending(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;)V

    .line 391
    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;

    invoke-direct {v7, v3, p2, v6}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;Ljava/util/function/BooleanSupplier;)V

    invoke-virtual {v4, v7}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 394
    .end local v6    # "pubRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    invoke-direct {p0, p1, v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writePubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    .line 395
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 397
    .end local v5    # "pubRel":Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    :goto_0
    return-void
.end method

.method private replacePending(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;)V
    .locals 1
    .param p1, "publishWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    .param p2, "pubRelWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    .line 406
    iget v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->packetIdentifier:I

    iput v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->packetIdentifier:I

    .line 407
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p1, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->replace(Lcom/hivemq/client/internal/util/collections/NodeList$Node;Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 409
    return-void
.end method

.method private resend(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubOrRelWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 240
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-eqz v0, :cond_0

    .line 242
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 243
    .local v0, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    iget v2, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->packetIdentifier:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    .line 244
    invoke-virtual {v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v1

    .line 245
    .local v1, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    invoke-direct {p0, p1, v1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    .line 246
    .end local v0    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    .end local v1    # "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    goto :goto_0

    .line 247
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    .line 248
    .local v0, "pubRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writePubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    .line 250
    .end local v0    # "pubRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
    :goto_0
    return-void
.end method

.method private writePubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    .line 400
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 401
    return-void
.end method

.method private writePublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publishWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 255
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v0, v1, :cond_0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos0Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    .line 260
    :goto_0
    return-void
.end method

.method private writeQos0Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publishWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 265
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/netty/DefaultContextPromise;

    .line 266
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/hivemq/client/internal/netty/DefaultContextPromise;-><init>(Lio/netty/channel/Channel;Ljava/lang/Object;)V

    .line 265
    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 266
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 267
    return-void
.end method

.method private writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publishWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 286
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/Ranges;->getId()I

    move-result v0

    .line 287
    .local v0, "packetIdentifier":I
    if-gez v0, :cond_0

    .line 288
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "No Packet Identifier available for QoS 1 or 2 PUBLISH. This must not happen and is a bug."

    invoke-interface {v1, v2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 289
    return-void

    .line 291
    :cond_0
    iput v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->packetIdentifier:I

    .line 292
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 295
    nop

    .line 296
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    invoke-virtual {v1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v1

    .line 295
    invoke-direct {p0, p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    .line 298
    return-void
.end method

.method private writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p3, "publishWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 305
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 306
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 308
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 312
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    if-eqz v0, :cond_0

    .line 313
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->readPubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    goto :goto_0

    .line 314
    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    if-eqz v0, :cond_1

    .line 315
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->readPubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    goto :goto_0

    .line 316
    :cond_1
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    if-eqz v0, :cond_2

    .line 317
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->readPubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 321
    :goto_0
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 230
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 231
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 235
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 466
    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iget v0, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->packetIdentifier:I

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 469
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    goto :goto_0

    .line 472
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 474
    :goto_0
    return-void
.end method

.method getPublishFlowables()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    return-object v0
.end method

.method public onComplete()V
    .locals 2

    .line 164
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "MqttPublishFlowables is global and must never complete. This must not happen and is a bug."

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 169
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "MqttPublishFlowables is global and must never error. This must not happen and is a bug."

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public onNext(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 1
    .param p1, "publishWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 156
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v0, p1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onNext(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 478
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    .line 480
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 483
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->isRepublishIfSessionExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .local v0, "current":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    :goto_0
    if-eqz v0, :cond_3

    .line 488
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget v2, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    .line 489
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-eqz v1, :cond_1

    .line 490
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 491
    .local v1, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 492
    .end local v1    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    goto :goto_1

    .line 497
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;

    .line 498
    .local v1, "intermediate":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->getAsBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->acknowledged(J)V

    .line 487
    .end local v1    # "intermediate":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    goto :goto_0

    .line 503
    .end local v0    # "current":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    :cond_3
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->clear()V

    .line 504
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clearQueued(Ljava/lang/Throwable;)V

    .line 505
    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 7
    .param p1, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p2, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 117
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    .line 118
    .local v0, "oldSendMaximum":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximum()I

    move-result v1

    const v2, 0xfff5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    .local v1, "newSendMaximum":I
    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    .line 121
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/Ranges;->resize(I)I

    .line 122
    if-nez v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x1

    const/16 v5, 0x40

    .line 124
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 123
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/Flowable;

    move-result-object v2

    .line 125
    invoke-virtual {v2, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 126
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v2, :cond_0

    .line 127
    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v2, :cond_5

    .line 130
    sub-int v3, v1, v0

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    sub-int/2addr v3, v4

    .line 131
    .local v3, "newRequests":I
    if-lez v3, :cond_2

    .line 132
    const/4 v4, 0x0

    iput v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    .line 133
    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 135
    :cond_2
    neg-int v2, v3

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    .line 138
    .end local v3    # "newRequests":I
    :goto_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendTopicAliasMapping()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    move-result-object v2

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    .line 140
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    .line 141
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 142
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_4

    .line 143
    :cond_3
    invoke-interface {p2, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 146
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 147
    return-void

    .line 129
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 151
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    .line 152
    return-void
.end method

.method public operationComplete(Lcom/hivemq/client/internal/netty/ContextFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/netty/ContextFuture<",
            "+",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "future":Lcom/hivemq/client/internal/netty/ContextFuture;, "Lcom/hivemq/client/internal/netty/ContextFuture<+Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;"
    invoke-interface {p1}, Lcom/hivemq/client/internal/netty/ContextFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 272
    .local v0, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    .line 273
    .local v1, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v2

    .line 274
    .local v2, "ackFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
    invoke-interface {p1}, Lcom/hivemq/client/internal/netty/ContextFuture;->cause()Ljava/lang/Throwable;

    move-result-object v3

    .line 275
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/io/IOException;

    if-nez v4, :cond_0

    .line 276
    new-instance v4, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-direct {v4, v1, v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v4, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    new-instance v5, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v5, v3}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v4, v1, v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 279
    invoke-interface {p1}, Lcom/hivemq/client/internal/netty/ContextFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 281
    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    check-cast p1, Lcom/hivemq/client/internal/netty/ContextFuture;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->operationComplete(Lcom/hivemq/client/internal/netty/ContextFuture;)V

    return-void
.end method

.method request(J)V
    .locals 4
    .param p1, "n"    # J

    .line 174
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_2

    .line 176
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    .line 177
    .local v1, "shrinkRequests":I
    if-nez v1, :cond_0

    .line 178
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 179
    :cond_0
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 180
    const/4 v2, 0x0

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    .line 181
    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    int-to-long v2, v0

    sub-long/2addr v2, p1

    long-to-int v0, v2

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    .line 185
    :goto_0
    return-void

    .line 174
    .end local v1    # "shrinkRequests":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 8

    .line 190
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->hasSession:Z

    if-nez v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->isRepublishIfSessionExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clearQueued(Ljava/lang/Throwable;)V

    .line 194
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 197
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_2

    .line 198
    return-void

    .line 200
    :cond_2
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    .line 201
    .local v1, "channel":Lio/netty/channel/Channel;
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 202
    .local v2, "maxWrites":I
    const/4 v3, 0x0

    .line 203
    .local v3, "written":I
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    .line 204
    .local v4, "pubOrRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    :goto_0
    if-eqz v4, :cond_3

    if-ge v3, v2, :cond_3

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    invoke-direct {p0, v0, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resend(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 205
    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    move-object v4, v5

    iput-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    goto :goto_0

    .line 209
    .end local v4    # "pubOrRelWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
    :cond_3
    const/4 v4, 0x0

    .line 210
    .local v4, "dequeued":I
    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v5}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    .line 212
    .local v5, "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    if-nez v5, :cond_4

    .line 213
    goto :goto_2

    .line 215
    :cond_4
    invoke-direct {p0, v0, v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writePublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    nop

    .end local v5    # "publishWithFlow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
    add-int/lit8 v4, v4, 0x1

    .line 218
    goto :goto_1

    .line 219
    :cond_5
    :goto_2
    if-lez v3, :cond_6

    .line 220
    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v5

    .line 221
    .local v5, "wasWritable":Z
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 222
    if-lez v4, :cond_6

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-lez v6, :cond_6

    if-eqz v5, :cond_6

    .line 223
    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v6

    invoke-interface {v6, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 226
    .end local v5    # "wasWritable":Z
    :cond_6
    return-void
.end method
