.class public Lorg/apache/sshd/common/cipher/BaseRC4Cipher;
.super Lorg/apache/sshd/common/cipher/BaseCipher;
.source "BaseRC4Cipher.java"


# static fields
.field public static final SKIP_SIZE:I = 0x600


# direct methods
.method public constructor <init>(IIII)V
    .locals 7
    .param p1, "ivsize"    # I
    .param p2, "kdfSize"    # I
    .param p3, "keySize"    # I
    .param p4, "blkSize"    # I

    .line 32
    const-string v3, "ARCFOUR"

    const-string v5, "RC4"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/cipher/BaseCipher;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected createCipherInstance(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)Ljavax/crypto/Cipher;
    .locals 9
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseRC4Cipher;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 43
    .local v0, "instance":Ljavax/crypto/Cipher;
    sget-object v1, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Encrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    .line 44
    invoke-virtual {v1, p1}, Lorg/apache/sshd/common/cipher/Cipher$Mode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseRC4Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 49
    new-array v7, v2, [B

    .line 50
    .local v7, "foo":[B
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_1
    const/16 v1, 0x600

    if-ge v8, v1, :cond_1

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 50
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 54
    .end local v8    # "i":I
    :cond_1
    return-object v0
.end method

.method protected initializeIVData(Lorg/apache/sshd/common/cipher/Cipher$Mode;[BI)[B
    .locals 0
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "iv"    # [B
    .param p3, "reqLen"    # I

    .line 37
    return-object p2
.end method
