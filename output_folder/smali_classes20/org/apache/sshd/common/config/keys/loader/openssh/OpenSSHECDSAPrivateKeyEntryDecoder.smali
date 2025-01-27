.class public Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;
.source "OpenSSHECDSAPrivateKeyEntryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder<",
        "Ljava/security/interfaces/ECPublicKey;",
        "Ljava/security/interfaces/ECPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    const-class v0, Ljava/security/interfaces/ECPublicKey;

    const-class v1, Ljava/security/interfaces/ECPrivateKey;

    sget-object v2, Lorg/apache/sshd/common/cipher/ECCurves;->KEY_TYPES:Ljava/util/NavigableSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 57
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

    .line 52
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->clonePrivateKey(Ljava/security/interfaces/ECPrivateKey;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePrivateKey(Ljava/security/interfaces/ECPrivateKey;)Ljava/security/interfaces/ECPrivateKey;
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    if-nez p1, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 136
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v0, :cond_1

    .line 140
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    return-object v1

    .line 137
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->clonePublicKey(Ljava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePublicKey(Ljava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPublicKey;
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 118
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v0, :cond_1

    .line 122
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    return-object v1

    .line 119
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/interfaces/ECPrivateKey;
    .locals 7
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

    .line 63
    invoke-static {p2}, Lorg/apache/sshd/common/cipher/ECCurves;->fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    .line 64
    .local v0, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "keyCurveName":Ljava/lang/String;
    const/16 v2, 0x400

    invoke-static {p4, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "encCurveName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const/16 v3, 0x7fff

    invoke-static {p4, v3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 80
    .local v3, "pubKey":[B
    const-string v4, "No public point"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 82
    .local v4, "s":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 84
    .local v5, "params":Ljava/security/spec/ECParameterSpec;
    :try_start_0
    new-instance v6, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v6, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/ECPrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v4, 0x0

    .line 84
    return-object v6

    .line 87
    :catchall_0
    move-exception v6

    const/4 v4, 0x0

    .line 88
    throw v6

    .line 76
    .end local v3    # "pubKey":[B
    .end local v4    # "s":Ljava/math/BigInteger;
    .end local v5    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_0
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatched key curve name ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") vs. encoded one ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    .end local v1    # "keyCurveName":Ljava/lang/String;
    .end local v2    # "encCurveName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "ECC not supported"

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an EC curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic encodePrivateKey(Ljava/io/OutputStream;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->encodePrivateKey(Ljava/io/OutputStream;Ljava/security/interfaces/ECPrivateKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePrivateKey(Ljava/io/OutputStream;Ljava/security/interfaces/ECPrivateKey;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const-string v0, "No private key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKeyPair(I)Ljava/security/KeyPair;
    .locals 4
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveSize(I)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    .line 155
    .local v0, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 160
    .local v1, "gen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 161
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    return-object v2

    .line 156
    .end local v1    # "gen":Ljava/security/KeyPairGenerator;
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown curve for key size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "EC"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 166
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "EC"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->recoverPublicKey(Ljava/security/interfaces/ECPrivateKey;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public recoverPublicKey(Ljava/security/interfaces/ECPrivateKey;)Ljava/security/interfaces/ECPublicKey;
    .locals 3
    .param p1, "prvKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromECKey(Ljava/security/interfaces/ECKey;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    .line 100
    .local v0, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;->recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    return-object v1

    .line 101
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unknown curve"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
