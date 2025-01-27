.class public Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
.super Ljava/lang/Object;
.source "AESCipherCBCnoPad.java"


# instance fields
.field private cbc:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Z[B)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [B

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    .line 69
    .local v0, "aes":Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    .line 70
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 71
    .local v1, "kp":Lorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p1, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Z[B[B)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [B
    .param p3, "initVector"    # [B

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    .line 83
    .local v0, "aes":Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    .line 84
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 85
    .local v1, "kp":Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v1, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 86
    .local v2, "piv":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 87
    return-void
.end method


# virtual methods
.method public processBlock([BII)[B
    .locals 3
    .param p1, "inp"    # [B
    .param p2, "inpOff"    # I
    .param p3, "inpLen"    # I

    .line 90
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    rem-int v0, p3, v0

    if-nez v0, :cond_1

    .line 92
    new-array v0, p3, [B

    .line 93
    .local v0, "outp":[B
    const/4 v1, 0x0

    .line 94
    .local v1, "baseOffset":I
    :goto_0
    if-lez p3, :cond_0

    .line 95
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 96
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    sub-int/2addr p3, v2

    .line 97
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->cbc:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    .line 100
    :cond_0
    return-object v0

    .line 91
    .end local v0    # "outp":[B
    .end local v1    # "baseOffset":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not multiple of block: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
