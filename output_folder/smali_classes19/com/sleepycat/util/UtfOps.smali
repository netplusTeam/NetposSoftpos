.class public Lcom/sleepycat/util/UtfOps;
.super Ljava/lang/Object;
.source "UtfOps.java"


# static fields
.field private static EMPTY_BYTES:[B

.field private static EMPTY_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/util/UtfOps;->EMPTY_BYTES:[B

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/sleepycat/util/UtfOps;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToChars([BI[CIIZ)I
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "byteOffset"    # I
    .param p2, "chars"    # [C
    .param p3, "charOffset"    # I
    .param p4, "len"    # I
    .param p5, "isByteLen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 182
    if-eqz p5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    add-int/2addr p4, v0

    .line 183
    :goto_1
    if-eqz p5, :cond_1

    move v0, p1

    goto :goto_2

    :cond_1
    move v0, p3

    :goto_2
    if-ge v0, p4, :cond_4

    .line 184
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "byteOffset":I
    .local v0, "byteOffset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 185
    .local p1, "char1":I
    and-int/lit16 v1, p1, 0xff

    shr-int/lit8 v1, v1, 0x4

    const/16 v2, 0x80

    packed-switch v1, :pswitch_data_0

    .line 207
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 198
    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteOffset":I
    .local v1, "byteOffset":I
    aget-byte v0, p0, v0

    .line 199
    .local v0, "char2":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "byteOffset":I
    .local v3, "byteOffset":I
    aget-byte v1, p0, v1

    .line 200
    .local v1, "char3":I
    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v2, :cond_2

    and-int/lit16 v4, v1, 0xc0

    if-ne v4, v2, :cond_2

    .line 202
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "charOffset":I
    .local v2, "charOffset":I
    and-int/lit8 v4, p1, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v5, v0, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v1, 0x3f

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p2, p3

    .line 205
    move p3, v2

    move p1, v3

    goto :goto_1

    .line 201
    .end local v2    # "charOffset":I
    .restart local p3    # "charOffset":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 190
    .end local v1    # "char3":I
    .end local v3    # "byteOffset":I
    .local v0, "byteOffset":I
    :pswitch_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteOffset":I
    .local v1, "byteOffset":I
    aget-byte v0, p0, v0

    .line 191
    .local v0, "char2":I
    and-int/lit16 v3, v0, 0xc0

    if-ne v3, v2, :cond_3

    .line 194
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "charOffset":I
    .restart local v2    # "charOffset":I
    and-int/lit8 v3, p1, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v0, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 196
    move p1, v1

    move p3, v2

    goto :goto_1

    .line 192
    .end local v2    # "charOffset":I
    .restart local p3    # "charOffset":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 187
    .end local v1    # "byteOffset":I
    .local v0, "byteOffset":I
    :pswitch_3
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "charOffset":I
    .local v1, "charOffset":I
    int-to-char v2, p1

    aput-char v2, p2, p3

    .line 188
    move p1, v0

    move p3, v1

    goto :goto_1

    .line 210
    .end local v0    # "byteOffset":I
    .end local v1    # "charOffset":I
    .local p1, "byteOffset":I
    .restart local p3    # "charOffset":I
    :cond_4
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static bytesToString([BII)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 267
    if-nez p2, :cond_0

    sget-object v0, Lcom/sleepycat/util/UtfOps;->EMPTY_STRING:Ljava/lang/String;

    return-object v0

    .line 268
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sleepycat/util/UtfOps;->getCharLength([BII)I

    move-result v0

    .line 269
    .local v0, "charLen":I
    new-array v7, v0, [C

    .line 270
    .local v7, "chars":[C
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, v7

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/util/UtfOps;->bytesToChars([BI[CIIZ)I

    .line 271
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public static charsToBytes([CI[BII)V
    .locals 4
    .param p0, "chars"    # [C
    .param p1, "charOffset"    # I
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "charLength"    # I

    .line 230
    add-int/2addr p4, p1

    .line 231
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 232
    aget-char v1, p0, v0

    .line 233
    .local v1, "c":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 234
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "byteOffset":I
    .local v2, "byteOffset":I
    int-to-byte v3, v1

    aput-byte v3, p2, p3

    move p3, v2

    goto :goto_1

    .line 235
    .end local v2    # "byteOffset":I
    .restart local p3    # "byteOffset":I
    :cond_0
    const/16 v2, 0x7ff

    if-le v1, v2, :cond_1

    .line 236
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "byteOffset":I
    .restart local v2    # "byteOffset":I
    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 237
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "byteOffset":I
    .restart local p3    # "byteOffset":I
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 238
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "byteOffset":I
    .restart local v2    # "byteOffset":I
    shr-int/lit8 v3, v1, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    move p3, v2

    goto :goto_1

    .line 240
    .end local v2    # "byteOffset":I
    .restart local p3    # "byteOffset":I
    :cond_1
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "byteOffset":I
    .restart local v2    # "byteOffset":I
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 241
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "byteOffset":I
    .restart local p3    # "byteOffset":I
    shr-int/lit8 v3, v1, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 231
    .end local v1    # "c":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static getByteLength([C)I
    .locals 2
    .param p0, "chars"    # [C

    .line 59
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/sleepycat/util/UtfOps;->getByteLength([CII)I

    move-result v0

    return v0
.end method

.method public static getByteLength([CII)I
    .locals 4
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "len":I
    add-int/2addr p2, p1

    .line 78
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 79
    aget-char v2, p0, v1

    .line 80
    .local v2, "c":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_0
    const/16 v3, 0x7ff

    if-le v2, v3, :cond_1

    .line 83
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 78
    .end local v2    # "c":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static getCharLength([B)I
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 107
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/sleepycat/util/UtfOps;->getCharLength([BII)I

    move-result v0

    return v0
.end method

.method public static getCharLength([BII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "charCount":I
    add-int/2addr p2, p1

    .line 132
    :goto_0
    if-ge p1, p2, :cond_0

    .line 133
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 144
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 141
    :pswitch_1
    add-int/lit8 p1, p1, 0x3

    .line 142
    goto :goto_1

    .line 138
    :pswitch_2
    add-int/lit8 p1, p1, 0x2

    .line 139
    goto :goto_1

    .line 135
    :pswitch_3
    add-int/lit8 p1, p1, 0x1

    .line 136
    nop

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getZeroTerminatedByteLength([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "len":I
    :goto_0
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    aget-byte p1, p0, p1

    if-eqz p1, :cond_0

    .line 44
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    .line 46
    :cond_0
    return v0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/util/UtfOps;->EMPTY_BYTES:[B

    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 285
    .local v0, "chars":[C
    invoke-static {v0}, Lcom/sleepycat/util/UtfOps;->getByteLength([C)I

    move-result v1

    new-array v1, v1, [B

    .line 286
    .local v1, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lcom/sleepycat/util/UtfOps;->charsToBytes([CI[BII)V

    .line 287
    return-object v1
.end method
