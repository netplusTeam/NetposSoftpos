.class Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;
.super Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private iv:[B

.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V
    .locals 6

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V

    return-void
.end method


# virtual methods
.method public encryptKeyData([B[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->encryptKeyData([B[B[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public encryptKeyData([B[B[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->encAlgorithm:I

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->iv:[B

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->random:Ljava/security/SecureRandom;

    if-nez p2, :cond_1

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->random:Ljava/security/SecureRandom;

    :cond_1
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->iv:[B

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/bouncycastle/crypto/BlockCipher;[B[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object p1

    new-array p2, p5, [B

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

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

    const-string p4, "decryption failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public getCipherIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->iv:[B

    return-object v0
.end method
