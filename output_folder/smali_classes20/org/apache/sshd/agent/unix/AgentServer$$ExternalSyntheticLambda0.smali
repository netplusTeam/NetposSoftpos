.class public final synthetic Lorg/apache/sshd/agent/unix/AgentServer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/agent/unix/AgentServer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/agent/unix/AgentServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/agent/unix/AgentServer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/unix/AgentServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentServer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/agent/unix/AgentServer;

    invoke-virtual {v0}, Lorg/apache/sshd/agent/unix/AgentServer;->lambda$start$0$org-apache-sshd-agent-unix-AgentServer()V

    return-void
.end method
