.class public Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;
.super Ljava/lang/Object;
.source "MqttWebSocketInitializer.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# static fields
.field private static final HTTP_AGGREGATOR_NAME:Ljava/lang/String; = "http.aggregator"

.field private static final HTTP_CODEC_NAME:Ljava/lang/String; = "http.codec"


# instance fields
.field private final mqttWebSocketCodec:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;)V
    .locals 0
    .param p1, "mqttWebSocketCodec"    # Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;->mqttWebSocketCodec:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;

    .line 53
    return-void
.end method


# virtual methods
.method public initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 12
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "webSocketConfig"    # Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .local p4, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/Channel;>;"
    .local p5, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;"
    move-object/from16 v1, p5

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    .line 65
    .local v0, "transportConfig":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 66
    .local v2, "serverAddress":Ljava/net/InetSocketAddress;
    new-instance v11, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ws"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "wss"

    :goto_0
    move-object v4, v3

    const/4 v5, 0x0

    .line 67
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getServerPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getQueryString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v11

    .line 72
    .end local v0    # "transportConfig":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .end local v2    # "serverAddress":Ljava/net/InetSocketAddress;
    .local v3, "uri":Ljava/net/URI;
    nop

    .line 74
    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 76
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getSubprotocol()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x10000004

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 75
    invoke-static/range {v3 .. v10}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    .line 79
    .local v0, "handshaker":Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v4, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-direct {v4}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>()V

    .line 80
    const-string v5, "http.codec"

    invoke-interface {v2, v5, v4}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v4, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const v5, 0xffff

    invoke-direct {v4, v5}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    .line 81
    const-string v5, "http.aggregator"

    invoke-interface {v2, v5, v4}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v4, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

    .line 83
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getHandshakeTimeoutMs()I

    move-result v5

    move-object/from16 v6, p4

    invoke-direct {v4, v0, v5, v6, v1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ILjava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 82
    const-string/jumbo v5, "ws.handshake"

    invoke-interface {v2, v5, v4}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    move-object v4, p0

    iget-object v5, v4, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;->mqttWebSocketCodec:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;

    .line 85
    const-string/jumbo v7, "ws.mqtt"

    invoke-interface {v2, v7, v5}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 86
    return-void

    .line 69
    .end local v0    # "handshaker":Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .end local v3    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    move-object v4, p0

    move-object/from16 v6, p4

    .line 70
    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v2, p1

    invoke-interface {v1, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    return-void
.end method
