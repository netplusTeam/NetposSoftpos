.class public Lio/netty/channel/ChannelDuplexHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ChannelDuplexHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 41
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 42
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 79
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 80
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 54
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 55
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 91
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 92
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 67
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 68
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 127
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 128
    return-void
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 103
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 104
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/netty/channel/ChannelHandlerMask$Skip;
    .end annotation

    .line 115
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 116
    return-void
.end method
