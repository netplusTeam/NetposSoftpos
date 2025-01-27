.class final Lio/netty/channel/DefaultChannelPipeline$TailContext;
.super Lio/netty/channel/AbstractChannelHandlerContext;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lio/netty/channel/ChannelInboundHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TailContext"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/DefaultChannelPipeline;)V
    .locals 3
    .param p1, "this$0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;

    .line 1247
    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    .line 1248
    invoke-static {}, Lio/netty/channel/DefaultChannelPipeline;->access$400()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultChannelPipeline$TailContext;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1249
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline$TailContext;->setAddComplete()Z

    .line 1250
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1265
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundChannelActive()V

    .line 1266
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1270
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundChannelInactive()V

    .line 1271
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 1296
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 1297
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1301
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundChannelReadComplete()V

    .line 1302
    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1258
    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1261
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1275
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledChannelWritabilityChanged()V

    .line 1276
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1291
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundException(Ljava/lang/Throwable;)V

    .line 1292
    return-void
.end method

.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 0

    .line 1254
    return-object p0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1279
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1282
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;

    .line 1286
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$TailContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundUserEventTriggered(Ljava/lang/Object;)V

    .line 1287
    return-void
.end method
