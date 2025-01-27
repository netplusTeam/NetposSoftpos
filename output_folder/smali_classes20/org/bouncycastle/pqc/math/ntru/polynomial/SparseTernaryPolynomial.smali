.class public Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
.super Ljava/lang/Object;
.source "SparseTernaryPolynomial.java"

# interfaces
.implements Lorg/bouncycastle/pqc/math/ntru/polynomial/TernaryPolynomial;


# static fields
.field private static final BITS_PER_INDEX:I = 0xb


# instance fields
.field private N:I

.field private negOnes:[I

.field private ones:[I


# direct methods
.method constructor <init>(I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 3
    iput-object p2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 4
    iput-object p3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 0

    .line 5
    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 8
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 12
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v0, v3, :cond_3

    .line 14
    aget v3, p1, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 18
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    add-int/lit8 v4, v1, 0x1

    aput v0, v3, v1

    move v1, v4

    goto :goto_1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", must be one of {-1, 0, 1}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    add-int/lit8 v4, v2, 0x1

    aput v0, v3, v2

    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 36
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-void
.end method

.method public static fromBinary(Ljava/io/InputStream;III)Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x7ff

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    mul-int v1, p2, v0

    add-int/lit8 v1, v1, 0x7

    .line 3
    div-int/lit8 v1, v1, 0x8

    .line 4
    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 5
    const/16 v2, 0x800

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p2

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    .line 7
    div-int/lit8 v0, v0, 0x8

    .line 8
    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 9
    invoke-static {p0, p3, v2}, Lorg/bouncycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p0

    .line 11
    new-instance p3, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p3, p1, p2, p0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(I[I[I)V

    return-object p3
.end method

.method public static generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/math/ntru/util/Util;->generateRandomTernary(IIILjava/security/SecureRandom;)[I

    move-result-object p0

    .line 2
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 7
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 5
    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 6
    iget v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v2, v3, :cond_3

    return v1

    .line 10
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 14
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v2, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getNegOnes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-object v0
.end method

.method public getOnes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 7

    .line 42
    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    .line 43
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v0, v1, :cond_7

    .line 48
    new-array v0, v1, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    .line 49
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v2, v3, :cond_0

    .line 51
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 54
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_3

    .line 56
    aget v3, v3, v2

    .line 57
    iget v4, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v4, -0x1

    sub-int v3, v4, v3

    :goto_2
    if-ltz v4, :cond_2

    .line 60
    aget-object v5, v0, v4

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    .line 64
    iget v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 69
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_6

    .line 71
    aget v2, v2, v1

    .line 72
    iget v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v2

    :goto_4
    if-ltz v3, :cond_5

    .line 75
    aget-object v4, v0, v3

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_4

    .line 79
    iget v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v2, v2, -0x1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 84
    :cond_6
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object p1

    .line 85
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 7

    .line 1
    iget-object p1, p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 2
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v0, v1, :cond_6

    .line 7
    new-array v0, v1, [I

    const/4 v1, 0x0

    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_2

    .line 10
    aget v3, v3, v2

    .line 11
    iget v4, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v4, -0x1

    sub-int v3, v4, v3

    :goto_1
    if-ltz v4, :cond_1

    .line 14
    aget v5, v0, v4

    aget v6, p1, v3

    add-int/2addr v5, v6

    aput v5, v0, v4

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 18
    iget v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 23
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_5

    .line 25
    aget v2, v2, v1

    .line 26
    iget v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v2

    :goto_3
    if-ltz v3, :cond_4

    .line 29
    aget v4, v0, v3

    aget v5, p1, v2

    sub-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 33
    iget v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38
    :cond_5
    new-instance p1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object p1

    .line 39
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    return v0
.end method

.method public toBinary()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v0

    .line 2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v1

    .line 4
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 5
    array-length v0, v0

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 5

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_0

    .line 4
    aget v3, v3, v2

    .line 5
    const/4 v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 7
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 9
    aget v2, v2, v1

    const/4 v3, -0x1

    .line 10
    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v1
.end method
