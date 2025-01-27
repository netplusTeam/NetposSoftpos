.class public Lorg/bouncycastle/crypto/engines/VMPCKSA3Engine;
.super Lorg/bouncycastle/crypto/engines/VMPCEngine;
.source "VMPCKSA3Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/VMPCEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "VMPC-KSA3"

    return-object v0
.end method

.method protected initKey([B[B)V
    .locals 8

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
    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 18
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v5, v1, 0xff

    aget-byte v6, v3, v5

    add-int/2addr v4, v6

    array-length v7, p2

    rem-int v7, v1, v7

    aget-byte v7, p2, v7

    add-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    .line 20
    aget-byte v7, v3, v4

    aput-byte v7, v3, v5

    .line 21
    aput-byte v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_3
    if-ge p2, v2, :cond_3

    .line 26
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, p2, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, p2, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v3, v3, 0xff

    .line 28
    aget-byte v6, v1, v3

    aput-byte v6, v1, v4

    .line 29
    aput-byte v5, v1, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    nop

    .line 32
    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    return-void
.end method
