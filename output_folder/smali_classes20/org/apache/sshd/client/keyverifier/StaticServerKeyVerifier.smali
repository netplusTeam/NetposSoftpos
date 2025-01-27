.class public abstract Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "StaticServerKeyVerifier.java"

# interfaces
.implements Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;


# instance fields
.field private final acceptance:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "acceptance"    # Z

    .line 37
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    iput-boolean p1, p0, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->acceptance:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected handleAcceptance(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "sshClientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    const-string v2, "Server at {} presented unverified {} key: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected handleRejection(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "sshClientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    if-nez p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 65
    const-string v2, "Reject server {} unverified {} key: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_1
    return-void
.end method

.method public final isAccepted()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->acceptance:Z

    return v0
.end method

.method public final verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "sshClientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->isAccepted()Z

    move-result v0

    .line 48
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->handleAcceptance(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;->handleRejection(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)V

    .line 54
    :goto_0
    return v0
.end method
