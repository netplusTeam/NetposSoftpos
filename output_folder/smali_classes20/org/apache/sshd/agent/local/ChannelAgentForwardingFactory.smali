.class public Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;
.super Ljava/lang/Object;
.source "ChannelAgentForwardingFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelFactory;


# static fields
.field public static final IETF:Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

.field public static final OPENSSH:Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    const-string v1, "auth-agent@openssh.com"

    invoke-direct {v0, v1}, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;->OPENSSH:Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    .line 35
    new-instance v0, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    const-string v1, "auth-agent"

    invoke-direct {v0, v1}, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;->IETF:Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "No channel factory name specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;->name:Ljava/lang/String;

    .line 41
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

    .line 50
    new-instance v0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;-><init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwardingFactory;->name:Ljava/lang/String;

    return-object v0
.end method
