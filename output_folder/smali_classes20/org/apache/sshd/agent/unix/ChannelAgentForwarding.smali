.class public Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;
.super Lorg/apache/sshd/server/channel/AbstractServerChannel;
.source "ChannelAgentForwarding.java"


# static fields
.field public static final DEFAULT_FORWARDER_BUF_SIZE:I = 0x400

.field public static final FORWARDER_BUFFER_SIZE:Ljava/lang/String; = "channel-agent-fwd-buf-size"

.field public static final MAX_FORWARDER_BUF_SIZE:I = 0x7fff

.field public static final MIN_FORWARDER_BUF_SIZE:I = 0x7f


# instance fields
.field private authSocket:Ljava/lang/String;

.field private forwardService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

.field private forwarder:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private handle:J

.field private out:Ljava/io/OutputStream;

.field private pool:J


# direct methods
.method public static synthetic $r8$lambda$lPMV8Xx9e44j6PQHIfmt4oMIE7c(Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->closeImmediately0()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 2
    .param p1, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 70
    return-void
.end method

.method private closeImmediately0()V
    .locals 5

    .line 128
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 131
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->handle:J

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    .line 134
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwarder:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwarder:Ljava/util/concurrent/Future;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :cond_0
    iput-object v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwarder:Ljava/util/concurrent/Future;

    .line 139
    nop

    .line 142
    :try_start_1
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwardService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shut down runners count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v0    # "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_1
    iput-object v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwardService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwardService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 150
    throw v0

    .line 138
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwarder:Ljava/util/concurrent/Future;

    .line 139
    throw v0
.end method

.method private static throwException(I)V
    .locals 3
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v2, p0

    invoke-static {v2}, Lorg/apache/tomcat/jni/Error;->strerror(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doInit(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 10
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 74
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    invoke-direct {v0, p0, p0}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .local v0, "f":Lorg/apache/sshd/client/future/OpenFuture;
    :try_start_0
    new-instance v7, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->log:Lorg/slf4j/Logger;

    const/16 v5, 0x5e

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v7, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->out:Ljava/io/OutputStream;

    .line 77
    const-string v1, "SSH_AUTH_SOCK"

    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->authSocket:Ljava/lang/String;

    .line 78
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sshd/agent/unix/AprLibrary;->getRootPool()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/Pool;->create(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->pool:J

    .line 79
    iget-object v3, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->authSocket:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lorg/apache/tomcat/jni/Local;->create(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->handle:J

    .line 80
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/apache/tomcat/jni/Local;->connect(JJ)I

    move-result v1

    .line 81
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->throwException(I)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    .line 86
    .local v2, "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChannelAgentForwarding["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->authSocket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v3}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v3

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->noClose(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwardService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 90
    const-string v3, "channel-agent-fwd-buf-size"

    const/16 v4, 0x400

    invoke-virtual {p0, v3, v4}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    .line 91
    .local v3, "copyBufSize":I
    const/16 v4, 0x7f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    const-string v7, "Copy buf size below min.: %d"

    int-to-long v8, v3

    invoke-static {v4, v7, v8, v9}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 93
    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    const-string v4, "Copy buf size above max.: %d"

    int-to-long v6, v3

    invoke-static {v5, v4, v6, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 96
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwardService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    new-instance v5, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;I)V

    invoke-interface {v4, v5}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->forwarder:Ljava/util/concurrent/Future;

    .line 111
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->signalChannelOpenSuccess()V

    .line 112
    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->setOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "result":I
    .end local v2    # "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .end local v3    # "copyBufSize":I
    goto :goto_3

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 115
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 116
    invoke-interface {v0, v2}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V

    .line 119
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v0
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

    .line 163
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

    .line 165
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->handle:J

    long-to-int v2, p3

    invoke-static {v0, v1, p1, p2, v2}, Lorg/apache/tomcat/jni/Socket;->send(J[BII)I

    move-result v0

    .line 166
    .local v0, "result":I
    if-gez v0, :cond_1

    .line 167
    invoke-static {v0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->throwException(I)V

    .line 169
    :cond_1
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

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AgentForward channel does not support extended data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 156
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method synthetic lambda$doInit$0$org-apache-sshd-agent-unix-ChannelAgentForwarding(I)V
    .locals 5
    .param p1, "copyBufSize"    # I

    .line 98
    :try_start_0
    new-array v0, p1, [B

    .line 100
    :goto_0
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->handle:J

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lorg/apache/tomcat/jni/Socket;->recv(J[BII)I

    move-result v1

    .line 101
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 102
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 103
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "len":I
    :cond_0
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
