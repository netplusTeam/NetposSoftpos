.class public Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/gpg/keybox/BlobVerifier;


# instance fields
.field private final md5Digest:Lorg/bouncycastle/crypto/digests/MD5Digest;

.field private final sha1Digest:Lorg/bouncycastle/crypto/digests/SHA1Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->sha1Digest:Lorg/bouncycastle/crypto/digests/SHA1Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->md5Digest:Lorg/bouncycastle/crypto/digests/MD5Digest;

    return-void
.end method


# virtual methods
.method public isMatched([B[B)Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->sha1Digest:Lorg/bouncycastle/crypto/digests/SHA1Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->sha1Digest:Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->sha1Digest:Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    aget-byte v1, p2, v2

    if-nez v1, :cond_0

    aget-byte v1, p2, v3

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->md5Digest:Lorg/bouncycastle/crypto/digests/MD5Digest;

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->update([BII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object p1, p0, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;->md5Digest:Lorg/bouncycastle/crypto/digests/MD5Digest;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->doFinal([BI)I

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1

    :cond_0
    return v2

    :cond_1
    return v3
.end method
