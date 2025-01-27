.class final Lio/netty/handler/ssl/SslHandler$SslTasksRunner;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SslTasksRunner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final inUnwrap:Z

.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1546
    const-class v0, Lio/netty/handler/ssl/SslHandler;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Z)V
    .locals 0
    .param p2, "inUnwrap"    # Z

    .line 1549
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1550
    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    .line 1551
    return-void
.end method

.method static synthetic access$2000(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    .line 1546
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->resumeOnEventExecutor()V

    return-void
.end method

.method static synthetic access$2100(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler$SslTasksRunner;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 1546
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1715
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1202(Lio/netty/handler/ssl/SslHandler;Z)Z

    .line 1717
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1720
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v2, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;-><init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    goto :goto_0

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2, v1}, Lio/netty/handler/ssl/SslHandler;->access$1202(Lio/netty/handler/ssl/SslHandler;Z)Z

    .line 1731
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1734
    .end local v0    # "ignore":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private resumeOnEventExecutor()V
    .locals 4

    .line 1608
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1610
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1202(Lio/netty/handler/ssl/SslHandler;Z)Z

    .line 1613
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 1614
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v2, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1687
    new-instance v1, Ljava/lang/AssertionError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_1

    .line 1654
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1658
    nop

    .line 1659
    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->tryDecodeAgain()V

    .line 1660
    goto :goto_0

    .line 1655
    :catch_0
    move-exception v1

    .line 1656
    .local v1, "e":Ljavax/net/ssl/SSLException;
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/netty/handler/ssl/SslHandler;->access$800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1657
    return-void

    .line 1666
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/netty/handler/ssl/SslHandler;->access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-eqz v1, :cond_0

    .line 1671
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1675
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1679
    nop

    .line 1682
    :try_start_4
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->tryDecodeAgain()V

    .line 1683
    goto :goto_0

    .line 1676
    :catchall_0
    move-exception v1

    .line 1677
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->taskError(Ljava/lang/Throwable;)V

    .line 1678
    return-void

    .line 1623
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_2
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$1400(Lio/netty/handler/ssl/SslHandler;)V

    .line 1629
    :pswitch_3
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$1500(Lio/netty/handler/ssl/SslHandler;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1633
    :try_start_5
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    iget-boolean v3, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/SslHandler;->access$1600(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1637
    nop

    .line 1638
    :try_start_6
    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-eqz v1, :cond_1

    .line 1641
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1645
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1647
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->tryDecodeAgain()V

    .line 1648
    goto :goto_0

    .line 1634
    :catchall_1
    move-exception v1

    .line 1635
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->taskError(Ljava/lang/Throwable;)V

    .line 1636
    return-void

    .line 1617
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_4
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-boolean v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1300(Lio/netty/handler/ssl/SslHandler;Z)V

    .line 1619
    nop

    .line 1691
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_0
    goto :goto_2

    .line 1687
    .restart local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_1
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1689
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_2
    move-exception v0

    .line 1690
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    .line 1692
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 1608
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private safeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1574
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    goto :goto_0

    .line 1575
    :catchall_0
    move-exception v0

    .line 1576
    .local v0, "error":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1578
    .end local v0    # "error":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private taskError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1555
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-eqz v0, :cond_0

    .line 1561
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/netty/handler/ssl/SslHandler;->access$800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1562
    :catchall_0
    move-exception v0

    .line 1563
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    .line 1564
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1566
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1567
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1569
    :goto_1
    return-void
.end method

.method private tryDecodeAgain()V
    .locals 3

    .line 1592
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1593
    :catchall_0
    move-exception v0

    .line 1594
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1599
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1100(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1599
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1100(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1600
    throw v0
.end method

.method private wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1581
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-nez v0, :cond_0

    .line 1583
    return-object p1

    .line 1587
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/DecoderException;

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1697
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$1900(Ljavax/net/ssl/SSLEngine;)V

    .line 1700
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    .line 1703
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$1;

    invoke-direct {v1, p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$1;-><init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1711
    goto :goto_0

    .line 1700
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :catchall_0
    move-exception v0

    .line 1710
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->handleException(Ljava/lang/Throwable;)V

    .line 1712
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
