.class public Lorg/bouncycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;
.source "VMPCEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field protected P:[B

.field protected n:B

.field protected s:B

.field protected workingIV:[B

.field protected workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    .line 8
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    .line 9
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "VMPC"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    .line 1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_2

    .line 7
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 9
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    instance-of p1, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 17
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    if-eqz p2, :cond_0

    .line 19
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length p2, p2

    const/16 v0, 0x300

    if-gt p2, v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    .line 26
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initKey([B[B)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 2
    const/16 v1, 0x100

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v2, 0x300

    if-ge v1, v2, :cond_1

    .line 10
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v1, 0xff

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, v1, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v3, v3, 0xff

    .line 12
    aget-byte v6, v2, v3

    aput-byte v6, v2, v4

    .line 13
    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_2
    if-ge p1, v2, :cond_2

    .line 17
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, p1, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    array-length v6, p2

    rem-int v6, p1, v6

    aget-byte v6, p2, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v3, v3, 0xff

    .line 19
    aget-byte v6, v1, v3

    aput-byte v6, v1, v4

    .line 20
    aput-byte v5, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 22
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 8

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    .line 6
    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 13
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v3, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v2, v2, 0xff

    .line 14
    aget-byte v6, v1, v2

    and-int/lit16 v7, v6, 0xff

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v1, v7

    .line 16
    nop

    .line 17
    aput-byte v6, v1, v4

    .line 18
    aput-byte v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 19
    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int v1, v0, p5

    add-int v2, v0, p2

    .line 22
    aget-byte v2, p1, v2

    xor-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    .line 23
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method

.method public returnByte(B)B
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v3, v2, 0xff

    aget-byte v4, v0, v3

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v1, v1, 0xff

    .line 2
    aget-byte v5, v0, v1

    and-int/lit16 v6, v5, 0xff

    aget-byte v6, v0, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v0, v6

    .line 4
    nop

    .line 5
    aput-byte v5, v0, v3

    .line 6
    aput-byte v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    .line 7
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    xor-int/2addr p1, v6

    int-to-byte p1, p1

    return p1
.end method
