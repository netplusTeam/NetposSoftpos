.class public Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
.super Ljava/lang/Object;
.source "EdDSAPrivateKey.java"

# interfaces
.implements Lnet/i2p/crypto/eddsa/EdDSAKey;
.implements Ljava/security/PrivateKey;


# static fields
.field private static final IDLEN_BYTE:I = 0x6

.field private static final OID_BYTE:I = 0xb

.field private static final OID_ED25519:I = 0x70

.field private static final OID_OLD:I = 0x64

.field private static final serialVersionUID:J = 0x53795f57437c2dL


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final Abyte:[B

.field private final a:[B

.field private final edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

.field private final h:[B

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 65
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->decode([B)[B

    move-result-object v1

    sget-object v2, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V
    .locals 1
    .param p1, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    .line 57
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getH()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->h:[B

    .line 58
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->geta()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->a:[B

    .line 59
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 60
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->Abyte:[B

    .line 61
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 62
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

    .line 200
    const/16 v0, 0x30

    .line 201
    .local v0, "totlen":I
    const/4 v1, 0x5

    .line 202
    .local v1, "idlen":I
    const/16 v2, 0xb

    :try_start_0
    aget-byte v2, p0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .local v2, "doid":I
    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x64

    const-string/jumbo v6, "unsupported key spec"

    if-ne v2, v5, :cond_0

    .line 204
    const/16 v0, 0x31

    .line 205
    const/16 v1, 0x8

    goto :goto_0

    .line 206
    :cond_0
    const/16 v7, 0x70

    if-ne v2, v7, :cond_10

    .line 208
    :try_start_1
    aget-byte v7, p0, v4

    if-ne v7, v3, :cond_1

    .line 209
    const/16 v0, 0x32

    .line 210
    const/4 v1, 0x7

    .line 219
    :cond_1
    :goto_0
    array-length v7, p0

    if-ne v7, v0, :cond_f

    .line 226
    const/4 v7, 0x0

    .line 227
    .local v7, "idx":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .local v8, "idx":I
    aget-byte v7, p0, v7

    const/16 v9, 0x30

    if-ne v7, v9, :cond_e

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    add-int/lit8 v10, v0, -0x2

    if-ne v8, v10, :cond_d

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, p0, v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_e

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_d

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, p0, v7

    if-nez v7, :cond_e

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    if-ne v8, v9, :cond_d

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, p0, v7

    if-ne v7, v1, :cond_e

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-byte v8, p0, v8

    if-ne v8, v4, :cond_d

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v4, p0, v7

    const/4 v7, 0x3

    if-ne v4, v7, :cond_e

    add-int/lit8 v4, v8, 0x1

    .end local v8    # "idx":I
    .local v4, "idx":I
    aget-byte v7, p0, v8

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_c

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v4, p0, v4

    const/16 v7, 0x65

    if-ne v4, v7, :cond_e

    .line 240
    add-int/2addr v8, v10

    .line 242
    const/4 v4, 0x4

    if-ne v2, v5, :cond_4

    .line 243
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "idx":I
    .local v3, "idx":I
    aget-byte v5, p0, v8

    const/16 v7, 0xa

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    aget-byte v3, p0, v3

    if-ne v3, v10, :cond_2

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v5, p0, v5

    if-ne v5, v10, :cond_3

    goto :goto_2

    .end local v3    # "idx":I
    .restart local v5    # "idx":I
    :cond_2
    move v3, v5

    .line 246
    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :cond_3
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v4

    .line 258
    .end local v3    # "idx":I
    .restart local v8    # "idx":I
    .restart local p0    # "d":[B
    :cond_4
    if-ne v1, v3, :cond_7

    .line 259
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v5, p0, v8

    const/4 v7, 0x5

    if-ne v5, v7, :cond_6

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v3, p0, v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v8

    .line 261
    .end local v8    # "idx":I
    .restart local v3    # "idx":I
    :cond_6
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v4

    .line 265
    .end local v3    # "idx":I
    .restart local v8    # "idx":I
    .restart local p0    # "d":[B
    :cond_7
    :goto_1
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v5, p0, v8

    if-ne v5, v4, :cond_b

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .restart local v5    # "idx":I
    aget-byte v3, p0, v3

    const/16 v7, 0x22

    if-ne v3, v7, :cond_a

    move v3, v5

    .line 270
    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .restart local v5    # "idx":I
    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    aget-byte v4, p0, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_8

    .line 274
    new-array v4, v5, [B

    .line 275
    .local v4, "rv":[B
    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    return-object v4

    .line 270
    .end local v4    # "rv":[B
    :cond_8
    move v5, v3

    .line 272
    .end local v3    # "idx":I
    .restart local v5    # "idx":I
    :cond_9
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3

    .line 265
    .restart local p0    # "d":[B
    :cond_a
    move v3, v5

    .line 267
    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :cond_b
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v4

    .line 227
    .end local v3    # "idx":I
    .local v4, "idx":I
    .restart local p0    # "d":[B
    :cond_c
    move v8, v4

    goto :goto_3

    .end local v4    # "idx":I
    .restart local v7    # "idx":I
    :cond_d
    move v8, v7

    .line 238
    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    :cond_e
    :goto_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3

    .line 220
    .end local v8    # "idx":I
    .restart local p0    # "d":[B
    :cond_f
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "invalid key spec length"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3

    .line 213
    .restart local p0    # "d":[B
    :cond_10
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "d":[B
    throw v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .end local v0    # "totlen":I
    .end local v1    # "idlen":I
    .end local v2    # "doid":I
    .restart local p0    # "d":[B
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 330
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 331
    return v0

    .line 332
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 333
    return v2

    .line 334
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 335
    .local v1, "pk":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 336
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 335
    :goto_0
    return v0
.end method

.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 313
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getAbyte()[B
    .locals 1

    .line 320
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->Abyte:[B

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "EdDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    .line 139
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    sget-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    return-object v1

    .line 141
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    if-nez v0, :cond_1

    .line 142
    return-object v1

    .line 143
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, 0x10

    .line 144
    .local v1, "totlen":I
    new-array v2, v1, [B

    .line 145
    .local v2, "rv":[B
    const/4 v3, 0x0

    .line 147
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    const/16 v5, 0x30

    aput-byte v5, v2, v3

    .line 148
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    add-int/lit8 v6, v1, -0x2

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 150
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v6, 0x2

    aput-byte v6, v2, v3

    .line 151
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v7, 0x1

    aput-byte v7, v2, v4

    .line 153
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v7, 0x0

    aput-byte v7, v2, v3

    .line 156
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput-byte v5, v2, v4

    .line 157
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x5

    aput-byte v5, v2, v3

    .line 160
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/4 v5, 0x6

    aput-byte v5, v2, v4

    .line 161
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x3

    aput-byte v5, v2, v3

    .line 162
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/16 v5, 0x2b

    aput-byte v5, v2, v4

    .line 163
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/16 v5, 0x65

    aput-byte v5, v2, v3

    .line 164
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/16 v5, 0x70

    aput-byte v5, v2, v4

    .line 167
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x4

    aput-byte v5, v2, v3

    .line 168
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    array-length v8, v0

    add-int/2addr v8, v6

    int-to-byte v6, v8

    aput-byte v6, v2, v4

    .line 170
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput-byte v5, v2, v3

    .line 171
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 173
    array-length v4, v0

    invoke-static {v0, v7, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getH()[B
    .locals 1

    .line 299
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->h:[B

    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 284
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 292
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    return-object v0
.end method

.method public geta()[B
    .locals 1

    .line 306
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->a:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 325
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
