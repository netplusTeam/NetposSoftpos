.class Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;
.super Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;[CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public recoverSessionData(I[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/CFB/NoPadding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    array-length p3, p2

    const/4 v0, 0x1

    add-int/2addr p3, v0

    new-array p3, p3, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, p3, v1

    array-length p1, p2

    invoke-static {p2, v1, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "Exception recovering session info"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
