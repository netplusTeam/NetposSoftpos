.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;
.super Lcom/hivemq/client/rx/FlowableWithSingle;
.source "MqttSubscribedPublishFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/rx/FlowableWithSingle<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final manualAcknowledgement:Z

.field private final subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Z)V
    .locals 0
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "manualAcknowledgement"    # Z

    .line 42
    invoke-direct {p0}, Lcom/hivemq/client/rx/FlowableWithSingle;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    .line 45
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 46
    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->manualAcknowledgement:Z

    .line 47
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
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 52
    .local v0, "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->incomingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    move-result-object v1

    .line 53
    .local v1, "incomingQosHandler":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    move-result-object v2

    .line 55
    .local v2, "subscriptionHandler":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-boolean v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->manualAcknowledgement:Z

    invoke-direct {v3, p1, v4, v1, v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Z)V

    .line 57
    .local v3, "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;
    invoke-interface {p1, v3}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 58
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v2, v4, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    .line 59
    return-void
.end method

.method protected subscribeBothActual(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;-Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;->subscribeActual(Lorg/reactivestreams/Subscriber;)V

    .line 66
    return-void
.end method
