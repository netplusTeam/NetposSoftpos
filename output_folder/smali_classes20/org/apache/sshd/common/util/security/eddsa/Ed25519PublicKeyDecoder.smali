.class public final Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;
.source "Ed25519PublicKeyDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder<",
        "Lnet/i2p/crypto/eddsa/EdDSAPublicKey;",
        "Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;

.field public static final MAX_ALLOWED_SEED_LEN:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->INSTANCE:Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 51
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    const-class v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 53
    const-string v2, "ssh-ed25519"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 51
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 55
    return-void
.end method

.method public static getSeedValue(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)[B
    .locals 1
    .param p0, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 104
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clonePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->clonePrivateKey(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePrivateKey(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .locals 3
    .param p1, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    return-object v0
.end method

.method public bridge synthetic clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->clonePublicKey(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePublicKey(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .locals 3
    .param p1, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    return-object v0
.end method

.method public bridge synthetic decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/i2p/crypto/eddsa/EdDSAPublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x400

    invoke-static {p3, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 99
    .local v0, "seed":[B
    const-class v1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->generateEDDSAPublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    return-object v1
.end method

.method public bridge synthetic encodePublicKey(Ljava/io/OutputStream;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p2, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->encodePublicKey(Ljava/io/OutputStream;Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/io/OutputStream;Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const-string v0, "No public key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "ssh-ed25519"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;)I

    .line 84
    invoke-static {p2}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->getSeedValue(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)[B

    move-result-object v1

    .line 85
    .local v1, "seed":[B
    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->writeRLEBytes(Ljava/io/OutputStream;[B)I

    .line 86
    return-object v0
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    const-string v0, "EdDSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 77
    const-string v0, "EdDSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method
