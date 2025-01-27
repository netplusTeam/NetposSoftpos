.class public Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;
.super Ljava/lang/Object;
.source "KeyPairIdentity.java"

# interfaces
.implements Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;


# instance fields
.field private final pair:Ljava/security/KeyPair;

.field private final signatureFactories:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Ljava/security/KeyPair;)V
    .locals 3
    .param p1, "primary"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .param p2, "secondary"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .param p3, "pair"    # Ljava/security/KeyPair;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    nop

    .line 45
    invoke-static {p1, p2}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->resolveSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    const-string v2, "No available signature factories"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->signatureFactories:Ljava/util/Collection;

    .line 47
    const-string v0, "No key pair"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->pair:Ljava/security/KeyPair;

    .line 48
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->pair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public sign(Lorg/apache/sshd/common/session/SessionContext;[B)[B
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "keyType":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->signatureFactories:Ljava/util/Collection;

    .line 59
    invoke-static {v1, v0}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    const-string v2, "No signer could be located for key type=%s"

    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/signature/Signature;

    .line 62
    .local v1, "verifier":Lorg/apache/sshd/common/signature/Signature;
    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->pair:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/apache/sshd/common/signature/Signature;->initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V

    .line 63
    invoke-interface {v1, p1, p2}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 64
    invoke-interface {v1, p1}, Lorg/apache/sshd/common/signature/Signature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 70
    .local v0, "pubKey":Ljava/security/PublicKey;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", factories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;->signatureFactories:Ljava/util/Collection;

    .line 72
    invoke-static {v2}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fingerprint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    return-object v1
.end method
