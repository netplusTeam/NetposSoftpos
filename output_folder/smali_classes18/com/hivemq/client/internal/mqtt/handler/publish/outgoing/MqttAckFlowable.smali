.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;
.super Lio/reactivex/Flowable;
.source "MqttAckFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final publishFlowable:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lio/reactivex/Flowable;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 41
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->publishFlowable:Lio/reactivex/Flowable;

    .line 42
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 48
    .local v0, "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->outgoingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    move-result-object v1

    .line 49
    .local v1, "outgoingQosHandler":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->getPublishFlowables()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    move-result-object v2

    .line 51
    .local v2, "publishFlowables":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v3, p1, v4, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V

    .line 52
    .local v3, "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;
    invoke-interface {p1, v3}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 53
    new-instance v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->publishFlowable:Lio/reactivex/Flowable;

    invoke-direct {v4, v5, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;-><init>(Lio/reactivex/Flowable;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;)V

    invoke-virtual {v2, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->add(Lio/reactivex/Flowable;)V

    .line 54
    .end local v0    # "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    .end local v1    # "outgoingQosHandler":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .end local v2    # "publishFlowables":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
    .end local v3    # "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 57
    :goto_0
    return-void
.end method
