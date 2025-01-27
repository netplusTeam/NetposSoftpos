.class public Lorg/apache/sshd/agent/local/AgentServerProxy;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AgentServerProxy.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgentServer;


# instance fields
.field private final id:Ljava/lang/String;

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final service:Lorg/apache/sshd/common/session/ConnectionService;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;)V
    .locals 2
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    const-string v0, "No connection service provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ConnectionService;

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->id:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v2}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentServerProxy;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public createClient()Lorg/apache/sshd/agent/SshAgent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 48
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const-string v1, "ssh-agent-server-channel-proxy-type"

    const-string v2, "auth-agent@openssh.com"

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "channelType":Ljava/lang/String;
    new-instance v2, Lorg/apache/sshd/agent/local/AgentForwardedChannel;

    invoke-direct {v2, v1}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "channel":Lorg/apache/sshd/agent/local/AgentForwardedChannel;
    iget-object v3, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v3, v2}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    .line 51
    invoke-virtual {v2}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v3

    const-string v4, "ssh-agent-server-channel-open-timeout"

    sget-wide v5, Lorg/apache/sshd/agent/local/AgentServerProxy;->DEFAULT_CHANNEL_OPEN_TIMEOUT:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/sshd/client/future/OpenFuture;->verify(J)Ljava/lang/Object;

    .line 52
    invoke-virtual {v2}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getAgent()Lorg/apache/sshd/agent/SshAgent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 53
    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v1    # "channelType":Ljava/lang/String;
    .end local v2    # "channel":Lorg/apache/sshd/agent/local/AgentForwardedChannel;
    :catchall_0
    move-exception v0

    .line 54
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const-string v2, ") to create client: "

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createClient("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v4}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentServerProxy;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 60
    :cond_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 64
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentServerProxy;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
