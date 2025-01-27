.class public final synthetic Lorg/apache/sshd/agent/local/AgentForwardedChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/agent/local/AgentForwardedChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;

    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->lambda$new$0$org-apache-sshd-agent-local-AgentForwardedChannel(Lorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
