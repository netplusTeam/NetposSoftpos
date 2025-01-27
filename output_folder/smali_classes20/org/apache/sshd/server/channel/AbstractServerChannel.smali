.class public abstract Lorg/apache/sshd/server/channel/AbstractServerChannel;
.super Lorg/apache/sshd/common/channel/AbstractChannel;
.source "AbstractServerChannel.java"

# interfaces
.implements Lorg/apache/sshd/server/channel/ServerChannel;


# instance fields
.field protected final exitStatusSent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 2
    .param p1, "discriminator"    # Ljava/lang/String;
    .param p3, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ")V"
        }
    .end annotation

    .line 55
    .local p2, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/sshd/common/channel/AbstractChannel;-><init>(Ljava/lang/String;ZLjava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->exitStatusSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    return-void
.end method

.method protected constructor <init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 3
    .param p1, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;-><init>(Ljava/lang/String;ZLjava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->exitStatusSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    return-void
.end method


# virtual methods
.method protected doInit(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 85
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    invoke-direct {v0, p0, p0}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .local v0, "f":Lorg/apache/sshd/client/future/OpenFuture;
    const-string v1, "doInit"

    .line 88
    .local v1, "changeEvent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->signalChannelOpenSuccess()V

    .line 89
    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->setOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 97
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 92
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 93
    invoke-virtual {p0, v3}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 94
    invoke-interface {v0, v3}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 99
    :goto_1
    return-object v0

    .line 96
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 97
    throw v2
.end method

.method public handleOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "handleOpenFailure() N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleOpenSuccess(IJJLorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "recipient"    # I
    .param p2, "rwSize"    # J
    .param p4, "packetSize"    # J
    .param p6, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOpenSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(IJJLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 9
    .param p1, "recipient"    # I
    .param p2, "rwSize"    # J
    .param p4, "packetSize"    # J
    .param p6, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->setRecipient(I)V

    .line 62
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 63
    .local v0, "s":Lorg/apache/sshd/common/session/Session;
    nop

    .line 64
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    const-string v2, "No factory manager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/FactoryManager;

    .line 65
    .local v1, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v8

    .line 66
    .local v8, "wRemote":Lorg/apache/sshd/common/channel/Window;
    move-object v2, v8

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/sshd/common/channel/Window;->init(JJLorg/apache/sshd/common/PropertyResolver;)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->configureWindow()V

    .line 68
    invoke-virtual {p0, p6}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->doInit(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v2

    return-object v2
.end method

.method protected sendExitStatus(I)V
    .locals 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->exitStatusSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, "exit-status"

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sendExitStatus({}) exit-status={} - already sent"

    invoke-interface {v0, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 108
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/apache/sshd/server/channel/AbstractServerChannel;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sendExitStatus({}) SSH_MSG_CHANNEL_REQUEST exit-status={}"

    invoke-interface {v0, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 116
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v2, 0x62

    const/16 v3, 0x40

    invoke-interface {v0, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 118
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getRecipient()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 119
    invoke-virtual {v2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 122
    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 123
    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 124
    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 125
    return-void
.end method
