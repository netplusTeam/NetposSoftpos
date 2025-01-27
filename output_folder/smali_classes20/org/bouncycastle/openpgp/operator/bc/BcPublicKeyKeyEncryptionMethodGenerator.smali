.class public Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;


# static fields
.field private static final X_HDR:B = 0x40t


# instance fields
.field private keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    new-instance p1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method

.method private encryptSessionInfo(Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;[B[B[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/RFC6637KDFCalculator;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/openpgp/operator/bc/RFC6637KDFCalculator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/openpgp/operator/bc/RFC6637KDFCalculator;->createKey([B[B)[B

    move-result-object p3

    invoke-direct {v1, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-boolean p3, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->sessionKeyObfuscation:Z

    invoke-static {p2, p3}, Lorg/bouncycastle/openpgp/operator/PGPPad;->padSessionData([BZ)[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object p4, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {p3, v1, p4}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 p4, 0x1

    invoke-interface {p1, p4, p3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p3, p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p3}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4, p5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p2, p3}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p2

    array-length p3, p2

    add-int/2addr p3, p4

    array-length p5, p1

    add-int/2addr p3, p5

    new-array p3, p3, [B

    array-length p5, p2

    invoke-static {p2, v0, p3, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p5, p2

    array-length v1, p1

    int-to-byte v1, v1

    aput-byte v1, p3, p5

    array-length p2, p2

    add-int/2addr p2, p4

    array-length p4, p1

    invoke-static {p1, v0, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method


# virtual methods
.method protected encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const-string v0, "exception encrypting session info: "

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-static {p1, v2}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v10

    invoke-virtual {v7}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    sget-object v2, Lorg/bouncycastle/asn1/cryptlib/CryptlibObjectIdentifiers;->curvey25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v3

    new-array v9, v3, [B

    invoke-virtual {v2, v1, v9, v5}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    const/16 v1, 0x21

    new-array v11, v1, [B

    const/16 v1, 0x40

    aput-byte v1, v11, v5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {p1, v11, v4}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->encode([BI)V

    move-object v6, p0

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;[B[B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-object p1, v1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v3, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v4, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, p1, v4}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->getFieldSize()I

    move-result v2

    invoke-static {v2, v1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v9

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v11

    move-object v6, p0

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;[B[B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {p1, v4, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v1, p2

    invoke-interface {p1, p2, v5, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
