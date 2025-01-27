.class final Lorg/bouncycastle/openpgp/operator/bc/BcUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/bouncycastle/crypto/BlockCipher;[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/bouncycastle/crypto/BufferedBlockCipher;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcUtil$1;->val$c:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcUtil$1;->val$c:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcUtil$1;->val$c:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-object v0
.end method

.method public getIntegrityCalculator()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    return-object v0
.end method
