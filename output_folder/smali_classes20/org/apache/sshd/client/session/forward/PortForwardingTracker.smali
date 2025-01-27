.class public abstract Lorg/apache/sshd/client/session/forward/PortForwardingTracker;
.super Ljava/lang/Object;
.source "PortForwardingTracker.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/channels/Channel;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/client/session/ClientSession;",
        ">;",
        "Lorg/apache/sshd/client/session/ClientSessionHolder;"
    }
.end annotation


# instance fields
.field private final boundAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private final localAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field protected final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final session:Lorg/apache/sshd/client/session/ClientSession;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "localAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    const-string v0, "No client session provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    iput-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->session:Lorg/apache/sshd/client/session/ClientSession;

    .line 44
    const-string v0, "No local address specified"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->localAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 45
    const-string v0, "No bound address specified"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->boundAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 46
    return-void
.end method


# virtual methods
.method public getBoundAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->boundAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->session:Lorg/apache/sshd/client/session/ClientSession;

    return-object v0
.end method

.method public getLocalAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->localAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->getLocalAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->getBoundAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/forward/PortForwardingTracker;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method
