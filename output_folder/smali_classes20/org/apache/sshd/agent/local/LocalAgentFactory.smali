.class public Lorg/apache/sshd/agent/local/LocalAgentFactory;
.super Ljava/lang/Object;
.source "LocalAgentFactory.java"

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
.field private final agent:Lorg/apache/sshd/agent/SshAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    sget-object v1, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;->OPENSSH:Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;->IETF:Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/sshd/agent/local/AgentImpl;

    invoke-direct {v0}, Lorg/apache/sshd/agent/local/AgentImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/agent/SshAgent;)V
    .locals 0
    .param p1, "agent"    # Lorg/apache/sshd/agent/SshAgent;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 49
    return-void
.end method


# virtual methods
.method public createClient(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/agent/SshAgent;
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/sshd/agent/common/AgentDelegate;

    iget-object v1, p0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-direct {v0, v1}, Lorg/apache/sshd/agent/common/AgentDelegate;-><init>(Lorg/apache/sshd/agent/SshAgent;)V

    return-object v0
.end method

.method public createServer(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/agent/SshAgentServer;
    .locals 1
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgent()Lorg/apache/sshd/agent/SshAgent;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->agent:Lorg/apache/sshd/agent/SshAgent;

    return-object v0
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

    .line 57
    sget-object v0, Lorg/apache/sshd/agent/local/LocalAgentFactory;->DEFAULT_FORWARDING_CHANNELS:Ljava/util/List;

    return-object v0
.end method
