.class public Lorg/apache/sshd/agent/local/ChannelAgentForwarding;
.super Lorg/apache/sshd/server/channel/AbstractServerChannel;
.source "ChannelAgentForwarding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;
    }
.end annotation


# instance fields
.field private agent:Lorg/apache/sshd/agent/SshAgent;

.field private client:Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public static synthetic $r8$lambda$5rALAsRnA6tmfk3s0SrnQ9X3u7w(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->closeImmediately0()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 2
    .param p1, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)Lorg/apache/sshd/agent/SshAgent;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->agent:Lorg/apache/sshd/agent/SshAgent;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method private closeImmediately0()V
    .locals 7

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->agent:Lorg/apache/sshd/agent/SshAgent;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/sshd/agent/SshAgent;->isOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 104
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v1}, Lorg/apache/sshd/agent/SshAgent;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->log:Lorg/slf4j/Logger;

    const-string v3, "closeImmediately0({}) Failed ({}) to close open local agent: {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 106
    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-super {p0, v0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v1

    invoke-super {p0, v0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 112
    throw v1
.end method


# virtual methods
.method protected doInit(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 9
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 57
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    invoke-direct {v0, p0, p0}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .local v0, "f":Lorg/apache/sshd/client/future/OpenFuture;
    const-string v1, "auth-agent"

    .line 60
    .local v1, "changeEvent":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 61
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->log:Lorg/slf4j/Logger;

    const/16 v6, 0x5e

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v8, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->out:Ljava/io/OutputStream;

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v2

    .line 64
    .local v2, "session":Lorg/apache/sshd/common/session/Session;
    nop

    .line 65
    invoke-interface {v2}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v3

    const-string v4, "No factory manager"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/FactoryManager;

    .line 66
    .local v3, "manager":Lorg/apache/sshd/common/FactoryManager;
    nop

    .line 67
    invoke-interface {v3}, Lorg/apache/sshd/common/FactoryManager;->getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;

    move-result-object v4

    const-string v5, "No agent factory"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/agent/SshAgentFactory;

    .line 68
    .local v4, "factory":Lorg/apache/sshd/agent/SshAgentFactory;
    invoke-interface {v4, v3}, Lorg/apache/sshd/agent/SshAgentFactory;->createClient(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/agent/SshAgent;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 69
    new-instance v5, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;

    invoke-direct {v5, p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;-><init>(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)V

    iput-object v5, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->client:Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;

    .line 71
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->signalChannelOpenSuccess()V

    .line 72
    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->setOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v3    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v4    # "factory":Lorg/apache/sshd/agent/SshAgentFactory;
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v2

    .line 74
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 75
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 76
    invoke-virtual {p0, v3}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 77
    invoke-interface {v0, v3}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->notifyStateChanged(Ljava/lang/String;)V

    .line 80
    nop

    .line 81
    return-object v0

    .line 79
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->notifyStateChanged(Ljava/lang/String;)V

    .line 80
    throw v2
.end method

.method protected doWriteData([BIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 127
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->client:Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;

    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    long-to-int v2, p3

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {v0, v1}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;->messageReceived(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 128
    return-void
.end method

.method protected doWriteExtendedData([BIJ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AgentForward channel does not support extended data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 117
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 118
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public handleEof()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->agent:Lorg/apache/sshd/agent/SshAgent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->handleEof()V

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->handleEof()V

    .line 93
    throw v0
.end method
