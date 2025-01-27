.class final Lio/netty/channel/DefaultChannelPipeline$HeadContext;
.super Lio/netty/channel/AbstractChannelHandlerContext;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;
.implements Lio/netty/channel/ChannelInboundHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HeadContext"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;

.field private final unsafe:Lio/netty/channel/Channel$Unsafe;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/DefaultChannelPipeline;)V
    .locals 3
    .param p1, "this$0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;

    .line 1310
    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    .line 1311
    invoke-static {}, Lio/netty/channel/DefaultChannelPipeline;->access$500()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1312
    invoke-virtual {p2}, Lio/netty/channel/DefaultChannelPipeline;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    .line 1313
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->setAddComplete()Z

    .line 1314
    return-void
.end method

.method private readIfIsAutoRead()V
    .locals 1

    .line 1421
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lio/netty/channel/DefaultChannelPipeline;->access$600(Lio/netty/channel/DefaultChannelPipeline;)Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lio/netty/channel/DefaultChannelPipeline;->access$600(Lio/netty/channel/DefaultChannelPipeline;)Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->read()Lio/netty/channel/Channel;

    .line 1424
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1334
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0, p2, p3}, Lio/netty/channel/Channel$Unsafe;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 1335
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1398
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 1400
    invoke-direct {p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->readIfIsAutoRead()V

    .line 1401
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1405
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 1406
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 1410
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1411
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1415
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 1417
    invoke-direct {p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->readIfIsAutoRead()V

    .line 1418
    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1382
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->invokeHandlerAddedIfNeeded()V

    .line 1383
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 1384
    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1388
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    .line 1391
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lio/netty/channel/DefaultChannelPipeline;->access$600(Lio/netty/channel/DefaultChannelPipeline;)Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lio/netty/channel/DefaultChannelPipeline;->access$700(Lio/netty/channel/DefaultChannelPipeline;)V

    .line 1394
    :cond_0
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1433
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 1434
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1352
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0, p2}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 1353
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1342
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0, p2, p3, p4}, Lio/netty/channel/Channel$Unsafe;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 1343
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1357
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0, p2}, Lio/netty/channel/Channel$Unsafe;->deregister(Lio/netty/channel/ChannelPromise;)V

    .line 1358
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1347
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0, p2}, Lio/netty/channel/Channel$Unsafe;->disconnect(Lio/netty/channel/ChannelPromise;)V

    .line 1348
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1377
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1378
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1372
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->flush()V

    .line 1373
    return-void
.end method

.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 0

    .line 1318
    return-object p0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1324
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1329
    return-void
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1362
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->beginRead()V

    .line 1363
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;

    .line 1428
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1429
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1367
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0, p2, p3}, Lio/netty/channel/Channel$Unsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 1368
    return-void
.end method
