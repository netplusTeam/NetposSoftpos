.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;
.source "NTRUEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MGF([BIIZ)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 2
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int v2, p3, v1

    .line 3
    new-array v2, v2, [B

    if-eqz p4, :cond_0

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B

    move-result-object p1

    :cond_0
    const/4 p4, 0x0

    move v3, p4

    :goto_0
    if-ge v3, p3, :cond_1

    .line 8
    array-length v4, p1

    invoke-interface {v0, p1, p4, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 9
    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    .line 11
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v4

    mul-int v5, v3, v1

    .line 12
    invoke-static {v4, p4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p3, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p3, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_1
    move v1, p4

    move v4, v1

    .line 20
    :goto_2
    array-length v5, v2

    if-eq v1, v5, :cond_6

    .line 22
    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf3

    if-lt v5, v6, :cond_2

    goto :goto_4

    :cond_2
    move v6, p4

    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    .line 30
    rem-int/lit8 v7, v5, 0x3

    .line 31
    iget-object v8, p3, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v9, v7, -0x1

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_3

    return-object p3

    :cond_3
    sub-int/2addr v5, v7

    .line 37
    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 40
    :cond_4
    iget-object v6, p3, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v5, v5, -0x1

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_5

    return-object p3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lt v4, p2, :cond_7

    return-object p3

    .line 53
    :cond_7
    array-length v1, p1

    invoke-interface {v0, p1, p4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 54
    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    .line 56
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    add-int/2addr v0, p3

    array-length p3, p4

    add-int/2addr v0, p3

    array-length p3, p5

    add-int/2addr v0, p3

    new-array p3, v0, [B

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v0, p1

    array-length v2, p2

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    array-length v2, p4

    invoke-static {p4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p4

    add-int/2addr p1, p2

    array-length p2, p5

    invoke-static {p5, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B
    .locals 3

    .line 4
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 6
    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 7
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    .line 3
    array-length v1, p1

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private decrypt([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 3
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 4
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 5
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 6
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 7
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 8
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 9
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 10
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 11
    iget-boolean v12, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 12
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    const/16 v0, 0xff

    if-gt v5, v0, :cond_6

    .line 19
    div-int/lit8 v4, v4, 0x8

    .line 21
    move-object/from16 v14, p1

    invoke-static {v14, v3, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v14

    .line 22
    invoke-virtual {v6, v14, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->decrypt(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    const/4 v2, -0x1

    .line 24
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v2

    if-lt v2, v9, :cond_5

    .line 28
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v15

    if-lt v15, v9, :cond_4

    .line 32
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-lt v0, v9, :cond_3

    .line 37
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 38
    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 39
    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 40
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 41
    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 42
    invoke-virtual {v0, v14}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    .line 43
    invoke-direct {v6, v0, v3, v11, v12}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 46
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 47
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v0

    .line 49
    new-array v11, v4, [B

    .line 50
    invoke-static {v0, v2, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    aget-byte v1, v0, v4

    const/16 v3, 0xff

    and-int/2addr v3, v1

    if-gt v3, v5, :cond_2

    .line 56
    new-array v12, v3, [B

    add-int/2addr v4, v15

    .line 57
    invoke-static {v0, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length v1, v0

    add-int/2addr v4, v3

    sub-int/2addr v1, v4

    new-array v5, v1, [B

    .line 59
    invoke-static {v0, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    new-array v0, v1, [B

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    .line 67
    div-int/lit8 v10, v10, 0x8

    invoke-direct {v6, v0, v10}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v5

    .line 68
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v0

    .line 70
    invoke-direct {v6, v0, v12}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v0

    .line 71
    invoke-interface {v0, v7}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 73
    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v12

    .line 75
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid message encoding"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "The message is not followed by zeroes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal -1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encrypt([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 22

    .line 1
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 2
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 3
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 5
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 6
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 7
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    .line 8
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 9
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 10
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 11
    iget-boolean v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 12
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 14
    array-length v2, v7

    const/16 v0, 0xff

    if-gt v11, v0, :cond_4

    if-gt v2, v11, :cond_3

    :goto_0
    nop

    .line 27
    div-int/lit8 v0, v12, 0x8

    new-array v1, v0, [B

    .line 28
    move/from16 p2, v4

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v4, 0x1

    add-int/lit8 v16, v11, 0x1

    sub-int v4, v16, v2

    .line 29
    move/from16 v16, v5

    new-array v5, v4, [B

    .line 30
    move/from16 v18, v12

    div-int/lit8 v12, v13, 0x8

    new-array v12, v12, [B

    .line 32
    move/from16 v19, v13

    const/4 v13, 0x0

    invoke-static {v1, v13, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v13, v2

    .line 33
    aput-byte v13, v12, v0

    const/4 v13, 0x1

    add-int/2addr v0, v13

    .line 34
    array-length v13, v7

    move-object/from16 v20, v1

    const/4 v1, 0x0

    invoke-static {v7, v1, v12, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length v13, v7

    add-int/2addr v0, v13

    invoke-static {v5, v1, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-static {v12, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v13

    .line 40
    invoke-virtual {v8, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    .line 41
    div-int/lit8 v1, v15, 0x8

    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v5

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v4, v20

    move-object v1, v3

    move/from16 v20, v2

    move-object/from16 v2, p1

    move-object/from16 v21, v3

    move/from16 v3, v20

    move/from16 v7, p2

    move/from16 v17, v15

    const/4 v15, 0x1

    move/from16 v15, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v0

    .line 44
    invoke-direct {v6, v0, v12}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v0

    .line 45
    invoke-interface {v0, v8, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 47
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 48
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v1

    .line 49
    invoke-direct {v6, v1, v9, v15, v7}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 50
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 51
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    const/4 v1, -0x1

    .line 53
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v1

    if-ge v1, v14, :cond_0

    move v4, v7

    move v5, v15

    move/from16 v15, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v7, p1

    goto/16 :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v1

    if-ge v1, v14, :cond_1

    move v4, v7

    move v5, v15

    move/from16 v15, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v7, p1

    goto/16 :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v1

    if-ge v1, v14, :cond_2

    move v4, v7

    move v5, v15

    move/from16 v15, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v7, p1

    goto/16 :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0, v13, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 67
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 68
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0

    .line 69
    :cond_3
    move/from16 v20, v2

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "llen values bigger than 1 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateBlindingCoeffs(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;I)[I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 3
    new-array v0, v0, [I

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v3

    .line 10
    aget v4, v0, v3

    if-nez v4, :cond_0

    .line 12
    aput v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;
    .locals 3

    .line 1
    new-instance p2, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;-><init>([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 3
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 6
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 7
    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 8
    new-instance p2, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {p2, v0, p1, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object p2

    .line 12
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr:I

    .line 13
    iget-boolean p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    .line 14
    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object p2

    if-eqz p1, :cond_1

    .line 17
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p1

    .line 21
    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method

.method private log2(I)I
    .locals 1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/16 p1, 0xb

    return p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "log2 not fully implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 1
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 2
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 3
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p2, p2

    .line 4
    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method protected decrypt(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 84
    iget v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    .line 85
    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 86
    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_0

    .line 90
    :cond_0
    iget v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    .line 92
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 93
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 95
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p1, p3, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    .line 96
    :goto_1
    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    return-object p2
.end method

.method protected encrypt(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/TernaryPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    .line 72
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 73
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    return-object p2
.end method

.method public getInputBlockSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->log2(I)I

    move-result v0

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz p1, :cond_1

    .line 4
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 8
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 9
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 14
    check-cast p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 17
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    goto :goto_1

    .line 21
    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .line 22
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    :goto_1
    return-void
.end method

.method public processBlock([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    new-array v0, p3, [B

    .line 3
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->encrypt([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEngine;->decrypt([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object p1

    return-object p1
.end method
