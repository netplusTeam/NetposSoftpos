.class public Lorg/apache/sshd/client/keyverifier/DelegatingServerKeyVerifier;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "DelegatingServerKeyVerifier.java"

# interfaces
.implements Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 43
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 44
    .local v0, "metadataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-class v1, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "verifier":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 46
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/DelegatingServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/DelegatingServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "verifyServerKey({}) No verifier found in ClientSession metadata; accepting server key"

    invoke-interface {v2, v3, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 52
    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;->verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z

    move-result v2

    return v2
.end method
