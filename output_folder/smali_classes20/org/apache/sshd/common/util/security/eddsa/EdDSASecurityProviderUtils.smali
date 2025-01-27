.class public final Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;
.super Ljava/lang/Object;
.source "EdDSASecurityProviderUtils.java"


# static fields
.field public static final CURVE_ED25519_SHA512:Ljava/lang/String; = "Ed25519"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compareEDDSAKeyParams(Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)Z
    .locals 4
    .param p0, "s1"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .param p1, "s2"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 152
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    return v1

    .line 154
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v2

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 157
    :goto_0
    return v1

    .line 155
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareEDDSAPPublicKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 6
    .param p0, "k1"    # Ljava/security/PublicKey;
    .param p1, "k2"    # Ljava/security/PublicKey;

    .line 71
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    instance-of v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_5

    .line 76
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 77
    return v2

    .line 78
    :cond_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    move-object v0, p0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 83
    .local v0, "ed1":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 84
    .local v3, "ed2":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v4

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->compareEDDSAKeyParams(Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    nop

    .line 84
    :goto_0
    return v1

    .line 79
    .end local v0    # "ed1":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .end local v3    # "ed2":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    :cond_4
    :goto_1
    return v1

    .line 88
    :cond_5
    return v1
.end method

.method public static compareEDDSAPrivateKeys(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z
    .locals 6
    .param p0, "k1"    # Ljava/security/PrivateKey;
    .param p1, "k2"    # Ljava/security/PrivateKey;

    .line 131
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 135
    :cond_0
    instance-of v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    if-eqz v0, :cond_5

    .line 136
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 137
    return v2

    .line 138
    :cond_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    move-object v0, p0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 143
    .local v0, "ed1":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 144
    .local v3, "ed2":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v4

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->compareEDDSAKeyParams(Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    nop

    .line 144
    :goto_0
    return v1

    .line 139
    .end local v0    # "ed1":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .end local v3    # "ed2":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    :cond_4
    :goto_1
    return v1

    .line 148
    :cond_5
    return v1
.end method

.method public static generateEDDSAPrivateKey([B)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "Ed25519"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 180
    .local v0, "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-direct {v1, p0, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 181
    .local v1, "keySpec":Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;
    const-string v2, "EdDSA"

    invoke-static {v2}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 182
    .local v2, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    return-object v3

    .line 176
    .end local v0    # "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .end local v1    # "keySpec":Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;
    .end local v2    # "factory":Ljava/security/KeyFactory;
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "EdDSA not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateEDDSAPublicKey([B)Ljava/security/PublicKey;
    .locals 4
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "Ed25519"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 169
    .local v0, "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-direct {v1, p0, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 170
    .local v1, "keySpec":Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
    const-string v2, "EdDSA"

    invoke-static {v2}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 171
    .local v2, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3

    .line 165
    .end local v0    # "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .end local v1    # "keySpec":Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
    .end local v2    # "factory":Ljava/security/KeyFactory;
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "EdDSA not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEDDSAKeySize(Ljava/security/Key;)I
    .locals 1
    .param p0, "key"    # Ljava/security/Key;

    .line 67
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lnet/i2p/crypto/eddsa/EdDSAKey;

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getEDDSAPrivateKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 63
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    return-object v0
.end method

.method public static getEDDSAPublicKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "+",
            "Ljava/security/PublicKey;",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const-string v1, "EdDSA not supported"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 122
    sget-object v0, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->INSTANCE:Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;

    return-object v0
.end method

.method public static getEDDSAPublicKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 59
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    return-object v0
.end method

.method public static getEDDSASignature()Lorg/apache/sshd/common/signature/Signature;
    .locals 2

    .line 108
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const-string v1, "EdDSA not supported"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 109
    new-instance v0, Lorg/apache/sshd/common/util/security/eddsa/SignatureEd25519;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/eddsa/SignatureEd25519;-><init>()V

    return-object v0
.end method

.method public static getOpenSSHEDDSAPrivateKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "+",
            "Ljava/security/PublicKey;",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const-string v1, "EdDSA not supported"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 127
    sget-object v0, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;

    return-object v0
.end method

.method public static isEDDSAKeyFactoryAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 113
    const-string v0, "EdDSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEDDSAKeyPairGeneratorAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 117
    const-string v0, "EdDSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEDDSASignatureAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 92
    const-string v0, "NONEwithEdDSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;Ljava/security/PrivateKey;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 2
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "prvKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ")TB;"
        }
    .end annotation

    .line 196
    .local p0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const-string v1, "EdDSA not supported"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 197
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    const-string v1, "Not an EDDSA public key: %s"

    invoke-static {p1, v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    const-string v1, "Not an EDDSA private key: %s"

    invoke-static {p2, v0, v1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Full SSHD-440 implementation N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static putRawEDDSAPublicKey(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;",
            "Ljava/security/PublicKey;",
            ")TB;"
        }
    .end annotation

    .line 186
    .local p0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const-string v1, "EdDSA not supported"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 187
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    const-string v1, "Not an EDDSA public key: %s"

    invoke-static {p1, v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 188
    .local v0, "edKey":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    invoke-static {v0}, Lorg/apache/sshd/common/util/security/eddsa/Ed25519PublicKeyDecoder;->getSeedValue(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)[B

    move-result-object v1

    .line 189
    .local v1, "seed":[B
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    const-string v3, "No seed extracted from key: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "ssh-ed25519"

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 192
    return-object p0
.end method

.method public static recoverEDDSAPublicKey(Ljava/security/PrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .locals 5
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    const-string v1, "EdDSA not supported"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 97
    instance-of v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 102
    .local v0, "prvKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getAbyte()[B

    move-result-object v2

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 103
    .local v1, "keySpec":Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
    const-string v2, "EdDSA"

    invoke-static {v2}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 104
    .local v2, "factory":Ljava/security/KeyFactory;
    const-class v3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    return-object v3

    .line 98
    .end local v0    # "prvKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .end local v1    # "keySpec":Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
    .end local v2    # "factory":Ljava/security/KeyFactory;
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Private key is not EdDSA"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
