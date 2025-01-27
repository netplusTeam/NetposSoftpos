.class public Lorg/bouncycastle/openpgp/PGPCompressedData;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/bcpg/CompressionAlgorithmTags;


# instance fields
.field data:Lorg/bouncycastle/bcpg/CompressedDataPacket;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/openpgp/Util;->createBCPGInputStream(Ljava/io/InputStream;I)Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPCompressedData;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/bcpg/CompressedDataPacket;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/bcpg/CompressedDataPacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPCompressedData;->data:Lorg/bouncycastle/bcpg/CompressedDataPacket;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected packet in stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x8

    invoke-static {v0, p1}, Lorg/bouncycastle/openpgp/Util;->createBCPGInputStream(Ljava/io/InputStream;I)Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPCompressedData;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedData;->data:Lorg/bouncycastle/bcpg/CompressedDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/CompressedDataPacket;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPCompressedData$1;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p0, v2, v3}, Lorg/bouncycastle/openpgp/PGPCompressedData$1;-><init>(Lorg/bouncycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/openpgp/PGPCompressedData$2;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openpgp/PGPCompressedData$2;-><init>(Lorg/bouncycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :try_start_0
    new-instance v0, Lorg/bouncycastle/apache/bzip2/CBZip2InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/apache/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O problem with stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recognise compression algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedData;->data:Lorg/bouncycastle/bcpg/CompressedDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/CompressedDataPacket;->getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v0

    return-object v0
.end method
