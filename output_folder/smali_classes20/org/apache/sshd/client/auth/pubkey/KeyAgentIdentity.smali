.class public Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;
.super Ljava/lang/Object;
.source "KeyAgentIdentity.java"

# interfaces
.implements Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;


# instance fields
.field private final agent:Lorg/apache/sshd/agent/SshAgent;

.field private final comment:Ljava/lang/String;

.field private final key:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/agent/SshAgent;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "agent"    # Lorg/apache/sshd/agent/SshAgent;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "comment"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "No signing agent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/agent/SshAgent;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 40
    const-string v0, "No public key"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->key:Ljava/security/PublicKey;

    .line 41
    iput-object p3, p0, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->comment:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->key:Ljava/security/PublicKey;

    return-object v0
.end method

.method public sign(Lorg/apache/sshd/common/session/SessionContext;[B)[B
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lorg/apache/sshd/agent/SshAgent;->sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 61
    .local v0, "pubKey":Ljava/security/PublicKey;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fingerprint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    return-object v1
.end method
