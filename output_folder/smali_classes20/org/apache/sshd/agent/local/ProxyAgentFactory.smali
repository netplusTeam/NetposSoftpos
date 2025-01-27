.class public Lorg/apache/sshd/agent/local/ProxyAgentFactory;
.super Ljava/lang/Object;
.source "ProxyAgentFactory.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgentFactory;


# instance fields
.field private final proxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/agent/local/AgentServerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory;->proxies:Ljava/util/Map;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/agent/local/ProxyAgentFactory;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/agent/local/ProxyAgentFactory;

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory;->proxies:Ljava/util/Map;

    return-object v0
.end method

.method public static isPreferredUnixAgent(Lorg/apache/sshd/common/PropertyResolver;)Z
    .locals 2
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 108
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    const-string v1, "ssh-prefer-unix-agent"

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 118
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createClient(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/agent/SshAgent;
    .locals 5
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const-string v0, "SSH_AUTH_SOCK"

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/FactoryManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "proxyId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory;->proxies:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/agent/local/AgentServerProxy;

    .line 68
    .local v1, "proxy":Lorg/apache/sshd/agent/local/AgentServerProxy;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Lorg/apache/sshd/agent/local/AgentServerProxy;->createClient()Lorg/apache/sshd/agent/SshAgent;

    move-result-object v2

    return-object v2

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ssh agent found for ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v1    # "proxy":Lorg/apache/sshd/agent/local/AgentServerProxy;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No SSH_AUTH_SOCK environment variable set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createServer(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/agent/SshAgentServer;
    .locals 4
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 78
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const-class v1, Lorg/apache/sshd/server/session/ServerSession;

    const-string v2, "The session used to create an agent server proxy must be a server session: %s"

    invoke-static {v0, v1, v2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lorg/apache/sshd/agent/local/AgentServerProxy;

    invoke-direct {v1, p1}, Lorg/apache/sshd/agent/local/AgentServerProxy;-><init>(Lorg/apache/sshd/common/session/ConnectionService;)V

    .line 82
    .local v1, "proxy":Lorg/apache/sshd/agent/local/AgentServerProxy;
    iget-object v2, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory;->proxies:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/sshd/agent/local/AgentServerProxy;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v2, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;

    invoke-direct {v2, p0, v1}, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;-><init>(Lorg/apache/sshd/agent/local/ProxyAgentFactory;Lorg/apache/sshd/agent/local/AgentServerProxy;)V

    return-object v2
.end method

.method public getChannelForwardingFactories(Lorg/apache/sshd/common/FactoryManager;)Ljava/util/List;
    .locals 1
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

    .line 55
    invoke-static {p1}, Lorg/apache/sshd/agent/local/ProxyAgentFactory;->isPreferredUnixAgent(Lorg/apache/sshd/common/PropertyResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    :goto_0
    return-object v0
.end method
