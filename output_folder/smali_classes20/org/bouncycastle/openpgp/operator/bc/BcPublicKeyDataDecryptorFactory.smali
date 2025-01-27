.class public Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# static fields
.field private static final KEY_CONVERTER:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;


# instance fields
.field private final pgpPrivKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    sput-object v0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->KEY_CONVERTER:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->pgpPrivKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/bouncycastle/crypto/BlockCipher;[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public recoverSessionData(I[[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->KEY_CONVERTER:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->pgpPrivKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v1, :cond_5

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object v1

    new-instance v5, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v5, v1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-virtual {v5, v4, v0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_0

    goto :goto_2

    :cond_0
    check-cast v0, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array v0, p1, [B

    aget-object v1, p2, v4

    array-length v6, v1

    sub-int/2addr v6, v3

    const/4 v7, 0x3

    if-le v6, p1, :cond_1

    array-length v6, v1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v1, v7, v6}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_0

    :cond_1
    array-length v6, v1

    sub-int/2addr v6, v3

    sub-int v6, p1, v6

    array-length v8, v1

    sub-int/2addr v8, v3

    invoke-static {v1, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v0, v4, p1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    :goto_0
    aget-object p2, p2, v2

    move v1, v4

    :goto_1
    if-eq v1, p1, :cond_2

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v1, p2

    sub-int/2addr v1, v3

    if-le v1, p1, :cond_3

    array-length p1, p2

    sub-int/2addr p1, v7

    invoke-virtual {v5, p2, v7, p1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    :cond_3
    array-length v1, p2

    sub-int/2addr v1, v3

    sub-int v1, p1, v1

    array-length v2, p2

    sub-int/2addr v2, v3

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v0, v4, p1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    :cond_4
    :goto_2
    aget-object p1, p2, v4

    array-length p2, p1

    sub-int/2addr p2, v3

    invoke-virtual {v5, p1, v3, p2}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    :goto_3
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->pgpPrivKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    aget-object p2, p2, v4

    aget-byte v1, p2, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v5, 0x1

    array-length v7, p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "encoded length out of range"

    if-gt v6, v7, :cond_9

    :try_start_1
    new-array v7, v1, [B

    invoke-static {p2, v3, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v3, p2, v5

    and-int/lit16 v3, v3, 0xff

    add-int v5, v6, v3

    array-length v9, p2

    if-gt v5, v9, :cond_8

    new-array v5, v3, [B

    invoke-static {p2, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    sget-object v6, Lorg/bouncycastle/asn1/cryptlib/CryptlibObjectIdentifiers;->curvey25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x21

    if-ne v1, p2, :cond_6

    const/16 p2, 0x40

    aget-byte v1, v7, v4

    if-ne p2, v1, :cond_6

    new-instance p2, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {p2, v7, v2}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    new-instance v1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, p2, v0, v4}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Curve25519 public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    move-object p2, v0

    check-cast p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p2

    new-instance v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance p2, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p2, v1}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->getFieldSize()I

    move-result p2

    invoke-static {p2, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    :goto_4
    new-instance p2, Lorg/bouncycastle/openpgp/operator/bc/RFC6637KDFCalculator;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v2

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/openpgp/operator/bc/RFC6637KDFCalculator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->pgpPrivKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-static {v1, v2}, Lorg/bouncycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2, v0, v1}, Lorg/bouncycastle/openpgp/operator/bc/RFC6637KDFCalculator;->createKey([B[B)[B

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object p1

    invoke-interface {p1, v4, v2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p1, v5, v4, v3}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v8}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v8}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception decrypting session info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception creating user keying material: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
