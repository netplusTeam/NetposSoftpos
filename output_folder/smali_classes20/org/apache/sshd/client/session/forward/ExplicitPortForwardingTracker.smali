.class public Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;
.super Lorg/apache/sshd/client/session/forward/PortForwardingTracker;
.source "ExplicitPortForwardingTracker.java"

# interfaces
.implements Lorg/apache/sshd/common/util/net/ConnectionEndpointsIndicator;


# instance fields
.field private final localForwarding:Z

.field private final remoteAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/session/ClientSession;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "localForwarding"    # Z
    .param p3, "localAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p5, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 39
    invoke-direct {p0, p1, p3, p5}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;-><init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 40
    iput-boolean p2, p0, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->localForwarding:Z

    .line 41
    const-string v0, "No remote address specified"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object v0, p0, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->remoteAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 57
    .local v0, "manager":Lorg/apache/sshd/common/forward/PortForwardingManager;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->isLocalForwarding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->getLocalAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/forward/PortForwardingManager;->stopLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->getRemoteAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/forward/PortForwardingManager;->stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 63
    .end local v0    # "manager":Lorg/apache/sshd/common/forward/PortForwardingManager;
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->getLocalAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->getRemoteAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->remoteAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public isLocalForwarding()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->localForwarding:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[localForwarding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->isLocalForwarding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/ExplicitPortForwardingTracker;->getRemoteAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
