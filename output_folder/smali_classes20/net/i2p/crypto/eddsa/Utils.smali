.class public Lnet/i2p/crypto/eddsa/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bit([BI)I
    .locals 2
    .param p0, "h"    # [B
    .param p1, "i"    # I

    .line 68
    shr-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v1, p1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "raw"    # [B

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v0, "hex":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 97
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v6, v3, 0xf

    .line 98
    invoke-static {v6, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static equal(II)I
    .locals 4
    .param p0, "b"    # I
    .param p1, "c"    # I

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "result":I
    xor-int v1, p0, p1

    .line 31
    .local v1, "xor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 32
    shr-int v3, v1, v2

    or-int/2addr v0, v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "i":I
    :cond_0
    xor-int/lit8 v2, v0, 0x1

    and-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static equal([B[B)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "c"    # [B

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 46
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v1

    return v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 79
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 81
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 79
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static negative(I)I
    .locals 1
    .param p0, "b"    # I

    .line 58
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
