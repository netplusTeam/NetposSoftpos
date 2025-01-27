.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;
.super Ljava/lang/Object;
.source "NTRUSignerPrng.java"


# instance fields
.field private counter:I

.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private seed:[B


# direct methods
.method constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->counter:I

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->seed:[B

    .line 4
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method nextBytes(I)[B
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->seed:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->seed:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->counter:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    .line 11
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 13
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v2, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSignerPrng;->counter:I

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
