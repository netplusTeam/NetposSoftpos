.class public Lorg/apache/sshd/agent/unix/AgentServerProxy;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AgentServerProxy.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgentServer;


# static fields
.field public static final AUTH_SOCKET_TIMEOUT:Ljava/lang/String; = "ssh-agent-server-proxy-auth-socket-timeout"

.field public static final DEFAULT_AUTH_SOCKET_TIMEOUT:I = 0x989680

.field private static final END_OF_STREAM_MESSAGE:[B


# instance fields
.field private final authSocket:Ljava/lang/String;

.field private final handle:J

.field private final innerFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pipeService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

.field private piper:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final pool:J

.field private final service:Lorg/apache/sshd/common/session/ConnectionService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "END_OF_STREAM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sput-object v0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->END_OF_STREAM_MESSAGE:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;-><init>(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 6
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->innerFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    iput-object p1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    .line 73
    :try_start_0
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->createLocalSocketAddress()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "authSocket":Ljava/lang/String;
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/sshd/agent/unix/AprLibrary;->getRootPool()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/Pool;->create(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->pool:J

    .line 76
    invoke-static {v0, v2, v3}, Lorg/apache/tomcat/jni/Local;->create(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->handle:J

    .line 77
    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    .line 79
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/tomcat/jni/Local;->bind(JJ)I

    move-result v4

    .line 81
    .local v4, "result":I
    if-nez v4, :cond_2

    .line 84
    invoke-static {v0, v2, v3}, Lorg/apache/sshd/agent/unix/AprLibrary;->secureLocalSocket(Ljava/lang/String;J)V

    .line 85
    invoke-static {v2, v3, v1}, Lorg/apache/tomcat/jni/Local;->listen(JI)I

    move-result v1

    .line 86
    .end local v4    # "result":I
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 90
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sshd-AgentServerProxy-PIPE-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->noClose(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->pipeService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 93
    new-instance v3, Lorg/apache/sshd/agent/unix/AgentServerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/apache/sshd/agent/unix/AgentServerProxy$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/unix/AgentServerProxy;)V

    invoke-interface {v2, v3}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->piper:Ljava/util/concurrent/Future;

    .line 128
    .end local v0    # "authSocket":Ljava/lang/String;
    .end local v1    # "result":I
    nop

    .line 129
    return-void

    .line 87
    .restart local v0    # "authSocket":Ljava/lang/String;
    .restart local v1    # "result":I
    :cond_1
    invoke-static {v1}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->toIOException(I)Ljava/io/IOException;

    move-result-object v2

    .end local p1    # "service":Lorg/apache/sshd/common/session/ConnectionService;
    .end local p2    # "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    throw v2

    .line 82
    .end local v1    # "result":I
    .restart local v4    # "result":I
    .restart local p1    # "service":Lorg/apache/sshd/common/session/ConnectionService;
    .restart local p2    # "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :cond_2
    invoke-static {v4}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->toIOException(I)Ljava/io/IOException;

    move-result-object v1

    .end local p1    # "service":Lorg/apache/sshd/common/session/ConnectionService;
    .end local p2    # "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "authSocket":Ljava/lang/String;
    .end local v4    # "result":I
    .restart local p1    # "service":Lorg/apache/sshd/common/session/ConnectionService;
    .restart local p2    # "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public static toIOException(I)Ljava/io/IOException;
    .locals 3
    .param p0, "code"    # I

    .line 249
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

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 148
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 152
    .local v0, "debugEnabled":Z
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->handle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->innerFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 155
    :try_start_2
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->signalEOS(Lorg/apache/sshd/agent/unix/AprLibrary;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    goto :goto_0

    .line 156
    .end local p0    # "this":Lorg/apache/sshd/agent/unix/AgentServerProxy;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 159
    :try_start_3
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception signalling EOS to the PIPE socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->handle:J

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    move-result v1

    .line 165
    .local v1, "closeCode":I
    if-eqz v1, :cond_2

    .line 166
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    const-string v3, "Exceptions closing the PIPE: {}. APR error code: {} "

    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    .end local v1    # "closeCode":I
    :cond_2
    :try_start_4
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->removeSocketFile(Ljava/lang/String;Z)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    :cond_3
    goto :goto_1

    .line 174
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 177
    :try_start_5
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception deleting the PIPE socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->piper:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_5

    .line 183
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->piper:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    :cond_5
    :try_start_7
    iput-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->piper:Ljava/util/concurrent/Future;

    .line 187
    nop

    .line 189
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v1

    .line 190
    .local v1, "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_6

    .line 191
    invoke-interface {v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v0, :cond_6

    .line 193
    iget-object v3, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shut down runners count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 196
    .end local v2    # "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_6
    monitor-exit p0

    return-void

    .line 186
    .end local v1    # "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :catchall_0
    move-exception v2

    :try_start_8
    iput-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->piper:Ljava/util/concurrent/Future;

    .line 187
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 146
    .end local v0    # "debugEnabled":Z
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected deleteFile(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "debugEnabled"    # Z

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 233
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 234
    if-eqz p3, :cond_0

    .line 235
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_0
    return v0
.end method

.method public getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->pipeService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$org-apache-sshd-agent-unix-AgentServerProxy()V
    .locals 12

    .line 95
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 96
    .local v1, "debugEnabled":Z
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    .line 97
    .local v2, "traceEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->isOpen()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 99
    :try_start_1
    iget-wide v3, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->handle:J

    invoke-static {v3, v4}, Lorg/apache/tomcat/jni/Local;->accept(J)J

    move-result-wide v3

    .line 100
    .local v3, "clientSock":J
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    goto/16 :goto_2

    .line 104
    :cond_0
    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v5}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v5

    .line 105
    .local v5, "session":Lorg/apache/sshd/common/session/Session;
    const-string v6, "ssh-agent-server-proxy-auth-socket-timeout"

    const v7, 0x989680

    invoke-interface {v5, v6, v7}, Lorg/apache/sshd/common/session/Session;->getIntProperty(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Lorg/apache/tomcat/jni/Socket;->timeoutSet(JJ)I

    .line 106
    const-string v6, "ssh-agent-server-channel-proxy-type"

    const-string v7, "auth-agent@openssh.com"

    invoke-interface {v5, v6, v7}, Lorg/apache/sshd/common/session/Session;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "channelType":Ljava/lang/String;
    new-instance v7, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;

    invoke-direct {v7, v3, v4, v6}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;-><init>(JLjava/lang/String;)V

    .line 108
    .local v7, "channel":Lorg/apache/sshd/agent/unix/AgentForwardedChannel;
    iget-object v8, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v8, v7}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    .line 109
    invoke-virtual {v7}, Lorg/apache/sshd/agent/unix/AgentForwardedChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v8

    const-string v9, "ssh-agent-server-channel-open-timeout"

    sget-wide v10, Lorg/apache/sshd/agent/unix/AgentServerProxy;->DEFAULT_CHANNEL_OPEN_TIMEOUT:J

    invoke-interface {v5, v9, v10, v11}, Lorg/apache/sshd/common/session/Session;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lorg/apache/sshd/client/future/OpenFuture;->verify(J)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    .end local v3    # "clientSock":J
    .end local v5    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v6    # "channelType":Ljava/lang/String;
    .end local v7    # "channel":Lorg/apache/sshd/agent/unix/AgentForwardedChannel;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 112
    :try_start_2
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    const-string v5, "run(open={}) {} while authentication forwarding: {}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 113
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->isOpen()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 112
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_1
    if-eqz v2, :cond_2

    .line 116
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run(open="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->isOpen()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") authentication forwarding failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 121
    .end local v1    # "debugEnabled":Z
    .end local v2    # "traceEnabled":Z
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->innerFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->innerFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    throw v1
.end method

.method protected removeSocketFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3
    .param p1, "socketPath"    # Ljava/lang/String;
    .param p2, "debugEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "socketFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "Deleted PIPE socket {}"

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->deleteFile(Ljava/io/File;Ljava/lang/String;Z)Z

    .line 203
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "Deleted parent PIPE socket {}"

    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/sshd/agent/unix/AgentServerProxy;->deleteFile(Ljava/io/File;Ljava/lang/String;Z)Z

    .line 208
    :cond_0
    return-object v0
.end method

.method protected signalEOS(Lorg/apache/sshd/agent/unix/AprLibrary;Z)V
    .locals 11
    .param p1, "libInstance"    # Lorg/apache/sshd/agent/unix/AprLibrary;
    .param p2, "debugEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lorg/apache/sshd/agent/unix/AprLibrary;->getRootPool()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Pool;->create(J)J

    move-result-wide v0

    .line 213
    .local v0, "tmpPool":J
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lorg/apache/tomcat/jni/Local;->create(Ljava/lang/String;J)J

    move-result-wide v2

    .line 214
    .local v2, "tmpSocket":J
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/tomcat/jni/Local;->connect(JJ)I

    move-result v6

    int-to-long v6, v6

    .line 216
    .local v6, "connectResult":J
    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "Unable to connect to socket PIPE {}. APR errcode {}"

    invoke-interface {v4, v9, v5, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    :cond_0
    sget-object v4, Lorg/apache/sshd/agent/unix/AgentServerProxy;->END_OF_STREAM_MESSAGE:[B

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v5, v8}, Lorg/apache/tomcat/jni/Socket;->send(J[BII)I

    move-result v4

    .line 224
    .local v4, "sendResult":I
    if-eq v4, v8, :cond_1

    .line 225
    if-eqz p2, :cond_1

    .line 226
    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->log:Lorg/slf4j/Logger;

    iget-object v8, p0, Lorg/apache/sshd/agent/unix/AgentServerProxy;->authSocket:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Unable to send signal the EOS for {}. APR retcode {} != 1"

    invoke-interface {v5, v10, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    :cond_1
    return-void
.end method
