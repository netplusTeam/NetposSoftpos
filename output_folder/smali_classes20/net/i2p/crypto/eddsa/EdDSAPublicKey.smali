.class public Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
.super Ljava/lang/Object;
.source "EdDSAPublicKey.java"

# interfaces
.implements Lnet/i2p/crypto/eddsa/EdDSAKey;
.implements Ljava/security/PublicKey;


# static fields
.field private static final IDLEN_BYTE:I = 0x3

.field private static final OID_BYTE:I = 0x8

.field private static final OID_ED25519:I = 0x70

.field private static final OID_OLD:I = 0x64

.field private static final serialVersionUID:J = 0x22f31e1b1b346bL


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final Abyte:[B

.field private Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/X509EncodedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 60
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->decode([B)[B

    move-result-object v1

    sget-object v2, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V
    .locals 1
    .param p1, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 54
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 55
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 56
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 57
    return-void
.end method

.method private static decode([B)[B
    .locals 11
    .param p0, "d"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 167
    const/16 v0, 0x2c

    .line 168
    .local v0, "totlen":I
    const/4 v1, 0x5

    .line 169
    .local v1, "idlen":I
    const/16 v2, 0x8

    :try_start_0
    aget-byte v2, p0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v2, "doid":I
    const/4 v3, 0x7

    const/16 v4, 0x64

    const/4 v5, 0x3

    const-string/jumbo v6, "unsupported key spec"

    if-ne v2, v4, :cond_0

    .line 171
    const/16 v0, 0x2f

    .line 172
    const/16 v1, 0x8

    goto :goto_0

    .line 173
    :cond_0
    const/16 v7, 0x70

    if-ne v2, v7, :cond_e

    .line 175
    :try_start_1
    aget-byte v7, p0, v5

    if-ne v7, v3, :cond_1

    .line 176
    const/16 v0, 0x2e

    .line 177
    const/4 v1, 0x7

    .line 186
    :cond_1
    :goto_0
    array-length v7, p0

    if-ne v7, v0, :cond_d

    .line 193
    const/4 v7, 0x0

    .line 194
    .local v7, "idx":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .local v8, "idx":I
    aget-byte v7, p0, v7

    const/16 v9, 0x30

    if-ne v7, v9, :cond_c

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    add-int/lit8 v10, v0, -0x2

    if-ne v8, v10, :cond_b

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, p0, v7

    if-ne v7, v9, :cond_c

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    if-ne v8, v1, :cond_b

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, p0, v7

    const/4 v9, 0x6

    if-ne v7, v9, :cond_c

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    if-ne v8, v5, :cond_b

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, p0, v7

    const/16 v9, 0x2b

    if-ne v7, v9, :cond_c

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    const/16 v9, 0x65

    if-ne v8, v9, :cond_b

    .line 204
    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 206
    if-ne v2, v4, :cond_5

    .line 207
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "idx":I
    .local v3, "idx":I
    aget-byte v4, p0, v7

    const/16 v7, 0xa

    if-ne v4, v7, :cond_4

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aget-byte v3, p0, v3

    if-ne v3, v8, :cond_3

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v3, p0, v4

    if-ne v3, v8, :cond_2

    goto :goto_2

    :cond_2
    move v3, v7

    goto :goto_1

    .end local v7    # "idx":I
    .restart local v4    # "idx":I
    :cond_3
    move v3, v4

    .line 210
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_4
    :goto_1
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v4

    .line 222
    .end local v3    # "idx":I
    .restart local v7    # "idx":I
    .restart local p0    # "d":[B
    :cond_5
    if-ne v1, v3, :cond_8

    .line 223
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v4, p0, v7

    const/4 v7, 0x5

    if-ne v4, v7, :cond_7

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v3, p0, v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v7

    .line 225
    .end local v7    # "idx":I
    .restart local v3    # "idx":I
    :cond_7
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v4

    .line 229
    .end local v3    # "idx":I
    .restart local v7    # "idx":I
    .restart local p0    # "d":[B
    :cond_8
    :goto_2
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v4, p0, v7

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aget-byte v3, p0, v3

    const/16 v5, 0x21

    if-ne v3, v5, :cond_9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v4, p0, v4

    if-nez v4, :cond_a

    .line 234
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 235
    .local v5, "rv":[B
    const/4 v6, 0x0

    invoke-static {p0, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-object v5

    .line 229
    .end local v3    # "idx":I
    .end local v5    # "rv":[B
    .restart local v4    # "idx":I
    :cond_9
    move v3, v4

    .line 232
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_a
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v4

    .line 194
    .end local v3    # "idx":I
    .restart local v7    # "idx":I
    .restart local p0    # "d":[B
    :cond_b
    move v8, v7

    .line 202
    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    :cond_c
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3

    .line 187
    .end local v8    # "idx":I
    .restart local p0    # "d":[B
    :cond_d
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "invalid key spec length"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3

    .line 180
    .restart local p0    # "d":[B
    :cond_e
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    .end local v0    # "totlen":I
    .end local v1    # "idlen":I
    .end local v2    # "doid":I
    .restart local p0    # "d":[B
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 272
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 273
    return v0

    .line 274
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 275
    return v2

    .line 276
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 277
    .local v1, "pk":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 278
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 277
    :goto_0
    return v0
.end method

.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 248
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getAbyte()[B
    .locals 1

    .line 262
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "EdDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 115
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    sget-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0xc

    .line 118
    .local v1, "totlen":I
    new-array v2, v1, [B

    .line 119
    .local v2, "rv":[B
    const/4 v3, 0x0

    .line 121
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    const/16 v5, 0x30

    aput-byte v5, v2, v3

    .line 122
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    add-int/lit8 v6, v1, -0x2

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 125
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput-byte v5, v2, v3

    .line 126
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v5, 0x5

    aput-byte v5, v2, v4

    .line 129
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x6

    aput-byte v5, v2, v3

    .line 130
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v5, 0x3

    aput-byte v5, v2, v4

    .line 131
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/16 v6, 0x2b

    aput-byte v6, v2, v3

    .line 132
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/16 v6, 0x65

    aput-byte v6, v2, v4

    .line 133
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/16 v6, 0x70

    aput-byte v6, v2, v3

    .line 136
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput-byte v5, v2, v4

    .line 137
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 138
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 139
    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "X.509"

    return-object v0
.end method

.method public getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 2

    .line 253
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 254
    .local v0, "ourAneg":Lnet/i2p/crypto/eddsa/math/GroupElement;
    if-nez v0, :cond_0

    .line 255
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->negate()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    .line 256
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 258
    :cond_0
    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 244
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 267
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
