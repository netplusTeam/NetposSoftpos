.class public Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;
.source "OpenSSHRSAPrivateKeyDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder<",
        "Ljava/security/interfaces/RSAPublicKey;",
        "Ljava/security/interfaces/RSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PUBLIC_EXPONENT:Ljava/math/BigInteger;

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "65537"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->DEFAULT_PUBLIC_EXPONENT:Ljava/math/BigInteger;

    .line 52
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 55
    const-class v0, Ljava/security/interfaces/RSAPublicKey;

    const-class v1, Ljava/security/interfaces/RSAPrivateKey;

    const-string v2, "ssh-rsa"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 56
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

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->clonePrivateKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPrivateKey;

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

    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 123
    .local v0, "rsaPrv":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 125
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 126
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 127
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 128
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 129
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 130
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    .line 131
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 132
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 123
    invoke-virtual {p0, v10}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    return-object v1

    .line 119
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

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->clonePublicKey(Ljava/security/interfaces/RSAPublicKey;)Ljava/security/interfaces/RSAPublicKey;

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

    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method public bridge synthetic decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 10
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    const-string v0, "ssh-rsa"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 67
    .local v0, "n":Ljava/math/BigInteger;
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 68
    .local v1, "e":Ljava/math/BigInteger;
    sget-object v2, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->DEFAULT_PUBLIC_EXPONENT:Ljava/math/BigInteger;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->log:Lorg/slf4j/Logger;

    const-string v3, "decodePrivateKey({}) non-standard RSA exponent found: {}"

    invoke-interface {v2, v3, p2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 73
    .local v2, "d":Ljava/math/BigInteger;
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v3

    .line 74
    .local v3, "inverseQmodP":Ljava/math/BigInteger;
    const-string v4, "Missing iqmodp"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 76
    .local v4, "p":Ljava/math/BigInteger;
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v5

    .line 77
    .local v5, "q":Ljava/math/BigInteger;
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 78
    .local v6, "modulus":Ljava/math/BigInteger;
    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 79
    iget-object v7, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const-string v9, "decodePrivateKey({}) mismatched modulus values: encoded={}, calculated={}"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_1
    :try_start_0
    new-instance v7, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v7, v0, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v7}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7

    check-cast v7, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 83
    return-object v7

    .line 86
    :catchall_0
    move-exception v7

    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    throw v7

    .line 63
    .end local v0    # "n":Ljava/math/BigInteger;
    .end local v1    # "e":Ljava/math/BigInteger;
    .end local v2    # "d":Ljava/math/BigInteger;
    .end local v3    # "inverseQmodP":Ljava/math/BigInteger;
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v6    # "modulus":Ljava/math/BigInteger;
    :cond_2
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

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 142
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

    .line 137
    const-string v0, "RSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method public isPublicKeyRecoverySupported()Z
    .locals 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->recoverPublicKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public recoverPublicKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 1
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 100
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverRSAPublicKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method
