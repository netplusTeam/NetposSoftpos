.class public Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private N:I

.field private buf:Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

.field private c:I

.field private counter:I

.field private hLen:I

.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private initialized:Z

.field private minCallsR:I

.field private remLen:I

.field private seed:[B

.field private totLen:I


# direct methods
.method constructor <init>([BLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    .line 3
    iget p1, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    .line 4
    iget p1, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    .line 5
    iget p1, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    .line 7
    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    .line 8
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 9
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    .line 10
    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 12
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    .line 13
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    return-void
.end method

.method static synthetic access$000([BI)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private appendHash(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 7
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    return-void
.end method

.method private static copyOf([BI)[B
    .locals 2

    .line 1
    new-array v0, p1, [B

    .line 3
    array-length v1, p0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 1
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 2
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 3
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p2, p2

    .line 4
    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method nextIndex()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->appendHash(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 8
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    .line 10
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    .line 11
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 12
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    .line 17
    :cond_1
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;->getTrailing(I)Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    move-result-object v0

    .line 19
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    if-ge v2, v3, :cond_4

    sub-int/2addr v3, v2

    .line 22
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    add-int v5, v3, v4

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 23
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 24
    :cond_2
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    if-ge v5, v2, :cond_3

    .line 26
    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->appendHash(Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 27
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    .line 28
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    if-le v3, v5, :cond_2

    sub-int/2addr v3, v5

    goto :goto_2

    .line 33
    :cond_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 34
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    .line 35
    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    goto :goto_3

    :cond_4
    sub-int/2addr v2, v3

    .line 39
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 42
    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator$BitString;->getLeadingAsInt(I)I

    move-result v0

    .line 43
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    shl-int v2, v1, v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    rem-int v4, v2, v3

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_5

    .line 45
    rem-int/2addr v0, v3

    return v0

    .line 43
    :cond_5
    goto :goto_1
.end method
