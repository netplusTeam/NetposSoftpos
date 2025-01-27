.class public interface abstract Lorg/apache/sshd/common/session/SessionListener;
.super Ljava/lang/Object;
.source "SessionListener.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/session/SessionListener$Event;
    }
.end annotation


# direct methods
.method public static validateListener(Lorg/apache/sshd/common/session/SessionListener;)Lorg/apache/sshd/common/session/SessionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/sshd/common/session/SessionListener;",
            ">(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .line 152
    .local p0, "listener":Lorg/apache/sshd/common/session/SessionListener;, "TL;"
    const-class v0, Lorg/apache/sshd/common/session/SessionListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/SshdEventListener;->validateListener(Lorg/apache/sshd/common/util/SshdEventListener;Ljava/lang/String;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/SessionListener;

    return-object v0
.end method


# virtual methods
.method public sessionClosed(Lorg/apache/sshd/common/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 149
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 58
    return-void
.end method

.method public sessionDisconnect(Lorg/apache/sshd/common/session/Session;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "reason"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "initiator"    # Z

    .line 140
    return-void
.end method

.method public sessionEstablished(Lorg/apache/sshd/common/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 49
    return-void
.end method

.method public sessionEvent(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/session/SessionListener$Event;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "event"    # Lorg/apache/sshd/common/session/SessionListener$Event;

    .line 112
    return-void
.end method

.method public sessionException(Lorg/apache/sshd/common/session/Session;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 125
    return-void
.end method

.method public sessionNegotiationEnd(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 102
    .local p2, "clientProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p3, "serverProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p4, "negotiatedOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    return-void
.end method

.method public sessionNegotiationStart(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "clientProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p3, "serverProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    return-void
.end method

.method public sessionPeerIdentificationReceived(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p3, "extraLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
