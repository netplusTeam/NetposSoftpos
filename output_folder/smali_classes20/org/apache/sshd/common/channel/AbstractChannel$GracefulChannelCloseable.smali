.class public Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;
.super Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GracefulChannelCloseable"
.end annotation


# instance fields
.field private final closing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/sshd/common/channel/AbstractChannel;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/sshd/common/channel/AbstractChannel;

    .line 578
    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    .line 579
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;-><init>()V

    .line 576
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->closing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 580
    return-void
.end method


# virtual methods
.method public addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 585
    return-void
.end method

.method public close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    .locals 12
    .param p1, "immediately"    # Z

    .line 608
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    .line 609
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 610
    .local v1, "debugEnabled":Z
    if-eqz v1, :cond_0

    .line 611
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "close({})[immediately={}] processing"

    invoke-interface {v2, v4, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->setClosing(Z)V

    .line 615
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p1, :cond_1

    .line 616
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v6, v6, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v6}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    goto/16 :goto_0

    .line 617
    :cond_1
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v6, v6, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v6}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 618
    if-eqz v1, :cond_2

    .line 619
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "close({})[immediately={}] send SSH_MSG_CHANNEL_CLOSE"

    invoke-interface {v6, v8, v0, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 622
    :cond_2
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    invoke-virtual {v6}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v6

    .line 623
    .local v6, "s":Lorg/apache/sshd/common/session/Session;
    const/16 v7, 0x61

    const/16 v8, 0x10

    invoke-interface {v6, v7, v8}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v7

    .line 624
    .local v7, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v8, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    invoke-virtual {v8}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRecipient()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 627
    :try_start_0
    const-string v8, "channel-close-timeout"

    sget-wide v9, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_CHANNEL_CLOSE_TIMEOUT:J

    invoke-interface {v0, v8, v9, v10}, Lorg/apache/sshd/common/channel/Channel;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v8

    .line 629
    .local v8, "timeout":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v10

    new-instance v11, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, v0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;Lorg/apache/sshd/common/channel/Channel;Z)V

    invoke-interface {v10, v11}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    nop

    .end local v8    # "timeout":J
    goto :goto_0

    .line 636
    :catch_0
    move-exception v8

    .line 637
    .local v8, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 638
    iget-object v9, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v4

    .line 639
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 638
    const-string v11, "close({})[immediately={}] {} while writing SSH_MSG_CHANNEL_CLOSE packet on channel: {}"

    invoke-interface {v9, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    :cond_3
    iget-object v9, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 643
    iget-object v9, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")[immediately="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] packet write failure details"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    :cond_4
    invoke-interface {v0, v2}, Lorg/apache/sshd/common/channel/Channel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 649
    .end local v6    # "s":Lorg/apache/sshd/common/session/Session;
    .end local v7    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :goto_0
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    invoke-virtual {v6}, Lorg/apache/sshd/common/channel/AbstractChannel;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v6

    .line 650
    .local v6, "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v7

    if-nez v7, :cond_6

    .line 651
    invoke-interface {v6}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v7

    .line 652
    .local v7, "running":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v1, :cond_6

    .line 653
    iget-object v8, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 654
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    .line 653
    const-string v2, "close({})[immediately={}] shutdown executor service on close - running count={}"

    invoke-interface {v8, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    .end local v7    # "running":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_6
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v2, v2, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    return-object v2
.end method

.method protected handleClosePacketWriteFailure(Lorg/apache/sshd/common/channel/Channel;ZLjava/lang/Throwable;)V
    .locals 5
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "immediately"    # Z
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 676
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 678
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 677
    const-string v3, "handleClosePacketWriteFailure({})[immediately={}] failed ({}) to write SSH_MSG_CHANNEL_CLOSE on channel: {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClosePacketWriteFailure("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") SSH_MSG_CHANNEL_CLOSE failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    :cond_1
    invoke-interface {p1, v1}, Lorg/apache/sshd/common/channel/Channel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 684
    return-void
.end method

.method protected handleClosePacketWritten(Lorg/apache/sshd/common/channel/Channel;Z)V
    .locals 3
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "immediately"    # Z

    .line 662
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->log:Lorg/slf4j/Logger;

    .line 664
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 663
    const-string v2, "handleClosePacketWritten({})[immediately={}] SSH_MSG_CHANNEL_CLOSE written on channel"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Opened:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    sget-object v2, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->CloseSent:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->CloseReceived:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    sget-object v2, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Closed:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    .line 673
    :cond_2
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->closing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$close$0$org-apache-sshd-common-channel-AbstractChannel$GracefulChannelCloseable(Lorg/apache/sshd/common/channel/Channel;ZLorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "immediately"    # Z
    .param p3, "future"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 630
    invoke-interface {p3}, Lorg/apache/sshd/common/io/IoWriteFuture;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->handleClosePacketWritten(Lorg/apache/sshd/common/channel/Channel;Z)V

    goto :goto_0

    .line 633
    :cond_0
    invoke-interface {p3}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->handleClosePacketWriteFailure(Lorg/apache/sshd/common/channel/Channel;ZLjava/lang/Throwable;)V

    .line 635
    :goto_0
    return-void
.end method

.method public removeCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 590
    return-void
.end method

.method public setClosing(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 598
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->closing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 599
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
