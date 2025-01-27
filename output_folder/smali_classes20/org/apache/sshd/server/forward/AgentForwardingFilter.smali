.class public interface abstract Lorg/apache/sshd/server/forward/AgentForwardingFilter;
.super Ljava/lang/Object;
.source "AgentForwardingFilter.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/sshd/server/forward/AgentForwardingFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/forward/AgentForwardingFilter;->DEFAULT:Lorg/apache/sshd/server/forward/AgentForwardingFilter;

    return-void
.end method

.method public static synthetic lambda$of$1(ZLorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "requestType"    # Ljava/lang/String;

    .line 49
    return p0
.end method

.method public static synthetic lambda$static$0(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 1
    .param p0, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p1, "requestType"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public static of(Z)Lorg/apache/sshd/server/forward/AgentForwardingFilter;
    .locals 1
    .param p0, "enabled"    # Z

    .line 49
    new-instance v0, Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/forward/AgentForwardingFilter$$ExternalSyntheticLambda1;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public abstract canForwardAgent(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
.end method
