.class public abstract Lorg/bouncycastle/math/raw/Nat160;
.super Ljava/lang/Object;
.source "Nat160.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 2
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 4
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 5
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    .line 7
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 8
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    .line 10
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 11
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    .line 13
    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 14
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 2
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 4
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 5
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    .line 7
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 8
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    .line 10
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 11
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    .line 13
    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 14
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addTo([II[III)I
    .locals 9

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p4, p1, 0x0

    .line 15
    aget p4, p0, p4

    int-to-long v4, p4

    and-long/2addr v4, v2

    add-int/lit8 p4, p3, 0x0

    aget v6, p2, p4

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 16
    aput v4, p2, p4

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    .line 18
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 19
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    .line 21
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 22
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    .line 24
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 25
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x4

    .line 27
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x4

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 28
    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p0, p0

    return p0
.end method

.method public static addTo([I[I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 2
    aput v5, p1, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 4
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 5
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    .line 7
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 8
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    .line 10
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 11
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    .line 13
    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 14
    aput p0, p1, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addToEachOther([II[II)I
    .locals 11

    add-int/lit8 v0, p1, 0x0

    .line 1
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p3, 0x0

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    const-wide/16 v6, 0x0

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 2
    aput v6, p0, v0

    .line 3
    aput v6, p2, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x1

    .line 5
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 6
    aput v6, p0, v5

    .line 7
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x2

    .line 9
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 10
    aput v6, p0, v5

    .line 11
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x3

    .line 13
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 14
    aput v6, p0, v5

    .line 15
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 p1, p1, 0x4

    .line 17
    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x4

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v3, v1

    .line 18
    aput v3, p0, p1

    .line 19
    aput v3, p2, p3

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static copy([II[II)V
    .locals 2

    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    .line 6
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 7
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    .line 8
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    .line 9
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x4

    .line 10
    aget p0, p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public static copy([I[I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 2
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 3
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 4
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 5
    const/4 v0, 0x4

    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static create()[I
    .locals 1

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [I

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat160;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat160;->sub([II[II[II)I

    goto :goto_0

    .line 8
    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat160;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    .line 1
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    .line 6
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 10
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 11
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 9
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static gte([II[II)Z
    .locals 5

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    .line 3
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 4
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 1
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 2
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_2

    .line 7
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1
    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([II[II[II)V
    .locals 26

    add-int/lit8 v0, p3, 0x0

    .line 46
    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 47
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 48
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 49
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 50
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p1, 0x0

    .line 53
    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    mul-long v14, v12, v0

    const-wide/16 v16, 0x0

    add-long v14, v14, v16

    add-int/lit8 v18, p5, 0x0

    long-to-int v2, v14

    .line 55
    aput v2, p4, v18

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v20, v12, v4

    add-long v14, v14, v20

    add-int/lit8 v3, p5, 0x1

    long-to-int v2, v14

    .line 58
    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v20, v12, v6

    add-long v14, v14, v20

    add-int/lit8 v3, p5, 0x2

    long-to-int v2, v14

    .line 61
    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v20, v12, v8

    add-long v14, v14, v20

    add-int/lit8 v3, p5, 0x3

    long-to-int v2, v14

    .line 64
    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long/2addr v12, v10

    add-long/2addr v14, v12

    add-int/lit8 v3, p5, 0x4

    long-to-int v12, v14

    .line 67
    aput v12, p4, v3

    ushr-long v12, v14, v2

    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v12

    .line 69
    aput v3, p4, v2

    const/4 v2, 0x1

    move/from16 v3, p5

    move v12, v2

    :goto_0
    const/4 v13, 0x5

    if-ge v12, v13, :cond_0

    add-int/2addr v3, v2

    add-int v13, p1, v12

    .line 75
    aget v13, p0, v13

    int-to-long v13, v13

    const-wide v18, 0xffffffffL

    and-long v13, v13, v18

    mul-long v20, v13, v0

    add-int/lit8 v15, v3, 0x0

    .line 76
    aget v2, p4, v15

    move-wide/from16 v22, v0

    int-to-long v0, v2

    and-long v0, v0, v18

    add-long v20, v20, v0

    add-long v0, v20, v16

    long-to-int v2, v0

    .line 77
    aput v2, p4, v15

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v20, v13, v4

    add-int/lit8 v2, v3, 0x1

    .line 79
    aget v15, p4, v2

    move-wide/from16 v24, v4

    int-to-long v4, v15

    const-wide v18, 0xffffffffL

    and-long v4, v4, v18

    add-long v20, v20, v4

    add-long v0, v0, v20

    long-to-int v4, v0

    .line 80
    aput v4, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v4, v13, v6

    add-int/lit8 v2, v3, 0x2

    .line 82
    aget v15, p4, v2

    move-wide/from16 v20, v6

    int-to-long v6, v15

    const-wide v18, 0xffffffffL

    and-long v6, v6, v18

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 83
    aput v4, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v4, v13, v8

    add-int/lit8 v2, v3, 0x3

    .line 85
    aget v6, p4, v2

    int-to-long v6, v6

    const-wide v18, 0xffffffffL

    and-long v6, v6, v18

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 86
    aput v4, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long/2addr v13, v10

    add-int/lit8 v2, v3, 0x4

    .line 88
    aget v4, p4, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v13, v4

    add-long/2addr v0, v13

    long-to-int v4, v0

    .line 89
    aput v4, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v4, v3, 0x5

    long-to-int v0, v0

    .line 91
    aput v0, p4, v4

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v6, v20

    move-wide/from16 v0, v22

    move-wide/from16 v4, v24

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 27

    .line 1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 2
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 3
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 4
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 5
    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    .line 8
    aget v11, p0, v0

    move-wide/from16 v19, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    mul-long v10, v8, v1

    const-wide/16 v21, 0x0

    add-long v10, v10, v21

    long-to-int v3, v10

    .line 10
    aput v3, p2, v0

    const/16 v0, 0x20

    ushr-long v3, v10, v0

    mul-long v10, v8, v6

    add-long/2addr v3, v10

    long-to-int v10, v3

    .line 13
    aput v10, p2, v5

    ushr-long/2addr v3, v0

    mul-long v10, v8, v19

    add-long/2addr v3, v10

    long-to-int v10, v3

    .line 16
    const/4 v11, 0x2

    aput v10, p2, v11

    ushr-long/2addr v3, v0

    mul-long v10, v8, v12

    add-long/2addr v3, v10

    long-to-int v10, v3

    .line 19
    const/4 v11, 0x3

    aput v10, p2, v11

    ushr-long/2addr v3, v0

    mul-long/2addr v8, v14

    add-long/2addr v3, v8

    long-to-int v8, v3

    .line 22
    const/4 v9, 0x4

    aput v8, p2, v9

    ushr-long/2addr v3, v0

    long-to-int v3, v3

    .line 24
    const/4 v4, 0x5

    aput v3, p2, v4

    :goto_0
    if-ge v5, v4, :cond_0

    .line 29
    aget v3, p0, v5

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long v16, v8, v1

    add-int/lit8 v3, v5, 0x0

    .line 30
    aget v4, p2, v3

    move-wide/from16 v25, v1

    int-to-long v0, v4

    and-long/2addr v0, v10

    add-long v16, v16, v0

    add-long v0, v16, v21

    long-to-int v4, v0

    .line 31
    aput v4, p2, v3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v8, v6

    add-int/lit8 v10, v5, 0x1

    .line 33
    aget v11, p2, v10

    move-wide/from16 v16, v6

    int-to-long v6, v11

    const-wide v23, 0xffffffffL

    and-long v6, v6, v23

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 34
    aput v3, p2, v10

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v8, v19

    add-int/lit8 v6, v5, 0x2

    .line 36
    aget v7, p2, v6

    move/from16 v18, v10

    int-to-long v10, v7

    const-wide v23, 0xffffffffL

    and-long v10, v10, v23

    add-long/2addr v3, v10

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 37
    aput v3, p2, v6

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v8, v12

    add-int/lit8 v6, v5, 0x3

    .line 39
    aget v7, p2, v6

    int-to-long v10, v7

    const-wide v23, 0xffffffffL

    and-long v10, v10, v23

    add-long/2addr v3, v10

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 40
    aput v3, p2, v6

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long/2addr v8, v14

    add-int/lit8 v3, v5, 0x4

    .line 42
    aget v4, p2, v3

    int-to-long v6, v4

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    add-long/2addr v8, v6

    add-long/2addr v0, v8

    long-to-int v4, v0

    .line 43
    aput v4, p2, v3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v5, v5, 0x5

    long-to-int v0, v0

    .line 45
    aput v0, p2, v5

    move v0, v2

    move-wide/from16 v6, v16

    move/from16 v5, v18

    move-wide/from16 v1, v25

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 13

    move v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x0

    .line 1
    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    add-int/lit8 v8, p4, 0x0

    .line 2
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    add-int/lit8 v8, p6, 0x0

    long-to-int v9, v6

    .line 3
    aput v9, p5, v8

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v9, p2, 0x1

    .line 5
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p4, 0x1

    .line 6
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v11, v4

    add-long/2addr v6, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 7
    aput v5, p5, v4

    ushr-long v4, v6, v8

    add-int/lit8 v6, p2, 0x2

    .line 9
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x2

    .line 10
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x2

    long-to-int v10, v4

    .line 11
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x3

    .line 13
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x3

    .line 14
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 15
    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x4

    .line 17
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v0, v6

    add-long/2addr v0, v9

    add-int/lit8 v9, p4, 0x4

    .line 18
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v2, v9

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x4

    long-to-int v1, v4

    .line 19
    aput v1, p5, v0

    ushr-long v0, v4, v8

    add-long/2addr v0, v6

    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 15

    move-object/from16 v0, p3

    move v1, p0

    move/from16 v2, p4

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    and-long v7, p1, v5

    mul-long v9, v3, v7

    add-int/lit8 v1, v2, 0x0

    .line 1
    aget v11, v0, v1

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    const-wide/16 v11, 0x0

    add-long/2addr v9, v11

    long-to-int v13, v9

    .line 2
    aput v13, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr v9, v1

    ushr-long v13, p1, v1

    mul-long/2addr v3, v13

    add-long/2addr v3, v7

    add-int/lit8 v7, v2, 0x1

    .line 5
    aget v8, v0, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    .line 6
    aput v3, v0, v7

    ushr-long v3, v9, v1

    add-int/lit8 v7, v2, 0x2

    .line 8
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    add-long/2addr v13, v8

    add-long/2addr v3, v13

    long-to-int v8, v3

    .line 9
    aput v8, v0, v7

    ushr-long/2addr v3, v1

    add-int/lit8 v7, v2, 0x3

    .line 11
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    long-to-int v5, v3

    .line 12
    aput v5, v0, v7

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const/4 v3, 0x4

    .line 14
    invoke-static {v1, v0, v2, v3}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long/2addr v0, p0

    add-int/lit8 v4, p3, 0x0

    .line 1
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v7, v0

    .line 2
    aput v7, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v7, p3, 0x1

    .line 4
    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 5
    aput p0, p2, v7

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 7
    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 8
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    cmp-long p0, p0, v5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 p1, 0x3

    .line 10
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 29

    add-int/lit8 v0, p3, 0x0

    .line 28
    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 29
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 30
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 31
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 32
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    const/4 v14, 0x0

    move v15, v14

    const-wide/16 v16, 0x0

    move/from16 v14, p5

    :goto_0
    const/4 v12, 0x5

    if-ge v15, v12, :cond_0

    add-int v13, p1, v15

    .line 37
    aget v13, p0, v13

    int-to-long v12, v13

    and-long/2addr v12, v2

    mul-long v18, v12, v0

    add-int/lit8 v20, v14, 0x0

    .line 38
    move-wide/from16 v21, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long/2addr v0, v2

    add-long v18, v18, v0

    const-wide/16 v0, 0x0

    add-long v2, v18, v0

    long-to-int v0, v2

    .line 39
    aput v0, p4, v20

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v18, v12, v4

    add-int/lit8 v3, v14, 0x1

    .line 41
    aget v0, p4, v3

    move-wide/from16 v25, v4

    int-to-long v4, v0

    const-wide v23, 0xffffffffL

    and-long v4, v4, v23

    add-long v18, v18, v4

    add-long v1, v1, v18

    long-to-int v0, v1

    .line 42
    aput v0, p4, v3

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long v4, v12, v6

    add-int/lit8 v0, v14, 0x2

    .line 44
    move/from16 v18, v3

    aget v3, p4, v0

    move-wide/from16 v27, v6

    int-to-long v6, v3

    const-wide v23, 0xffffffffL

    and-long v6, v6, v23

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    long-to-int v3, v1

    .line 45
    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long v3, v12, v8

    add-int/lit8 v0, v14, 0x3

    .line 47
    aget v5, p4, v0

    int-to-long v5, v5

    const-wide v23, 0xffffffffL

    and-long v5, v5, v23

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 48
    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long/2addr v12, v10

    add-int/lit8 v0, v14, 0x4

    .line 50
    aget v3, p4, v0

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v12, v3

    add-long/2addr v1, v12

    long-to-int v3, v1

    .line 51
    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v3, 0x5

    add-int/2addr v14, v3

    .line 53
    aget v3, p4, v14

    int-to-long v3, v3

    and-long/2addr v3, v5

    move-wide/from16 v12, v16

    add-long v16, v12, v3

    add-long v1, v1, v16

    long-to-int v3, v1

    .line 54
    aput v3, p4, v14

    ushr-long v16, v1, v0

    add-int/lit8 v15, v15, 0x1

    move-wide v2, v5

    move/from16 v14, v18

    move-wide/from16 v0, v21

    move-wide/from16 v4, v25

    move-wide/from16 v6, v27

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v12, v16

    long-to-int v0, v12

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 28

    .line 1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 2
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .line 3
    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 4
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 5
    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const-wide/16 v15, 0x0

    :goto_0
    const/4 v13, 0x5

    if-ge v0, v13, :cond_0

    .line 10
    aget v13, p0, v0

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v19, v13, v1

    add-int/lit8 v21, v0, 0x0

    .line 11
    move-wide/from16 v22, v1

    aget v1, p2, v21

    int-to-long v1, v1

    and-long/2addr v1, v3

    add-long v19, v19, v1

    const-wide/16 v1, 0x0

    add-long v3, v19, v1

    long-to-int v1, v3

    .line 12
    aput v1, p2, v21

    const/16 v1, 0x20

    ushr-long v2, v3, v1

    mul-long v24, v13, v5

    add-int/lit8 v4, v0, 0x1

    .line 14
    aget v1, p2, v4

    move-wide/from16 v26, v5

    int-to-long v5, v1

    const-wide v17, 0xffffffffL

    and-long v5, v5, v17

    add-long v24, v24, v5

    add-long v2, v2, v24

    long-to-int v1, v2

    .line 15
    aput v1, p2, v4

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    mul-long v5, v13, v7

    add-int/lit8 v1, v0, 0x2

    .line 17
    move/from16 v21, v4

    aget v4, p2, v1

    move-wide/from16 v24, v7

    int-to-long v7, v4

    const-wide v17, 0xffffffffL

    and-long v7, v7, v17

    add-long/2addr v5, v7

    add-long/2addr v2, v5

    long-to-int v4, v2

    .line 18
    aput v4, p2, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    mul-long v4, v13, v9

    add-int/lit8 v1, v0, 0x3

    .line 20
    aget v6, p2, v1

    int-to-long v6, v6

    const-wide v17, 0xffffffffL

    and-long v6, v6, v17

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v4, v2

    .line 21
    aput v4, p2, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    mul-long/2addr v13, v11

    add-int/lit8 v1, v0, 0x4

    .line 23
    aget v4, p2, v1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v13, v4

    add-long/2addr v2, v13

    long-to-int v4, v2

    .line 24
    aput v4, p2, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x5

    .line 26
    aget v1, p2, v0

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    move-wide v13, v15

    add-long v15, v13, v4

    add-long/2addr v2, v15

    long-to-int v1, v2

    .line 27
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v15, v2, v0

    move-wide v3, v6

    move/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v7, v24

    move-wide/from16 v5, v26

    goto/16 :goto_0

    :cond_0
    move-wide v13, v15

    long-to-int v0, v13

    return v0
.end method

.method public static mulWord(I[I[II)I
    .locals 8

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    .line 1
    :cond_0
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    add-int v6, p3, p0

    long-to-int v7, v4

    .line 2
    aput v7, p2, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p0, p0, 0x1

    const/4 v6, 0x5

    if-lt p0, v6, :cond_0

    long-to-int p0, v4

    return p0
.end method

.method public static mulWordAddExt(I[II[II)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p0, p2, 0x0

    .line 1
    aget p0, p1, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 2
    aput v6, p3, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x1

    .line 4
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x1

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 5
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x2

    .line 7
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 8
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x3

    .line 10
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x3

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 11
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x4

    .line 13
    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x4

    aget p1, p3, p4

    int-to-long p1, p1

    and-long/2addr p1, v2

    add-long/2addr v0, p1

    add-long/2addr v4, v0

    long-to-int p1, v4

    .line 14
    aput p1, p3, p4

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static mulWordDwordAdd(IJ[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    .line 1
    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v8, v4

    .line 2
    aput v8, p3, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-int/lit8 p1, p4, 0x1

    .line 4
    aget p2, p3, p1

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    long-to-int p2, v4

    .line 5
    aput p2, p3, p1

    ushr-long p1, v4, p0

    add-int/lit8 v0, p4, 0x2

    .line 7
    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    .line 8
    aput v1, p3, v0

    ushr-long p0, p1, p0

    cmp-long p0, p0, v6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 p1, 0x3

    .line 10
    invoke-static {p0, p3, p4, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulWordsAdd(II[II)I
    .locals 8

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long/2addr p0, v0

    add-int/lit8 v0, p3, 0x0

    .line 1
    aget v1, p2, v0

    int-to-long v4, v1

    and-long/2addr v4, v2

    add-long/2addr p0, v4

    const-wide/16 v4, 0x0

    add-long/2addr p0, v4

    long-to-int v1, p0

    .line 2
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    add-int/lit8 v1, p3, 0x1

    .line 4
    aget v6, p2, v1

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr p0, v2

    long-to-int v2, p0

    .line 5
    aput v2, p2, v1

    ushr-long/2addr p0, v0

    cmp-long p0, p0, v4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 p1, 0x2

    .line 7
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static square([II[II)V
    .locals 32

    add-int/lit8 v0, p1, 0x0

    .line 92
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x4

    :goto_0
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    .line 100
    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    mul-long/2addr v9, v9

    add-int/lit8 v6, v6, -0x1

    add-int v7, p3, v6

    shl-int/lit8 v5, v5, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v12, v12

    or-int/2addr v5, v12

    .line 102
    aput v5, p2, v7

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v12, v12

    .line 103
    aput v12, p2, v5

    long-to-int v5, v9

    if-gtz v8, :cond_0

    mul-long v8, v0, v0

    shl-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    and-long/2addr v5, v2

    ushr-long v10, v8, v11

    or-long/2addr v5, v10

    add-int/lit8 v10, p3, 0x0

    long-to-int v11, v8

    .line 111
    aput v11, p2, v10

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    and-int/2addr v8, v7

    add-int/lit8 v9, p1, 0x1

    .line 116
    aget v9, p0, v9

    int-to-long v11, v9

    and-long/2addr v11, v2

    add-int/lit8 v9, p3, 0x2

    .line 117
    aget v13, p2, v9

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v11, v0

    add-long/2addr v5, v15

    long-to-int v15, v5

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v8, v17, v8

    .line 122
    aput v8, p2, v16

    ushr-int/lit8 v8, v15, 0x1f

    ushr-long/2addr v5, v10

    add-long/2addr v13, v5

    add-int/lit8 v5, p1, 0x2

    .line 127
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v15, p3, 0x3

    .line 128
    aget v7, p2, v15

    move-wide/from16 v18, v11

    int-to-long v10, v7

    and-long/2addr v10, v2

    add-int/lit8 v7, p3, 0x4

    .line 129
    aget v12, p2, v7

    move-wide/from16 v20, v10

    int-to-long v10, v12

    and-long/2addr v10, v2

    mul-long v22, v5, v0

    add-long v13, v13, v22

    long-to-int v12, v13

    shl-int/lit8 v22, v12, 0x1

    or-int v8, v22, v8

    .line 133
    aput v8, p2, v9

    ushr-int/lit8 v8, v12, 0x1f

    const/16 v9, 0x20

    ushr-long v12, v13, v9

    mul-long v22, v5, v18

    add-long v12, v12, v22

    add-long v12, v20, v12

    ushr-long v20, v12, v9

    add-long v10, v10, v20

    and-long/2addr v12, v2

    add-int/lit8 v9, p1, 0x3

    .line 140
    aget v9, p0, v9

    move-wide/from16 v20, v5

    int-to-long v4, v9

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    .line 141
    aget v9, p2, v6

    move/from16 v22, v15

    int-to-long v14, v9

    and-long/2addr v14, v2

    const/16 v9, 0x20

    ushr-long v24, v10, v9

    add-long v14, v14, v24

    and-long/2addr v10, v2

    add-int/lit8 v24, p3, 0x6

    .line 142
    aget v9, p2, v24

    move/from16 v26, v6

    move/from16 v25, v7

    int-to-long v6, v9

    and-long/2addr v6, v2

    const/16 v9, 0x20

    ushr-long v27, v14, v9

    add-long v6, v6, v27

    and-long/2addr v14, v2

    mul-long v27, v4, v0

    add-long v12, v12, v27

    long-to-int v9, v12

    shl-int/lit8 v27, v9, 0x1

    or-int v8, v27, v8

    .line 146
    aput v8, p2, v22

    ushr-int/lit8 v8, v9, 0x1f

    const/16 v9, 0x20

    ushr-long/2addr v12, v9

    mul-long v27, v4, v18

    add-long v12, v12, v27

    add-long/2addr v10, v12

    ushr-long v12, v10, v9

    mul-long v27, v4, v20

    add-long v12, v12, v27

    add-long/2addr v14, v12

    and-long/2addr v10, v2

    ushr-long v12, v14, v9

    add-long/2addr v6, v12

    and-long v12, v14, v2

    const/4 v9, 0x4

    add-int/lit8 v9, p1, 0x4

    .line 155
    aget v9, p0, v9

    int-to-long v14, v9

    and-long/2addr v14, v2

    add-int/lit8 v9, p3, 0x7

    .line 156
    move-wide/from16 v22, v4

    aget v4, p2, v9

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v17, 0x20

    ushr-long v27, v6, v17

    add-long v4, v4, v27

    and-long/2addr v6, v2

    add-int/lit8 v27, p3, 0x8

    .line 157
    move/from16 p0, v9

    aget v9, p2, v27

    move-wide/from16 v28, v6

    int-to-long v6, v9

    and-long/2addr v6, v2

    ushr-long v30, v4, v17

    add-long v6, v6, v30

    and-long/2addr v2, v4

    mul-long/2addr v0, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v8

    .line 161
    aput v1, p2, v25

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v10, v1

    mul-long v8, v14, v18

    add-long/2addr v4, v8

    add-long/2addr v12, v4

    ushr-long v4, v12, v1

    mul-long v8, v14, v20

    add-long/2addr v4, v8

    add-long v4, v28, v4

    ushr-long v8, v4, v1

    mul-long v14, v14, v22

    add-long/2addr v8, v14

    add-long/2addr v2, v8

    ushr-long v8, v2, v1

    add-long/2addr v6, v8

    long-to-int v1, v12

    shl-int/lit8 v8, v1, 0x1

    or-int/2addr v0, v8

    .line 170
    aput v0, p2, v26

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v4

    shl-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    .line 173
    aput v0, p2, v24

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v2

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 176
    aput v0, p2, p0

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v6

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 179
    aput v0, p2, v27

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0x9

    .line 181
    aget v2, p2, v1

    const/16 v3, 0x20

    ushr-long v3, v6, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 182
    aput v0, p2, v1

    return-void

    :cond_0
    const/4 v9, 0x4

    move v7, v8

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 32

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v8, v0

    move v7, v5

    :goto_0
    add-int/lit8 v9, v7, -0x1

    .line 9
    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v7, v8, 0x1f

    const/16 v8, 0x21

    ushr-long v12, v10, v8

    long-to-int v12, v12

    or-int/2addr v7, v12

    .line 11
    aput v7, p1, v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v10, v7

    long-to-int v12, v12

    .line 12
    aput v12, p1, v6

    long-to-int v10, v10

    if-gtz v9, :cond_0

    mul-long v11, v1, v1

    shl-int/lit8 v6, v10, 0x1f

    int-to-long v9, v6

    and-long/2addr v9, v3

    ushr-long v13, v11, v8

    or-long v8, v9, v13

    long-to-int v6, v11

    .line 20
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v10, v11, v0

    long-to-int v6, v10

    and-int/2addr v6, v7

    .line 25
    aget v10, p0, v7

    int-to-long v10, v10

    and-long/2addr v10, v3

    .line 26
    const/4 v12, 0x2

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v10, v1

    add-long/2addr v8, v15

    long-to-int v15, v8

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 31
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v8, v0

    add-long/2addr v13, v8

    .line 36
    aget v8, p0, v12

    int-to-long v8, v8

    and-long/2addr v8, v3

    .line 37
    const/4 v15, 0x3

    aget v7, p1, v15

    move-wide/from16 v18, v13

    int-to-long v12, v7

    and-long/2addr v12, v3

    .line 38
    aget v7, p1, v5

    move/from16 v20, v6

    int-to-long v5, v7

    and-long/2addr v5, v3

    mul-long v21, v8, v1

    add-long v14, v18, v21

    long-to-int v7, v14

    shl-int/lit8 v19, v7, 0x1

    or-int v19, v19, v20

    .line 42
    const/16 v17, 0x2

    aput v19, p1, v17

    ushr-int/lit8 v17, v7, 0x1f

    ushr-long/2addr v14, v0

    mul-long v19, v8, v10

    add-long v14, v14, v19

    add-long/2addr v12, v14

    ushr-long v14, v12, v0

    add-long/2addr v5, v14

    and-long/2addr v12, v3

    .line 49
    const/4 v7, 0x3

    aget v14, p0, v7

    int-to-long v14, v14

    and-long v18, v14, v3

    .line 50
    const/4 v15, 0x5

    aget v14, p1, v15

    move-wide/from16 v20, v8

    int-to-long v7, v14

    and-long/2addr v7, v3

    ushr-long v23, v5, v0

    add-long v7, v7, v23

    and-long/2addr v5, v3

    .line 51
    const/16 v22, 0x6

    aget v14, p1, v22

    move-wide/from16 v23, v10

    int-to-long v9, v14

    and-long/2addr v9, v3

    ushr-long v25, v7, v0

    add-long v9, v9, v25

    and-long/2addr v7, v3

    mul-long v25, v18, v1

    add-long v12, v12, v25

    long-to-int v14, v12

    shl-int/lit8 v25, v14, 0x1

    or-int v17, v25, v17

    .line 55
    const/4 v11, 0x3

    aput v17, p1, v11

    ushr-int/lit8 v11, v14, 0x1f

    ushr-long/2addr v12, v0

    mul-long v25, v18, v23

    add-long v12, v12, v25

    add-long/2addr v5, v12

    ushr-long v12, v5, v0

    mul-long v25, v18, v20

    add-long v12, v12, v25

    add-long/2addr v7, v12

    and-long/2addr v5, v3

    ushr-long v12, v7, v0

    add-long/2addr v9, v12

    and-long/2addr v7, v3

    .line 64
    const/4 v12, 0x4

    aget v13, p0, v12

    int-to-long v12, v13

    and-long/2addr v12, v3

    .line 65
    const/16 v17, 0x7

    aget v14, p1, v17

    int-to-long v14, v14

    and-long/2addr v14, v3

    ushr-long v26, v9, v0

    add-long v14, v14, v26

    and-long/2addr v9, v3

    .line 66
    const/16 v26, 0x8

    aget v0, p1, v26

    move-wide/from16 v28, v9

    int-to-long v9, v0

    and-long/2addr v9, v3

    const/16 v0, 0x20

    ushr-long v30, v14, v0

    add-long v9, v9, v30

    and-long/2addr v3, v14

    mul-long/2addr v1, v12

    add-long/2addr v5, v1

    long-to-int v0, v5

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v11

    .line 70
    const/4 v11, 0x4

    aput v1, p1, v11

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    mul-long v14, v12, v23

    add-long/2addr v5, v14

    add-long/2addr v7, v5

    ushr-long v5, v7, v1

    mul-long v14, v12, v20

    add-long/2addr v5, v14

    add-long v5, v28, v5

    ushr-long v14, v5, v1

    mul-long v12, v12, v18

    add-long/2addr v14, v12

    add-long/2addr v3, v14

    ushr-long v11, v3, v1

    add-long/2addr v9, v11

    long-to-int v1, v7

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 79
    const/4 v2, 0x5

    aput v0, p1, v2

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 82
    aput v0, p1, v22

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 85
    aput v0, p1, v17

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v9

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 88
    aput v0, p1, v26

    ushr-int/lit8 v0, v1, 0x1f

    .line 90
    const/16 v1, 0x9

    aget v2, p1, v1

    const/16 v3, 0x20

    ushr-long v3, v9, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 91
    aput v0, p1, v1

    return-void

    :cond_0
    move v11, v5

    move v7, v9

    move v8, v10

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    .line 15
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    .line 16
    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 18
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 19
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 21
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 22
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 24
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 25
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x4

    .line 27
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x4

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x4

    long-to-int p0, v0

    .line 28
    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static sub([I[I[I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 2
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 4
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 5
    aput v6, p2, v5

    shr-long/2addr v1, v0

    .line 7
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 8
    aput v6, p2, v5

    shr-long/2addr v1, v0

    .line 10
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 11
    aput v6, p2, v5

    shr-long/2addr v1, v0

    .line 13
    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 14
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subBothFrom([I[I[I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 2
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 4
    const/4 v5, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 5
    aput v6, p2, v5

    shr-long/2addr v1, v0

    .line 7
    const/4 v5, 0x2

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 8
    aput v6, p2, v5

    shr-long/2addr v1, v0

    .line 10
    const/4 v5, 0x3

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 11
    aput v6, p2, v5

    shr-long/2addr v1, v0

    .line 13
    const/4 v5, 0x4

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 14
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([II[II)I
    .locals 10

    add-int/lit8 v0, p3, 0x0

    .line 15
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 16
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x1

    .line 18
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 19
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x2

    .line 21
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x2

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 22
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x3

    .line 24
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x3

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 25
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 p3, p3, 0x4

    .line 27
    aget v5, p2, p3

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v5, p0

    add-long/2addr v1, v5

    long-to-int p0, v1

    .line 28
    aput p0, p2, p3

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 2
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 4
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 5
    aput v6, p1, v5

    shr-long/2addr v1, v0

    .line 7
    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 8
    aput v6, p1, v5

    shr-long/2addr v1, v0

    .line 10
    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 11
    aput v6, p1, v5

    shr-long/2addr v1, v0

    .line 13
    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 14
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    .line 1
    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x4

    shl-int/lit8 v3, v3, 0x2

    .line 7
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 2
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 3
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 4
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 5
    const/4 v1, 0x4

    aput v0, p0, v1

    return-void
.end method
