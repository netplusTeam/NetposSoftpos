.class public Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "MqttChannelInitializer.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# instance fields
.field private final authHandler:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field private final connectHandler:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

.field private final disconnectHandler:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

.field private final encoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

.field private final webSocketInitializer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XQlz3AUNu4UDytbqGgVsrQ7e61s(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->onError(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_OvBe6BMU5mI2Nnn7N3muT9Vdcw(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initSsl(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZwb_c-MiozGXppIsKw2S91xNvw(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initMqtt(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ylw2ztIFiHoPh6mZ5oXTamQhXY0(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initWebsocket(Lio/netty/channel/Channel;)V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;Ldagger/Lazy;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p3, "connAckFlow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p4, "encoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;
    .param p5, "connectHandler"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;
    .param p6, "disconnectHandler"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;
    .param p7, "authHandler"    # Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 80
    .local p8, "webSocketInitializer":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 83
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 84
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 85
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->encoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    .line 86
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connectHandler:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    .line 87
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->disconnectHandler:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    .line 88
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->authHandler:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    .line 89
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->webSocketInitializer:Ldagger/Lazy;

    .line 90
    return-void
.end method

.method private initMqtt(Lio/netty/channel/Channel;)V
    .locals 3
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 134
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->encoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    .line 135
    const-string v2, "encoder"

    invoke-interface {v0, v2, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->authHandler:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    .line 136
    const-string v2, "auth"

    invoke-interface {v0, v2, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connectHandler:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    .line 137
    const-string v2, "connect"

    invoke-interface {v0, v2, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->disconnectHandler:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    .line 138
    const-string v2, "disconnect"

    invoke-interface {v0, v2, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 139
    return-void
.end method

.method private initProxy(Lio/netty/channel/Channel;)V
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 105
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawProxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    move-result-object v0

    .line 106
    .local v0, "proxyConfig":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initSsl(Lio/netty/channel/Channel;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V

    invoke-static {p1, v1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyInitializer;->initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 111
    :goto_0
    return-void
.end method

.method private initSsl(Lio/netty/channel/Channel;)V
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 114
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v0

    .line 115
    .local v0, "sslConfig":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initWebsocket(Lio/netty/channel/Channel;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V

    invoke-static {p1, v1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;->initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 120
    :goto_0
    return-void
.end method

.method private initWebsocket(Lio/netty/channel/Channel;)V
    .locals 7
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 123
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 124
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawWebSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    move-result-object v0

    .line 125
    .local v0, "webSocketConfig":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initMqtt(Lio/netty/channel/Channel;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->webSocketInitializer:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V

    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V

    .line 129
    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;->initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 131
    :goto_0
    return-void
.end method

.method private onError(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 142
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 143
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    new-instance v2, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v2, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 144
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    .line 143
    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 94
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 96
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lio/netty/channel/socket/SocketChannel;->config()Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    .line 97
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    .line 98
    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 99
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getSocketConnectTimeoutMs()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 101
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initProxy(Lio/netty/channel/Channel;)V

    .line 102
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method
