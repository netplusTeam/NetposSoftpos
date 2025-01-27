.class public final Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;
.source "IntegerFunctions.java"


# static fields
.field private static final FOUR:Ljava/math/BigInteger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES:[I

.field private static final SMALL_PRIME_PRODUCT:J = 0x8a5b6470af95L

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final jacobiTable:[I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 3
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 5
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 7
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 4

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return-object v0

    .line 9
    :cond_0
    sget-object p0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_1
    ushr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_2

    sub-int p1, p0, p1

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_3

    add-int/lit8 v2, v1, -0x1

    sub-int v2, p0, v2

    int-to-long v2, v2

    .line 20
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, v1

    .line 21
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static bitCount(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static ceilLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static ceilLog(Ljava/math/BigInteger;)I
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static ceilLog256(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    neg-int p0, p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static ceilLog256(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez v2, :cond_1

    neg-long p0, p0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    cmp-long v3, p0, v0

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    ushr-long/2addr p0, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    nop

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static divideAndRound([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    .line 10
    array-length v0, p0

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 13
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static extGCD(II)[I
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    .line 4
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 5
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, p1, v0

    .line 6
    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, p1, v0

    .line 7
    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    aput p0, p1, v0

    return-object p1
.end method

.method public static extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 9

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 2
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v5, p0

    move-object v2, p1

    .line 8
    :goto_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v5

    .line 11
    aget-object v6, v5, v4

    .line 12
    aget-object v5, v5, v3

    .line 13
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object p0, v5

    :cond_1
    const/4 p1, 0x3

    .line 21
    new-array p1, p1, [Ljava/math/BigInteger;

    aput-object p0, p1, v4

    aput-object v0, p1, v3

    const/4 p0, 0x2

    aput-object v1, p1, p0

    return-object p1
.end method

.method public static floatPow(FI)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-lez p1, :cond_0

    mul-float/2addr v0, p0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static floorLog(I)I
    .locals 1

    if-gtz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static floorLog(Ljava/math/BigInteger;)I
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    const/4 v1, -0x1

    .line 2
    :goto_0
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static gcd(II)I
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static intRoot(II)F
    .locals 7

    .line 1
    div-int v0, p0, p1

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_0
    sub-float v2, v1, v0

    .line 4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 6
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v2

    .line 7
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_0

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 10
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v2

    goto :goto_1

    :cond_0
    int-to-float v1, p0

    sub-float/2addr v2, v1

    int-to-float v1, p1

    add-int/lit8 v3, p1, -0x1

    .line 14
    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v2, v1

    sub-float v1, v0, v2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static integerToOctets(Ljava/math/BigInteger;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    new-array v1, p0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static isIncreasing([I)Z
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 3
    aget v3, p0, v2

    aget v4, p0, v1

    if-lt v3, v4, :cond_0

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, p0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " = a["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isPower(II)I
    .locals 3

    const/4 v0, -0x1

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p0, v2, :cond_2

    .line 1
    rem-int v2, p0, p1

    if-eqz v2, :cond_1

    return v0

    .line 5
    :cond_1
    div-int/2addr p0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isPrime(I)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2a

    if-ge p0, v0, :cond_4

    move v0, v1

    .line 1
    :goto_0
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 3
    aget v3, v3, v0

    if-ne p0, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 10
    rem-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x5

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0xb

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0xd

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x11

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x13

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x17

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x1d

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x1f

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x25

    if-eqz v0, :cond_6

    rem-int/lit8 v0, p0, 0x29

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    int-to-long v0, p0

    .line 18
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v1
.end method

.method public static jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 9

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    .line 4
    sget-object p1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    nop

    .line 7
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ne v2, v3, :cond_2

    const-wide/16 v4, -0x1

    :cond_2
    :goto_0
    nop

    .line 25
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_3
    nop

    .line 31
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    aget v0, v0, v2

    int-to-long v2, v0

    mul-long/2addr v4, v2

    .line 36
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_6

    .line 38
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_5

    neg-long v4, v4

    .line 42
    :cond_5
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    .line 46
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    :goto_2
    nop

    .line 49
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 51
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 52
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_2

    :cond_7
    nop

    .line 54
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    aget v0, v0, v3

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 59
    :cond_8
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_9

    .line 65
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_a

    neg-long v3, v4

    move-wide v4, v3

    goto :goto_3

    :cond_9
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    .line 70
    :cond_a
    :goto_3
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_1

    .line 73
    :cond_b
    sget-object p0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    long-to-int v1, v4

    :cond_c
    return v1
.end method

.method public static leastCommonMultiple([Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 6
    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static leastDiv(I)I
    .locals 2

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 v0, 0x3

    .line 1
    :goto_0
    div-int v1, p0, v0

    if-gt v0, v1, :cond_4

    .line 3
    rem-int v1, p0, v0

    if-nez v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return p0
.end method

.method public static maxPower(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static mod(JJ)J
    .locals 2

    .line 1
    rem-long/2addr p0, p2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    add-long/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method public static modInverse(II)I
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static modInverse(JJ)J
    .locals 0

    .line 3
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static modPow(III)I
    .locals 3

    if-lez p2, :cond_3

    mul-int v0, p2, p2

    const v1, 0x7fffffff

    if-gt v0, v1, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    rem-int/2addr p0, p2

    add-int/2addr p0, p2

    rem-int/2addr p0, p2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-lez p1, :cond_2

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_1

    mul-int/2addr v1, p0

    .line 6
    rem-int/2addr v1, p2

    :cond_1
    mul-int/2addr p0, p0

    .line 8
    rem-int/2addr p0, p2

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static nextPrime(J)Ljava/math/BigInteger;
    .locals 16

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    const-wide/16 v3, 0x2

    if-gtz v2, :cond_0

    .line 1
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    cmp-long v2, p0, v3

    const-wide/16 v5, 0x3

    if-nez v2, :cond_1

    .line 5
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    add-long v7, p0, v0

    and-long v0, p0, v0

    add-long/2addr v7, v0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v9, v0

    :goto_0
    const/4 v11, 0x1

    shl-long v12, p0, v11

    cmp-long v12, v7, v12

    if-gtz v12, :cond_5

    if-nez v2, :cond_5

    move-wide v12, v5

    :goto_1
    shr-long v14, v7, v11

    cmp-long v14, v12, v14

    if-gtz v14, :cond_3

    if-nez v2, :cond_3

    .line 12
    rem-long v14, v7, v12

    cmp-long v14, v14, v0

    if-nez v14, :cond_2

    move v2, v11

    :cond_2
    add-long/2addr v12, v3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-wide v9, v7

    :goto_2
    xor-int/lit8 v2, v2, 0x1

    add-long/2addr v7, v3

    goto :goto_0

    .line 27
    :cond_5
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 47
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    const-wide v0, 0x8a5b6470af95L

    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    .line 23
    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x5

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x7

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0xb

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0xd

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x11

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x13

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x17

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1d

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1f

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x25

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x29

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 28
    :cond_2
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    return-object p0

    .line 40
    :cond_4
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p0

    .line 45
    :cond_5
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 46
    :cond_6
    :goto_1
    sget-object p0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static nextSmallerPrime(I)I
    .locals 2

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 p0, p0, -0x2

    :goto_1
    if-le p0, v1, :cond_3

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return p0
.end method

.method public static octetsToInteger([B)Ljava/math/BigInteger;
    .locals 2

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->octetsToInteger([BII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static octetsToInteger([BII)Ljava/math/BigInteger;
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 1
    new-array v0, v0, [B

    .line 3
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 4
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static order(II)I
    .locals 3

    .line 1
    rem-int v0, p0, p1

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eq v0, v1, :cond_1

    mul-int/2addr v0, p0

    .line 15
    rem-int/2addr v0, p1

    if-gez v0, :cond_0

    add-int/2addr v0, p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not an element of Z/("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "Z)^*; it is not meaningful to compute its order."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static passesSmallPrimeTest(Ljava/math/BigInteger;)Z
    .locals 6

    .line 1
    const/16 v0, 0xef

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 25
    aget v4, v1, v3

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
        0x407
        0x409
        0x40f
        0x419
        0x41b
        0x425
        0x427
        0x42d
        0x43f
        0x443
        0x445
        0x449
        0x44f
        0x455
        0x45d
        0x463
        0x469
        0x47f
        0x481
        0x48b
        0x493
        0x49d
        0x4a3
        0x4a9
        0x4b1
        0x4bd
        0x4c1
        0x4c7
        0x4cd
        0x4cf
        0x4d5
        0x4e1
        0x4eb
        0x4fd
        0x4ff
        0x503
        0x509
        0x50b
        0x511
        0x515
        0x517
        0x51b
        0x527
        0x529
        0x52f
        0x551
        0x557
        0x55d
        0x565
        0x577
        0x581
        0x58f
        0x593    # 2.0E-42f
        0x595
        0x599
        0x59f
        0x5a7
        0x5ab
        0x5ad
        0x5b3
        0x5bf
        0x5c9
        0x5cb
        0x5cf
        0x5d1
        0x5d5
        0x5db
    .end array-data
.end method

.method public static pow(II)I
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-lez p1, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_0

    mul-int/2addr v1, p0

    :cond_0
    mul-int/2addr p0, p0

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static pow(JI)J
    .locals 4

    const-wide/16 v0, 0x1

    :goto_0
    if-lez p2, :cond_1

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    mul-long/2addr v0, p0

    :cond_0
    mul-long/2addr p0, p0

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static randomize(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 5
    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    .line 6
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    if-nez p1, :cond_1

    .line 11
    sget-object p1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_3

    .line 16
    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static reduceInto(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static ressol(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 11
    :cond_1
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    .line 17
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    const-string v4, ", "

    const-string v5, "No quadratic residue: "

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 21
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    .line 22
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 23
    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 26
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_4
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    nop

    .line 36
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    const-wide/16 v12, 0x1

    if-nez v11, :cond_5

    add-long/2addr v9, v12

    .line 39
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 42
    :cond_5
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 48
    invoke-virtual {v11, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 49
    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 50
    invoke-virtual {v11, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 52
    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v11

    .line 58
    :cond_6
    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 59
    :goto_1
    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v15

    if-ne v15, v6, :cond_7

    .line 62
    sget-object v15, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_7
    sget-object v15, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 67
    sget-object v15, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 71
    :goto_2
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ne v3, v6, :cond_b

    move-wide v15, v7

    move-object v3, v14

    .line 77
    :goto_3
    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 79
    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-long/2addr v15, v12

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    sub-long/2addr v9, v15

    cmp-long v3, v9, v7

    if-eqz v3, :cond_a

    move-wide/from16 v17, v7

    :goto_4
    sub-long v19, v9, v12

    cmp-long v3, v17, v19

    if-gez v3, :cond_9

    .line 92
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    add-long v17, v17, v12

    goto :goto_4

    .line 94
    :cond_9
    const/4 v3, 0x1

    invoke-virtual {v1, v6, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 95
    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 96
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 97
    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move v6, v3

    move-wide v9, v15

    goto :goto_2

    .line 98
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    return-object v11
.end method

.method public static squareRoot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 14
    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v1

    move-object v1, v0

    :goto_0
    if-lez v2, :cond_3

    .line 20
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    .line 21
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 23
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    .line 24
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 28
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 31
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 32
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot extract root of negative number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
