.class public Lorg/bouncycastle/openpgp/operator/PGPPad;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static padSessionData([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/operator/PGPPad;->padSessionData([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static padSessionData([BZ)[B
    .locals 4

    array-length v0, p0

    ushr-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x3

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    sub-int p1, v1, v0

    int-to-byte p1, p1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, v1, :cond_1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static unpadSessionData([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xff

    sub-int v2, v0, v2

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_0

    sub-int v7, v3, v5

    shr-int/lit8 v7, v7, 0x1f

    aget-byte v8, p0, v5

    xor-int/2addr v8, v1

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x7

    or-int/2addr v1, v6

    rsub-int/lit8 v0, v0, 0x28

    shr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    new-array v0, v2, [B

    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "bad padding found in session data"

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
