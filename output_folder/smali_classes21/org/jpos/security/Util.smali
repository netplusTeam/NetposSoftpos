.class public Lorg/jpos/security/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDESParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 39
    aget-byte v1, p0, v0

    .line 40
    .local v1, "b":I
    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 38
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static isDESParityAdjusted([B)Z
    .locals 2
    .param p0, "bytes"    # [B

    .line 52
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 53
    .local v0, "correct":[B
    invoke-static {v0}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 54
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method
