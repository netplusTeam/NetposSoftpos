.class public Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_KDF_PARAMETERS:Lorg/bouncycastle/openpgp/PGPKdfParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/openpgp/PGPKdfParameters;

    const/16 v1, 0x8

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->DEFAULT_KDF_PARAMETERS:Lorg/bouncycastle/openpgp/PGPKdfParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPrivateBCPGKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/bcpg/BCPGKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string/jumbo p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    check-cast p2, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/EdSecretBCPGKey;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->getEncoded()[B

    move-result-object p2

    invoke-direct {v1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/EdSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :sswitch_1
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :sswitch_2
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object p2

    invoke-direct {v1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :sswitch_3
    check-cast p2, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :sswitch_4
    check-cast p2, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :sswitch_5
    check-cast p2, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private getPublicBCPGKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/bcpg/BCPGKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    instance-of p4, p3, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p4, :cond_0

    check-cast p3, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    new-instance p1, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    :cond_0
    instance-of p4, p3, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz p4, :cond_1

    check-cast p3, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, p4, v0, p1, p3}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_1
    instance-of p4, p3, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    if-eqz p4, :cond_2

    check-cast p3, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, p4, p1, p3}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_2
    instance-of p4, p3, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz p4, :cond_5

    check-cast p3, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p4

    check-cast p4, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetKdfParameters(Lorg/bouncycastle/openpgp/PGPAlgorithmParameters;)Lorg/bouncycastle/openpgp/PGPKdfParameters;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p4}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p4

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p1

    invoke-direct {p2, p4, p3, v0, p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;II)V

    return-object p2

    :cond_3
    const/16 p2, 0x13

    if-ne p1, p2, :cond_4

    new-instance p1, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p4}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string/jumbo p2, "unknown EC algorithm"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of p1, p3, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    const/16 p4, 0x40

    const/4 v0, 0x0

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    new-array p1, v1, [B

    aput-byte p4, p1, v0

    check-cast p3, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    invoke-virtual {p3, p1, v2}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->encode([BI)V

    new-instance p2, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    sget-object p3, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance p4, Ljava/math/BigInteger;

    invoke-direct {p4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    return-object p2

    :cond_6
    instance-of p1, p3, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    if-eqz p1, :cond_7

    new-array p1, v1, [B

    aput-byte p4, p1, v0

    check-cast p3, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {p3, p1, v2}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->encode([BI)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetKdfParameters(Lorg/bouncycastle/openpgp/PGPAlgorithmParameters;)Lorg/bouncycastle/openpgp/PGPKdfParameters;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    sget-object p4, Lorg/bouncycastle/asn1/cryptlib/CryptlibObjectIdentifiers;->curvey25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result p1

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p2

    invoke-direct {p3, p4, v0, p1, p2}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;II)V

    return-object p3

    :cond_7
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string/jumbo p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private implGetKdfParameters(Lorg/bouncycastle/openpgp/PGPAlgorithmParameters;)Lorg/bouncycastle/openpgp/PGPKdfParameters;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->DEFAULT_KDF_PARAMETERS:Lorg/bouncycastle/openpgp/PGPKdfParameters;

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/openpgp/PGPKdfParameters;

    :goto_0
    return-object p1
.end method

.method private implGetParametersEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;)Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p1

    new-instance v6, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method private implGetPrivateKeyEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;Lorg/bouncycastle/bcpg/ECSecretBCPGKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetParametersEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;)Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v0
.end method

.method private implGetPrivateKeyPKCS8(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method

.method private implGetPublicKeyEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetParametersEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;)Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v1
.end method

.method private implGetPublicKeyX509(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPGPPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateBCPGKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v0
.end method

.method public getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPublicBCPGKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/openpgp/PGPPublicKey;

    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1, p4, p2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    new-instance p1, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-direct {p3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object p3
.end method

.method public getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    goto/16 :goto_0

    :sswitch_0
    check-cast p1, Lorg/bouncycastle/bcpg/EdSecretBCPGKey;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/EdSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPrivateKeyPKCS8(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :sswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPrivateKeyEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;Lorg/bouncycastle/bcpg/ECSecretBCPGKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :sswitch_2
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    sget-object v1, Lorg/bouncycastle/asn1/cryptlib/CryptlibObjectIdentifiers;->curvey25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPrivateKeyPKCS8(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPrivateKeyEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;Lorg/bouncycastle/bcpg/ECSecretBCPGKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :sswitch_3
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    new-instance v1, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    return-object v1

    :sswitch_4
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    new-instance v1, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V

    return-object v1

    :sswitch_5
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    new-instance v10, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v10

    :goto_0
    const-string/jumbo v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Exception constructing key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length v0, p1

    if-lt v0, v3, :cond_0

    aget-byte v0, p1, v2

    if-ne v1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    array-length v2, p1

    invoke-static {p1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPublicKeyX509(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Ed25519 public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPublicKeyEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :sswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v4, Lorg/bouncycastle/asn1/cryptlib/CryptlibObjectIdentifiers;->curvey25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length v0, p1

    if-lt v0, v3, :cond_1

    aget-byte v0, p1, v2

    if-ne v1, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    array-length v2, p1

    invoke-static {p1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPublicKeyX509(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Curve25519 public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->implGetPublicKeyEC(Lorg/bouncycastle/bcpg/ECPublicBCPGKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1

    :sswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    new-instance v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    return-object v0

    :sswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    new-instance v0, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    :sswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    new-instance v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :goto_0
    const-string/jumbo v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception constructing public key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
    .end sparse-switch
.end method
