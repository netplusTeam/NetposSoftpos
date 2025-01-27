.class public Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLengthWithoutSeparatorOrTrailingWhitespace([B)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->isWhiteSpace(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getLengthWithoutWhiteSpace([B)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->isWhiteSpace(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getLineSeparator()[B
    .locals 5

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static isLineEnding(B)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->isLineEnding(B)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "-s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ".asc"

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p0, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v4, :cond_0

    aget-object v2, p0, v5

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v3, "SHA1"

    invoke-static {v2, v0, v1, p0, v3}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CLjava/lang/String;)V

    goto :goto_0

    :cond_0
    aget-object v2, p0, v5

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-object p0, p0, v4

    invoke-static {v2, v0, v1, v3, p0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CLjava/lang/String;)V

    goto :goto_0

    :cond_1
    aget-object v1, p0, v0

    const-string v6, "-v"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v1, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "file needs to end in \".asc\""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v2, p0, v5

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v0, "usage: ClearSignedFileProcessor [-s file keyfile passPhrase]|[-v sigFile keyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static processLine(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutWhiteSpace([B)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    :cond_0
    array-length p1, p2

    invoke-virtual {p0, p2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutWhiteSpace([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update([BII)V

    :cond_0
    return-void
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0, v0, p2}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readPassedEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p1

    :goto_1
    if-gez v0, :cond_3

    const/4 p1, -0x1

    :cond_3
    return p1
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-static {p0, v0, p1}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readPassedEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static readPassedEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    const/16 p1, 0xa

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "SHA256"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 p4, 0x8

    goto :goto_0

    :cond_0
    const-string v0, "SHA384"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p4, 0x9

    goto :goto_0

    :cond_1
    const-string v0, "SHA512"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p4, v1

    goto :goto_0

    :cond_2
    const-string v0, "MD5"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p4, v2

    goto :goto_0

    :cond_3
    const-string v0, "RIPEMD160"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x3

    goto :goto_0

    :cond_4
    const/4 p4, 0x2

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/examples/PGPExampleUtil;->readSecretKey(Ljava/io/InputStream;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v3, "BC"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v5

    invoke-direct {v4, v5, p4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    invoke-virtual {v4, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    new-instance v3, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    invoke-virtual {v0, v2, p3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p3, p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignerUserID(ZLjava/lang/String;)V

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    :cond_5
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {p0, p2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p4}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->beginClearText(I)V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p2, p1}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result p3

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-static {p0, v0, p4}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;[B)V

    const/4 p4, -0x1

    if-eq p3, p4, :cond_7

    :cond_6
    invoke-static {p2, p3, p1}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p3

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;[B)V

    if-ne p3, p4, :cond_6

    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->endClearText()V

    new-instance p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    return-void
.end method

.method private static verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1, v0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result v2

    invoke-static {}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->getLineSeparator()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutSeparatorOrTrailingWhitespace([B)I

    move-result v7

    invoke-virtual {p0, v6, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    if-eq v2, v5, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutSeparatorOrTrailingWhitespace([B)I

    move-result v7

    invoke-virtual {p0, v6, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    if-eq v2, v5, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutSeparatorOrTrailingWhitespace([B)I

    move-result v6

    invoke-virtual {p0, v2, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    new-instance p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    new-instance p1, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/openpgp/PGPSignatureList;

    invoke-virtual {p1, v4}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;->getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v2, "BC"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, p0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result p2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V

    if-eq p2, v5, :cond_3

    :cond_2
    invoke-static {v1, p2, p0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p2

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V

    if-ne p2, v5, :cond_2

    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->verify()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verified."

    goto :goto_1

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verification failed."

    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
