.class public final Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyInitializer;
.super Ljava/lang/Object;
.source "MqttProxyInitializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 3
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "proxyConfig"    # Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/Channel;>;"
    .local p4, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;

    .line 40
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;-><init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;Ljava/net/InetSocketAddress;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 43
    .local v0, "proxyAdapterHandler":Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;
    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string/jumbo v2, "proxy.adapter"

    invoke-interface {v1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 44
    return-void
.end method
