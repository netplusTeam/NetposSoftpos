.class public Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;
.source "LongPolynomial2.java"


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v0, v2, :cond_3

    .line 7
    iget-object v2, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    :goto_1
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 12
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    const-wide/16 v4, 0x0

    if-ge v3, v2, :cond_1

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v6, v3, 0x1

    aget v2, v2, v3

    int-to-long v2, v2

    move-wide v10, v2

    move v3, v6

    move-wide v6, v10

    goto :goto_2

    :cond_1
    move-wide v6, v4

    :goto_2
    cmp-long v2, v6, v4

    if-gez v2, :cond_2

    const-wide/16 v8, 0x800

    add-long/2addr v6, v8

    goto :goto_2

    .line 17
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>([J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method private add(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 3
    array-length v0, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    aget-wide v5, v1, v0

    add-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private multRecursive(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 2
    move-object/from16 v2, p1

    iget-object v2, v2, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 4
    array-length v3, v2

    const-wide v4, 0x7ff0007ffL

    const/4 v6, 0x0

    const/16 v7, 0x20

    if-gt v3, v7, :cond_2

    mul-int/lit8 v7, v3, 0x2

    .line 8
    new-instance v8, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    new-array v9, v7, [J

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    move v9, v6

    :goto_0
    if-ge v9, v7, :cond_1

    sub-int v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    .line 11
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_1
    add-int/lit8 v11, v3, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-gt v10, v11, :cond_0

    sub-int v11, v9, v10

    .line 13
    aget-wide v11, v1, v11

    aget-wide v13, v2, v10

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x7ff

    and-long v15, v11, v13

    const-wide v17, 0x7ff000000L

    add-long v15, v15, v17

    and-long/2addr v15, v11

    const/16 v17, 0x30

    ushr-long v11, v11, v17

    and-long/2addr v11, v13

    .line 17
    iget-object v13, v8, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v17, v13, v9

    add-long v17, v17, v15

    and-long v14, v17, v4

    aput-wide v14, v13, v9

    add-int/lit8 v14, v9, 0x1

    .line 18
    aget-wide v15, v13, v14

    add-long/2addr v15, v11

    and-long v11, v15, v4

    aput-wide v11, v13, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-object v8

    :cond_2
    nop

    .line 25
    div-int/lit8 v7, v3, 0x2

    .line 27
    new-instance v8, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 28
    new-instance v9, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v1, v7, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 29
    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v2, v7}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 30
    new-instance v10, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v2, v7, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 32
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 33
    invoke-direct {v2, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 34
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 35
    invoke-direct {v11, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 37
    invoke-direct {v8, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v1

    .line 38
    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v8

    .line 39
    invoke-direct {v2, v11}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v2

    .line 40
    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 41
    invoke-direct {v2, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 43
    new-instance v9, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v9, v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    move v3, v6

    .line 44
    :goto_2
    iget-object v10, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v11, v10

    if-ge v3, v11, :cond_3

    .line 46
    iget-object v11, v9, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v12, v10, v3

    and-long/2addr v12, v4

    aput-wide v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v1, v6

    .line 48
    :goto_3
    iget-object v3, v2, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v10, v3

    if-ge v1, v10, :cond_4

    .line 50
    iget-object v10, v9, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v11, v7, v1

    aget-wide v12, v10, v11

    aget-wide v14, v3, v1

    add-long/2addr v12, v14

    and-long/2addr v12, v4

    aput-wide v12, v10, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 52
    :goto_4
    iget-object v1, v8, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v1

    if-ge v6, v2, :cond_5

    .line 54
    iget-object v2, v9, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v3, v7, 0x2

    add-int/2addr v3, v6

    aget-wide v10, v2, v3

    aget-wide v12, v1, v6

    add-long/2addr v10, v12

    and-long/2addr v10, v4

    aput-wide v10, v2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    return-object v9
.end method

.method private sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 3
    array-length v0, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    const-wide v5, 0x800000800000L

    add-long/2addr v3, v5

    aget-wide v5, v1, v0

    sub-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 2
    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v1, v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    check-cast p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([J[J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    .line 2
    iget-object v1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ne v1, v0, :cond_4

    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ne v1, v2, :cond_4

    .line 7
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object p1

    .line 9
    iget-object v1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v1, v0, :cond_3

    .line 11
    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    rem-int/lit8 v1, v1, 0x2

    const-wide v2, 0x7ff0007ffL

    if-nez v1, :cond_1

    move v1, v0

    .line 13
    :goto_0
    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v4

    if-ge v1, v5, :cond_0

    sub-int v5, v1, v0

    .line 15
    aget-wide v6, v4, v5

    aget-wide v8, v4, v1

    add-long/2addr v6, v8

    and-long/2addr v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    goto :goto_2

    :cond_1
    move v1, v0

    .line 21
    :goto_1
    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v4

    const-wide/16 v6, 0x7ff

    if-ge v1, v5, :cond_2

    sub-int v5, v1, v0

    .line 23
    aget-wide v8, v4, v5

    add-int/lit8 v10, v1, -0x1

    aget-wide v10, v4, v10

    const/16 v12, 0x18

    shr-long/2addr v10, v12

    add-long/2addr v8, v10

    aput-wide v8, v4, v5

    .line 24
    aget-wide v10, v4, v1

    and-long/2addr v6, v10

    shl-long/2addr v6, v12

    add-long/2addr v8, v6

    aput-wide v8, v4, v5

    and-long v6, v8, v2

    .line 25
    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_2
    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 28
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    and-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 32
    :cond_3
    :goto_2
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 33
    iget p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput p1, v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0

    .line 34
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mult2And(I)V
    .locals 6

    int-to-long v0, p1

    const/16 p1, 0x18

    shl-long v2, v0, p1

    add-long/2addr v2, v0

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-wide v4, v0, p1

    const/4 v1, 0x1

    shl-long/2addr v4, v1

    and-long/2addr v4, v2

    aput-wide v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subAnd(Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;I)V
    .locals 8

    int-to-long v0, p2

    const/16 p2, 0x18

    shl-long v2, v0, p2

    add-long/2addr v2, v0

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object v0, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v1, p2

    const-wide v6, 0x800000800000L

    add-long/2addr v4, v6

    aget-wide v6, v0, p2

    sub-long/2addr v4, v6

    and-long/2addr v4, v2

    aput-wide v4, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 11

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v3

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget-wide v5, v3, v1

    const-wide/16 v7, 0x7ff

    and-long v9, v5, v7

    long-to-int v3, v9

    aput v3, v0, v2

    .line 6
    iget v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v4, v2, :cond_0

    add-int/lit8 v2, v4, 0x1

    const/16 v3, 0x18

    shr-long/2addr v5, v3

    and-long/2addr v5, v7

    long-to-int v3, v5

    .line 8
    aput v3, v0, v4

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v1
.end method
