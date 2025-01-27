.class Lcom/auth0/jwt/algorithms/RSAAlgorithm;
.super Lcom/auth0/jwt/algorithms/Algorithm;
.source "RSAAlgorithm.java"


# instance fields
.field private final crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

.field private final keyProvider:Lcom/auth0/jwt/interfaces/RSAKeyProvider;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/CryptoHelper;Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/RSAKeyProvider;)V
    .locals 2
    .param p1, "crypto"    # Lcom/auth0/jwt/algorithms/CryptoHelper;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keyProvider"    # Lcom/auth0/jwt/interfaces/RSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/auth0/jwt/algorithms/Algorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-eqz p4, :cond_0

    .line 27
    iput-object p4, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    .line 28
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Key Provider cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/RSAKeyProvider;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keyProvider"    # Lcom/auth0/jwt/interfaces/RSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-direct {v0}, Lcom/auth0/jwt/algorithms/CryptoHelper;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;-><init>(Lcom/auth0/jwt/algorithms/CryptoHelper;Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/RSAKeyProvider;)V

    .line 33
    return-void
.end method

.method static providerForKeys(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/RSAKeyProvider;
    .locals 2
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;

    .line 87
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both provided Keys cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :goto_0
    new-instance v0, Lcom/auth0/jwt/algorithms/RSAAlgorithm$1;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/algorithms/RSAAlgorithm$1;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)V

    return-object v0
.end method


# virtual methods
.method public getSigningKeyId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/RSAKeyProvider;->getPrivateKeyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sign([B)[B
    .locals 3
    .param p1, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/RSAKeyProvider;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 71
    .local v0, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/auth0/jwt/algorithms/CryptoHelper;->createSignatureFor(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B

    move-result-object v1

    return-object v1

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The given Private Key is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentBytes":[B
    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    .restart local p1    # "contentBytes":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/auth0/jwt/exceptions/SignatureGenerationException;

    invoke-direct {v1, p0, v0}, Lcom/auth0/jwt/exceptions/SignatureGenerationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sign([B[B)[B
    .locals 3
    .param p1, "headerBytes"    # [B
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/RSAKeyProvider;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 58
    .local v0, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/auth0/jwt/algorithms/CryptoHelper;->createSignatureFor(Ljava/lang/String;Ljava/security/PrivateKey;[B[B)[B

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The given Private Key is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "headerBytes":[B
    .end local p2    # "payloadBytes":[B
    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    .restart local p1    # "headerBytes":[B
    .restart local p2    # "payloadBytes":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/auth0/jwt/exceptions/SignatureGenerationException;

    invoke-direct {v1, p0, v0}, Lcom/auth0/jwt/exceptions/SignatureGenerationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Lcom/auth0/jwt/interfaces/DecodedJWT;)V
    .locals 8
    .param p1, "jwt"    # Lcom/auth0/jwt/interfaces/DecodedJWT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    .local v0, "signatureBytes":[B
    :try_start_0
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/auth0/jwt/interfaces/RSAKeyProvider;->getPublicKeyById(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    move-object v7, v1

    .line 41
    .local v7, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    if-eqz v7, :cond_1

    .line 44
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getPayload()Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/CryptoHelper;->verifySignatureFor(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v1

    .line 45
    .local v1, "valid":Z
    if-eqz v1, :cond_0

    .line 50
    .end local v1    # "valid":Z
    .end local v7    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    nop

    .line 51
    return-void

    .line 46
    .restart local v1    # "valid":Z
    .restart local v7    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_0
    new-instance v2, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v2, p0}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;)V

    .end local v0    # "signatureBytes":[B
    .end local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    throw v2

    .line 42
    .end local v1    # "valid":Z
    .restart local v0    # "signatureBytes":[B
    .restart local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The given Public Key is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signatureBytes":[B
    .end local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v7    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    .restart local v0    # "signatureBytes":[B
    .restart local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v2, p0, v1}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/lang/Throwable;)V

    throw v2
.end method
