.class Lorg/bouncycastle/openpgp/operator/bc/BcUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDataDecryptor(ZLorg/bouncycastle/crypto/BlockCipher;[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createStreamCipher(ZLorg/bouncycastle/crypto/BlockCipher;Z[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/openpgp/operator/bc/BcUtil$1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil$1;-><init>(Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-object p1
.end method

.method static createStreamCipher(ZLorg/bouncycastle/crypto/BlockCipher;Z[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz p2, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_0
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    if-eqz p2, :cond_1

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, p0, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    return-object v0
.end method

.method public static createSymmetricKeyWrapper(ZLorg/bouncycastle/crypto/BlockCipher;[B[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p1, v1, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0
.end method

.method static decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method
