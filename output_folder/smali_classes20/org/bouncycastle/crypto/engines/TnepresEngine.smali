.class public final Lorg/bouncycastle/crypto/engines/TnepresEngine;
.super Lorg/bouncycastle/crypto/engines/SerpentEngineBase;
.source "TnepresEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected decryptBlock([BI[BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    const/16 v1, 0xc

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 6
    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib7(IIII)V

    .line 7
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x7c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x7d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x7e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x7f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 8
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib6(IIII)V

    .line 9
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x78

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x79

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x7a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x7b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 10
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib5(IIII)V

    .line 11
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x74

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x75

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x76

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x77

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib4(IIII)V

    .line 13
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x70

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x71

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x72

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x73

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 14
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib3(IIII)V

    .line 15
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x6c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x6d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x6e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x6f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 16
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib2(IIII)V

    .line 17
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x68

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x69

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x6a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x6b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 18
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib1(IIII)V

    .line 19
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x64

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x65

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x66

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x67

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 20
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib0(IIII)V

    .line 21
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x60

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x61

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x62

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x63

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 22
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib7(IIII)V

    .line 23
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x5c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x5d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x5e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x5f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 24
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib6(IIII)V

    .line 25
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x58

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x59

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x5a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x5b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib5(IIII)V

    .line 27
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x54

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x55

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x56

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x57

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 28
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib4(IIII)V

    .line 29
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x50

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x51

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x52

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x53

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 30
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib3(IIII)V

    .line 31
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x4c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x4d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x4e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x4f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 32
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib2(IIII)V

    .line 33
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x48

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x49

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x4a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x4b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 34
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib1(IIII)V

    .line 35
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x44

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x45

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x46

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x47

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 36
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib0(IIII)V

    .line 37
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x40

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x41

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x42

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x43

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib7(IIII)V

    .line 39
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x3c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x3d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x3e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x3f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 40
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib6(IIII)V

    .line 41
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x38

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x39

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x3a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x3b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 42
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib5(IIII)V

    .line 43
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x34

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x35

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x36

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x37

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 44
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib4(IIII)V

    .line 45
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x30

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x31

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x32

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x33

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 46
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib3(IIII)V

    .line 47
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x2c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x2d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x2e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x2f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 48
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib2(IIII)V

    .line 49
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x28

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x29

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x2a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x2b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib1(IIII)V

    .line 51
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x24

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x25

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x26

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x27

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 52
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib0(IIII)V

    .line 53
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x20

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x21

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x22

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x23

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 54
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib7(IIII)V

    .line 55
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x1c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x1d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x1e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x1f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 56
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib6(IIII)V

    .line 57
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x18

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x19

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x1a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x1b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 58
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib5(IIII)V

    .line 59
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x14

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x15

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x16

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x17

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 60
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib4(IIII)V

    .line 61
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x10

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x11

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x12

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x13

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 62
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib3(IIII)V

    .line 63
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    aget v0, p2, v1

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0xd

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0xe

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0xf

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 64
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib2(IIII)V

    .line 65
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 v0, 0x8

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x9

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0xa

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0xb

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 66
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib1(IIII)V

    .line 67
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 v0, 0x4

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/4 v0, 0x5

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/4 v0, 0x6

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/4 v0, 0x7

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 68
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->inverseLT()V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->ib0(IIII)V

    .line 70
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 v0, 0x3

    aget p2, p2, v0

    xor-int/2addr p1, p2

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 71
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 v0, 0x2

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-static {p1, p3, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 72
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x8

    invoke-static {p1, p3, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 73
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/2addr p4, v1

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    add-int/lit8 v0, p2, 0x4

    .line 2
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    add-int/lit8 v0, p2, 0x8

    .line 3
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0xc

    add-int/2addr p2, v0

    .line 4
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 6
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 v1, 0x0

    aget v1, p2, v1

    xor-int/2addr p1, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/4 v3, 0x3

    aget p2, p2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p2, v3

    invoke-virtual {p0, p1, v1, v2, p2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 7
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/4 p2, 0x4

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/4 v3, 0x7

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 8
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x8

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0xb

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 9
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    aget p2, p1, v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0xf

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 10
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x10

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x11

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x12

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x13

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 11
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x14

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x15

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x16

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x17

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 12
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x18

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x19

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x1a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x1b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 13
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x1c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x1d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x1e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x1f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 14
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x20

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x21

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x22

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x23

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 15
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x24

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x25

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x26

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x27

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 16
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x28

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x29

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x2a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x2b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 17
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x2c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x2d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x2e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x2f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 18
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x30

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x31

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x32

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x33

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 19
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x34

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x35

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x36

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x37

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 20
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x38

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x39

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x3a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x3b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 21
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x3c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x3d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x3e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x3f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 22
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x40

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x41

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x42

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x43

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 23
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x44

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x45

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x46

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x47

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 24
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x48

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x49

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x4a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x4b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 25
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x4c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x4d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x4e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x4f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 26
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x50

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x51

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x52

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x53

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 27
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x54

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x55

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x56

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x57

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 28
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x58

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x59

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x5a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x5b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 29
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x5c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x5d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x5e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x5f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 30
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x60

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x61

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x62

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x63

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 31
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x64

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x65

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x66

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x67

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 32
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x68

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x69

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x6a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x6b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 33
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x6c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x6d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x6e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x6f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 34
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x70

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x71

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x72

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x73

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 35
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x74

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x75

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x76

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x77

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 36
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x78

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x79

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x7a

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x7b

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->LT()V

    .line 37
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x7c

    aget p2, p1, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x7d

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x7e

    aget v2, p1, v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x7f

    aget p1, p1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, v3

    invoke-virtual {p0, p2, v1, v2, p1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    .line 39
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x83

    aget p1, p1, p2

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr p1, p2

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 40
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x82

    aget p1, p1, p2

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-static {p1, p3, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 41
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x81

    aget p1, p1, p2

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x8

    invoke-static {p1, p3, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 42
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    const/16 p2, 0x80

    aget p1, p1, p2

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr p1, p2

    add-int/2addr p4, v0

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Tnepres"

    return-object v0
.end method

.method protected makeWorkingKey([B)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 5
    array-length v2, p1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 7
    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    aput v7, v1, v5

    add-int/lit8 v2, v2, -0x4

    move v5, v6

    goto :goto_0

    :cond_0
    if-nez v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    .line 12
    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    aput p1, v1, v5

    const/16 p1, 0x8

    const/4 v5, 0x1

    if-ge v2, p1, :cond_1

    .line 15
    aput v5, v1, v2

    :cond_1
    const/16 v2, 0x84

    .line 27
    new-array v6, v2, [I

    move v7, p1

    :goto_1
    const v8, -0x61c88647

    const/16 v9, 0xb

    if-ge v7, v0, :cond_2

    add-int/lit8 v10, v7, -0x8

    .line 34
    aget v11, v1, v10

    add-int/lit8 v12, v7, -0x5

    aget v12, v1, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x3

    aget v12, v1, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x1

    aget v12, v1, v12

    xor-int/2addr v11, v12

    xor-int/2addr v8, v11

    xor-int/2addr v8, v10

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 37
    invoke-static {v1, p1, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, p1

    :goto_2
    if-ge v1, v2, :cond_3

    add-int/lit8 v7, v1, -0x8

    .line 44
    aget v7, v6, v7

    add-int/lit8 v10, v1, -0x5

    aget v10, v6, v10

    xor-int/2addr v7, v10

    add-int/lit8 v10, v1, -0x3

    aget v10, v6, v10

    xor-int/2addr v7, v10

    add-int/lit8 v10, v1, -0x1

    aget v10, v6, v10

    xor-int/2addr v7, v10

    xor-int/2addr v7, v8

    xor-int/2addr v7, v1

    invoke-static {v7, v9}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 50
    aget v1, v6, v4

    aget v2, v6, v5

    const/4 v7, 0x2

    aget v8, v6, v7

    const/4 v10, 0x3

    aget v11, v6, v10

    invoke-virtual {p0, v1, v2, v8, v11}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    .line 51
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    aput v1, v6, v4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    aput v1, v6, v5

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    aput v1, v6, v7

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    aput v1, v6, v10

    .line 52
    aget v1, v6, v3

    const/4 v2, 0x5

    aget v4, v6, v2

    const/4 v5, 0x6

    aget v7, v6, v5

    const/4 v8, 0x7

    aget v10, v6, v8

    invoke-virtual {p0, v1, v4, v7, v10}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    .line 53
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    aput v1, v6, v3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    aput v1, v6, v2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    aput v1, v6, v5

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    aput v1, v6, v8

    .line 54
    aget v1, v6, p1

    const/16 v2, 0x9

    aget v3, v6, v2

    const/16 v4, 0xa

    aget v5, v6, v4

    aget v7, v6, v9

    invoke-virtual {p0, v1, v3, v5, v7}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    .line 55
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    aput v1, v6, p1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    aput p1, v6, v2

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    aput p1, v6, v4

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    aput p1, v6, v9

    .line 56
    const/16 p1, 0xc

    aget v1, v6, p1

    const/16 v2, 0xd

    aget v3, v6, v2

    const/16 v4, 0xe

    aget v5, v6, v4

    const/16 v7, 0xf

    aget v8, v6, v7

    invoke-virtual {p0, v1, v3, v5, v8}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    .line 57
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    aput v1, v6, p1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    aput p1, v6, v2

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    aput p1, v6, v4

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    aput p1, v6, v7

    .line 58
    aget p1, v6, v0

    const/16 v1, 0x11

    aget v2, v6, v1

    const/16 v3, 0x12

    aget v4, v6, v3

    const/16 v5, 0x13

    aget v7, v6, v5

    invoke-virtual {p0, p1, v2, v4, v7}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    .line 59
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    aput p1, v6, v1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    aput p1, v6, v3

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    aput p1, v6, v5

    .line 60
    const/16 p1, 0x14

    aget v0, v6, p1

    const/16 v1, 0x15

    aget v1, v6, v1

    const/16 v2, 0x16

    aget v2, v6, v2

    const/16 v3, 0x17

    aget v3, v6, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    .line 61
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    aput v0, v6, p1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x15

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x16

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x17

    aput p1, v6, v0

    const/16 p1, 0x18

    .line 62
    aget p1, v6, p1

    const/16 v0, 0x19

    aget v0, v6, v0

    const/16 v1, 0x1a

    aget v1, v6, v1

    const/16 v2, 0x1b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    .line 63
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x18

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x19

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x1a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x1b

    aput p1, v6, v0

    const/16 p1, 0x1c

    .line 64
    aget p1, v6, p1

    const/16 v0, 0x1d

    aget v0, v6, v0

    const/16 v1, 0x1e

    aget v1, v6, v1

    const/16 v2, 0x1f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    .line 65
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x1c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x1d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x1e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x1f

    aput p1, v6, v0

    const/16 p1, 0x20

    .line 66
    aget p1, v6, p1

    const/16 v0, 0x21

    aget v0, v6, v0

    const/16 v1, 0x22

    aget v1, v6, v1

    const/16 v2, 0x23

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    .line 67
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x20

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x21

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x22

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x23

    aput p1, v6, v0

    const/16 p1, 0x24

    .line 68
    aget p1, v6, p1

    const/16 v0, 0x25

    aget v0, v6, v0

    const/16 v1, 0x26

    aget v1, v6, v1

    const/16 v2, 0x27

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    .line 69
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x24

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x25

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x26

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x27

    aput p1, v6, v0

    const/16 p1, 0x28

    .line 70
    aget p1, v6, p1

    const/16 v0, 0x29

    aget v0, v6, v0

    const/16 v1, 0x2a

    aget v1, v6, v1

    const/16 v2, 0x2b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    .line 71
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x28

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x29

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x2a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x2b

    aput p1, v6, v0

    const/16 p1, 0x2c

    .line 72
    aget p1, v6, p1

    const/16 v0, 0x2d

    aget v0, v6, v0

    const/16 v1, 0x2e

    aget v1, v6, v1

    const/16 v2, 0x2f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    .line 73
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x2c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x2d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x2e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x2f

    aput p1, v6, v0

    const/16 p1, 0x30

    .line 74
    aget p1, v6, p1

    const/16 v0, 0x31

    aget v0, v6, v0

    const/16 v1, 0x32

    aget v1, v6, v1

    const/16 v2, 0x33

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    .line 75
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x30

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x31

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x32

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x33

    aput p1, v6, v0

    const/16 p1, 0x34

    .line 76
    aget p1, v6, p1

    const/16 v0, 0x35

    aget v0, v6, v0

    const/16 v1, 0x36

    aget v1, v6, v1

    const/16 v2, 0x37

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    .line 77
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x34

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x35

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x36

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x37

    aput p1, v6, v0

    const/16 p1, 0x38

    .line 78
    aget p1, v6, p1

    const/16 v0, 0x39

    aget v0, v6, v0

    const/16 v1, 0x3a

    aget v1, v6, v1

    const/16 v2, 0x3b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    .line 79
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x38

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x39

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x3a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x3b

    aput p1, v6, v0

    const/16 p1, 0x3c

    .line 80
    aget p1, v6, p1

    const/16 v0, 0x3d

    aget v0, v6, v0

    const/16 v1, 0x3e

    aget v1, v6, v1

    const/16 v2, 0x3f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    .line 81
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x3c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x3d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x3e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x3f

    aput p1, v6, v0

    const/16 p1, 0x40

    .line 82
    aget p1, v6, p1

    const/16 v0, 0x41

    aget v0, v6, v0

    const/16 v1, 0x42

    aget v1, v6, v1

    const/16 v2, 0x43

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    .line 83
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x40

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x41

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x42

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x43

    aput p1, v6, v0

    const/16 p1, 0x44

    .line 84
    aget p1, v6, p1

    const/16 v0, 0x45

    aget v0, v6, v0

    const/16 v1, 0x46

    aget v1, v6, v1

    const/16 v2, 0x47

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    .line 85
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x44

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x45

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x46

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x47

    aput p1, v6, v0

    const/16 p1, 0x48

    .line 86
    aget p1, v6, p1

    const/16 v0, 0x49

    aget v0, v6, v0

    const/16 v1, 0x4a

    aget v1, v6, v1

    const/16 v2, 0x4b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    .line 87
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x48

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x49

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x4a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x4b

    aput p1, v6, v0

    const/16 p1, 0x4c

    .line 88
    aget p1, v6, p1

    const/16 v0, 0x4d

    aget v0, v6, v0

    const/16 v1, 0x4e

    aget v1, v6, v1

    const/16 v2, 0x4f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    .line 89
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x4c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x4d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x4e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x4f

    aput p1, v6, v0

    const/16 p1, 0x50

    .line 90
    aget p1, v6, p1

    const/16 v0, 0x51

    aget v0, v6, v0

    const/16 v1, 0x52

    aget v1, v6, v1

    const/16 v2, 0x53

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    .line 91
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x50

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x51

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x52

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x53

    aput p1, v6, v0

    const/16 p1, 0x54

    .line 92
    aget p1, v6, p1

    const/16 v0, 0x55

    aget v0, v6, v0

    const/16 v1, 0x56

    aget v1, v6, v1

    const/16 v2, 0x57

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    .line 93
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x54

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x55

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x56

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x57

    aput p1, v6, v0

    const/16 p1, 0x58

    .line 94
    aget p1, v6, p1

    const/16 v0, 0x59

    aget v0, v6, v0

    const/16 v1, 0x5a

    aget v1, v6, v1

    const/16 v2, 0x5b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    .line 95
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x58

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x59

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x5a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x5b

    aput p1, v6, v0

    const/16 p1, 0x5c

    .line 96
    aget p1, v6, p1

    const/16 v0, 0x5d

    aget v0, v6, v0

    const/16 v1, 0x5e

    aget v1, v6, v1

    const/16 v2, 0x5f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    .line 97
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x5c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x5d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x5e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x5f

    aput p1, v6, v0

    const/16 p1, 0x60

    .line 98
    aget p1, v6, p1

    const/16 v0, 0x61

    aget v0, v6, v0

    const/16 v1, 0x62

    aget v1, v6, v1

    const/16 v2, 0x63

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    .line 99
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x60

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x61

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x62

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x63

    aput p1, v6, v0

    const/16 p1, 0x64

    .line 100
    aget p1, v6, p1

    const/16 v0, 0x65

    aget v0, v6, v0

    const/16 v1, 0x66

    aget v1, v6, v1

    const/16 v2, 0x67

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb2(IIII)V

    .line 101
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x64

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x65

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x66

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x67

    aput p1, v6, v0

    const/16 p1, 0x68

    .line 102
    aget p1, v6, p1

    const/16 v0, 0x69

    aget v0, v6, v0

    const/16 v1, 0x6a

    aget v1, v6, v1

    const/16 v2, 0x6b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb1(IIII)V

    .line 103
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x68

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x69

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x6a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x6b

    aput p1, v6, v0

    const/16 p1, 0x6c

    .line 104
    aget p1, v6, p1

    const/16 v0, 0x6d

    aget v0, v6, v0

    const/16 v1, 0x6e

    aget v1, v6, v1

    const/16 v2, 0x6f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb0(IIII)V

    .line 105
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x6c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x6d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x6e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x6f

    aput p1, v6, v0

    const/16 p1, 0x70

    .line 106
    aget p1, v6, p1

    const/16 v0, 0x71

    aget v0, v6, v0

    const/16 v1, 0x72

    aget v1, v6, v1

    const/16 v2, 0x73

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb7(IIII)V

    .line 107
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x70

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x71

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x72

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x73

    aput p1, v6, v0

    const/16 p1, 0x74

    .line 108
    aget p1, v6, p1

    const/16 v0, 0x75

    aget v0, v6, v0

    const/16 v1, 0x76

    aget v1, v6, v1

    const/16 v2, 0x77

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb6(IIII)V

    .line 109
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x74

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x75

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x76

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x77

    aput p1, v6, v0

    const/16 p1, 0x78

    .line 110
    aget p1, v6, p1

    const/16 v0, 0x79

    aget v0, v6, v0

    const/16 v1, 0x7a

    aget v1, v6, v1

    const/16 v2, 0x7b

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb5(IIII)V

    .line 111
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x78

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x79

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x7a

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x7b

    aput p1, v6, v0

    const/16 p1, 0x7c

    .line 112
    aget p1, v6, p1

    const/16 v0, 0x7d

    aget v0, v6, v0

    const/16 v1, 0x7e

    aget v1, v6, v1

    const/16 v2, 0x7f

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb4(IIII)V

    .line 113
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x7c

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x7d

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x7e

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x7f

    aput p1, v6, v0

    const/16 p1, 0x80

    .line 114
    aget p1, v6, p1

    const/16 v0, 0x81

    aget v0, v6, v0

    const/16 v1, 0x82

    aget v1, v6, v1

    const/16 v2, 0x83

    aget v2, v6, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->sb3(IIII)V

    .line 115
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v0, 0x80

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/16 v0, 0x81

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v0, 0x82

    aput p1, v6, v0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/16 v0, 0x83

    aput p1, v6, v0

    return-object v6

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be a multiple of 4 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
