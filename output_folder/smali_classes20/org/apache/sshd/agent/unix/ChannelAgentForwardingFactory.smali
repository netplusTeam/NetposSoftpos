.class public Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;
.super Ljava/lang/Object;
.source "ChannelAgentForwardingFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelFactory;


# static fields
.field public static final IETF:Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

.field public static final OPENSSH:Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;


# instance fields
.field private final executorServiceFactory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    const-string v1, "auth-agent@openssh.com"

    invoke-direct {v0, v1}, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->OPENSSH:Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    .line 37
    new-instance v0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    const-string v1, "auth-agent"

    invoke-direct {v0, v1}, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->IETF:Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/Factory;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/sshd/common/Factory;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "executorServiceFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "No channel factory name specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    .line 49
    return-void
.end method


# virtual methods
.method public createChannel(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/channel/Channel;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "executorService":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :goto_0
    new-instance v1, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;

    invoke-direct {v1, v0}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;-><init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 61
    .local v1, "channel":Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;->name:Ljava/lang/String;

    return-object v0
.end method
