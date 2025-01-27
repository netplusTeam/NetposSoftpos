.class public Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;

# interfaces
.implements Lorg/bouncycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private algorithm:I

.field private data:[[B

.field private keyID:J

.field private version:I


# direct methods
.method public constructor <init>(JI[[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    iput-wide p1, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    iput p3, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    array-length p1, p4

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    const/4 p1, 0x0

    :goto_0
    array-length p2, p4

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    aget-object p3, p4, p1

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
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

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    iget-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "unknown PGP public key algorithm encountered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    new-array v0, v2, [[B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    new-instance v3, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v3, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_0

    :sswitch_2
    new-array v0, v2, [[B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    new-instance v2, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v2, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1

    aput-object p1, v0, v1

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
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

    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    array-length v4, v3

    if-eq v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    return v0
.end method

.method public getEncSessionKey()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    return-object v0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    return v0
.end method
