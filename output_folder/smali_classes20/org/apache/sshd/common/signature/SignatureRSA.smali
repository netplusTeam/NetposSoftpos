.class public abstract Lorg/apache/sshd/common/signature/SignatureRSA;
.super Lorg/apache/sshd/common/signature/AbstractSignature;
.source "SignatureRSA.java"


# instance fields
.field private verifierSignatureSize:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/signature/AbstractSignature;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sshd/common/signature/SignatureRSA;->verifierSignatureSize:I

    .line 42
    return-void
.end method

.method public static getVerifierSignatureSize(Ljava/security/interfaces/RSAKey;)I
    .locals 2
    .param p0, "key"    # Ljava/security/interfaces/RSAKey;

    .line 60
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 61
    .local v0, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method protected getVerifierSignatureSize()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/apache/sshd/common/signature/SignatureRSA;->verifierSignatureSize:I

    return v0
.end method

.method public initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/signature/AbstractSignature;->initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V

    .line 55
    const-class v0, Ljava/security/interfaces/RSAKey;

    const-string v1, "Not an RSA key"

    invoke-static {p2, v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAKey;

    .line 56
    .local v0, "rsaKey":Ljava/security/interfaces/RSAKey;
    invoke-static {v0}, Lorg/apache/sshd/common/signature/SignatureRSA;->getVerifierSignatureSize(Ljava/security/interfaces/RSAKey;)I

    move-result v1

    iput v1, p0, Lorg/apache/sshd/common/signature/SignatureRSA;->verifierSignatureSize:I

    .line 57
    return-void
.end method

.method public verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    move-object v0, p2

    .line 67
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/signature/SignatureRSA;->extractEncodedSignature([B)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 68
    .local v1, "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "keyType":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getCanonicalKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "canonicalName":Ljava/lang/String;
    const-string v4, "ssh-rsa"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Mismatched key type: %s"

    invoke-static {v4, v5, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    .line 85
    .end local v2    # "keyType":Ljava/lang/String;
    .end local v3    # "canonicalName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/SignatureRSA;->getVerifierSignatureSize()I

    move-result v2

    .line 86
    .local v2, "expectedSize":I
    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const-string v5, "Signature verification size has not been initialized"

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 88
    array-length v4, v0

    if-ge v4, v2, :cond_2

    .line 89
    new-array v4, v2, [B

    .line 90
    .local v4, "pad":[B
    array-length v5, v4

    array-length v6, v0

    sub-int/2addr v5, v6

    array-length v6, v0

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    move-object v0, v4

    .line 94
    .end local v4    # "pad":[B
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/signature/SignatureRSA;->doVerify([B)Z

    move-result v3

    return v3
.end method
