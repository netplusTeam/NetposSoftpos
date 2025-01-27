.class public Lorg/apache/sshd/agent/unix/AgentServer;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AgentServer.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;
    }
.end annotation


# instance fields
.field private final agent:Lorg/apache/sshd/agent/SshAgent;

.field private agentThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private authSocket:Ljava/lang/String;

.field private handle:J

.field private pool:J

.field private final service:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/agent/unix/AgentServer;-><init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/agent/SshAgent;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 2
    .param p1, "agent"    # Lorg/apache/sshd/agent/SshAgent;
    .param p2, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 60
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 62
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentServer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->service:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 1
    .param p1, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 57
    new-instance v0, Lorg/apache/sshd/agent/local/AgentImpl;

    invoke-direct {v0}, Lorg/apache/sshd/agent/local/AgentImpl;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/agent/unix/AgentServer;-><init>(Lorg/apache/sshd/agent/SshAgent;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lorg/apache/sshd/agent/unix/AgentServer;->throwException(I)V

    return-void
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
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "err":Ljava/io/IOException;
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v1}, Lorg/apache/sshd/agent/SshAgent;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->handle:J

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    .line 117
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agentThread:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agentThread:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_0
    iput-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agentThread:Ljava/util/concurrent/Future;

    .line 122
    nop

    .line 124
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServer;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v1

    .line 125
    .local v1, "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    invoke-interface {v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v3, p0, Lorg/apache/sshd/agent/unix/AgentServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lorg/apache/sshd/agent/unix/AgentServer;->log:Lorg/slf4j/Logger;

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

    .line 132
    .end local v2    # "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_1
    if-nez v0, :cond_2

    .line 135
    return-void

    .line 133
    :cond_2
    throw v0

    .line 121
    .end local v1    # "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agentThread:Ljava/util/concurrent/Future;

    .line 122
    throw v2
.end method

.method public getAgent()Lorg/apache/sshd/agent/SshAgent;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agent:Lorg/apache/sshd/agent/SshAgent;

    return-object v0
.end method

.method public getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->service:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    return-object v0
.end method

.method synthetic lambda$start$0$org-apache-sshd-agent-unix-AgentServer()V
    .locals 4

    .line 94
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->handle:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Local;->accept(J)J

    move-result-wide v0

    .line 95
    .local v0, "clientSock":J
    const-wide/32 v2, 0x989680

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tomcat/jni/Socket;->timeoutSet(JJ)I

    .line 96
    new-instance v2, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;

    iget-object v3, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;-><init>(JLorg/apache/sshd/agent/SshAgent;)V

    invoke-virtual {v2}, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "clientSock":J
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to run session"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public start()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->createLocalSocketAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->authSocket:Ljava/lang/String;

    .line 78
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sshd/agent/unix/AprLibrary;->getRootPool()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Pool;->create(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->pool:J

    .line 79
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServer;->authSocket:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lorg/apache/tomcat/jni/Local;->create(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentServer;->handle:J

    .line 80
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tomcat/jni/Local;->bind(JJ)I

    move-result v0

    .line 81
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lorg/apache/sshd/agent/unix/AgentServer;->throwException(I)V

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->authSocket:Ljava/lang/String;

    iget-wide v2, p0, Lorg/apache/sshd/agent/unix/AgentServer;->handle:J

    invoke-static {v1, v2, v3}, Lorg/apache/sshd/agent/unix/AprLibrary;->secureLocalSocket(Ljava/lang/String;J)V

    .line 85
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentServer;->handle:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/apache/tomcat/jni/Local;->listen(JI)I

    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    invoke-static {v0}, Lorg/apache/sshd/agent/unix/AgentServer;->throwException(I)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentServer;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v1

    .line 91
    .local v1, "executor":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    new-instance v2, Lorg/apache/sshd/agent/unix/AgentServer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/agent/unix/AgentServer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/unix/AgentServer;)V

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServer;->agentThread:Ljava/util/concurrent/Future;

    .line 102
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentServer;->authSocket:Ljava/lang/String;

    return-object v2
.end method
