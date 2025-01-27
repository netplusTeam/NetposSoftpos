.class public Lorg/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isValidPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid result"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static implShamirsTrickJsf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 6
    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 8
    const/4 v4, 0x4

    new-array v5, v4, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object v3, v5, p2

    const/4 v3, 0x2

    aput-object p0, v5, v3

    const/4 p0, 0x3

    aput-object v2, v5, p0

    .line 9
    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v2, v5, p0

    .line 12
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v5, v3

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v0, p2

    aget-object v2, v5, p2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v0, v3

    aget-object v2, v5, v6

    .line 13
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v0, p0

    aput-object v1, v0, v4

    aget-object v2, v5, v6

    const/4 v6, 0x5

    aput-object v2, v0, v6

    aget-object p2, v5, p2

    const/4 v2, 0x6

    aput-object p2, v0, v2

    aget-object p2, v5, v3

    const/4 v2, 0x7

    aput-object p2, v0, v2

    aget-object p2, v5, p0

    const/16 v2, 0x8

    aput-object p2, v0, v2

    .line 16
    invoke-static {p1, p3}, Lorg/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 20
    array-length p2, p1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 23
    aget-byte p3, p1, p2

    shl-int/lit8 v2, p3, 0x18

    shr-int/lit8 v2, v2, 0x1c

    shl-int/lit8 p3, p3, 0x1c

    shr-int/lit8 p3, p3, 0x1c

    mul-int/2addr v2, p0

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    .line 29
    aget-object p3, v0, v2

    invoke-virtual {v1, p3}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 6
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7
    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9
    invoke-static {p0, v3, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object p0

    .line 10
    invoke-static {p2, v4, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :goto_1
    move-object v5, v2

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :goto_2
    move-object v8, v2

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_3
    move-object v6, p0

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_4
    move-object v9, p0

    .line 17
    invoke-static {v3, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    .line 18
    invoke-static {v4, p3}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v10

    .line 20
    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    .line 21
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 26
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 28
    invoke-static {p0, v3, v2, p2}, Lorg/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lorg/bouncycastle/math/ec/ECPoint;IZLorg/bouncycastle/math/ec/ECPointMap;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 29
    invoke-static {p0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object p0

    .line 30
    invoke-static {p2}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :goto_1
    move-object v4, v2

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :goto_2
    move-object v7, v2

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_3
    move-object v5, p0

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_4
    move-object v8, p0

    .line 37
    invoke-static {v3, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    .line 38
    invoke-static {v3, p3}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v9

    .line 40
    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method private static implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    .line 41
    array-length v0, p2

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ltz v0, :cond_8

    .line 51
    array-length v5, p2

    if-ge v0, v5, :cond_0

    aget-byte v5, p2, v0

    goto :goto_1

    :cond_0
    move v5, v1

    .line 52
    :goto_1
    array-length v6, p5

    if-ge v0, v6, :cond_1

    aget-byte v6, p5, v0

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    or-int v7, v5, v6

    if-nez v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_2
    if-eqz v5, :cond_4

    .line 63
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v5, :cond_3

    move-object v5, p1

    goto :goto_3

    :cond_3
    move-object v5, p0

    :goto_3
    ushr-int/lit8 v7, v7, 0x1

    .line 65
    aget-object v5, v5, v7

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v2

    :goto_4
    if-eqz v6, :cond_6

    .line 69
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v6, :cond_5

    move-object v6, p4

    goto :goto_5

    :cond_5
    move-object v6, p3

    :goto_5
    ushr-int/lit8 v7, v7, 0x1

    .line 71
    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    :cond_6
    if-lez v3, :cond_7

    .line 76
    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    move v3, v1

    .line 80
    :cond_7
    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    if-lez v3, :cond_9

    .line 85
    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :cond_9
    return-object v4
.end method

.method static implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 13

    .line 16
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 18
    new-array v2, v1, [Z

    .line 19
    new-array v3, v1, [Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    .line 20
    new-array v1, v1, [[B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    shl-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v6, 0x1

    .line 26
    aget-object v8, p2, v6

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v9

    const/4 v10, 0x1

    if-gez v9, :cond_0

    move v9, v10

    goto :goto_1

    :cond_0
    move v9, v4

    :goto_1
    aput-boolean v9, v2, v6

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    .line 27
    aget-object v9, p2, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-gez v11, :cond_1

    move v11, v10

    goto :goto_2

    :cond_1
    move v11, v4

    :goto_2
    aput-boolean v11, v2, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 29
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v11

    const/16 v12, 0x10

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 31
    aget-object v12, p0, v5

    invoke-static {v12, v11, v10, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lorg/bouncycastle/math/ec/ECPoint;IZLorg/bouncycastle/math/ec/ECPointMap;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 32
    invoke-static {v12}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v12

    aput-object v12, v3, v6

    .line 33
    invoke-static {v10}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v10

    aput-object v10, v3, v7

    .line 34
    invoke-static {v11, v8}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v8

    aput-object v8, v1, v6

    .line 35
    invoke-static {v11, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    aput-object v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v2, v3, v1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Z

    .line 3
    new-array v2, v0, [Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    .line 4
    new-array v3, v0, [[B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    .line 8
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    const/4 v8, 0x1

    if-gez v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    aput-boolean v7, v1, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v7

    const/16 v9, 0x10

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v9, 0x2

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 11
    aget-object v9, p0, v5

    invoke-static {v9, v7, v8}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    aput-object v8, v2, v5

    .line 12
    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method private static implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 13

    .line 39
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 42
    aget-object v4, p2, v2

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 45
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v1

    move-object v6, v2

    :goto_1
    if-ltz v3, :cond_8

    move v7, v1

    move-object v8, v2

    :goto_2
    if-ge v7, v0, :cond_5

    .line 57
    aget-object v9, p2, v7

    .line 58
    array-length v10, v9

    if-ge v3, v10, :cond_1

    aget-byte v9, v9, v3

    goto :goto_3

    :cond_1
    move v9, v1

    :goto_3
    if-eqz v9, :cond_4

    .line 61
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 62
    aget-object v11, p1, v7

    if-gez v9, :cond_2

    move v9, v4

    goto :goto_4

    :cond_2
    move v9, v1

    .line 63
    :goto_4
    aget-boolean v12, p0, v7

    if-ne v9, v12, :cond_3

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_5

    :cond_3
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    :goto_5
    ushr-int/2addr v10, v4

    .line 64
    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-ne v8, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    if-lez v5, :cond_7

    .line 76
    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move v5, v1

    .line 80
    :cond_7
    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    if-lez v5, :cond_9

    .line 85
    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    :cond_9
    return-object v6
.end method

.method static implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    .line 3
    array-length v2, p0

    shl-int/lit8 v3, v2, 0x1

    .line 5
    new-array v4, v3, [Ljava/math/BigInteger;

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_0

    .line 8
    aget-object v7, p1, v5

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    .line 9
    aget-object v9, v7, v0

    aput-object v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    .line 10
    const/4 v9, 0x1

    aget-object v7, v7, v9

    aput-object v7, v4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object p1

    .line 14
    invoke-interface {p2}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->hasEfficientPointMap()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    invoke-static {p0, p1, v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    new-array p2, v3, [Lorg/bouncycastle/math/ec/ECPoint;

    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 22
    aget-object v3, p0, v0

    invoke-interface {p1, v3}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    .line 23
    aput-object v3, p2, v1

    add-int/lit8 v1, v6, 0x1

    .line 24
    aput-object v5, p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_2
    invoke-static {p2, v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result p0

    return p0
.end method

.method public static isF2mField(Lorg/bouncycastle/math/field/FiniteField;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p0, p0, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result p0

    return p0
.end method

.method public static isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public static montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 4

    .line 2
    new-array v0, p2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 3
    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v2, -0x1

    .line 8
    aget-object v1, v0, v1

    add-int v3, p1, v2

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-eqz p3, :cond_1

    .line 15
    aget-object p2, v0, v2

    invoke-virtual {p2, p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    aput-object p2, v0, v2

    .line 18
    :cond_1
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 p3, v2, -0x1

    add-int/2addr v2, p1

    .line 23
    aget-object v1, p0, v2

    .line 24
    aget-object v3, v0, p3

    invoke-virtual {v3, p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    aput-object v3, p0, v2

    .line 25
    invoke-virtual {p2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    move v2, p3

    goto :goto_1

    .line 28
    :cond_2
    aput-object p2, p0, p1

    return-void
.end method

.method public static referenceMultiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 13
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v1, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static shamirsTrick(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 4
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static sumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_4

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 6
    array-length v0, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 17
    aget-object v3, p0, v2

    .line 18
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 20
    new-array v5, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 21
    aput-object v3, v5, v2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    aget-object v2, p0, v1

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object p0

    .line 28
    instance-of v0, p0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_1

    .line 30
    check-cast p0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v5, p1, p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 33
    :cond_1
    invoke-static {v5, p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_2
    nop

    .line 34
    aget-object v0, p0, v2

    aget-object v2, p1, v2

    aget-object p0, p0, v1

    aget-object p1, p1, v1

    invoke-static {v0, v2, p0, p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_3
    nop

    .line 35
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 36
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 5
    instance-of v1, v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 8
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v1, :cond_1

    .line 17
    const/4 v1, 0x2

    new-array v2, v1, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p2, v2, p0

    new-array p2, v1, [Ljava/math/BigInteger;

    aput-object p1, p2, v3

    aput-object p3, p2, p0

    check-cast v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 18
    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 23
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static validatePoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid point"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
