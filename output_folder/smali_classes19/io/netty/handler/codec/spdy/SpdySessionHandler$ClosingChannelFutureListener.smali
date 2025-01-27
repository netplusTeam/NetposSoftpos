.class final Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;
.super Ljava/lang/Object;
.source "SpdySessionHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdySessionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClosingChannelFutureListener"
.end annotation


# instance fields
.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 847
    iput-object p2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;->promise:Lio/netty/channel/ChannelPromise;

    .line 848
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "sentGoAwayFuture"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 853
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 841
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
