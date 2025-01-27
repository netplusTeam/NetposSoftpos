.class public Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;
.super Lio/reactivex/Single;
.source "MqttUnsubAckSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 37
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;->unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    .line 40
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 41
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
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 46
    .local v0, "clientComponent":Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    move-result-object v1

    .line 48
    .local v1, "subscriptionHandler":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v2, p1, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;-><init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 49
    .local v2, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;>;"
    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 50
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;->unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    invoke-virtual {v1, v3, v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;)V

    .line 51
    return-void
.end method
