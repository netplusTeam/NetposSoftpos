.class public final Lio/netty/util/internal/ConstantTimeUtils;
.super Ljava/lang/Object;
.source "ConstantTimeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsConstantTime(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 37
    xor-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    .line 38
    .local v0, "z":I
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v0, v1

    .line 39
    shr-int/lit8 v1, v0, 0x8

    and-int/2addr v0, v1

    .line 40
    shr-int/lit8 v1, v0, 0x4

    and-int/2addr v0, v1

    .line 41
    shr-int/lit8 v1, v0, 0x2

    and-int/2addr v0, v1

    .line 42
    shr-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v1

    .line 43
    and-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static equalsConstantTime(JJ)I
    .locals 4
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 62
    xor-long v0, p0, p2

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    .line 63
    .local v0, "z":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    and-long/2addr v0, v2

    .line 64
    const/16 v2, 0x10

    shr-long v2, v0, v2

    and-long/2addr v0, v2

    .line 65
    const/16 v2, 0x8

    shr-long v2, v0, v2

    and-long/2addr v0, v2

    .line 66
    const/4 v2, 0x4

    shr-long v2, v0, v2

    and-long/2addr v0, v2

    .line 67
    const/4 v2, 0x2

    shr-long v2, v0, v2

    and-long/2addr v0, v2

    .line 68
    const/4 v2, 0x1

    shr-long v2, v0, v2

    and-long/2addr v0, v2

    .line 69
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public static equalsConstantTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .line 120
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 121
    return v2

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0, v2}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime(II)I

    move-result v1

    return v1
.end method

.method public static equalsConstantTime([BI[BII)I
    .locals 4
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "b":I
    add-int v1, p1, p4

    .line 98
    .local v1, "end":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 99
    aget-byte v2, p0, p1

    aget-byte v3, p2, p3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 98
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime(II)I

    move-result v2

    return v2
.end method
