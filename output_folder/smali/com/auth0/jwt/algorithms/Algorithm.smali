.class public abstract Lcom/auth0/jwt/algorithms/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/Algorithm;->name:Ljava/lang/String;

    .line 322
    iput-object p2, p0, Lcom/auth0/jwt/algorithms/Algorithm;->description:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public static ECDSA256(Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 4
    .param p0, "keyProvider"    # Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;

    const-string v1, "ES256"

    const-string v2, "SHA256withECDSA"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/ECDSAKeyProvider;)V

    return-object v0
.end method

.method public static ECDSA256(Ljava/security/interfaces/ECKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/interfaces/ECKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 235
    .local v0, "publicKey":Ljava/security/interfaces/ECPublicKey;
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 236
    .local v1, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/Algorithm;->ECDSA256(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v2

    return-object v2
.end method

.method public static ECDSA256(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1
    .param p0, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 221
    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->providerForKeys(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/auth0/jwt/algorithms/Algorithm;->ECDSA256(Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static ECDSA384(Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 4
    .param p0, "keyProvider"    # Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;

    const-string v1, "ES384"

    const-string v2, "SHA384withECDSA"

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/ECDSAKeyProvider;)V

    return-object v0
.end method

.method public static ECDSA384(Ljava/security/interfaces/ECKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/interfaces/ECKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 273
    .local v0, "publicKey":Ljava/security/interfaces/ECPublicKey;
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 274
    .local v1, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/Algorithm;->ECDSA384(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v2

    return-object v2
.end method

.method public static ECDSA384(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1
    .param p0, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->providerForKeys(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/auth0/jwt/algorithms/Algorithm;->ECDSA384(Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static ECDSA512(Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 4
    .param p0, "keyProvider"    # Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;

    const-string v1, "ES512"

    const-string v2, "SHA512withECDSA"

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/ECDSAKeyProvider;)V

    return-object v0
.end method

.method public static ECDSA512(Ljava/security/interfaces/ECKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/interfaces/ECKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 311
    .local v0, "publicKey":Ljava/security/interfaces/ECPublicKey;
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 312
    .local v1, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/Algorithm;->ECDSA512(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v2

    return-object v2
.end method

.method public static ECDSA512(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1
    .param p0, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 297
    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->providerForKeys(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/auth0/jwt/algorithms/Algorithm;->ECDSA512(Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static HMAC256(Ljava/lang/String;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/auth0/jwt/algorithms/HMACAlgorithm;

    const-string v1, "HS256"

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/HMACAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static HMAC256([B)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/auth0/jwt/algorithms/HMACAlgorithm;

    const-string v1, "HS256"

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/HMACAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static HMAC384(Ljava/lang/String;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/auth0/jwt/algorithms/HMACAlgorithm;

    const-string v1, "HS384"

    const-string v2, "HmacSHA384"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/HMACAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static HMAC384([B)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/auth0/jwt/algorithms/HMACAlgorithm;

    const-string v1, "HS384"

    const-string v2, "HmacSHA384"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/HMACAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static HMAC512(Ljava/lang/String;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/auth0/jwt/algorithms/HMACAlgorithm;

    const-string v1, "HS512"

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/HMACAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static HMAC512([B)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/auth0/jwt/algorithms/HMACAlgorithm;

    const-string v1, "HS512"

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/HMACAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static RSA256(Lcom/auth0/jwt/interfaces/RSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "keyProvider"    # Lcom/auth0/jwt/interfaces/RSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;

    const-string v1, "RS256"

    const-string v2, "SHA256withRSA"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/RSAKeyProvider;)V

    return-object v0
.end method

.method public static RSA256(Ljava/security/interfaces/RSAKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/interfaces/RSAKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 55
    .local v0, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 56
    .local v1, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/Algorithm;->RSA256(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v2

    return-object v2
.end method

.method public static RSA256(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->providerForKeys(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/auth0/jwt/algorithms/Algorithm;->RSA256(Lcom/auth0/jwt/interfaces/RSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static RSA384(Lcom/auth0/jwt/interfaces/RSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "keyProvider"    # Lcom/auth0/jwt/interfaces/RSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;

    const-string v1, "RS384"

    const-string v2, "SHA384withRSA"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/RSAKeyProvider;)V

    return-object v0
.end method

.method public static RSA384(Ljava/security/interfaces/RSAKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/interfaces/RSAKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 93
    .local v0, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 94
    .local v1, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/Algorithm;->RSA384(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v2

    return-object v2
.end method

.method public static RSA384(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->providerForKeys(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/auth0/jwt/algorithms/Algorithm;->RSA384(Lcom/auth0/jwt/interfaces/RSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static RSA512(Lcom/auth0/jwt/interfaces/RSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "keyProvider"    # Lcom/auth0/jwt/interfaces/RSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/auth0/jwt/algorithms/RSAAlgorithm;

    const-string v1, "RS512"

    const-string v2, "SHA512withRSA"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/RSAKeyProvider;)V

    return-object v0
.end method

.method public static RSA512(Ljava/security/interfaces/RSAKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 3
    .param p0, "key"    # Ljava/security/interfaces/RSAKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 131
    .local v0, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 132
    .local v1, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/Algorithm;->RSA512(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v2

    return-object v2
.end method

.method public static RSA512(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/RSAAlgorithm;->providerForKeys(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/RSAKeyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/auth0/jwt/algorithms/Algorithm;->RSA512(Lcom/auth0/jwt/interfaces/RSAKeyProvider;)Lcom/auth0/jwt/algorithms/Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static none()Lcom/auth0/jwt/algorithms/Algorithm;
    .locals 1

    .line 317
    new-instance v0, Lcom/auth0/jwt/algorithms/NoneAlgorithm;

    invoke-direct {v0}, Lcom/auth0/jwt/algorithms/NoneAlgorithm;-><init>()V

    return-object v0
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/Algorithm;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningKeyId()Ljava/lang/String;
    .locals 1

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract sign([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public sign([B[B)[B
    .locals 4
    .param p1, "headerBytes"    # [B
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 375
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 377
    .local v0, "contentBytes":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    array-length v1, p1

    const/16 v3, 0x2e

    aput-byte v3, v0, v1

    .line 379
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    invoke-virtual {p0, v0}, Lcom/auth0/jwt/algorithms/Algorithm;->sign([B)[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/Algorithm;->description:Ljava/lang/String;

    return-object v0
.end method

.method public abstract verify(Lcom/auth0/jwt/interfaces/DecodedJWT;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation
.end method
