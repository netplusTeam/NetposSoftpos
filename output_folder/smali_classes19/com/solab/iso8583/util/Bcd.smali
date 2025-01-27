.class public final Lcom/solab/iso8583/util/Bcd;
.super Ljava/lang/Object;
.source "Bcd.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeRightPaddedToBigInteger([BII)Ljava/math/BigInteger;
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 146
    new-array v0, p2, [C

    .line 147
    .local v0, "digits":[C
    const/4 v1, 0x0

    .line 148
    .local v1, "start":I
    move v2, p1

    .line 149
    .local v2, "i":I
    div-int/lit8 v3, p2, 0x2

    add-int/2addr v3, p1

    rem-int/lit8 v4, p2, 0x2

    add-int/2addr v3, v4

    .line 150
    .local v3, "limit":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 151
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "start":I
    .local v4, "start":I
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 152
    aget-byte v1, p0, v2

    const/16 v5, 0xf

    and-int/2addr v1, v5

    .line 153
    .local v1, "r":I
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "start":I
    .local v6, "start":I
    if-ne v1, v5, :cond_0

    const/16 v5, 0x20

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    :goto_1
    aput-char v5, v0, v4

    .line 150
    .end local v1    # "r":I
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_0

    .line 155
    .end local v6    # "start":I
    .local v1, "start":I
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method public static decodeRightPaddedToLong([BII)J
    .locals 11
    .param p0, "buf"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 56
    const/16 v0, 0x12

    if-gt p2, v0, :cond_2

    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "l":J
    const-wide/16 v2, 0x1

    .line 61
    .local v2, "power":J
    div-int/lit8 v4, p2, 0x2

    add-int/2addr v4, p1

    rem-int/lit8 v5, p2, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 62
    .local v4, "end":I
    aget-byte v5, p0, v4

    const/16 v6, 0xf

    and-int/2addr v5, v6

    const-wide/16 v7, 0xa

    if-ne v5, v6, :cond_0

    .line 63
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-long v9, v5

    add-long/2addr v0, v9

    .line 64
    mul-long/2addr v2, v7

    .line 65
    add-int/lit8 v4, v4, -0x1

    .line 67
    :cond_0
    move v5, v4

    .local v5, "i":I
    :goto_0
    if-lt v5, p1, :cond_1

    .line 68
    aget-byte v9, p0, v5

    and-int/2addr v9, v6

    int-to-long v9, v9

    mul-long/2addr v9, v2

    add-long/2addr v0, v9

    .line 69
    mul-long/2addr v2, v7

    .line 70
    aget-byte v9, p0, v5

    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    int-to-long v9, v9

    mul-long/2addr v9, v2

    add-long/2addr v0, v9

    .line 71
    mul-long/2addr v2, v7

    .line 67
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 73
    .end local v5    # "i":I
    :cond_1
    return-wide v0

    .line 57
    .end local v0    # "l":J
    .end local v2    # "power":J
    .end local v4    # "end":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Buffer too big to decode as long"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeToBigInteger([BII)Ljava/math/BigInteger;
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 126
    new-array v0, p2, [C

    .line 127
    .local v0, "digits":[C
    const/4 v1, 0x0

    .line 128
    .local v1, "start":I
    move v2, p1

    .line 129
    .local v2, "i":I
    rem-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_0

    .line 130
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "start":I
    .local v3, "start":I
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 131
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    .line 133
    .end local v3    # "start":I
    .restart local v1    # "start":I
    :cond_0
    :goto_0
    div-int/lit8 v3, p2, 0x2

    add-int/2addr v3, p1

    rem-int/lit8 v4, p2, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 134
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "start":I
    .restart local v3    # "start":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 135
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "start":I
    .restart local v1    # "start":I
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static decodeToLong([BII)J
    .locals 9
    .param p0, "buf"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 40
    const/16 v0, 0x12

    if-gt p2, v0, :cond_1

    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .local v0, "l":J
    const-wide/16 v2, 0x1

    .line 45
    .local v2, "power":J
    div-int/lit8 v4, p2, 0x2

    add-int/2addr v4, p1

    rem-int/lit8 v5, p2, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-lt v4, p1, :cond_0

    .line 46
    aget-byte v5, p0, v4

    and-int/lit8 v5, v5, 0xf

    int-to-long v5, v5

    mul-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 47
    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    .line 48
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    int-to-long v7, v7

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 49
    mul-long/2addr v2, v5

    .line 45
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 51
    .end local v4    # "i":I
    :cond_0
    return-wide v0

    .line 41
    .end local v0    # "l":J
    .end local v2    # "power":J
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Buffer too big to decode as long"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "buf"    # [B

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "charpos":I
    const/4 v1, 0x0

    .line 81
    .local v1, "bufpos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 84
    const/4 v0, 0x1

    .line 85
    const/4 v1, 0x1

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v0, 0x1

    .line 90
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 91
    add-int/lit8 v0, v0, 0x2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public static encodeRightPadded(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "buf"    # [B

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "bufpos":I
    const/4 v1, 0x0

    .line 103
    .local v1, "charpos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 104
    .local v2, "limit":I
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 105
    add-int/lit8 v2, v2, -0x1

    .line 108
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 110
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 111
    add-int/lit8 v1, v1, 0x2

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    shl-int/lit8 v3, v3, 0x4

    or-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 118
    :cond_2
    return-void
.end method

.method public static parseBcdLength(B)I
    .locals 2
    .param p0, "b"    # B

    .line 161
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0xa

    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    return v0
.end method

.method public static parseBcdLength2bytes([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 167
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x3e8

    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    return v0
.end method
