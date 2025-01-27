.class public Lorg/bouncycastle/openpgp/examples/ByteArrayHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compress([BLjava/lang/String;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {v1, p2}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    array-length p2, p0

    int-to-long v6, p2

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/16 v4, 0x62

    move-object v5, p1

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;JLjava/util/Date;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[C)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->get(I)Lorg/bouncycastle/openpgp/PGPEncryptedData;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    const-string v2, "BC"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->getDataStream(Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    new-instance p1, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/openpgp/PGPLiteralData;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([B[CLjava/lang/String;IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "_CONSOLE"

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/openpgp/examples/ByteArrayHandler;->compress([BLjava/lang/String;I)[B

    move-result-object p0

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p4, :cond_1

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    new-instance v1, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-direct {v2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p3

    const-string v2, "BC"

    invoke-virtual {p3, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p3

    invoke-direct {v1, p3}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;)V

    new-instance p3, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    invoke-direct {p3, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;-><init>([C)V

    invoke-virtual {p3, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    array-length p1, p0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {p0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string p0, "Dick Beck"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "Hello world"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Starting PGP test"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "iway"

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lorg/bouncycastle/openpgp/examples/ByteArrayHandler;->encrypt([B[CLjava/lang/String;IZ)[B

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nencrypted data = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2, p0}, Lorg/bouncycastle/openpgp/examples/ByteArrayHandler;->decrypt([B[C)[B

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ndecrypted data = \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lorg/bouncycastle/openpgp/examples/ByteArrayHandler;->encrypt([B[CLjava/lang/String;IZ)[B

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/bouncycastle/openpgp/examples/ByteArrayHandler;->decrypt([B[C)[B

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
