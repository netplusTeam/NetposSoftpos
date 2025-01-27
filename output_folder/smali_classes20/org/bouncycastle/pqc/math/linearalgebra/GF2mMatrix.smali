.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
.source "GF2mMatrix.java"


# instance fields
.field protected field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field protected matrix:[[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-le v4, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 14
    :cond_0
    array-length p1, p2

    const/4 v4, 0x5

    const-string v5, " Error: given array is not encoded matrix over GF(2^m)"

    if-lt p1, v4, :cond_6

    const/4 p1, 0x3

    .line 20
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/4 v4, 0x2

    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr p1, v6

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v0, v6, 0x8

    xor-int/2addr p1, v0

    const/4 v0, 0x0

    aget-byte v6, p2, v0

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr p1, v6

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    mul-int/2addr v3, p1

    if-lez p1, :cond_5

    .line 25
    array-length v6, p2

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    rem-int/2addr v6, v3

    if-nez v6, :cond_5

    .line 31
    array-length v6, p2

    sub-int/2addr v6, v7

    div-int/2addr v6, v3

    iput v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    .line 33
    new-array v3, v4, [I

    aput v6, v3, v1

    aput p1, v3, v0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    move p1, v0

    .line 35
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge p1, v1, :cond_4

    move v1, v0

    .line 37
    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ge v1, v3, :cond_3

    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_1

    .line 41
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, p1

    aget v6, v4, v1

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v3

    xor-int/2addr v6, v7

    aput v6, v4, v1

    add-int/lit8 v3, v3, 0x8

    move v7, v8

    goto :goto_3

    .line 43
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 46
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[[I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    .line 58
    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 59
    array-length p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    .line 60
    const/4 p1, 0x0

    aget-object p1, p2, p1

    array-length p1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 49
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    .line 50
    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    .line 51
    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    .line 52
    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    const/4 v0, 0x0

    .line 53
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addToRow([I[I)V
    .locals 4

    .line 1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private multRowWithElement([II)[I
    .locals 4

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    .line 2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 4
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget v3, p1, v1

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private multRowWithElementThis([II)V
    .locals 3

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static swapColumns([[III)V
    .locals 2

    .line 1
    aget-object v0, p0, p1

    .line 2
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 3
    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 10

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_9

    .line 7
    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v6

    aput-object v6, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    new-array v1, v1, [I

    aput v0, v1, v4

    aput v0, v1, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_1

    .line 17
    aget-object v6, v1, v0

    aput v4, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v0, v5

    .line 22
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, v6, :cond_8

    .line 25
    aget-object v6, v3, v0

    aget v6, v6, v0

    if-nez v6, :cond_5

    add-int/lit8 v6, v0, 0x1

    move v7, v5

    .line 29
    :goto_3
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v6, v8, :cond_3

    .line 31
    aget-object v8, v3, v6

    aget v8, v8, v0

    if-eqz v8, :cond_2

    .line 35
    invoke-static {v3, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    .line 36
    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    .line 38
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    move v7, v4

    :cond_2
    add-int/2addr v6, v4

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_4

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_5
    :goto_4
    aget-object v6, v3, v0

    aget v6, v6, v0

    .line 52
    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v6

    .line 53
    aget-object v7, v3, v0

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    .line 54
    aget-object v7, v1, v0

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    move v6, v5

    .line 57
    :goto_5
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v6, v7, :cond_7

    if-eq v6, v0, :cond_6

    .line 61
    aget-object v7, v3, v6

    aget v7, v7, v0

    if-eqz v7, :cond_6

    .line 64
    aget-object v8, v3, v0

    invoke-direct {p0, v8, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v8

    .line 65
    aget-object v9, v1, v0

    invoke-direct {p0, v9, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v7

    .line 66
    aget-object v9, v3, v6

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    .line 67
    aget-object v8, v1, v6

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_8
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[[I)V

    return-object v0

    .line 74
    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;

    if-nez v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ne v1, v2, :cond_5

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 15
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v2, :cond_4

    move v2, v0

    .line 17
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ge v2, v3, :cond_3

    .line 19
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0
.end method

.method public getEncoded()[B
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v3

    if-le v3, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 7
    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v2

    const/4 v2, 0x4

    add-int/2addr v4, v2

    new-array v4, v4, [B

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    .line 8
    const/4 v6, 0x0

    aput-byte v5, v4, v6

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 9
    aput-byte v5, v4, v1

    ushr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x2

    .line 10
    aput-byte v1, v4, v5

    ushr-int/lit8 v1, v3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x3

    .line 11
    aput-byte v1, v4, v3

    move v1, v6

    .line 14
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v3, :cond_3

    move v3, v6

    .line 16
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ge v3, v5, :cond_2

    move v5, v6

    :goto_3
    if-ge v5, v0, :cond_1

    add-int/lit8 v7, v2, 0x1

    .line 20
    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v8, v8, v1

    aget v8, v8, v3

    ushr-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    add-int/lit8 v5, v5, 0x8

    move v2, v7

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 4
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ge v3, v4, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isZero()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 3
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 1

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Matrix over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    .line 2
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 6
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    if-ge v3, v4, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
