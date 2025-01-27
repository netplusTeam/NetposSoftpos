.class public Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptFile(Ljava/io/InputStream;Ljava/io/InputStream;[CLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    if-eqz v1, :cond_0

    :goto_0
    check-cast p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    const/4 p1, 0x0

    move-object v1, p1

    :goto_2
    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getKeyID()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lorg/bouncycastle/openpgp/examples/PGPExampleUtil;->findSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;J[C)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_8

    new-instance p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;-><init>()V

    const-string p2, "BC"

    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->build(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getDataStream(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    new-instance p1, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    instance-of p1, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;

    if-eqz p1, :cond_6

    check-cast p0, Lorg/bouncycastle/openpgp/PGPLiteralData;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move-object p3, p1

    :goto_3
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->isIntegrityProtected()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->verify()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message failed integrity check"

    :goto_4
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message integrity check passed"

    goto :goto_4

    :cond_5
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "no message integrity check"

    goto :goto_4

    :cond_6
    instance-of p0, p0, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;

    if-eqz p0, :cond_7

    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "encrypted message contains a signed message - not literal data."

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "message is not a simple encrypted file - type unknown."

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secret key for message not found."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    return-void
.end method

.method private static decryptFile(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p0, p2, p3}, Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;->decryptFile(Ljava/io/InputStream;Ljava/io/InputStream;[CLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static encryptFile(Ljava/io/OutputStream;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "BC"

    if-eqz p3, :cond_0

    new-instance v1, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v1, p0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v1

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lorg/bouncycastle/openpgp/examples/PGPExampleUtil;->compressFile(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    invoke-virtual {v2, p4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setWithIntegrityPacket(Z)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p4

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p4, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p4

    invoke-direct {v1, p4}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;)V

    new-instance p4, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    invoke-direct {p4, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-virtual {p4, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    array-length p2, p1

    int-to-long v2, p2

    invoke-virtual {v1, p0, v2, v3}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p2}, Lorg/bouncycastle/openpgp/examples/PGPExampleUtil;->readPublicKey(Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    invoke-static {v0, p1, p0, p3, p4}, Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/io/OutputStream;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;ZZ)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
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

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v0, "usage: KeyBasedFileProcessor -e|-d [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "-e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    aget-object v1, p0, v4

    const-string v5, "-a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v4

    const-string v5, "-ai"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v4

    const-string v5, "-ia"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, p0, v4

    const-string v5, "-i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, ".bpg"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, p0, v3

    aget-object p0, p0, v2

    invoke-static {v1, v3, p0, v0, v4}, Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p0, v4

    aget-object p0, p0, v3

    invoke-static {v1, v2, p0, v0, v0}, Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".asc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, p0, v3

    aget-object v2, p0, v2

    aget-object p0, p0, v4

    const/16 v5, 0x69

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_4

    move v0, v4

    :cond_4
    invoke-static {v1, v3, v2, v4, v0}, Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_5
    aget-object v0, p0, v0

    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, p0, v4

    aget-object v1, p0, v3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    aget-object p0, p0, v4

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".out"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lorg/bouncycastle/openpgp/examples/KeyBasedFileProcessor;->decryptFile(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v0, "usage: KeyBasedFileProcessor -d|-e [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
