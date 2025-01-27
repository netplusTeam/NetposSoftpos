.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;
.source "McElieceKobaraImaiCipher.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field public static final PUBLIC_CONSTANT:[B


# instance fields
.field private forEncryption:Z

.field private k:I

.field key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/bouncycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    return-void
.end method

.method private initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result p1

    return p1

    .line 6
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

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
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-eqz p1, :cond_1

    .line 4
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 8
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 9
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 10
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 16
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 17
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 22
    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 23
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

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
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-nez v0, :cond_6

    .line 6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    .line 8
    array-length v1, p1

    if-lt v1, v0, :cond_5

    .line 13
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 14
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v2, v2, 0x3

    .line 15
    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 21
    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object p1

    .line 22
    aget-object v3, p1, v4

    .line 23
    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    nop

    .line 27
    new-array v3, v4, [B

    .line 32
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-static {v5, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 35
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v5, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v5, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 37
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v5

    .line 38
    aget-object p1, p1, v0

    .line 41
    array-length v6, v5

    if-le v6, v2, :cond_1

    .line 44
    invoke-static {v5, v4, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v5

    .line 48
    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v2, v6, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->decode(IILorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object p1

    .line 51
    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    .line 52
    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    .line 56
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 57
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object p1

    .line 58
    aget-object v3, p1, v4

    .line 59
    aget-object p1, p1, v0

    .line 62
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 63
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, p1

    invoke-interface {v6, p1, v4, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 64
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v5, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 69
    aget-byte v6, v5, v1

    aget-byte v7, v3, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 73
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 76
    invoke-virtual {v1, v5}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 79
    new-array v3, v2, [B

    .line 80
    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 85
    aget-byte v5, v3, v1

    aget-byte v6, p1, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 93
    :cond_3
    sget-object p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v1, p1

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v1

    .line 95
    aget-object v2, v1, v4

    .line 96
    aget-object v0, v1, v0

    .line 98
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    .line 100
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: Ciphertext too short."

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageEncrypt([B)[B
    .locals 11

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v1, v1, 0x3

    .line 8
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 11
    sget-object v4, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v5, v4

    sub-int/2addr v3, v5

    .line 12
    array-length v5, p1

    if-le v5, v3, :cond_0

    .line 14
    array-length v3, p1

    .line 17
    :cond_0
    array-length v5, v4

    add-int/2addr v5, v3

    add-int v6, v5, v0

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    .line 21
    new-array v7, v5, [B

    .line 22
    array-length v8, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    array-length p1, v4

    invoke-static {v4, v9, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    new-array p1, v0, [B

    .line 28
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 32
    new-instance v3, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 35
    invoke-virtual {v3, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 38
    new-array v4, v5, [B

    .line 39
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 44
    aget-byte v8, v4, v3

    aget-byte v10, v7, v3

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 49
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v4, v9, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 50
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v3, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 55
    aget-byte v5, v3, v0

    aget-byte v7, p1, v0

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 59
    :cond_2
    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    .line 64
    new-array v0, v9, [B

    if-lez v6, :cond_3

    .line 67
    new-array v0, v6, [B

    .line 68
    invoke-static {p1, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :cond_3
    new-array v3, v2, [B

    .line 72
    invoke-static {p1, v6, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    new-array v4, v1, [B

    add-int/2addr v2, v6

    .line 75
    invoke-static {p1, v2, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 81
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object p1

    if-lez v6, :cond_4

    .line 91
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    :cond_4
    return-object p1

    .line 92
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
