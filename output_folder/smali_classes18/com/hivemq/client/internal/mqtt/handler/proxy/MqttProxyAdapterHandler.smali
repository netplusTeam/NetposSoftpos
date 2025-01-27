.class Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "MqttProxyAdapterHandler.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "proxy.adapter"

.field private static final PROXY_HANDLER_NAME:Ljava/lang/String; = "proxy"


# instance fields
.field private final onError:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuccess:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

.field private final serverAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;Ljava/net/InetSocketAddress;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "proxyConfig"    # Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .param p2, "serverAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/Channel;>;"
    .local p4, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 56
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->serverAddress:Ljava/net/InetSocketAddress;

    .line 57
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->onSuccess:Ljava/util/function/Consumer;

    .line 58
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->onError:Ljava/util/function/BiConsumer;

    .line 59
    return-void
.end method

.method static synthetic lambda$connect$0(Lio/netty/channel/Channel;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "onSuccess"    # Ljava/util/function/Consumer;
    .param p2, "onError"    # Ljava/util/function/BiConsumer;
    .param p3, "future"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string/jumbo v1, "proxy"

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    .line 100
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    :goto_0
    return-void
.end method


# virtual methods
.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 68
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 69
    .local v0, "channel":Lio/netty/channel/Channel;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getRawUsername()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "username":Ljava/lang/String;
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getRawPassword()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->onSuccess:Ljava/util/function/Consumer;

    .line 72
    .local v3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/Channel;>;"
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->onError:Ljava/util/function/BiConsumer;

    .line 75
    .local v4, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;"
    sget-object v5, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$1;->$SwitchMap$com$hivemq$client$mqtt$MqttProxyProtocol:[I

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getProtocol()Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hivemq/client/mqtt/MqttProxyProtocol;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 91
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown proxy protocol "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 92
    invoke-virtual {v7}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getProtocol()Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {v4, v0, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-void

    .line 83
    :pswitch_0
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 84
    new-instance v5, Lio/netty/handler/proxy/HttpProxyHandler;

    invoke-direct {v5, p2}, Lio/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;)V

    .local v5, "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    goto :goto_2

    .line 86
    .end local v5    # "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    :cond_0
    new-instance v5, Lio/netty/handler/proxy/HttpProxyHandler;

    const-string v6, ""

    if-nez v1, :cond_1

    move-object v7, v6

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    invoke-direct {v5, p2, v7, v6}, Lio/netty/handler/proxy/HttpProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .restart local v5    # "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    goto :goto_2

    .line 80
    .end local v5    # "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    :pswitch_1
    new-instance v5, Lio/netty/handler/proxy/Socks5ProxyHandler;

    invoke-direct {v5, p2, v1, v2}, Lio/netty/handler/proxy/Socks5ProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .restart local v5    # "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    goto :goto_2

    .line 77
    .end local v5    # "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    :pswitch_2
    new-instance v5, Lio/netty/handler/proxy/Socks4ProxyHandler;

    invoke-direct {v5, p2, v1}, Lio/netty/handler/proxy/Socks4ProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    .line 78
    .restart local v5    # "proxyHandler":Lio/netty/handler/proxy/ProxyHandler;
    nop

    .line 96
    :goto_2
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getHandshakeTimeoutMs()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lio/netty/handler/proxy/ProxyHandler;->setConnectTimeoutMillis(J)V

    .line 98
    invoke-virtual {v5}, Lio/netty/handler/proxy/ProxyHandler;->connectFuture()Lio/netty/util/concurrent/Future;

    move-result-object v6

    new-instance v7, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;-><init>(Lio/netty/channel/Channel;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    invoke-interface {v6, v7}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 107
    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    invoke-interface {v6, v7, v5}, Lio/netty/channel/ChannelPipeline;->addFirst(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v6

    invoke-interface {v6, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 109
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-interface {p1, v6, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 110
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSharable()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method
