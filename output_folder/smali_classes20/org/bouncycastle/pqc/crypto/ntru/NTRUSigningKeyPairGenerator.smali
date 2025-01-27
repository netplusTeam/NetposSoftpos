.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUSigningKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;,
        Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;
    }
.end annotation


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateBasis()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    .locals 22

    .line 1
    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    .line 2
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 3
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    .line 4
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    .line 5
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    .line 6
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    .line 7
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    mul-int/lit8 v1, v7, 0x2

    const/4 v15, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 19
    iget-boolean v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    .line 25
    :goto_0
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_0

    add-int/lit8 v1, v10, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v7, v1, v10, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v1

    move v15, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v13, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v16

    move v1, v7

    move v2, v11

    move v3, v12

    move v5, v13

    move v15, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v1

    :goto_1
    move-object v6, v1

    .line 26
    invoke-interface {v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v5, v15}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v1

    iget-object v1, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v6, v15

    const/4 v15, 0x1

    goto :goto_0

    .line 29
    :cond_2
    :goto_2
    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 32
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;

    move-result-object v3

    .line 40
    :goto_3
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_3

    add-int/lit8 v1, v10, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v7, v1, v10, v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v1

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v16, v12

    move/from16 v21, v13

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    goto :goto_4

    :cond_3
    add-int/lit8 v16, v13, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v18

    move v1, v7

    move v2, v11

    move/from16 v19, v10

    move-object v10, v3

    move v3, v12

    move/from16 v20, v11

    move-object v11, v4

    move/from16 v4, v16

    move/from16 v16, v12

    move-object v12, v5

    move v5, v13

    move/from16 v21, v13

    move-object v13, v6

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v1

    :goto_4
    move-object v6, v1

    .line 41
    invoke-interface {v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v2, v15}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v1

    iget-object v1, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move/from16 v12, v16

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v13, v21

    goto :goto_3

    .line 45
    :cond_5
    :goto_5
    invoke-virtual {v2, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 46
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;

    move-result-object v1

    .line 47
    iget-object v3, v10, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    move-result-object v3

    .line 49
    iget-object v4, v3, Lorg/bouncycastle/pqc/math/ntru/euclid/BigIntEuclidean;->gcd:Ljava/math/BigInteger;

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 51
    iget-object v0, v10, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 52
    iget-object v4, v3, Lorg/bouncycastle/pqc/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    move/from16 v18, v14

    int-to-long v14, v9

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 53
    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 54
    iget-object v3, v3, Lorg/bouncycastle/pqc/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    neg-int v5, v9

    int-to-long v14, v5

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 57
    iget-object v3, v8, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    const/4 v5, 0x0

    if-nez v3, :cond_7

    .line 59
    new-array v1, v7, [I

    .line 60
    new-array v3, v7, [I

    .line 61
    iget-object v10, v12, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v5

    aput v10, v1, v5

    .line 62
    iget-object v10, v2, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v5

    aput v10, v3, v5

    const/4 v15, 0x1

    :goto_6
    if-ge v15, v7, :cond_6

    .line 65
    iget-object v5, v12, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v10, v7, v15

    aget v5, v5, v10

    aput v5, v1, v15

    .line 66
    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v5, v5, v10

    aput v5, v3, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 68
    :cond_6
    new-instance v5, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v5, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 69
    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 71
    invoke-interface {v13, v5}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    .line 72
    invoke-interface {v6, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 73
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;

    move-result-object v3

    .line 74
    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v5

    .line 75
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 76
    iget-object v1, v3, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    .line 77
    iget-object v3, v3, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigInteger;)V

    goto :goto_8

    :cond_7
    const/4 v3, 0x1

    :goto_7
    if-ge v3, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v3, v3, 0xa

    goto :goto_7

    .line 92
    :cond_8
    iget-object v3, v10, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    new-instance v14, Ljava/math/BigDecimal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v14, v10}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v10

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v5

    invoke-virtual {v3, v14, v10}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v3

    .line 93
    iget-object v10, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    new-instance v14, Ljava/math/BigDecimal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v14, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v5

    invoke-virtual {v10, v14, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v1

    .line 95
    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 97
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->halve()V

    .line 98
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigDecimalPolynomial;->round()Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    .line 101
    :goto_8
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 102
    invoke-interface {v13, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 103
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 104
    invoke-interface {v6, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 106
    new-instance v10, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 107
    new-instance v14, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v14, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 108
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v3, v10

    move-object v4, v14

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->minimizeFG(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    if-nez v18, :cond_9

    .line 115
    invoke-interface {v6, v11, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    move-object v4, v0

    move-object v3, v10

    goto :goto_9

    .line 120
    :cond_9
    invoke-virtual {v10, v11, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    move-object v4, v0

    move-object v3, v6

    .line 122
    :goto_9
    invoke-virtual {v4, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 124
    new-instance v9, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    iget-object v7, v8, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v5, v10

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    return-object v9

    .line 49
    :cond_a
    move/from16 v18, v14

    const/16 v17, 0x1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move/from16 v12, v16

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v13, v21

    goto/16 :goto_3

    .line 45
    :cond_b
    move/from16 v18, v14

    const/16 v17, 0x1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move/from16 v12, v16

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v13, v21

    goto/16 :goto_3

    .line 29
    :cond_c
    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v16, v12

    move/from16 v21, v13

    move/from16 v18, v14

    const/16 v17, 0x1

    move v6, v15

    move/from16 v15, v17

    goto/16 :goto_0
.end method

.method private minimizeFG(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_0

    mul-int/lit8 v8, v4, 0x2

    .line 1
    iget-object v9, v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v6

    mul-int/2addr v9, v9

    iget-object v10, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v6

    mul-int/2addr v10, v10

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, -0x4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 8
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move v9, v5

    move v10, v9

    :goto_1
    if-ge v9, v4, :cond_4

    if-ge v10, v4, :cond_4

    move v11, v5

    move v12, v11

    :goto_2
    if-ge v11, v4, :cond_1

    .line 18
    iget-object v13, v2, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v13, v11

    iget-object v14, v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v11

    mul-int/2addr v13, v14

    .line 19
    iget-object v14, v3, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v11

    iget-object v15, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v15, v15, v11

    mul-int/2addr v14, v15

    mul-int/lit8 v15, v4, 0x4

    add-int/2addr v13, v14

    mul-int/2addr v15, v13

    add-int/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 25
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v13

    add-int/2addr v11, v13

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v12, v11

    if-le v12, v7, :cond_2

    .line 30
    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 31
    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    add-int/lit8 v9, v9, 0x1

    move v10, v5

    goto :goto_3

    :cond_2
    neg-int v11, v7

    if-ge v12, v11, :cond_3

    .line 37
    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 38
    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    add-int/lit8 v9, v9, 0x1

    move v10, v5

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 43
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    .line 44
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public generateBoundedBasis()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 2

    .line 1
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBasis()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->isNormOk()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 5
    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;

    invoke-direct {v4, p0, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$1;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    :goto_1
    if-ltz v2, :cond_2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 16
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-ne v2, v5, :cond_1

    .line 19
    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :cond_2
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    .line 28
    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public generateKeyPairSingleThread()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBoundedBasis()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v3

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    .line 9
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    .line 13
    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    return-void
.end method
