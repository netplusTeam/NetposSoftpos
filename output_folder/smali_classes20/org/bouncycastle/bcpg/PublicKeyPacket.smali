.class public Lorg/bouncycastle/bcpg/PublicKeyPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;

# interfaces
.implements Lorg/bouncycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private algorithm:I

.field private key:Lorg/bouncycastle/bcpg/BCPGKey;

.field private time:J

.field private validDays:I

.field private version:I


# direct methods
.method public constructor <init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    iput p1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    iput-object p3, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown PGP public key algorithm encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    new-instance v0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    return v0
.end method

.method public getEncodedContents()[B
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

    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    :cond_0
    iget v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->algorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-object v2, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    check-cast v2, Lorg/bouncycastle/bcpg/BCPGObject;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/bcpg/BCPGKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->key:Lorg/bouncycastle/bcpg/BCPGKey;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->time:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getValidDays()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->validDays:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/PublicKeyPacket;->version:I

    return v0
.end method
