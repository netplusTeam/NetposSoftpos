.class public final synthetic Lorg/apache/sshd/agent/unix/UnixAgentFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/agent/unix/UnixAgentFactory;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/agent/unix/UnixAgentFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/agent/unix/UnixAgentFactory$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/unix/UnixAgentFactory;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/agent/unix/UnixAgentFactory$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/unix/UnixAgentFactory;

    check-cast p1, Lorg/apache/sshd/common/channel/ChannelFactory;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/agent/unix/UnixAgentFactory;->lambda$getChannelForwardingFactories$0$org-apache-sshd-agent-unix-UnixAgentFactory(Lorg/apache/sshd/common/channel/ChannelFactory;)Lorg/apache/sshd/agent/unix/ChannelAgentForwardingFactory;

    move-result-object p1

    return-object p1
.end method
