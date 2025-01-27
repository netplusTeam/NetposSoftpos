.class public abstract Lio/netty/handler/address/DynamicAddressConnectHandler;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "DynamicAddressConnectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 43
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/address/DynamicAddressConnectHandler;->remoteAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v0

    .line 44
    .local v0, "remote":Ljava/net/SocketAddress;
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/address/DynamicAddressConnectHandler;->localAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "local":Ljava/net/SocketAddress;
    nop

    .line 49
    invoke-interface {p1, v0, v1, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    new-instance v3, Lio/netty/handler/address/DynamicAddressConnectHandler$1;

    invoke-direct {v3, p0}, Lio/netty/handler/address/DynamicAddressConnectHandler$1;-><init>(Lio/netty/handler/address/DynamicAddressConnectHandler;)V

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 59
    return-void

    .line 45
    .end local v0    # "remote":Ljava/net/SocketAddress;
    .end local v1    # "local":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 47
    return-void
.end method

.method protected localAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    return-object p2
.end method

.method protected remoteAddress(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    return-object p1
.end method
