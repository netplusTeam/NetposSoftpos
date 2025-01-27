.class public Lorg/bouncycastle/openpgp/examples/SignedFileProcessor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "-s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    aget-object v1, p0, v3

    const-string v4, "-a"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p0, v4

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".asc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v2

    const/4 v4, 0x4

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v2, v0, v1, p0, v3}, Lorg/bouncycastle/openpgp/examples/SignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".bpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v3

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v3, v1, v2, p0, v0}, Lorg/bouncycastle/openpgp/examples/SignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CZ)V

    goto :goto_0

    :cond_1
    aget-object v0, p0, v0

    const-string v1, "-v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p0, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/openpgp/examples/SignedFileProcessor;->verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v0, "usage: SignedFileProcessor -v|-s [-a] file keyfile [passPhrase]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p4, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p2, v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/examples/PGPExampleUtil;->readSecretKey(Ljava/io/InputStream;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v1, "BC"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {p3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignerUserID(ZLjava/lang/String;)V

    invoke-virtual {p3}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    :cond_1
    new-instance p1, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {p1, v4}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    new-instance p3, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateOnePassVersion(Z)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->encode(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    const/16 v2, 0x62

    invoke-virtual {p0, p3, v2, v1}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update(B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->close()V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->close()V

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_3
    return-void
.end method

.method private static verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    new-instance v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPLiteralData;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v5, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v4, p1, v5}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->getKeyID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;->getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v5, "BC"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    int-to-byte v2, p1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->update(B)V

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/openpgp/PGPSignatureList;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verify(Lorg/bouncycastle/openpgp/PGPSignature;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verified."

    goto :goto_1

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verification failed."

    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
