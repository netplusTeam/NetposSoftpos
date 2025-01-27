.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;
.super Ljava/lang/Object;
.source "McElieceCipher.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public cipherTextSize:I

.field private forEncryption:Z

.field private k:I

.field private key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

.field public maxPlainTextSize:I

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeMessage(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object p1

    .line 4
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 10
    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_1

    .line 16
    new-array v1, v0, [B

    .line 17
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 18
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeMessageRepresentative([B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 4

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p1, p1

    aput-byte v2, v0, p1

    .line 4
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    return-object p1
.end method

.method private initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getK()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 p1, p1, 0x3

    .line 4
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    .line 5
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    return-void
.end method

.method private initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->t:I

    .line 5
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    .line 6
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result p1

    return p1

    .line 6
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-eqz p1, :cond_1

    .line 4
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 8
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 9
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 10
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 16
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 17
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 22
    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 23
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-nez v0, :cond_0

    .line 6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .line 8
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    .line 11
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v4

    .line 12
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v5

    .line 13
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    .line 14
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v0

    .line 17
    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    .line 23
    invoke-virtual {p1, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 26
    invoke-virtual {v6, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 29
    invoke-static {v6, v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 33
    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 34
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 37
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 40
    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 43
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->computeMessage(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageEncrypt([B)[B
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->computeMessageRepresentative([B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 6
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->t:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(IILjava/security/SecureRandom;)V

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
