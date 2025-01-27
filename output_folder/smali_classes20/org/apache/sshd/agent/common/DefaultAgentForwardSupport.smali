.class public Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "DefaultAgentForwardSupport.java"

# interfaces
.implements Lorg/apache/sshd/agent/common/AgentForwardSupport;


# instance fields
.field private final agentServerHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/agent/SshAgentServer;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceInstance:Lorg/apache/sshd/common/session/ConnectionService;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;

    .line 42
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->agentServerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    const-string v0, "No connection service"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ConnectionService;

    iput-object v0, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->serviceInstance:Lorg/apache/sshd/common/session/ConnectionService;

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->agentServerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/agent/SshAgentServer;

    .line 92
    .local v0, "agentServer":Lorg/apache/sshd/agent/SshAgentServer;
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->serviceInstance:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v2}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v2

    const-string v3, "close({}) closing server={}"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgentServer;->close()V

    .line 98
    :cond_1
    return-void
.end method

.method protected createSshAgentServer(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/agent/SshAgentServer;
    .locals 3
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    invoke-interface {p2}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    const-string v1, "No session factory manager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    .line 85
    .local v0, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;

    move-result-object v1

    const-string v2, "No agent factory"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/agent/SshAgentFactory;

    .line 86
    .local v1, "factory":Lorg/apache/sshd/agent/SshAgentFactory;
    invoke-interface {v1, p1}, Lorg/apache/sshd/agent/SshAgentFactory;->createServer(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/agent/SshAgentServer;

    move-result-object v2

    return-object v2
.end method

.method protected doCloseImmediately()V
    .locals 4

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 108
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to close agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialize()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->serviceInstance:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 51
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->agentServerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iget-object v6, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->agentServerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/agent/SshAgentServer;

    .line 53
    .local v6, "agentServer":Lorg/apache/sshd/agent/SshAgentServer;
    if-eqz v6, :cond_0

    .line 54
    invoke-interface {v6}, Lorg/apache/sshd/agent/SshAgentServer;->getId()Ljava/lang/String;

    move-result-object v7

    monitor-exit v5

    return-object v7

    .line 57
    :cond_0
    iget-object v7, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->serviceInstance:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {p0, v7, v0}, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->createSshAgentServer(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/agent/SshAgentServer;

    move-result-object v7

    const-string v8, "No agent server created"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/agent/SshAgentServer;

    move-object v6, v7

    .line 58
    iget-object v7, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->agentServerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 59
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-interface {v6}, Lorg/apache/sshd/agent/SshAgentServer;->getId()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "agentId":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    iget-object v7, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v8, "initialize({}) id={}, server={}"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    aput-object v5, v9, v2

    aput-object v6, v9, v1

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :cond_1
    return-object v5

    .line 59
    .end local v5    # "agentId":Ljava/lang/String;
    .end local v6    # "agentServer":Lorg/apache/sshd/agent/SshAgentServer;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    .restart local v0    # "session":Lorg/apache/sshd/common/session/Session;
    :catchall_1
    move-exception v5

    .line 68
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    iget-object v6, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v7, "initialize({}) failed ({}) to create server: {}"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 70
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 69
    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") server creation failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_3
    instance-of v1, v5, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 76
    move-object v1, v5

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 78
    :cond_4
    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, v5}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
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

    iget-object v1, p0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;->serviceInstance:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
