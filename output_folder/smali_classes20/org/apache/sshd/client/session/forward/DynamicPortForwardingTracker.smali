.class public Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;
.super Lorg/apache/sshd/client/session/forward/PortForwardingTracker;
.source "DynamicPortForwardingTracker.java"


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "localAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;-><init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 35
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

    .line 39
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 41
    .local v0, "manager":Lorg/apache/sshd/common/forward/PortForwardingManager;
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/DynamicPortForwardingTracker;->getBoundAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/forward/PortForwardingManager;->stopDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 43
    .end local v0    # "manager":Lorg/apache/sshd/common/forward/PortForwardingManager;
    :cond_0
    return-void
.end method
