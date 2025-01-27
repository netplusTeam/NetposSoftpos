.class public Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;
.source "OpenSSHDSSPrivateKeyEntryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder<",
        "Ljava/security/interfaces/DSAPublicKey;",
        "Ljava/security/interfaces/DSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    const-class v0, Ljava/security/interfaces/DSAPublicKey;

    const-class v1, Ljava/security/interfaces/DSAPrivateKey;

    const-string v2, "ssh-dss"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 55
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
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->clonePrivateKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPrivateKey;

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

    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 134
    .local v0, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v0, :cond_1

    .line 138
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

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/DSAPrivateKey;

    return-object v1

    .line 135
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

    .line 50
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->clonePublicKey(Ljava/security/interfaces/DSAPublicKey;)Ljava/security/interfaces/DSAPublicKey;

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

    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 120
    .local v0, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v0, :cond_1

    .line 124
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

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    return-object v1

    .line 121
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/interfaces/DSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/interfaces/DSAPrivateKey;
    .locals 6
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

    .line 61
    const-string v0, "ssh-dss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 66
    .local v0, "p":Ljava/math/BigInteger;
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 67
    .local v1, "q":Ljava/math/BigInteger;
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 68
    .local v2, "g":Ljava/math/BigInteger;
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v3

    .line 69
    .local v3, "y":Ljava/math/BigInteger;
    const-string v4, "No public key data"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 73
    .local v4, "x":Ljava/math/BigInteger;
    :try_start_0
    new-instance v5, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v5, v4, v0, v1, v2}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 73
    return-object v5

    .line 76
    :catchall_0
    move-exception v5

    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    throw v5

    .line 62
    .end local v0    # "p":Ljava/math/BigInteger;
    .end local v1    # "q":Ljava/math/BigInteger;
    .end local v2    # "g":Ljava/math/BigInteger;
    .end local v3    # "y":Ljava/math/BigInteger;
    .end local v4    # "x":Ljava/math/BigInteger;
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

.method public bridge synthetic encodePrivateKey(Ljava/io/OutputStream;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    check-cast p2, Ljava/security/interfaces/DSAPrivateKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->encodePrivateKey(Ljava/io/OutputStream;Ljava/security/interfaces/DSAPrivateKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePrivateKey(Ljava/io/OutputStream;Ljava/security/interfaces/DSAPrivateKey;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Ljava/security/interfaces/DSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-string v0, "No private key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    invoke-interface {p2}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    const-string v1, "No DSA params available"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAParams;

    .line 89
    .local v0, "keyParams":Ljava/security/interfaces/DSAParams;
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, "p":Ljava/math/BigInteger;
    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 91
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 93
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    .line 94
    .local v2, "g":Ljava/math/BigInteger;
    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 96
    invoke-interface {p2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    .line 97
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 98
    .local v4, "y":Ljava/math/BigInteger;
    invoke-static {p1, v4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 99
    invoke-static {p1, v3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I

    .line 100
    const-string v5, "ssh-dss"

    return-object v5
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 148
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

    .line 143
    const-string v0, "DSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method public isPublicKeyRecoverySupported()Z
    .locals 1

    .line 105
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
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->recoverPublicKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public recoverPublicKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPublicKey;
    .locals 1
    .param p1, "privateKey"    # Ljava/security/interfaces/DSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverDSAPublicKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPublicKey;

    move-result-object v0

    return-object v0
.end method
