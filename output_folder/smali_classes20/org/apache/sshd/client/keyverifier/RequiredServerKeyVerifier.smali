.class public Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "RequiredServerKeyVerifier.java"

# interfaces
.implements Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;


# instance fields
.field private final requiredKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "requiredKey"    # Ljava/security/PublicKey;

    .line 36
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;->requiredKey:Ljava/security/PublicKey;

    .line 38
    return-void
.end method


# virtual methods
.method public final getRequiredKey()Ljava/security/PublicKey;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;->requiredKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z
    .locals 3
    .param p1, "sshClientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;->requiredKey:Ljava/security/PublicKey;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Server at {} presented expected key: {}"

    invoke-interface {v0, v2, p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/RequiredServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Server at {} presented wrong key: {}"

    invoke-interface {v0, v2, p2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    const/4 v0, 0x0

    return v0
.end method
