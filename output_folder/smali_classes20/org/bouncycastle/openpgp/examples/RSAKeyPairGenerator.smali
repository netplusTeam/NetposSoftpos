.class public Lorg/bouncycastle/openpgp/examples/RSAKeyPairGenerator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p5, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    move-object v1, p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v0, v1

    :goto_0
    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    new-instance v5, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move-object v3, p2

    invoke-direct {v5, v1, p2, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;-><init>(ILjava/security/KeyPair;Ljava/util/Date;)V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    const/16 v4, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {v10, v2, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v7}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V

    const-string v3, "BC"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-result-object v11

    move-object v3, v1

    move-object v6, p3

    invoke-direct/range {v3 .. v11}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p5, :cond_1

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    move-object v2, p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    move-object v0, v2

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v0, "RSA"

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    array-length v0, p0

    const-string v1, "RSAKeyPairGenerator [-a] identity passPhrase"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    aget-object v0, p0, v3

    const-string v5, "-a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    array-length v0, p0

    const/4 v6, 0x3

    if-ge v0, v6, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "secret.asc"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v1, "pub.asc"

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    aget-object v5, p0, v5

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/openpgp/examples/RSAKeyPairGenerator;->exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v0, "secret.bpg"

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "pub.bpg"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    aget-object v1, p0, v3

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v0

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/openpgp/examples/RSAKeyPairGenerator;->exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V

    :goto_0
    return-void
.end method
