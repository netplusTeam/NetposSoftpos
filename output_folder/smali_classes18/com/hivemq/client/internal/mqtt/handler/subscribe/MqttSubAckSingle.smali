.class public Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;
.super Lio/reactivex/Single;
.source "MqttSubAckSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 36
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    .line 38
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 39
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 44
    .local v0, "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    move-result-object v1

    .line 46
    .local v1, "subscriptionHandler":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v2, p1, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;-><init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 47
    .local v2, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;>;"
    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 48
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v1, v3, v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    .line 49
    return-void
.end method
