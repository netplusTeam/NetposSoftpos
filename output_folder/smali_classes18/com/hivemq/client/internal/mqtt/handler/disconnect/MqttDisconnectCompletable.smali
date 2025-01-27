.class public Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;
.super Lio/reactivex/Completable;
.source "MqttDisconnectCompletable.java"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final disconnect:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 39
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 42
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->disconnect:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 43
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 5
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    .line 48
    .local v0, "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v1

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 50
    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getChannel()Lio/netty/channel/Channel;

    move-result-object v1

    .line 53
    .local v1, "channel":Lio/netty/channel/Channel;
    nop

    .line 54
    invoke-interface {v1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    const-string v3, "disconnect"

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    .line 55
    .local v2, "disconnectHandler":Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;
    if-nez v2, :cond_1

    .line 56
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v3

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 57
    return-void

    .line 59
    :cond_1
    new-instance v3, Lcom/hivemq/client/internal/rx/CompletableFlow;

    invoke-direct {v3, p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 60
    .local v3, "flow":Lcom/hivemq/client/internal/rx/CompletableFlow;
    invoke-interface {p1, v3}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 61
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectCompletable;->disconnect:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {v2, v4, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    .line 62
    return-void
.end method
