.class public Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;
.source "ISO9797Alg3Mac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    .line 10
    instance-of v0, p1, Lorg/bouncycastle/crypto/engines/DESEngine;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 16
    iput-object p3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 17
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    .line 19
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    .line 21
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipher must be instance of DESEngine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAC size must be multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 8
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ge v1, v0, :cond_2

    .line 10
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 11
    iput v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ne v1, v0, :cond_1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 19
    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 22
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 25
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 28
    new-instance v0, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 30
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 31
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 33
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 34
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 41
    iget p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ISO9797Alg3"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 3
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "params must be an instance of KeyParameter or ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_1

    .line 21
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 25
    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 27
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v1, v3, :cond_3

    .line 29
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 30
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v4, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 31
    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_2

    .line 33
    :cond_3
    array-length v1, v0

    const/16 v5, 0x18

    if-ne v1, v5, :cond_5

    .line 35
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 36
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v4, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 37
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 45
    :goto_2
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 51
    :cond_4
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_3
    return-void

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key must be either 112 or 168 bit long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 6
    iput v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 11
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 4
    iput v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    if-ltz p3, :cond_1

    .line 8
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 10
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_0

    .line 14
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 18
    iput v5, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_0
    if-le p3, v0, :cond_0

    .line 24
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
