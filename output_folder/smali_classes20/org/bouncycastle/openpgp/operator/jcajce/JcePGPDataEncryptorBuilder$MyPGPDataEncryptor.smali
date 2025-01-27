.class Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPGPDataEncryptor"
.end annotation


# instance fields
.field private final c:Ljavax/crypto/Cipher;

.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$200(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result v1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createStreamCipher(IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imvalid algorithm parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

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

    const-string v1, "invalid key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getIntegrityCalculator()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
