.class public Lorg/bouncycastle/bcpg/OnePassSignaturePacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field private keyID:J

.field private nested:I

.field private sigType:I

.field private version:I


# direct methods
.method public constructor <init>(IIIJZ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->version:I

    iput p1, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->sigType:I

    iput p2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    iput p3, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    iput-wide p4, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    xor-int/lit8 p1, p6, 0x1

    iput p1, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->nested:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->sigType:I

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    iget-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->nested:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->version:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->sigType:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->nested:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->keyID:J

    return-wide v0
.end method

.method public getSignatureType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->sigType:I

    return v0
.end method
