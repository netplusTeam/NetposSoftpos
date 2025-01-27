.class public Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;
.source "RSAPublicKeyDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder<",
        "Ljava/security/interfaces/RSAPublicKey;",
        "Ljava/security/interfaces/RSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 54
    const-class v0, Ljava/security/interfaces/RSAPublicKey;

    const-class v1, Ljava/security/interfaces/RSAPrivateKey;

    const-string v2, "ssh-rsa"

    const-string v3, "rsa-sha2-256"

    const-string v4, "rsa-sha2-512"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 55
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 60
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

    .line 50
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->clonePrivateKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePrivateKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 11
    .param p1, "key"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    .line 107
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 108
    .local v0, "rsaPrv":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 110
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 111
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 112
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 113
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 114
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 115
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    .line 116
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 117
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 108
    invoke-virtual {p0, v10}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    return-object v1

    .line 104
    .end local v0    # "rsaPrv":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot clone a non-RSAPrivateCrtKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->clonePublicKey(Ljava/security/interfaces/RSAPublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePublicKey(Ljava/security/interfaces/RSAPublicKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

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

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/interfaces/RSAPublicKey;
    .locals 4
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
            "Ljava/security/interfaces/RSAPublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getCanonicalKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "canonicalName":Ljava/lang/String;
    const-string v1, "ssh-rsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 73
    .local v1, "e":Ljava/math/BigInteger;
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 75
    .local v2, "n":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v2, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v3}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    return-object v3

    .line 69
    .end local v1    # "e":Ljava/math/BigInteger;
    .end local v2    # "n":Ljava/math/BigInteger;
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic encodePublicKey(Ljava/io/OutputStream;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->encodePublicKey(Ljava/io/OutputStream;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/io/OutputStream;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Ljava/security/interfaces/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const-string v0, "No public key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "ssh-rsa"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;)I

    .line 82
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 83
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 85
    return-object v0
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 127
    const-string v0, "RSA"

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

    .line 122
    const-string v0, "RSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method
