.class public Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;
.source "DSSPublicKeyEntryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder<",
        "Ljava/security/interfaces/DSAPublicKey;",
        "Ljava/security/interfaces/DSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    const-class v0, Ljava/security/interfaces/DSAPublicKey;

    const-class v1, Ljava/security/interfaces/DSAPrivateKey;

    const-string v2, "ssh-dss"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic clonePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->clonePrivateKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePrivateKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPrivateKey;
    .locals 6
    .param p1, "key"    # Ljava/security/interfaces/DSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 107
    .local v0, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/DSAPrivateKey;

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->clonePublicKey(Ljava/security/interfaces/DSAPublicKey;)Ljava/security/interfaces/DSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePublicKey(Ljava/security/interfaces/DSAPublicKey;)Ljava/security/interfaces/DSAPublicKey;
    .locals 6
    .param p1, "key"    # Ljava/security/interfaces/DSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 93
    .local v0, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v0, :cond_1

    .line 97
    new-instance v1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/interfaces/DSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/interfaces/DSAPublicKey;
    .locals 5
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
            "Ljava/security/interfaces/DSAPublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ssh-dss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    .local v0, "p":Ljava/math/BigInteger;
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 66
    .local v1, "q":Ljava/math/BigInteger;
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 67
    .local v2, "g":Ljava/math/BigInteger;
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v3

    .line 69
    .local v3, "y":Ljava/math/BigInteger;
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v4, v3, v0, v1, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/DSAPublicKey;

    return-object v4

    .line 61
    .end local v0    # "p":Ljava/math/BigInteger;
    .end local v1    # "q":Ljava/math/BigInteger;
    .end local v2    # "g":Ljava/math/BigInteger;
    .end local v3    # "y":Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic encodePublicKey(Ljava/io/OutputStream;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    check-cast p2, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->encodePublicKey(Ljava/io/OutputStream;Ljava/security/interfaces/DSAPublicKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/io/OutputStream;Ljava/security/interfaces/DSAPublicKey;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Ljava/security/interfaces/DSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-string v0, "No public key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-interface {p2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    const-string v1, "No DSA params available"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAParams;

    .line 77
    .local v0, "keyParams":Ljava/security/interfaces/DSAParams;
    const-string v1, "ssh-dss"

    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;)I

    .line 78
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 79
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 80
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 81
    invoke-interface {p2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 83
    return-object v1
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    const-string v0, "DSA"

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

    .line 116
    const-string v0, "DSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method
