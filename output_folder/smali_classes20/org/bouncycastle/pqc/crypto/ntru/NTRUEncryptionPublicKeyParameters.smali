.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.source "NTRUEncryptionPublicKeyParameters.java"


# instance fields
.field public h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 9
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 6
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

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
    instance-of v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 6
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v2, :cond_4

    return v1

    .line 13
    :cond_3
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 17
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_5

    .line 19
    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-eqz p1, :cond_6

    return v1

    .line 24
    :cond_5
    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v1

    :goto_1
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
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
