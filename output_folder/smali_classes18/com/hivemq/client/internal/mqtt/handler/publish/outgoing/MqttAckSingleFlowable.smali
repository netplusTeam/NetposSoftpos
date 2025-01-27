.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;
.super Lio/reactivex/Flowable;
.source "MqttAckSingleFlowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 43
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 45
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 46
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

    .line 50
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 52
    .local v0, "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->outgoingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    move-result-object v1

    .line 53
    .local v1, "outgoingQosHandler":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->getPublishFlowables()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    move-result-object v2

    .line 55
    .local v2, "publishFlowables":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v3, p1, v4, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V

    .line 56
    .local v3, "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;
    invoke-interface {p1, v3}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 57
    new-instance v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-direct {v4, v5, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    invoke-static {v4}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->add(Lio/reactivex/Flowable;)V

    .line 58
    .end local v0    # "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    .end local v1    # "outgoingQosHandler":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .end local v2    # "publishFlowables":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
    .end local v3    # "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable$Flow;
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 61
    :goto_0
    return-void
.end method
