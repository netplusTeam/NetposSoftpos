.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.source "NTRUEncryptionPrivateKeyParameters.java"


# instance fields
.field public fp:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 9
    iget v1, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-ne v1, v0, :cond_1

    .line 11
    iget v3, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 12
    iget v4, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->df1:I

    .line 13
    iget v5, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->df2:I

    .line 14
    iget v6, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->df3:I

    .line 15
    iget-boolean v0, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v7, v0

    .line 16
    :goto_0
    iget p2, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v3, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 17
    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    goto :goto_2

    .line 21
    :cond_1
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v1, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 22
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    .line 23
    iget-boolean p2, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eqz p2, :cond_2

    new-instance p2, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 26
    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 4
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 5
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 4
    iget-object v0, v0, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    :goto_0
    return-void
.end method


# virtual methods
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
    instance-of v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .line 6
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-eqz v2, :cond_4

    return v1

    .line 13
    :cond_3
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 17
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_5

    .line 19
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v2, :cond_6

    return v1

    .line 24
    :cond_5
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 28
    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getEncoded()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    instance-of v2, v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->toBinary()[B

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary3Tight()[B

    move-result-object v1

    .line 13
    :goto_0
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 15
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
