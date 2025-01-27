.class public Lorg/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 57
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    .line 63
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    .line 382
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 403
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Hex;-><init>(Ljava/nio/charset/Charset;)V

    .line 404
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lorg/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    .line 392
    return-void
.end method

.method public static decodeHex([C[BI)I
    .locals 6
    .param p0, "data"    # [C
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 94
    array-length v0, p0

    .line 96
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 100
    shr-int/lit8 v1, v0, 0x1

    .line 101
    .local v1, "outLen":I
    array-length v2, p1

    sub-int/2addr v2, p2

    if-lt v2, v1, :cond_1

    .line 106
    move v2, p2

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 107
    aget-char v4, p0, v3

    invoke-static {v4, v3}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 108
    .local v4, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 109
    aget-char v5, p0, v3

    invoke-static {v5, v3}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 106
    .end local v4    # "f":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    return v1

    .line 102
    :cond_1
    new-instance v2, Lorg/apache/commons/codec/DecoderException;

    const-string v3, "Output array is not large enough to accommodate decoded data."

    invoke-direct {v2, v3}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v1    # "outLen":I
    :cond_2
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    const-string v2, "Odd number of characters."

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeHex([C)[B
    .locals 2
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 76
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 77
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C[BI)I

    .line 78
    return-object v0
.end method

.method public static encodeHex([BIIZ[CI)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "dataOffset"    # I
    .param p2, "dataLen"    # I
    .param p3, "toLowerCase"    # Z
    .param p4, "out"    # [C
    .param p5, "outOffset"    # I

    .line 206
    if-eqz p3, :cond_0

    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    :goto_0
    move-object v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BII[C[CI)V

    .line 207
    return-void
.end method

.method private static encodeHex([BII[C[CI)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "dataOffset"    # I
    .param p2, "dataLen"    # I
    .param p3, "toDigits"    # [C
    .param p4, "out"    # [C
    .param p5, "outOffset"    # I

    .line 222
    move v0, p1

    .local v0, "i":I
    move v1, p5

    .local v1, "j":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 223
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, p3, v3

    aput-char v3, p4, v1

    .line 224
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p3, v3

    aput-char v3, p4, v2

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method public static encodeHex(Ljava/nio/ByteBuffer;)[C
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 241
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex(Ljava/nio/ByteBuffer;Z)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex(Ljava/nio/ByteBuffer;Z)[C
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "toLowerCase"    # Z

    .line 258
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex(Ljava/nio/ByteBuffer;[C)[C

    move-result-object v0

    return-object v0
.end method

.method protected static encodeHex(Ljava/nio/ByteBuffer;[C)[C
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "toDigits"    # [C

    .line 276
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .line 140
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BIIZ)[C
    .locals 7
    .param p0, "data"    # [B
    .param p1, "dataOffset"    # I
    .param p2, "dataLen"    # I
    .param p3, "toLowerCase"    # Z

    .line 188
    shl-int/lit8 v0, p2, 0x1

    new-array v0, v0, [C

    .line 189
    .local v0, "out":[C
    if-eqz p3, :cond_0

    sget-object v1, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    :goto_0
    move-object v4, v1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BII[C[CI)V

    .line 190
    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .line 154
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method protected static encodeHex([B[C)[C
    .locals 8
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .line 169
    array-length v0, p0

    .line 170
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 171
    .local v1, "out":[C
    array-length v4, p0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BII[C[CI)V

    .line 172
    return-object v1
.end method

.method public static encodeHexString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 316
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex(Ljava/nio/ByteBuffer;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static encodeHexString(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "toLowerCase"    # Z

    .line 332
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex(Ljava/nio/ByteBuffer;Z)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 288
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static encodeHexString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .line 301
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static toByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 343
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 345
    .local v0, "remaining":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 347
    .local v1, "byteArray":[B
    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    return-object v1

    .line 353
    .end local v1    # "byteArray":[B
    :cond_0
    new-array v1, v0, [B

    .line 354
    .restart local v1    # "byteArray":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 355
    return-object v1
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 367
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 368
    .local v0, "digit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 371
    return v0

    .line 369
    :cond_0
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 452
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 453
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 455
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 456
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 457
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->decode(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0

    .line 460
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 523
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 524
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "byteArray":[B
    goto :goto_0

    .line 525
    .end local v0    # "byteArray":[B
    :cond_0
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 526
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .restart local v0    # "byteArray":[B
    goto :goto_0

    .line 529
    .end local v0    # "byteArray":[B
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .restart local v0    # "byteArray":[B
    nop

    .line 534
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    return-object v1

    .line 530
    .end local v0    # "byteArray":[B
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p1, "array"    # Ljava/nio/ByteBuffer;

    .line 503
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "array"    # [B

    .line 483
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
