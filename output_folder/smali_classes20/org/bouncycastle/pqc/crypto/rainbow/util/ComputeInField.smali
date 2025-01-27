.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;
.source "ComputeInField.java"


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeZerosAbove()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 5
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v2, v1

    aget-short v3, v3, v0

    .line 6
    aget-object v2, v2, v0

    aget-short v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v2

    if-eqz v2, :cond_1

    move v4, v0

    .line 11
    :goto_2
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_0

    .line 14
    aget-object v5, v5, v0

    aget-short v5, v5, v4

    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 16
    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 18
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v7, v6, v4

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private computeZerosUnder(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 12
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 14
    aget-object v4, v3, v2

    aget-short v4, v4, v0

    .line 15
    aget-object v3, v3, v0

    aget-short v3, v3, v0

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v3

    if-eqz v3, :cond_2

    move v5, v0

    :goto_3
    if-ge v5, p1, :cond_1

    .line 27
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    aget-short v6, v6, v5

    invoke-static {v6, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 29
    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 31
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v8, v7, v5

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix not invertible! We have to choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private substitute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-short v0, v1, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    array-length v2, v2

    aget-short v2, v4, v2

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    aput-short v0, v1, v3

    .line 9
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 11
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v1, v0

    array-length v3, v1

    aget-short v2, v2, v3

    .line 12
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_0

    .line 14
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v4, v4, v1

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    .line 15
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v1

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not solvable equation system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The equation system is not solvable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .locals 7

    .line 1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 6
    array-length v1, p1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    .line 7
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v0

    .line 9
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 11
    aget-object v4, v1, v2

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v2

    aget-short v6, v6, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Addition is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVect([S[S)[S
    .locals 5

    .line 1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 5
    array-length v0, p1

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    aget-short v3, p1, v2

    aget-short v4, p2, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverse([[S)[[S
    .locals 7

    .line 1
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 2
    array-length v0, p1

    aget-object v3, p1, v1

    array-length v3, v3

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 9
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    move v3, v1

    .line 11
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_0

    .line 14
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aget-object v6, p1, v0

    aget-short v6, v6, v3

    aput-short v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_0
    array-length v3, p1

    :goto_2
    array-length v5, p1

    mul-int/2addr v5, v2

    if-ge v3, v5, :cond_1

    .line 19
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aput-short v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 21
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v3, v0

    array-length v3, v3

    add-int/2addr v3, v0

    aput-short v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 26
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    move p1, v1

    .line 29
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v0

    if-ge p1, v3, :cond_4

    .line 31
    aget-object v0, v0, p1

    aget-short v0, v0, p1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    move v3, p1

    :goto_4
    nop

    .line 32
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v5

    mul-int/2addr v6, v2

    if-ge v3, v6, :cond_3

    .line 34
    aget-object v5, v5, p1

    aget-short v6, v5, v3

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aput-short v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 39
    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    .line 42
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    array-length p1, p1

    new-array v3, v2, [I

    aput p1, v3, v4

    aput v0, v3, v1

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    .line 43
    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 45
    array-length v0, v0

    :goto_6
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v3

    mul-int/2addr v4, v2

    if-ge v0, v4, :cond_5

    .line 47
    aget-object v4, p1, v1

    array-length v5, v3

    sub-int v5, v0, v5

    aget-object v3, v3, v1

    aget-short v3, v3, v0

    aput-short v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-object p1

    .line 48
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The matrix is not invertible. Please choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public multMatrix(S[[S)[[S
    .locals 6

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    nop

    .line 4
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 6
    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public multVect(S[S)[S
    .locals 4

    .line 1
    array-length v0, p2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-short v3, p2, v2

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public multVects([S[S)[[S
    .locals 7

    .line 1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 5
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v2, v1

    .line 6
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 8
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 10
    aget-object v4, v0, v2

    aget-short v5, p1, v2

    aget-short v6, p2, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiplyMatrix([[S[S)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    .line 25
    array-length v1, p1

    new-array v1, v1, [S

    move v2, v0

    .line 26
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v0

    .line 28
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 30
    aget-object v4, p1, v2

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 31
    aget-short v5, v1, v2

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    .line 6
    array-length v1, p1

    aget-object v2, p2, v0

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    move v1, v0

    .line 7
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 9
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_2
    nop

    .line 11
    aget-object v4, p2, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 13
    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 14
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    aget-short v6, v5, v3

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public solveEquation([[S[S)[S
    .locals 6

    .line 1
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 15
    :cond_0
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v3

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 17
    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    move v0, v1

    .line 20
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    move v3, v1

    :goto_1
    nop

    .line 22
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 24
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v3

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 31
    :goto_2
    array-length v0, p2

    if-ge p1, v0, :cond_3

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v0, v0, p1

    array-length v3, p2

    aget-short v4, p2, p1

    array-length v5, p2

    aget-short v5, v0, v5

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 37
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->substitute()V

    .line 40
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    return-object v2
.end method
