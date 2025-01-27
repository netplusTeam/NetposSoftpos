.class Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDigest()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;-><init>(Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method
