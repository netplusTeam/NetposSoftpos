.class public Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;
.super Ljava/lang/Object;
.source "Mqtt3BlockingClientView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V
    .locals 2
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    .line 65
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    .line 66
    return-void
.end method


# virtual methods
.method public connect()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
    .locals 1

    .line 70
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
    .locals 3
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;

    .line 75
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    .line 77
    .local v0, "mqttConnect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object v1
    :try_end_0
    .catch Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Send;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;->DELEGATE:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V
    :try_end_0
    .catch Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    return-object v0
.end method

.method public publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)V
    .locals 3
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    .line 134
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    .line 136
    .local v0, "mqttPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
    :try_end_0
    .catch Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$SendVoid;
    .locals 2

    .line 144
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$SendVoid;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$SendVoid;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public bridge synthetic publishWith()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$SendVoid;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$SendVoid;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;
    .locals 1
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;
    .locals 2
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p2, "manualAcknowledgement"    # Z

    .line 112
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;-><init>(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;)V

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;
    .locals 3
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;

    .line 90
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 92
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    move-result-object v1
    :try_end_0
    .catch Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Send$Start;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public toAsync()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient;
    .locals 2

    .line 168
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    return-object v0
.end method

.method public toRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    .locals 2

    .line 163
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->toRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-object v0
.end method

.method public unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)V
    .locals 3
    .param p1, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;

    .line 119
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    .line 121
    .local v0, "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;
    :try_end_0
    .catch Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;
    .locals 2

    .line 129
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public bridge synthetic unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$SendVoid$Start;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;

    move-result-object v0

    return-object v0
.end method
