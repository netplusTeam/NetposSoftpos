.class Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPGPDataEncryptor"
.end annotation


# instance fields
.field private final c:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)Z

    move-result p1

    invoke-static {v1, v0, p1, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createStreamCipher(ZLorg/bouncycastle/crypto/BlockCipher;Z[B)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Lorg/bouncycastle/crypto/BufferedBlockCipher;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getIntegrityCalculator()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/io/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-object v0
.end method
