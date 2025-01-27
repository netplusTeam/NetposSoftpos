.class public interface abstract Lorg/apache/sshd/agent/SshAgentFactory;
.super Ljava/lang/Object;
.source "SshAgentFactory.java"


# static fields
.field public static final DEFAULT_PROXY_AUTH_CHANNEL_TYPE:Ljava/lang/String; = "auth-agent-req@openssh.com"

.field public static final PREFER_UNIX_AGENT:Ljava/lang/String; = "ssh-prefer-unix-agent"

.field public static final PROXY_AUTH_CHANNEL_TYPE:Ljava/lang/String; = "ssh-agent-factory-proxy-auth-channel-type"


# virtual methods
.method public abstract createClient(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/agent/SshAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServer(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/agent/SshAgentServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getChannelForwardingFactories(Lorg/apache/sshd/common/FactoryManager;)Ljava/util/List;
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
.end method
