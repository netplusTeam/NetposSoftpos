.class Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;
.super Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;[CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public recoverKeyData(I[B[B[BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/bouncycastle/crypto/BlockCipher;[B[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object p1

    new-array p2, p6, [B

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

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
