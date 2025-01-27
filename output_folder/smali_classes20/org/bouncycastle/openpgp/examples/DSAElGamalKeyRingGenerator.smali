.class public Lorg/bouncycastle/openpgp/examples/DSAElGamalKeyRingGenerator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p6, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    :cond_0
    new-instance v2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;

    const/16 v0, 0x11

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v0, p2, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;-><init>(ILjava/security/KeyPair;Ljava/util/Date;)V

    new-instance p2, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;

    const/16 v0, 0x10

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p2, v0, p3, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;-><init>(ILjava/security/KeyPair;Ljava/util/Date;)V

    new-instance p3, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object p3

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    new-instance p3, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;

    const/16 v1, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v3

    invoke-direct {v7, v3, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    const/16 v3, 0x9

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V

    const-string v3, "BC"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-result-object v8

    move-object v0, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;-><init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-virtual {p3, p2}, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->addSubKey(Lorg/bouncycastle/openpgp/PGPKeyPair;)V

    invoke-virtual {p3}, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->generateSecretKeyRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    if-eqz p6, :cond_1

    new-instance p0, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, p0

    :cond_1
    invoke-virtual {p3}, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->generatePublicKeyRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    array-length v0, p0

    const-string v1, "DSAElGamalKeyRingGenerator [-a] identity passPhrase"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    const-string v0, "DSA"

    const-string v4, "BC"

    invoke-static {v0, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v5, 0x400

    invoke-virtual {v0, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v8

    const-string v0, "ELGAMAL"

    invoke-static {v0, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "153d5d6172adb43045b68ae8e1de1070b6137005686d29d3d73a7749199681ee5b212c9b96bfdcfa5b20cd5e3fd2044895d609cf9b410b7a0f12ca1cb9a428cc"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v7, "9494fec095f3b85ee286542b3836fc81a5dd0a0349b4c239dd38744d488cf8e31db8bcb7d33b41abb9e5a33cca9144b1cef332c94bf0573bf047a3aca98cdf3b"

    invoke-direct {v5, v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v6, v5, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v9

    aget-object v0, p0, v3

    const-string v4, "-a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    array-length v0, p0

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v0, "secret.asc"

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    const-string v0, "pub.asc"

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    aget-object v10, p0, v4

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/openpgp/examples/DSAElGamalKeyRingGenerator;->exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v0, "secret.bpg"

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    const-string v0, "pub.bpg"

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    aget-object v10, p0, v3

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/openpgp/examples/DSAElGamalKeyRingGenerator;->exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V

    :goto_0
    return-void
.end method
