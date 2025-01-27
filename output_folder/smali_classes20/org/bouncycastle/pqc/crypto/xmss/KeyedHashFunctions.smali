.class final Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;
.super Ljava/lang/Object;
.source "KeyedHashFunctions.java"


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final digestSize:I


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 7
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "digest == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private coreDigest(I[B[B)[B
    .locals 3

    int-to-long v0, p1

    .line 1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 5
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 7
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 9
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    new-array p2, p1, [B

    .line 10
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v0, p3, Lorg/bouncycastle/crypto/Xof;

    if-eqz v0, :cond_0

    .line 12
    check-cast p3, Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p3, p2, v2, p1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_0

    :cond_0
    nop

    .line 16
    invoke-interface {p3, p2, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    return-object p2
.end method


# virtual methods
.method protected F([B[B)[B
    .locals 2

    .line 1
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    .line 5
    array-length v0, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected H([B[B)[B
    .locals 2

    .line 1
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    .line 5
    array-length v0, p2

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected HMsg([B[B)[B
    .locals 2

    .line 1
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    mul-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected PRF([B[B)[B
    .locals 2

    .line 1
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    .line 5
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong address length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
