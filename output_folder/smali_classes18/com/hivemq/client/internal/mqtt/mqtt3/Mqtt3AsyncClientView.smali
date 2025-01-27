.class public Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;
.super Ljava/lang/Object;
.source "Mqtt3AsyncClientView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
    }
.end annotation


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V
    .locals 2
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    .line 84
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    .line 85
    return-void
.end method

.method private static callbackView(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;)",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    .line 76
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private static handleSubAck(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 64
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 65
    .local v0, "mappedFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;>;"
    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 72
    return-object v0
.end method

.method static synthetic lambda$callbackView$1(Ljava/util/function/Consumer;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 76
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$connect$2(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "connAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 98
    if-eqz p2, :cond_0

    .line 99
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    return-void
.end method

.method static synthetic lambda$disconnect$5(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "ignored"    # Ljava/lang/Void;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 252
    if-eqz p2, :cond_0

    .line 253
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 255
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 257
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleSubAck$0(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "mappedFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "subAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    return-void
.end method

.method static synthetic lambda$publish$4(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "publishResult"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 237
    :cond_0
    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;->getPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 239
    :goto_0
    return-void
.end method

.method static synthetic lambda$unsubscribe$3(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "unsubAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 214
    if-eqz p2, :cond_0

    .line 215
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 219
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
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    .line 96
    .local v0, "mqttConnect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 97
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;>;"
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 104
    return-object v1
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda7;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Send;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 251
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;->DELEGATE:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 258
    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    return-object v0
.end method

.method public publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    .line 232
    .local v0, "mqttPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 233
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 240
    return-object v1
.end method

.method public publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic publishWith()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Send;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->publishWith()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Send;

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
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Z)V

    .line 171
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
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 179
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    .line 180
    return-void
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .locals 2
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 201
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    const-string v0, "Callback"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    const-string v0, "Executor"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->callbackView(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    .line 206
    return-void
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Z)V
    .locals 2
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p3, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;Z)V"
        }
    .end annotation

    .line 188
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    const-string v0, "Callback"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->callbackView(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Z)V

    .line 192
    return-void
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 116
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->handleSubAck(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 123
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 132
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 154
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 155
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    const-string v1, "Callback"

    invoke-static {p2, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v1, "Executor"

    invoke-static {p3, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->callbackView(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3, p4}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->handleSubAck(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .param p3, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 141
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 142
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    const-string v1, "Callback"

    invoke-static {p2, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->callbackView(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->handleSubAck(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
    .locals 2

    .line 163
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$1;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Start;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->subscribeWith()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toBlocking()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
    .locals 2

    .line 273
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    return-object v0
.end method

.method public toRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    .locals 2

    .line 268
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->toRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-object v0
.end method

.method public unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    .line 212
    .local v0, "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 213
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 220
    return-object v1
.end method

.method public unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Send;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Send;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Send;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Send$Start;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Send;

    move-result-object v0

    return-object v0
.end method
