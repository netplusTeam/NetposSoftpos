.class public Lorg/apache/sshd/agent/unix/UnixAgentFactory;
.super Ljava/lang/Object;
.source "UnixAgentFactory.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgentFactory;


# static fields
.field public static final DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executorServiceFactory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    sget-object v1, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->OPENSSH:Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->IETF:Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    .line 60
    return-void
.end method


# virtual methods
.method public createClient(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/agent/SshAgent;
    .locals 3
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "SSH_AUTH_SOCK"

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/FactoryManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "authSocket":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lorg/apache/sshd/agent/unix/AgentClient;

    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->newExecutor()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/sshd/agent/unix/AgentClient;-><init>(Lorg/apache/sshd/common/FactoryManager;Ljava/lang/String;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    return-object v1

    .line 81
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v2, "No SSH_AUTH_SOCK value"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createServer(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/agent/SshAgentServer;
    .locals 3
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    const-string v1, "No session"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/Session;

    .line 90
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const-class v1, Lorg/apache/sshd/server/session/ServerSession;

    const-string v2, "The session used to create an agent server proxy must be a server session: %s"

    invoke-static {v0, v1, v2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lorg/apache/sshd/agent/unix/AgentServerProxy;

    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->newExecutor()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/sshd/agent/unix/AgentServerProxy;-><init>(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    return-object v1
.end method

.method public getChannelForwardingFactories(Lorg/apache/sshd/common/FactoryManager;)Ljava/util/List;
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/FactoryManager;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/agent/unix/UnixAgentFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/agent/unix/UnixAgentFactory$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/unix/UnixAgentFactory;)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$getChannelForwardingFactories$0$org-apache-sshd-agent-unix-UnixAgentFactory(Lorg/apache/sshd/common/channel/ChannelFactory;)Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;
    .locals 3
    .param p1, "cf"    # Lorg/apache/sshd/common/channel/ChannelFactory;

    .line 70
    new-instance v0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    invoke-interface {p1}, Lorg/apache/sshd/common/channel/ChannelFactory;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/Factory;)V

    return-object v0
.end method

.method protected newExecutor()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
