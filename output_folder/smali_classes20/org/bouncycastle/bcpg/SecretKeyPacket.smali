.class public Lorg/bouncycastle/bcpg/SecretKeyPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;

# interfaces
.implements Lorg/bouncycastle/bcpg/PublicKeyAlgorithmTags;


# static fields
.field public static final USAGE_CHECKSUM:I = 0xff

.field public static final USAGE_NONE:I = 0x0

.field public static final USAGE_SHA1:I = 0xfe


# instance fields
.field private encAlgorithm:I

.field private iv:[B

.field private pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

.field private s2k:Lorg/bouncycastle/bcpg/S2K;

.field private s2kUsage:I

.field private secKeyData:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    instance-of v0, p0, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    new-instance v0, Lorg/bouncycastle/bcpg/S2K;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/S2K;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/S2K;->getProtectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_3
    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    goto :goto_3

    :cond_4
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([BII)V

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    iput p2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    iput p3, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    iput-object p4, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    iput-object p5, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    iput-object p6, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    iput p2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    if-eqz p2, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    iput-object p3, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    iput-object p4, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    iput-object p5, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getEncAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    return v0
.end method

.method public getEncodedContents()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    :cond_3
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->iv:[B

    return-object v0
.end method

.method public getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    return-object v0
.end method

.method public getS2K()Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2k:Lorg/bouncycastle/bcpg/S2K;

    return-object v0
.end method

.method public getS2KUsage()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    return v0
.end method

.method public getSecretKeyData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-object v0
.end method
