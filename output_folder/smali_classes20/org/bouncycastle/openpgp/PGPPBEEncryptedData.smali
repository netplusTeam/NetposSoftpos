.class public Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;
.super Lorg/bouncycastle/openpgp/PGPEncryptedData;


# instance fields
.field keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;Lorg/bouncycastle/bcpg/InputStreamPacket;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPEncryptedData;-><init>(Lorg/bouncycastle/bcpg/InputStreamPacket;)V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    return-void
.end method


# virtual methods
.method public getDataStream(Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    instance-of v1, v1, Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getSecKeyData()[B

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;->recoverSessionData(I[B[B)[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v1, v0, v4}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;->createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGInputStream;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encData:Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;-><init>(Lorg/bouncycastle/openpgp/PGPEncryptedData;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->truncStream:Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;->getIntegrityCalculator()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    new-instance v0, Lorg/bouncycastle/util/io/TeeInputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->truncStream:Lorg/bouncycastle/openpgp/PGPEncryptedData$TruncatedStream;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->integrityCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;->getBlockSize()I

    move-result p1

    new-array v0, p1, [B
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    :goto_0
    const-string/jumbo v2, "unexpected end of stream."

    if-eq v1, p1, :cond_2

    :try_start_1
    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_1

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v1, :cond_7

    if-ltz v4, :cond_7

    add-int/lit8 v2, p1, -0x2

    aget-byte v2, v0, v2

    int-to-byte v6, v1

    if-ne v2, v6, :cond_3

    sub-int/2addr p1, v3

    aget-byte p1, v0, p1

    int-to-byte v0, v4

    if-ne p1, v0, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/bouncycastle/openpgp/PGPDataValidationException;

    const-string v0, "data check failed."

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPDataValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    return-object p1

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Exception creating cipher"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public getSymmetricAlgorithm(Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;->getSecKeyData()[B

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;->recoverSessionData(I[B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    return p1
.end method
