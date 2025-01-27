.class public final synthetic Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;

    iput p2, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;

    iget v1, p0, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lorg/apache/sshd/agent/unix/ChannelAgentForwarding;->lambda$doInit$0$org-apache-sshd-agent-unix-ChannelAgentForwarding(I)V

    return-void
.end method
