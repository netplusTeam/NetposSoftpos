.class public Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthCompletable;
.super Lio/reactivex/Completable;
.source "MqttReAuthCompletable.java"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 37
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthCompletable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 39
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 5
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 43
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthCompletable;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    .line 44
    .local v0, "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v1

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v1

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Reauth is not available if enhanced auth was not used during connect"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 51
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getChannel()Lio/netty/channel/Channel;

    move-result-object v1

    .line 54
    .local v1, "channel":Lio/netty/channel/Channel;
    invoke-interface {v1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    const-string v3, "auth"

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    .line 55
    .local v2, "authHandler":Lio/netty/channel/ChannelHandler;
    if-nez v2, :cond_2

    .line 56
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v3

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 57
    return-void

    .line 59
    :cond_2
    instance-of v3, v2, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    if-nez v3, :cond_3

    .line 60
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Auth is still pending"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 61
    return-void

    .line 63
    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    .line 64
    .local v3, "reAuthHandler":Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;
    new-instance v4, Lcom/hivemq/client/internal/rx/CompletableFlow;

    invoke-direct {v4, p1}, Lcom/hivemq/client/internal/rx/CompletableFlow;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 65
    .local v4, "flow":Lcom/hivemq/client/internal/rx/CompletableFlow;
    invoke-interface {p1, v4}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 66
    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->reauth(Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    .line 67
    return-void
.end method
