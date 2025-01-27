.class public abstract Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "AbstractRemoteAddressFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/net/SocketAddress;",
        ">",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;, "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<TT;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private handleNewChannel(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;, "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<TT;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 60
    .local v0, "remoteAddress":Ljava/net/SocketAddress;, "TT;"
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 68
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;->channelAccepted(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;->channelRejected(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 72
    .local v1, "rejectedFuture":Lio/netty/channel/ChannelFuture;
    if-eqz v1, :cond_2

    .line 73
    sget-object v2, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 79
    .end local v1    # "rejectedFuture":Lio/netty/channel/ChannelFuture;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected abstract accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected channelAccepted(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TT;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;, "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<TT;>;"
    .local p2, "remoteAddress":Ljava/net/SocketAddress;, "TT;"
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;, "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;->handleNewChannel(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot determine to accept or reject a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;, "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;->handleNewChannel(Lio/netty/channel/ChannelHandlerContext;)Z

    .line 43
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 44
    return-void
.end method

.method protected channelRejected(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TT;)",
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;, "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<TT;>;"
    .local p2, "remoteAddress":Ljava/net/SocketAddress;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method
