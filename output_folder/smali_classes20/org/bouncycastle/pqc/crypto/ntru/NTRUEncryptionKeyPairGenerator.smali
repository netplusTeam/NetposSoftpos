.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUEncryptionKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    .line 2
    iget v9, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    .line 3
    iget v10, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    .line 4
    iget v11, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    .line 5
    iget v12, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    .line 6
    iget v13, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    .line 7
    iget v14, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    .line 8
    iget-boolean v15, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    .line 9
    iget-boolean v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    const/4 v2, 0x0

    move-object/from16 v16, v2

    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eqz v15, :cond_1

    .line 24
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v3, v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v8, v10, v10, v1, v2}, Lorg/bouncycastle/pqc/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move v2, v8

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v13

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v2

    .line 25
    :goto_1
    invoke-interface {v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    const/4 v4, 0x3

    .line 26
    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 27
    iget-object v4, v3, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v5, v4, v17

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v17

    goto :goto_3

    .line 31
    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v3, v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v3, :cond_2

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v8, v10, v3, v1, v2}, Lorg/bouncycastle/pqc/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v13, -0x1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move v2, v8

    move v3, v11

    move v4, v12

    move v5, v13

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v2

    .line 32
    :goto_2
    invoke-interface {v2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    if-nez v16, :cond_3

    goto :goto_0

    .line 40
    :cond_3
    :goto_3
    invoke-virtual {v3, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v15, :cond_5

    .line 51
    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v8}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 52
    iget-object v4, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aput v18, v4, v17

    goto :goto_4

    .line 40
    :cond_5
    move-object/from16 v1, v16

    .line 52
    :goto_4
    add-int/lit8 v4, v14, -0x1

    .line 59
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v8, v14, v4, v5}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 66
    invoke-virtual {v4, v3, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult3(I)V

    .line 68
    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 69
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clear()V

    .line 70
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clear()V

    .line 72
    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v4

    invoke-direct {v3, v5, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 73
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 74
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    .line 60
    :cond_6
    goto :goto_4
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    return-void
.end method
