.class Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$2;
.super Ljava/lang/Object;
.source "WebSocketClientHandshaker.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

.field final synthetic val$forceCloseFuture:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p1, "this$1"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    .line 549
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$2;->this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$2;->val$forceCloseFuture:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$2;->val$forceCloseFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 553
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
