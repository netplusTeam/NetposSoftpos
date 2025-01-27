.class public Lorg/apache/sshd/common/cipher/BaseCipher;
.super Ljava/lang/Object;
.source "BaseCipher.java"

# interfaces
.implements Lorg/apache/sshd/common/cipher/Cipher;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final blkSize:I

.field private cipher:Ljavax/crypto/Cipher;

.field private final ivsize:I

.field private final kdfSize:I

.field private final keySize:I

.field private s:Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "ivsize"    # I
    .param p2, "kdfSize"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySize"    # I
    .param p5, "transformation"    # Ljava/lang/String;
    .param p6, "blkSize"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->ivsize:I

    .line 47
    iput p2, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->kdfSize:I

    .line 48
    const-string v0, "No algorithm"

    invoke-static {p3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->algorithm:Ljava/lang/String;

    .line 49
    iput p4, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->keySize:I

    .line 50
    const-string v0, "No transformation"

    invoke-static {p5, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->transformation:Ljava/lang/String;

    .line 51
    iput p6, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->blkSize:I

    .line 52
    return-void
.end method

.method protected static resize([BI)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "size"    # I

    .line 120
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 121
    new-array v0, p1, [B

    .line 122
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object p0, v0

    .line 125
    .end local v0    # "tmp":[B
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected createCipherInstance(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)Ljavax/crypto/Cipher;
    .locals 4
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 97
    .local v0, "instance":Ljavax/crypto/Cipher;
    sget-object v1, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Encrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    .line 98
    invoke-virtual {v1, p1}, Lorg/apache/sshd/common/cipher/Cipher$Mode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 101
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherBlockSize()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->blkSize:I

    return v0
.end method

.method protected getCipherInstance()Ljavax/crypto/Cipher;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getIVSize()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->ivsize:I

    return v0
.end method

.method public getKdfSize()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->kdfSize:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->keySize:I

    return v0
.end method

.method public getTransformation()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)V
    .locals 1
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getKdfSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/cipher/BaseCipher;->initializeKeyData(Lorg/apache/sshd/common/cipher/Cipher$Mode;[BI)[B

    move-result-object p2

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getIVSize()I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/sshd/common/cipher/BaseCipher;->initializeIVData(Lorg/apache/sshd/common/cipher/Cipher$Mode;[BI)[B

    move-result-object p3

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/cipher/BaseCipher;->createCipherInstance(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->cipher:Ljavax/crypto/Cipher;

    .line 89
    return-void
.end method

.method protected initializeIVData(Lorg/apache/sshd/common/cipher/Cipher$Mode;[BI)[B
    .locals 1
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "iv"    # [B
    .param p3, "reqLen"    # I

    .line 111
    invoke-static {p2, p3}, Lorg/apache/sshd/common/cipher/BaseCipher;->resize([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected initializeKeyData(Lorg/apache/sshd/common/cipher/Cipher$Mode;[BI)[B
    .locals 1
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "key"    # [B
    .param p3, "reqLen"    # I

    .line 107
    invoke-static {p2, p3}, Lorg/apache/sshd/common/cipher/BaseCipher;->resize([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ivSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getIVSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kdfSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getKdfSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getTransformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BaseCipher;->getCipherBlockSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->s:Ljava/lang/String;

    .line 140
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->s:Ljava/lang/String;

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update([BII)V
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BaseCipher;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 117
    return-void
.end method
