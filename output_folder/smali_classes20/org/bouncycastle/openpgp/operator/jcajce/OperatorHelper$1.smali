.class Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field final synthetic val$c:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;Ljavax/crypto/Cipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper$1;->val$c:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper$1;->val$c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper$1;->val$c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getIntegrityCalculator()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    return-object v0
.end method
