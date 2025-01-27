.class Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;
.super Lcom/auth0/jwt/algorithms/Algorithm;
.source "ECDSAAlgorithm.java"


# instance fields
.field private final crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

.field private final ecNumberSize:I

.field private final keyProvider:Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/CryptoHelper;Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/ECDSAKeyProvider;)V
    .locals 2
    .param p1, "crypto"    # Lcom/auth0/jwt/algorithms/CryptoHelper;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "ecNumberSize"    # I
    .param p5, "keyProvider"    # Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/auth0/jwt/algorithms/Algorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-eqz p5, :cond_0

    .line 27
    iput-object p5, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    .line 28
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    .line 29
    iput p4, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    .line 30
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Key Provider cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/ECDSAKeyProvider;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "ecNumberSize"    # I
    .param p4, "keyProvider"    # Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 33
    new-instance v1, Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-direct {v1}, Lcom/auth0/jwt/algorithms/CryptoHelper;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;-><init>(Lcom/auth0/jwt/algorithms/CryptoHelper;Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/ECDSAKeyProvider;)V

    .line 34
    return-void
.end method

.method private countPadding([BII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "padding":I
    :goto_0
    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method static providerForKeys(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;
    .locals 2
    .param p0, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;

    .line 214
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both provided Keys cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    :goto_0
    new-instance v0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm$1;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm$1;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    return-object v0
.end method


# virtual methods
.method DERToJOSE([B)[B
    .locals 12
    .param p1, "derSignature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_0

    array-length v1, p1

    iget v3, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 93
    .local v1, "derEncoded":Z
    :goto_0
    const-string v3, "Invalid DER signature format."

    if-eqz v1, :cond_5

    .line 97
    iget v4, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [B

    .line 100
    .local v5, "joseSignature":[B
    const/4 v6, 0x1

    .line 101
    .local v6, "offset":I
    aget-byte v7, p1, v2

    const/16 v8, -0x7f

    if-ne v7, v8, :cond_1

    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 107
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    .line 108
    .local v6, "encodedLength":I
    array-length v8, p1

    sub-int/2addr v8, v7

    if-ne v6, v8, :cond_4

    .line 113
    add-int/2addr v7, v2

    .line 116
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "offset":I
    .local v2, "offset":I
    aget-byte v7, p1, v7

    .line 117
    .local v7, "rLength":I
    add-int/lit8 v8, v4, 0x1

    if-gt v7, v8, :cond_3

    .line 120
    sub-int/2addr v4, v7

    .line 122
    .local v4, "rPadding":I
    neg-int v8, v4

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {p1, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    add-int/lit8 v8, v7, 0x1

    add-int/2addr v2, v8

    .line 128
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "offset":I
    .local v8, "offset":I
    aget-byte v2, p1, v2

    .line 129
    .local v2, "sLength":I
    iget v9, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    add-int/lit8 v10, v9, 0x1

    if-gt v2, v10, :cond_2

    .line 132
    sub-int/2addr v9, v2

    .line 134
    .local v9, "sPadding":I
    neg-int v3, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v8

    iget v10, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v3, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object v5

    .line 130
    .end local v9    # "sPadding":I
    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    .end local v4    # "rPadding":I
    .end local v8    # "offset":I
    .local v2, "offset":I
    :cond_3
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    .end local v2    # "offset":I
    .local v7, "offset":I
    :cond_4
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    .end local v5    # "joseSignature":[B
    .end local v6    # "encodedLength":I
    .end local v7    # "offset":I
    :cond_5
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method JOSEToDER([B)[B
    .locals 12
    .param p1, "joseSignature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 141
    array-length v0, p1

    iget v1, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    mul-int/lit8 v2, v1, 0x2

    const-string v3, "Invalid JOSE signature format."

    if-ne v0, v2, :cond_4

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->countPadding([BII)I

    move-result v1

    .line 147
    .local v1, "rPadding":I
    iget v2, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    array-length v4, p1

    invoke-direct {p0, p1, v2, v4}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->countPadding([BII)I

    move-result v2

    .line 148
    .local v2, "sPadding":I
    iget v4, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    sub-int v5, v4, v1

    .line 149
    .local v5, "rLength":I
    sub-int v6, v4, v2

    .line 151
    .local v6, "sLength":I
    add-int/lit8 v7, v5, 0x2

    const/4 v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 152
    .local v7, "length":I
    const/16 v9, 0xff

    if-gt v7, v9, :cond_3

    .line 158
    const/16 v3, 0x7f

    if-le v7, v3, :cond_0

    .line 159
    add-int/lit8 v3, v7, 0x3

    new-array v3, v3, [B

    .line 160
    .local v3, "derSignature":[B
    const/16 v9, -0x7f

    const/4 v10, 0x1

    aput-byte v9, v3, v10

    .line 161
    const/4 v9, 0x2

    .local v9, "offset":I
    goto :goto_0

    .line 163
    .end local v3    # "derSignature":[B
    .end local v9    # "offset":I
    :cond_0
    add-int/lit8 v3, v7, 0x2

    new-array v3, v3, [B

    .line 164
    .restart local v3    # "derSignature":[B
    const/4 v9, 0x1

    .line 169
    .restart local v9    # "offset":I
    :goto_0
    const/16 v10, 0x30

    aput-byte v10, v3, v0

    .line 170
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    and-int/lit16 v11, v7, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v9

    .line 173
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    aput-byte v8, v3, v10

    .line 174
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    int-to-byte v11, v5

    aput-byte v11, v3, v9

    .line 177
    if-gez v1, :cond_1

    .line 179
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    aput-byte v0, v3, v10

    .line 180
    invoke-static {p1, v0, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v4, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    add-int/2addr v9, v4

    goto :goto_1

    .line 183
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 184
    .local v4, "copyLength":I
    invoke-static {p1, v1, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    add-int v9, v10, v4

    .line 189
    .end local v4    # "copyLength":I
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    :goto_1
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "offset":I
    .local v4, "offset":I
    aput-byte v8, v3, v9

    .line 190
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "offset":I
    .local v8, "offset":I
    int-to-byte v9, v6

    aput-byte v9, v3, v4

    .line 193
    if-gez v2, :cond_2

    .line 195
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v0, v3, v8

    .line 196
    iget v0, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    invoke-static {p1, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v4

    goto :goto_2

    .line 198
    .end local v4    # "offset":I
    .restart local v8    # "offset":I
    :cond_2
    iget v0, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->ecNumberSize:I

    add-int v4, v0, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v4, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    :goto_2
    return-object v3

    .line 153
    .end local v3    # "derSignature":[B
    .end local v8    # "offset":I
    :cond_3
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    .end local v1    # "rPadding":I
    .end local v2    # "sPadding":I
    .end local v5    # "rLength":I
    .end local v6    # "sLength":I
    .end local v7    # "length":I
    :cond_4
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSigningKeyId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;->getPrivateKeyId()Ljava/lang/String;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 74
    .local v0, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/auth0/jwt/algorithms/CryptoHelper;->createSignatureFor(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B

    move-result-object v1

    .line 78
    .local v1, "signature":[B
    invoke-virtual {p0, v1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->DERToJOSE([B)[B

    move-result-object v2

    return-object v2

    .line 75
    .end local v1    # "signature":[B
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

    .line 79
    .end local v0    # "privateKey":Ljava/security/interfaces/ECPrivateKey;
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

    .line 80
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

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 59
    .local v0, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/auth0/jwt/algorithms/CryptoHelper;->createSignatureFor(Ljava/lang/String;Ljava/security/PrivateKey;[B[B)[B

    move-result-object v1

    .line 63
    .local v1, "signature":[B
    invoke-virtual {p0, v1}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->DERToJOSE([B)[B

    move-result-object v2

    return-object v2

    .line 60
    .end local v1    # "signature":[B
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

    .line 64
    .end local v0    # "privateKey":Ljava/security/interfaces/ECPrivateKey;
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

    .line 65
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

    .line 38
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    .local v0, "signatureBytes":[B
    :try_start_0
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->keyProvider:Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/auth0/jwt/interfaces/ECDSAKeyProvider;->getPublicKeyById(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 42
    .local v1, "publicKey":Ljava/security/interfaces/ECPublicKey;
    if-eqz v1, :cond_1

    .line 45
    iget-object v2, p0, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->crypto:Lcom/auth0/jwt/algorithms/CryptoHelper;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getPayload()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0}, Lcom/auth0/jwt/algorithms/ECDSAAlgorithm;->JOSEToDER([B)[B

    move-result-object v7

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/auth0/jwt/algorithms/CryptoHelper;->verifySignatureFor(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    .line 47
    .local v2, "valid":Z
    if-eqz v2, :cond_0

    .line 52
    .end local v1    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    .end local v2    # "valid":Z
    nop

    .line 53
    return-void

    .line 48
    .restart local v1    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    .restart local v2    # "valid":Z
    :cond_0
    new-instance v3, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v3, p0}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;)V

    .end local v0    # "signatureBytes":[B
    .end local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    throw v3

    .line 43
    .end local v2    # "valid":Z
    .restart local v0    # "signatureBytes":[B
    .restart local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The given Public Key is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signatureBytes":[B
    .end local p1    # "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "publicKey":Ljava/security/interfaces/ECPublicKey;
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

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v2, p0, v1}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/lang/Throwable;)V

    throw v2
.end method
