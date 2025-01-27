.class public Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;,
        Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    .line 105
    return-void
.end method

.method private static handleSubAck(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 61
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    return-object p0

    .line 64
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 65
    .local v0, "mappedFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;>;"
    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 76
    return-object v0
.end method

.method private static handleUnsubAck(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation

    .line 83
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    return-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 87
    .local v0, "mappedFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;>;"
    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 98
    return-object v0
.end method

.method static synthetic lambda$handleSubAck$0(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "mappedFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "subAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 70
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->handleSubAck(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 75
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleUnsubAck$1(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "mappedFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "unsubAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;->handleUnsubAck(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 97
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public connect()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    .line 116
    .local v0, "mqttConnect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lio/reactivex/Single;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->toFuture(Lio/reactivex/Single;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda5;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "disconnect"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    .line 265
    .local v0, "mqttDisconnect":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->toFuture(Lio/reactivex/Completable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public disconnectWith()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic disconnectWith()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Send;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->disconnectWith()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    .line 243
    .local v0, "mqttPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publish(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lio/reactivex/Single;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->toFuture(Lio/reactivex/Single;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Z)V

    .line 186
    return-void
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 194
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    .line 195
    return-void
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .locals 3
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 216
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v0, "Callback"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    const-string v0, "Executor"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1, p4}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishesUnsafe(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v0

    .line 221
    invoke-static {p3}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;Z)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;-><init>(Ljava/util/function/Consumer;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V

    .line 222
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 223
    return-void
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Z)V
    .locals 3
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p3, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;Z)V"
        }
    .end annotation

    .line 203
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    const-string v0, "Callback"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1, p3}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;-><init>(Ljava/util/function/Consumer;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 207
    return-void
.end method

.method public reauth()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->reauth()Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->toFuture(Lio/reactivex/Completable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 128
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Lio/reactivex/Single;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->toFuture(Lio/reactivex/Single;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->handleSubAck(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 135
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 144
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 167
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 168
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    const-string v1, "Callback"

    invoke-static {p2, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const-string v1, "Executor"

    invoke-static {p3, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0, p4}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishesUnsafe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v1

    .line 172
    invoke-static {p3}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hivemq/client/rx/FlowableWithSingle;->observeOnBoth(Lio/reactivex/Scheduler;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;-><init>(Ljava/util/function/Consumer;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V

    .line 173
    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeSingleFuture(Lorg/reactivestreams/Subscriber;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 171
    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->handleSubAck(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .param p3, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 153
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 154
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    const-string v1, "Callback"

    invoke-static {p2, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0, p3}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishes(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;-><init>(Ljava/util/function/Consumer;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeSingleFuture(Lorg/reactivestreams/Subscriber;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 156
    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->handleSubAck(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;
    .locals 2

    .line 178
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Start;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribeWith()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method public toRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    return-object v0
.end method

.method public bridge synthetic toRx()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5RxClient;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->toRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    .line 231
    .local v0, "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Lio/reactivex/Single;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->toFuture(Lio/reactivex/Single;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->handleUnsubAck(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Send$Start;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;

    move-result-object v0

    return-object v0
.end method
