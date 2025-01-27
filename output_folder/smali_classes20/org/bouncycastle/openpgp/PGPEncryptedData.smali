.class public abstract Lorg/bouncycastle/openpgp/PGPEncryptedData;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/bcpg/SymmetricKeyAlgorithmTags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;
    }
.end annotation


# instance fields
.field encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

.field encStream:Ljava/io/InputStream;

.field integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field truncStream:Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/InputStreamPacket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v0

    return-object v0
.end method

.method public isIntegrityProtected()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    instance-of v0, v0, Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;

    return v0
.end method

.method public verify()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPEncryptedData;->isIntegrityProtected()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->truncStream:Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;->getLookAhead()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedData;->integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v1

    array-length v3, v1

    new-array v4, v3, [B

    :goto_1
    if-eq v2, v3, :cond_1

    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "data not integrity protected."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
