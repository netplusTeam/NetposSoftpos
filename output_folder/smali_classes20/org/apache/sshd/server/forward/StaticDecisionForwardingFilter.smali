.class public Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "StaticDecisionForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/server/forward/ForwardingFilter;


# instance fields
.field private final acceptance:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "acceptance"    # Z

    .line 35
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 36
    iput-boolean p1, p0, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->acceptance:Z

    .line 37
    return-void
.end method


# virtual methods
.method public canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "type"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 60
    invoke-virtual {p1}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p2}, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->checkAcceptance(Ljava/lang/String;Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z

    move-result v0

    return v0
.end method

.method public canForwardAgent(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "requestType"    # Ljava/lang/String;

    .line 45
    sget-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->LOCALHOST_ADDRESS:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {p0, p2, p1, v0}, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->checkAcceptance(Ljava/lang/String;Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z

    move-result v0

    return v0
.end method

.method public canForwardX11(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "requestType"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->LOCALHOST_ADDRESS:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {p0, p2, p1, v0}, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->checkAcceptance(Ljava/lang/String;Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z

    move-result v0

    return v0
.end method

.method public canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 55
    const-string/jumbo v0, "tcpip-forward"

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->checkAcceptance(Ljava/lang/String;Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z

    move-result v0

    return v0
.end method

.method protected checkAcceptance(Ljava/lang/String;Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z
    .locals 4
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p3, "target"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 71
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->isAccepted()Z

    move-result v0

    .line 72
    .local v0, "accepted":Z
    iget-object v1, p0, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAcceptance("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] acceptance for target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 75
    :cond_0
    return v0
.end method

.method public final isAccepted()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;->acceptance:Z

    return v0
.end method
