.class public final synthetic Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/server/forward/AgentForwardingFilter;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final canForwardAgent(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda1;->f$0:Z

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/server/forward/AgentForwardingFilter;->lambda$of$1(ZLorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
