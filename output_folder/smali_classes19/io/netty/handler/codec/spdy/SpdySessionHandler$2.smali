.class Lio/netty/handler/codec/spdy/SpdySessionHandler$2;
.super Ljava/lang/Object;
.source "SpdySessionHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/spdy/SpdySessionHandler;->handleOutboundMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/spdy/SpdySessionHandler;

.field final synthetic val$context:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/spdy/SpdySessionHandler;

    .line 521
    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;->this$0:Lio/netty/handler/codec/spdy/SpdySessionHandler;

    iput-object p2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;->val$context:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 524
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;->this$0:Lio/netty/handler/codec/spdy/SpdySessionHandler;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;->val$context:Lio/netty/channel/ChannelHandlerContext;

    sget-object v2, Lio/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->access$000(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 527
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 521
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
