.class public Lorg/apache/sshd/common/mac/BaseMac;
.super Ljava/lang/Object;
.source "BaseMac.java"

# interfaces
.implements Lorg/apache/sshd/common/mac/Mac;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final bsize:I

.field private final defbsize:I

.field private final etmMode:Z

.field private mac:Ljavax/crypto/Mac;

.field private s:Ljava/lang/String;

.field private final tmp:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bsize"    # I
    .param p3, "defbsize"    # I
    .param p4, "etmMode"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/sshd/common/mac/BaseMac;->algorithm:Ljava/lang/String;

    .line 42
    iput p2, p0, Lorg/apache/sshd/common/mac/BaseMac;->bsize:I

    .line 43
    iput p3, p0, Lorg/apache/sshd/common/mac/BaseMac;->defbsize:I

    .line 44
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->tmp:[B

    .line 45
    iput-boolean p4, p0, Lorg/apache/sshd/common/mac/BaseMac;->etmMode:Z

    .line 46
    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BaseMac;->getBlockSize()I

    move-result v0

    .line 98
    .local v0, "blockSize":I
    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BaseMac;->getDefaultBlockSize()I

    move-result v1

    .line 99
    .local v1, "defaultSize":I
    if-eq v0, v1, :cond_0

    .line 100
    iget-object v2, p0, Lorg/apache/sshd/common/mac/BaseMac;->mac:Ljavax/crypto/Mac;

    iget-object v3, p0, Lorg/apache/sshd/common/mac/BaseMac;->tmp:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 101
    iget-object v2, p0, Lorg/apache/sshd/common/mac/BaseMac;->tmp:[B

    invoke-static {v2, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/mac/BaseMac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 105
    :goto_0
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->bsize:I

    return v0
.end method

.method public getDefaultBlockSize()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->defbsize:I

    return v0
.end method

.method public init([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    array-length v0, p1

    iget v1, p0, Lorg/apache/sshd/common/mac/BaseMac;->defbsize:I

    if-le v0, v1, :cond_0

    .line 71
    new-array v0, v1, [B

    .line 72
    .local v0, "tmp":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    move-object p1, v0

    .line 76
    .end local v0    # "tmp":[B
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/apache/sshd/common/mac/BaseMac;->algorithm:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    .local v0, "skey":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v1, p0, Lorg/apache/sshd/common/mac/BaseMac;->algorithm:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/common/mac/BaseMac;->mac:Ljavax/crypto/Mac;

    .line 78
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 79
    return-void
.end method

.method public isEncryptThenMac()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->etmMode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
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

    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BaseMac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] -  block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BaseMac;->getBlockSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BaseMac;->getDefaultBlockSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes, encrypt-then-mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BaseMac;->isEncryptThenMac()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->s:Ljava/lang/String;

    .line 115
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->s:Ljava/lang/String;

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 92
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 93
    return-void
.end method

.method public updateUInt(J)V
    .locals 5
    .param p1, "i"    # J

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BaseMac;->tmp:[B

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 84
    const/16 v1, 0x10

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 85
    const/16 v1, 0x8

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 86
    long-to-int v1, p1

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 87
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/sshd/common/mac/BaseMac;->update([BII)V

    .line 88
    return-void
.end method
