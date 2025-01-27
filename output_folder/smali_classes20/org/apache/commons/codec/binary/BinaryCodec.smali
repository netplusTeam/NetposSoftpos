.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 44
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .locals 7
    .param p0, "ascii"    # [B

    .line 80
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 84
    :cond_0
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 89
    .local v0, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 90
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 91
    sub-int v5, v2, v3

    aget-byte v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 92
    aget-byte v5, v0, v1

    aget v4, v4, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 90
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v3    # "bits":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 96
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_3
    return-object v0
.end method

.method public static fromAscii([C)[B
    .locals 7
    .param p0, "ascii"    # [C

    .line 112
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 116
    :cond_0
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 121
    .local v0, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 122
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 123
    sub-int v5, v2, v3

    aget-char v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 124
    aget-byte v5, v0, v1

    aget v4, v4, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 122
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 121
    .end local v3    # "bits":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 128
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_3
    return-object v0

    .line 113
    .end local v0    # "l_raw":[B
    :cond_4
    :goto_2
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method private static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 139
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static toAsciiBytes([B)[B
    .locals 6
    .param p0, "raw"    # [B

    .line 152
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 156
    :cond_0
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 161
    .local v0, "l_ascii":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 162
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 163
    aget-byte v5, p0, v1

    aget v4, v4, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 164
    sub-int v4, v2, v3

    const/16 v5, 0x30

    aput-byte v5, v0, v4

    goto :goto_2

    .line 166
    :cond_1
    sub-int v4, v2, v3

    const/16 v5, 0x31

    aput-byte v5, v0, v4

    .line 162
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v3    # "bits":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 170
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_3
    return-object v0
.end method

.method public static toAsciiChars([B)[C
    .locals 6
    .param p0, "raw"    # [B

    .line 182
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 186
    :cond_0
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    .line 191
    .local v0, "l_ascii":[C
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 192
    const/4 v3, 0x0

    .local v3, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 193
    aget-byte v5, p0, v1

    aget v4, v4, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 194
    sub-int v4, v2, v3

    const/16 v5, 0x30

    aput-char v5, v0, v4

    goto :goto_2

    .line 196
    :cond_1
    sub-int v4, v2, v3

    const/16 v5, 0x31

    aput-char v5, v0, v4

    .line 192
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    .end local v3    # "bits":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 200
    .end local v1    # "ii":I
    .end local v2    # "jj":I
    :cond_3
    return-object v0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # [B

    .line 212
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 240
    if-nez p1, :cond_0

    .line 241
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 243
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 244
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0

    .line 246
    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 247
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 249
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 250
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 252
    :cond_3
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "ascii"    # [B

    .line 225
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 280
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 283
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "raw"    # [B

    .line 265
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ascii"    # Ljava/lang/String;

    .line 295
    if-nez p1, :cond_0

    .line 296
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0
.end method
