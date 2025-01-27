.class public Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
.super Ljava/lang/Object;
.source "MqttBlockingClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    .line 88
    return-void
.end method

.method static handleSubAck(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
    .locals 3
    .param p0, "subAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    .line 67
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;->getReasonCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    .line 68
    .local v1, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    .end local v1    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    goto :goto_0

    .line 69
    .restart local v1    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    :cond_0
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;

    const-string v2, "SUBACK contains at least one error code."

    invoke-direct {v0, p0, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/String;)V

    throw v0

    .line 72
    .end local v1    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    :cond_1
    return-object p0
.end method

.method static handleUnsubAck(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;
    .locals 3
    .param p0, "unsubAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;

    .line 76
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;->getReasonCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    .line 77
    .local v1, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    .end local v1    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    goto :goto_0

    .line 78
    .restart local v1    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    :cond_0
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;

    const-string v2, "UNSUBACK contains at least one error code."

    invoke-direct {v0, p0, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;Ljava/lang/String;)V

    throw v0

    .line 81
    .end local v1    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
    :cond_1
    return-object p0
.end method


# virtual methods
.method public connect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    .locals 1

    .line 92
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    .locals 3
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;

    .line 97
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    .line 99
    .local v0, "mqttConnect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connectUnsafe(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda4;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 1

    .line 186
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V

    .line 187
    return-void
.end method

.method public disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V
    .locals 3
    .param p1, "disconnect"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    .line 191
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    .line 193
    .local v0, "mqttDisconnect":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnectUnsafe(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->blockingAwait()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 197
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public disconnectWith()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;
    .locals 2

    .line 201
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public bridge synthetic disconnectWith()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$SendVoid;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->disconnectWith()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
    .locals 3
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 162
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    .line 164
    .local v0, "mqttPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishUnsafe(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
    .locals 1
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
    .locals 2
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p2, "manualAcknowledgement"    # Z

    .line 137
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishesUnsafe(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public reauth()V
    .locals 2

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->reauthUnsafe()Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->blockingAwait()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
    .locals 3
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;

    .line 112
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 114
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    :try_start_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->handleSubAck(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v1

    .end local v0    # "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .end local p1    # "subscribe":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .restart local v0    # "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .restart local p1    # "subscribe":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toAsync()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public toRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    return-object v0
.end method

.method public bridge synthetic toRx()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5RxClient;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->toRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;
    .locals 3
    .param p1, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;

    .line 144
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    .line 146
    .local v0, "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    :try_start_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->unsubscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->handleUnsubAck(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v1

    .end local v0    # "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .end local p1    # "unsubscribe":Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .restart local v0    # "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .restart local p1    # "unsubscribe":Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Send$Start;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;

    move-result-object v0

    return-object v0
.end method
