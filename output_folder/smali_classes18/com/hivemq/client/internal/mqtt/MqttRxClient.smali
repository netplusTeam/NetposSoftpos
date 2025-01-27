.class public Lcom/hivemq/client/internal/mqtt/MqttRxClient;
.super Ljava/lang/Object;
.source "MqttRxClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5RxClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;
    }
.end annotation


# static fields
.field private static final PUBLISH_MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->PUBLISH_MAPPER:Lio/reactivex/functions/Function;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 72
    return-void
.end method


# virtual methods
.method public connect()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connectUnsafe(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lio/reactivex/Single;
    .locals 1
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method connectUnsafe(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lio/reactivex/Completable;
    .locals 1

    .line 247
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;
    .locals 2
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 256
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnectUnsafe(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lio/reactivex/Completable;
    .locals 1
    .param p1, "disconnect"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    .line 252
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method disconnectUnsafe(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;
    .locals 2
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 260
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-object v0
.end method

.method public disconnectWith()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Nested<",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic disconnectWith()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Nested;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnectWith()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 208
    .local p1, "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const-string v0, "Publish flowable"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->PUBLISH_MAPPER:Lio/reactivex/functions/Function;

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publish(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TP;>;",
            "Lio/reactivex/functions/Function<",
            "TP;",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 216
    .local p1, "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TP;>;"
    .local p2, "publishMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<TP;Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 217
    .local v0, "applicationScheduler":Lio/reactivex/Scheduler;
    instance-of v1, p1, Lio/reactivex/internal/fuseable/ScalarCallable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 219
    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/fuseable/ScalarCallable;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ScalarCallable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, "publish":Ljava/lang/Object;, "TP;"
    if-nez v1, :cond_0

    .line 221
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object v2

    return-object v2

    .line 225
    :cond_0
    :try_start_0
    invoke-interface {p2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .local v3, "mqttPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    nop

    .line 229
    new-instance v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v4, v5, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    invoke-virtual {v4, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingleFlowable;->observeOn(Lio/reactivex/Scheduler;Z)Lio/reactivex/Flowable;

    move-result-object v2

    return-object v2

    .line 226
    .end local v3    # "mqttPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    :catchall_0
    move-exception v2

    .line 227
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/Flowable;->error(Ljava/lang/Throwable;)Lio/reactivex/Flowable;

    move-result-object v3

    return-object v3

    .line 231
    .end local v1    # "publish":Ljava/lang/Object;, "TP;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 232
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lio/reactivex/Flowable;)V

    invoke-virtual {v1, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowable;->observeOn(Lio/reactivex/Scheduler;Z)Lio/reactivex/Flowable;

    move-result-object v1

    .line 231
    return-object v1
.end method

.method publish(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;
    .locals 2
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishUnsafe(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method publishUnsafe(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;
    .locals 2
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lio/reactivex/Flowable;
    .locals 1
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;
    .locals 3
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Z)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    .line 168
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishesUnsafe(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 171
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    .line 170
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;Z)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method publishesUnsafe(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;
    .locals 2
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Z)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlowable;-><init>(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Z)V

    return-object v0
.end method

.method public reauth()Lio/reactivex/Completable;
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->reauthUnsafe()Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method reauthUnsafe()Lio/reactivex/Completable;
    .locals 2

    .line 242
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthCompletable;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthCompletable;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method

.method subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lio/reactivex/Single;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method subscribePublishes(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 3
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "Z)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishesUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 145
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->observeOnBoth(Lio/reactivex/Scheduler;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public subscribePublishes(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishes(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public subscribePublishes(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Z)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishes(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method subscribePublishesUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "Z)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowable;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Z)V

    return-object v0
.end method

.method public subscribePublishesWith()Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;
    .locals 2

    .line 156
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;Lcom/hivemq/client/internal/mqtt/MqttRxClient$1;)V

    return-object v0
.end method

.method public bridge synthetic subscribePublishesWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Publishes$Start;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishesWith()Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public subscribeStream(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishes(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public subscribeStreamWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested<",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda4;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeStreamWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Nested$Start;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribeStreamWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method subscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Nested$Start;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
    .locals 1

    .line 275
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-object v0
.end method

.method public bridge synthetic toAsync()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
    .locals 1

    .line 280
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-object v0
.end method

.method public bridge synthetic toBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Lio/reactivex/Single;
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->unsubscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lio/reactivex/Single;
    .locals 1
    .param p1, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method unsubscribeUnsafe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Lio/reactivex/Single;
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubAckSingle;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method

.method public unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$$ExternalSyntheticLambda5;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Nested$Start;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;

    move-result-object v0

    return-object v0
.end method
