.class Lio/netty/handler/codec/http/HttpObjectAggregator$1;
.super Ljava/lang/Object;
.source "HttpObjectAggregator.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/HttpObjectAggregator;->handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectAggregator;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http/HttpObjectAggregator;

    .line 254
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator$1;->this$0:Lio/netty/handler/codec/http/HttpObjectAggregator;

    iput-object p2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

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

    .line 257
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lio/netty/handler/codec/http/HttpObjectAggregator;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Failed to send a 413 Request Entity Too Large."

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 261
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
