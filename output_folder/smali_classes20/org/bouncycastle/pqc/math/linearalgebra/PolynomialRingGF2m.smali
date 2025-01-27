.class public Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;
.super Ljava/lang/Object;
.source "PolynomialRingGF2m.java"


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field protected sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field protected sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    .line 3
    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->computeSquaringMatrix()V

    .line 5
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->computeSquareRootMatrix()V

    return-void
.end method

.method private computeSquareRootMatrix()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v0

    .line 4
    new-array v1, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    add-int/lit8 v2, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_0

    .line 7
    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 11
    :cond_0
    new-array v3, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    :goto_1
    if-ltz v2, :cond_1

    .line 14
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_8

    .line 22
    aget-object v4, v1, v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    move v5, v2

    :goto_3
    if-ge v4, v0, :cond_3

    .line 28
    aget-object v6, v1, v4

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 32
    invoke-static {v1, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->swapColumns([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V

    .line 33
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-static {v5, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->swapColumns([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V

    move v4, v0

    move v5, v7

    :cond_2
    add-int/2addr v4, v7

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    goto :goto_4

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Squaring matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_5
    :goto_4
    aget-object v4, v1, v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v4

    .line 50
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    .line 51
    aget-object v5, v1, v3

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multThisWithElement(I)V

    .line 52
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multThisWithElement(I)V

    move v4, v2

    :goto_5
    if-ge v4, v0, :cond_7

    if-eq v4, v3, :cond_6

    .line 59
    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 62
    aget-object v6, v1, v3

    .line 63
    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    .line 64
    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v7, v7, v3

    .line 65
    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 66
    aget-object v7, v1, v4

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 67
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private computeSquaringMatrix()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v0

    .line 2
    new-array v1, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 v1, 0x0

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 5
    new-array v4, v4, [I

    .line 6
    aput v3, v4, v2

    .line 7
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v3, v5, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 11
    new-array v4, v4, [I

    .line 12
    aput v3, v4, v1

    .line 13
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v5, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    .line 15
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static swapColumns([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V
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
.method public getSquareRootMatrix()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSquaringMatrix()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method
