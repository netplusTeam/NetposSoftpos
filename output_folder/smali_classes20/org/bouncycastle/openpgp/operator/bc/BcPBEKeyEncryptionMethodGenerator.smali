.class public Lorg/bouncycastle/openpgp/operator/bc/BcPBEKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;


# direct methods
.method public constructor <init>([C)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPBEKeyEncryptionMethodGenerator;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method public constructor <init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method


# virtual methods
.method protected encryptSessionInfo(I[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/bouncycastle/crypto/BlockCipher;[B[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object p1

    array-length p2, p3

    new-array p2, p2, [B

    const/4 v4, 0x0

    array-length v5, p3

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encryption failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;

    return-object p0
.end method
