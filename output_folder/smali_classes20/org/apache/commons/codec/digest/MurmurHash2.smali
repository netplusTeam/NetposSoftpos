.class public final Lorg/apache/commons/codec/digest/MurmurHash2;
.super Ljava/lang/Object;
.source "MurmurHash2.java"


# static fields
.field private static final M32:I = 0x5bd1e995

.field private static final M64:J = -0x395b586ca42e166bL

.field private static final R32:I = 0x18

.field private static final R64:I = 0x2f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static getLittleEndianInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 296
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static getLittleEndianLong([BI)J
    .locals 7
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 310
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hash32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 149
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 150
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash32([BI)I

    move-result v1

    return v1
.end method

.method public static hash32(Ljava/lang/String;II)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "length"    # I

    .line 171
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash32(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hash32([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 127
    const v0, -0x68b84d74

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash32([BII)I

    move-result v0

    return v0
.end method

.method public static hash32([BII)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I

    .line 75
    xor-int v0, p2, p1

    .line 78
    .local v0, "h":I
    shr-int/lit8 v1, p1, 0x2

    .line 81
    .local v1, "nblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const v3, 0x5bd1e995

    if-ge v2, v1, :cond_0

    .line 82
    shl-int/lit8 v4, v2, 0x2

    .line 83
    .local v4, "index":I
    invoke-static {p0, v4}, Lorg/apache/commons/codec/digest/MurmurHash2;->getLittleEndianInt([BI)I

    move-result v5

    .line 84
    .local v5, "k":I
    mul-int/2addr v5, v3

    .line 85
    ushr-int/lit8 v6, v5, 0x18

    xor-int/2addr v5, v6

    .line 86
    mul-int/2addr v5, v3

    .line 87
    mul-int/2addr v0, v3

    .line 88
    xor-int/2addr v0, v5

    .line 81
    .end local v4    # "index":I
    .end local v5    # "k":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_0
    shl-int/lit8 v2, v1, 0x2

    .line 93
    .local v2, "index":I
    sub-int v4, p1, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 95
    :pswitch_0
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v0, v4

    .line 97
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v0, v4

    .line 99
    :pswitch_2
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v0, v4

    .line 100
    mul-int/2addr v0, v3

    .line 105
    :goto_1
    ushr-int/lit8 v4, v0, 0xd

    xor-int/2addr v0, v4

    .line 106
    mul-int/2addr v0, v3

    .line 107
    ushr-int/lit8 v3, v0, 0xf

    xor-int/2addr v0, v3

    .line 109
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash64(Ljava/lang/String;)J
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 263
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 264
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash64([BI)J

    move-result-wide v1

    return-wide v1
.end method

.method public static hash64(Ljava/lang/String;II)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "length"    # I

    .line 285
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash64(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 241
    const v0, -0x1e85eb9b

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash64([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BII)J
    .locals 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I

    .line 183
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 185
    .local v0, "h":J
    shr-int/lit8 v2, p1, 0x3

    .line 188
    .local v2, "nblocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x2f

    if-ge v3, v2, :cond_0

    .line 189
    shl-int/lit8 v7, v3, 0x3

    .line 190
    .local v7, "index":I
    invoke-static {p0, v7}, Lorg/apache/commons/codec/digest/MurmurHash2;->getLittleEndianLong([BI)J

    move-result-wide v8

    .line 192
    .local v8, "k":J
    mul-long/2addr v8, v4

    .line 193
    ushr-long v10, v8, v6

    xor-long/2addr v8, v10

    .line 194
    mul-long/2addr v8, v4

    .line 196
    xor-long/2addr v0, v8

    .line 197
    mul-long/2addr v0, v4

    .line 188
    .end local v7    # "index":I
    .end local v8    # "k":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    .end local v3    # "i":I
    :cond_0
    shl-int/lit8 v3, v2, 0x3

    .line 201
    .local v3, "index":I
    sub-int v7, p1, v3

    const-wide/16 v8, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 203
    :pswitch_0
    add-int/lit8 v7, v3, 0x6

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x30

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 205
    :pswitch_1
    add-int/lit8 v7, v3, 0x5

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x28

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 207
    :pswitch_2
    add-int/lit8 v7, v3, 0x4

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x20

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 209
    :pswitch_3
    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x18

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 211
    :pswitch_4
    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x10

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 213
    :pswitch_5
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x8

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 215
    :pswitch_6
    aget-byte v7, p0, v3

    int-to-long v10, v7

    and-long v7, v10, v8

    xor-long/2addr v0, v7

    .line 216
    mul-long/2addr v0, v4

    .line 219
    :goto_1
    ushr-long v7, v0, v6

    xor-long/2addr v0, v7

    .line 220
    mul-long/2addr v0, v4

    .line 221
    ushr-long v4, v0, v6

    xor-long/2addr v0, v4

    .line 223
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
