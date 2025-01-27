.class public Lorg/bouncycastle/openpgp/PGPOnePassSignature;
.super Ljava/lang/Object;


# instance fields
.field private lastb:B

.field private sigOut:Ljava/io/OutputStream;

.field private sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

.field private signatureType:I

.field private verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->cast(Lorg/bouncycastle/bcpg/Packet;)Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/bouncycastle/bcpg/OnePassSignaturePacket;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/OnePassSignaturePacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getSignatureType()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static cast(Lorg/bouncycastle/bcpg/Packet;)Lorg/bouncycastle/bcpg/OnePassSignaturePacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected packet in stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getHashAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getKeyAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignatureType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getSignatureType()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getKeyAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;->get(II)Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;->build(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    const/4 p2, 0x0

    iput-byte p2, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->lastb:B

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iget-byte v2, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->lastb:B

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    :cond_2
    :goto_1
    iput-byte p1, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->lastb:B

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    :goto_2
    return-void
.end method

.method public update([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_1

    aget-byte v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->update(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public verify(Lorg/bouncycastle/openpgp/PGPSignature;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to add trailer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
