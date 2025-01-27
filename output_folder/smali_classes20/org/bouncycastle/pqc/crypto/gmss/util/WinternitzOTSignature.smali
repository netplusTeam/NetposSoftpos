.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;
.source "WinternitzOTSignature.java"


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    .line 5
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 7
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 12
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 p2, p2, 0x3

    int-to-double v0, p2

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr p2, p3

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 16
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    .line 18
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    int-to-double v4, p2

    div-double/2addr v4, v2

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    .line 30
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p2, v1, p3

    const/4 p3, 0x0

    aput v0, v1, p3

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    .line 33
    new-array v0, p2, [B

    .line 34
    invoke-static {p1, p3, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :goto_0
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge p3, p1, :cond_0

    .line 40
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object p2

    aput-object p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPrivateKey()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 9

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    .line 3
    new-array v1, v1, [B

    .line 4
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v3, 0x1

    shl-int v1, v3, v1

    const/4 v3, 0x0

    move v4, v3

    .line 6
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v4, v5, :cond_1

    .line 9
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v6, v6, v4

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 10
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 11
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v5, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v6, 0x2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 14
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v5

    invoke-interface {v7, v5, v3, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 15
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 16
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v5, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 18
    :cond_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v6, v4

    invoke-static {v5, v3, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 23
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 21

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 3
    new-array v3, v3, [B

    .line 8
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 9
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v3, v1, [B

    .line 10
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 12
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v6, 0x8

    rem-int v7, v6, v4

    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 14
    div-int/2addr v6, v4

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    .line 16
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v7, v7, [B

    move v8, v5

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v8, v1, :cond_2

    move v11, v5

    :goto_1
    if-ge v11, v6, :cond_1

    .line 23
    aget-byte v12, v3, v8

    and-int/2addr v12, v4

    add-int/2addr v9, v12

    .line 26
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v13, v13, v10

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v13, v5, v7, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-lez v12, :cond_0

    .line 30
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v7

    invoke-interface {v13, v7, v5, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 31
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    .line 32
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v13, v7, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 35
    :cond_0
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v13, v10, v12

    invoke-static {v7, v5, v2, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    aget-byte v12, v3, v8

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v3, v8

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    :cond_2
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v1, v3

    sub-int/2addr v1, v9

    move v3, v5

    .line 42
    :goto_3
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v3, v6, :cond_15

    and-int v6, v1, v4

    .line 46
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v8, v8, v10

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v8, v5, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-lez v6, :cond_3

    .line 50
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v9, v7

    invoke-interface {v8, v7, v5, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 51
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    .line 52
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v7, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 55
    :cond_3
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v8, v10, v6

    invoke-static {v7, v5, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v1, v6

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v6

    goto :goto_3

    :cond_4
    if-ge v4, v6, :cond_d

    .line 62
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    div-int v7, v1, v4

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    .line 64
    new-array v1, v1, [B

    move v11, v5

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_5
    if-ge v11, v7, :cond_8

    move v15, v5

    const-wide/16 v16, 0x0

    .line 72
    :goto_6
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v15, v9, :cond_5

    .line 74
    aget-byte v9, v3, v12

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v15, 0x3

    shl-int/2addr v9, v10

    int-to-long v9, v9

    xor-long v16, v16, v9

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_5
    move v9, v5

    :goto_7
    if-ge v9, v6, :cond_7

    move v10, v7

    int-to-long v6, v4

    and-long v6, v16, v6

    long-to-int v6, v6

    add-int/2addr v14, v6

    .line 82
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v13

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v5, v1, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    if-lez v6, :cond_6

    .line 86
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v1

    invoke-interface {v7, v1, v5, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 87
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 88
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 91
    :cond_6
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v13, v6

    invoke-static {v1, v5, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long v16, v16, v6

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    const/16 v6, 0x8

    goto :goto_7

    :cond_7
    move v10, v7

    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0x8

    goto :goto_5

    .line 97
    :cond_8
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v6, v7

    move v7, v5

    const-wide/16 v9, 0x0

    :goto_9
    if-ge v7, v6, :cond_9

    .line 101
    aget-byte v11, v3, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v15, v7, 0x3

    shl-int/2addr v11, v15

    move/from16 p1, v6

    int-to-long v5, v11

    xor-long/2addr v9, v5

    add-int/2addr v12, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p1

    const/4 v5, 0x0

    goto :goto_9

    :cond_9
    move/from16 p1, v6

    shl-int/lit8 v3, p1, 0x3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_b

    int-to-long v6, v4

    and-long/2addr v6, v9

    long-to-int v6, v6

    add-int/2addr v14, v6

    .line 110
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v13

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v11, 0x0

    invoke-static {v7, v11, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    if-lez v6, :cond_a

    .line 114
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v1

    invoke-interface {v7, v1, v11, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 115
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 116
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v1, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    .line 119
    :cond_a
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v13, v6

    invoke-static {v1, v11, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v9, v6

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v5, v6

    goto :goto_a

    .line 125
    :cond_b
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v5

    sub-int/2addr v3, v14

    const/4 v5, 0x0

    .line 126
    :goto_c
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v5, v6, :cond_15

    and-int v6, v3, v4

    .line 130
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v13

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v9, 0x0

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    if-lez v6, :cond_c

    .line 134
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v1

    invoke-interface {v7, v1, v9, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 135
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 136
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v1, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    .line 139
    :cond_c
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v13, v6

    invoke-static {v1, v9, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v6

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v5, v6

    goto :goto_c

    :cond_d
    const/16 v1, 0x39

    if-ge v4, v1, :cond_15

    .line 146
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v5, v1, 0x3

    sub-int/2addr v5, v4

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    .line 148
    new-array v1, v1, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_e
    if-gt v7, v5, :cond_10

    ushr-int/lit8 v12, v7, 0x3

    .line 157
    rem-int/lit8 v13, v7, 0x8

    .line 158
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v7, v14

    add-int/lit8 v14, v7, 0x7

    ushr-int/lit8 v14, v14, 0x3

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_f
    if-ge v12, v14, :cond_e

    .line 164
    aget-byte v15, v3, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v20, v16, 0x3

    shl-int v15, v15, v20

    int-to-long v9, v15

    xor-long v18, v18, v9

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_e
    ushr-long v9, v18, v13

    int-to-long v12, v4

    and-long/2addr v9, v12

    int-to-long v12, v6

    add-long/2addr v12, v9

    long-to-int v6, v12

    .line 172
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v12, v12, v11

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v14, 0x0

    invoke-static {v12, v14, v1, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    const-wide/16 v12, 0x0

    cmp-long v15, v9, v12

    if-lez v15, :cond_f

    .line 175
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v13, v1

    invoke-interface {v12, v1, v14, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 176
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 177
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v1, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v12, 0x1

    sub-long/2addr v9, v12

    goto :goto_10

    .line 180
    :cond_f
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v10, v11, v9

    invoke-static {v1, v14, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_10
    ushr-int/lit8 v5, v7, 0x3

    .line 186
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v5, v9, :cond_13

    .line 188
    const/16 v9, 0x8

    rem-int/2addr v7, v9

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    .line 191
    :goto_11
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v5, v10, :cond_11

    .line 193
    aget-byte v10, v3, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v14, v9, 0x3

    shl-int/2addr v10, v14

    int-to-long v14, v10

    xor-long/2addr v12, v14

    add-int/2addr v9, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_11
    ushr-long v7, v12, v7

    int-to-long v12, v4

    and-long/2addr v7, v12

    int-to-long v5, v6

    add-long/2addr v5, v7

    long-to-int v6, v5

    .line 201
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v11

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_12
    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_12

    .line 204
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v9, v1

    invoke-interface {v3, v1, v5, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 205
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 206
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    goto :goto_12

    .line 209
    :cond_12
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v11, v3

    invoke-static {v1, v5, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    .line 213
    :cond_13
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v5

    sub-int/2addr v3, v6

    move v5, v11

    const/4 v11, 0x0

    .line 214
    :goto_13
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v11, v6, :cond_15

    and-int v6, v3, v4

    int-to-long v6, v6

    .line 218
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v8, v8, v5

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v10, 0x0

    invoke-static {v8, v10, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_14
    const-wide/16 v8, 0x0

    cmp-long v12, v6, v8

    if-lez v12, :cond_14

    .line 222
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v13, v1

    invoke-interface {v12, v1, v10, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 223
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 224
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v1, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    goto :goto_14

    .line 227
    :cond_14
    const-wide/16 v12, 0x1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v5, v6

    invoke-static {v1, v10, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v11, v6

    goto :goto_13

    :cond_15
    return-object v2
.end method
