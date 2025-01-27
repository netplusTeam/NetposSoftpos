.class public Lcom/itextpdf/kernel/crypto/AESCipher;
.super Ljava/lang/Object;
.source "AESCipher.java"


# instance fields
.field private bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;


# direct methods
.method public constructor <init>(Z[B[B)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [B
    .param p3, "iv"    # [B

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    .line 71
    .local v0, "aes":Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 72
    .local v1, "cbc":Lorg/bouncycastle/crypto/BlockCipher;
    new-instance v2, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 73
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 74
    .local v2, "kp":Lorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v2, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 75
    .local v3, "piv":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v4, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v4, p1, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 76
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    .line 92
    .local v0, "neededLen":I
    new-array v2, v0, [B

    .line 95
    .local v2, "outp":[B
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v3, v2, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v3, "n":I
    nop

    .line 99
    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 100
    new-array v4, v3, [B

    .line 101
    .local v4, "outp2":[B
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-object v4

    .line 105
    .end local v4    # "outp2":[B
    :cond_0
    return-object v2

    .line 96
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/Exception;
    return-object v2
.end method

.method public update([BII)[B
    .locals 8
    .param p1, "inp"    # [B
    .param p2, "inpOff"    # I
    .param p3, "inpLen"    # I

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    .line 81
    .local v0, "neededLen":I
    if-lez v0, :cond_0

    .line 82
    new-array v1, v0, [B

    .local v1, "outp":[B
    goto :goto_0

    .line 84
    .end local v1    # "outp":[B
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 86
    .restart local v1    # "outp":[B
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    .line 87
    return-object v1
.end method
