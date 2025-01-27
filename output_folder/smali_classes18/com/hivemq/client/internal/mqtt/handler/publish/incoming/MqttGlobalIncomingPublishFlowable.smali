.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;
.super Lio/reactivex/Flowable;
.source "MqttGlobalIncomingPublishFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field private final manualAcknowledgement:Z


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Z)V
    .locals 0
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "manualAcknowledgement"    # Z

    .line 40
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    .line 43
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 44
    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->manualAcknowledgement:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 50
    .local v0, "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->incomingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    move-result-object v7

    .line 51
    .local v7, "incomingQosHandler":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    move-result-object v8

    .line 53
    .local v8, "subscriptionHandler":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
    new-instance v9, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    iget-boolean v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;->manualAcknowledgement:Z

    move-object v1, v9

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)V

    .line 56
    .local v1, "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 57
    invoke-virtual {v8, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    .line 58
    return-void
.end method
