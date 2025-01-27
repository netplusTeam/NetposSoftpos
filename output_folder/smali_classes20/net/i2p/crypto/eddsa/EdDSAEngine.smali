.class public final Lnet/i2p/crypto/eddsa/EdDSAEngine;
.super Ljava/security/Signature;
.source "EdDSAEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;
    }
.end annotation


# static fields
.field public static final ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "NONEwithEdDSA"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private digest:Ljava/security/MessageDigest;

.field private key:Lnet/i2p/crypto/eddsa/EdDSAKey;

.field private oneShotBytes:[B

.field private oneShotLength:I

.field private oneShotMode:Z

.field private oneShotOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;-><init>(Lnet/i2p/crypto/eddsa/EdDSAEngine$1;)V

    sput-object v0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    const-string v0, "NONEwithEdDSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "digest"    # Ljava/security/MessageDigest;

    .line 103
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;-><init>()V

    .line 104
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 105
    return-void
.end method

.method private digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V
    .locals 6
    .param p1, "privKey"    # Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 141
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    .line 142
    .local v0, "b":I
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getH()[B

    move-result-object v2

    div-int/lit8 v3, v0, 0x8

    div-int/lit8 v4, v0, 0x4

    div-int/lit8 v5, v0, 0x8

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 143
    return-void
.end method

.method private reset()V
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 110
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 114
    return-void
.end method

.method private x_engineSign()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    .line 221
    .local v0, "curve":Lnet/i2p/crypto/eddsa/math/Curve;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;

    move-result-object v1

    .line 222
    .local v1, "sc":Lnet/i2p/crypto/eddsa/math/ScalarOps;
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v2, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->geta()[B

    move-result-object v2

    .line 226
    .local v2, "a":[B
    iget-boolean v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 230
    .local v3, "message":[B
    iget v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 231
    .local v4, "offset":I
    iget v5, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    .local v5, "length":I
    goto :goto_1

    .line 228
    .end local v3    # "message":[B
    .end local v4    # "offset":I
    .end local v5    # "length":I
    :cond_0
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "update() not called first"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :cond_1
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_2

    .line 234
    const/4 v3, 0x0

    new-array v3, v3, [B

    .restart local v3    # "message":[B
    goto :goto_0

    .line 236
    .end local v3    # "message":[B
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 237
    .restart local v3    # "message":[B
    :goto_0
    const/4 v4, 0x0

    .line 238
    .restart local v4    # "offset":I
    array-length v5, v3

    .line 241
    .restart local v5    # "length":I
    :goto_1
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 242
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 246
    .local v6, "r":[B
    invoke-interface {v1, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    move-result-object v6

    .line 249
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v7}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    .line 250
    .local v7, "R":Lnet/i2p/crypto/eddsa/math/GroupElement;
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v8

    .line 253
    .local v8, "Rbyte":[B
    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 254
    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    iget-object v10, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v10, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {v10}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getAbyte()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 255
    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v9, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 256
    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 257
    .local v9, "h":[B
    invoke-interface {v1, v9}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    move-result-object v9

    .line 258
    invoke-interface {v1, v9, v2, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->multiplyAndAdd([B[B[B)[B

    move-result-object v10

    .line 261
    .local v10, "S":[B
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v11

    invoke-virtual {v11}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v11

    .line 262
    .local v11, "b":I
    div-int/lit8 v12, v11, 0x4

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 263
    .local v12, "out":Ljava/nio/ByteBuffer;
    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    return-object v13
.end method

.method private x_engineVerify([B)Z
    .locals 13
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    .line 278
    .local v0, "curve":Lnet/i2p/crypto/eddsa/math/Curve;
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    .line 279
    .local v1, "b":I
    array-length v2, p1

    div-int/lit8 v3, v1, 0x4

    if-ne v2, v3, :cond_5

    .line 283
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    div-int/lit8 v3, v1, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 284
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 288
    iget-boolean v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 292
    .local v2, "message":[B
    iget v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 293
    .local v3, "offset":I
    iget v5, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    .local v5, "length":I
    goto :goto_1

    .line 290
    .end local v2    # "message":[B
    .end local v3    # "offset":I
    .end local v5    # "length":I
    :cond_0
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "update() not called first"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_1
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_2

    .line 296
    new-array v2, v4, [B

    .restart local v2    # "message":[B
    goto :goto_0

    .line 298
    .end local v2    # "message":[B
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 299
    .restart local v2    # "message":[B
    :goto_0
    const/4 v3, 0x0

    .line 300
    .restart local v3    # "offset":I
    array-length v5, v2

    .line 302
    .restart local v5    # "length":I
    :goto_1
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v2, v3, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 303
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 306
    .local v6, "h":[B
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v7}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;

    move-result-object v7

    invoke-interface {v7, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    move-result-object v6

    .line 308
    div-int/lit8 v7, v1, 0x8

    div-int/lit8 v8, v1, 0x4

    invoke-static {p1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 310
    .local v7, "Sbyte":[B
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v8}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v8

    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v9, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 311
    invoke-virtual {v9}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v9

    .line 310
    invoke-virtual {v8, v9, v6, v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->doubleScalarMultiplyVariableTime(Lnet/i2p/crypto/eddsa/math/GroupElement;[B[B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v8

    .line 315
    .local v8, "R":Lnet/i2p/crypto/eddsa/math/GroupElement;
    invoke-virtual {v8}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v9

    .line 316
    .local v9, "Rcalc":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, v9

    if-ge v10, v11, :cond_4

    .line 317
    aget-byte v11, v9, v10

    aget-byte v12, p1, v10

    if-eq v11, v12, :cond_3

    .line 318
    return v4

    .line 316
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 320
    .end local v10    # "i":I
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 280
    .end local v2    # "message":[B
    .end local v3    # "offset":I
    .end local v5    # "length":I
    .end local v6    # "h":[B
    .end local v7    # "Sbyte":[B
    .end local v8    # "R":Lnet/i2p/crypto/eddsa/math/GroupElement;
    .end local v9    # "Rcalc":[B
    :cond_5
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature length is wrong"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 119
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    if-eqz v0, :cond_2

    .line 120
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 121
    .local v0, "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 123
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get required digest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v4}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for private key."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :goto_0
    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 133
    .end local v0    # "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    nop

    .line 136
    return-void

    .line 131
    .restart local v0    # "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Key hash algorithm does not match chosen digest"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v0    # "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EdDSA private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 148
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_2

    .line 149
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 151
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    if-nez v1, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get required digest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v3}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for private key."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key hash algorithm does not match chosen digest"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    instance-of v0, p1, Lsun/security/x509/X509Key;

    if-eqz v0, :cond_3

    .line 165
    :try_start_1
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .local v0, "parsedPublicKey":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    nop

    .line 169
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 170
    .end local v0    # "parsedPublicKey":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    nop

    .line 173
    :goto_0
    return-void

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot handle X.509 EdDSA public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "ex":Ljava/security/spec/InvalidKeySpecException;
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EdDSA public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 467
    sget-object v0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    goto :goto_0

    .line 469
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "update() already called"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_2
    invoke-super {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 474
    :goto_0
    return-void
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 209
    :try_start_0
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->x_engineSign()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 214
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 215
    .local v1, "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    invoke-direct {p0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 209
    .end local v1    # "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 214
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 215
    .restart local v1    # "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    invoke-direct {p0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 216
    .end local v1    # "privKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 185
    return-void

    .line 181
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "unsupported in one-shot mode"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-nez v0, :cond_0

    .line 196
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 197
    iput p2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 198
    iput p3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "update() already called"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_2

    .line 201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 202
    :cond_2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 204
    :goto_0
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->x_engineVerify([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 270
    return v0

    .line 272
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 273
    throw v0
.end method

.method public signOneShot([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 340
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->signOneShot([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public signOneShot([BII)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->update([BII)V

    .line 364
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public verifyOneShot([BII[B)Z
    .locals 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 408
    array-length v6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result v0

    return v0
.end method

.method public verifyOneShot([BII[BII)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "signature"    # [B
    .param p5, "sigoff"    # I
    .param p6, "siglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 457
    invoke-virtual {p0, p1, p2, p3}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->update([BII)V

    .line 458
    invoke-virtual {p0, p4, p5, p6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verify([BII)Z

    move-result v0

    return v0
.end method

.method public verifyOneShot([B[B)Z
    .locals 7
    .param p1, "data"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 385
    array-length v3, p1

    array-length v6, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result v0

    return v0
.end method

.method public verifyOneShot([B[BII)Z
    .locals 7
    .param p1, "data"    # [B
    .param p2, "signature"    # [B
    .param p3, "sigoff"    # I
    .param p4, "siglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 431
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result v0

    return v0
.end method
