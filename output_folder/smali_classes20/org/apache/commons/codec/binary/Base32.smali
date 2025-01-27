.class public Lorg/apache/commons/codec/binary/Base32;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base32.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_1BITS:J = 0x1L

.field private static final MASK_2BITS:J = 0x3L

.field private static final MASK_3BITS:J = 0x7L

.field private static final MASK_4BITS:J = 0xfL

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    .line 78
    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    .line 89
    const/16 v1, 0x77

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 106
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "pad"    # B

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/codec/binary/Base32;-><init>(ZB)V

    .line 202
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .line 216
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[B)V

    .line 217
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .line 238
    const/4 v0, 0x0

    const/16 v1, 0x3d

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 239
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z

    .line 263
    const/16 v0, 0x3d

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 264
    return-void
.end method

.method public constructor <init>(I[BZB)V
    .locals 6
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z
    .param p4, "padding"    # B

    .line 289
    sget-object v5, Lorg/apache/commons/codec/binary/Base32;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZBLorg/apache/commons/codec/CodecPolicy;)V

    .line 290
    return-void
.end method

.method public constructor <init>(I[BZBLorg/apache/commons/codec/CodecPolicy;)V
    .locals 9
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z
    .param p4, "padding"    # B
    .param p5, "decodingPolicy"    # Lorg/apache/commons/codec/CodecPolicy;

    .line 317
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    array-length v1, p2

    move v6, v1

    :goto_0
    const/4 v3, 0x5

    const/16 v4, 0x8

    move-object v2, p0

    move v5, p1

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V

    .line 319
    if-eqz p3, :cond_1

    .line 320
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 321
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    .line 323
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 324
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    .line 326
    :goto_1
    const/16 v1, 0x8

    if-lez p1, :cond_4

    .line 327
    if-eqz p2, :cond_3

    .line 331
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    array-length v2, p2

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 336
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    .line 337
    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 332
    :cond_2
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain Base32 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "sep":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0, but lineSeparator is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_4
    iput v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    .line 342
    :goto_2
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    .line 344
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/Base32;->isInAlphabet(B)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p4}, Lorg/apache/commons/codec/binary/Base32;->isWhiteSpace(B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 347
    return-void

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad must not be in alphabet or whitespace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "useHex"    # Z

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3d

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 179
    return-void
.end method

.method public constructor <init>(ZB)V
    .locals 2
    .param p1, "useHex"    # Z
    .param p2, "padding"    # B

    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 191
    return-void
.end method

.method private validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 4
    .param p1, "emptyBitsMask"    # J
    .param p3, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 604
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32;->isStrictDecoding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p3, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strict decoding: Last encoded character (before the paddings if any) is a valid base 32 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_1
    :goto_0
    return-void
.end method

.method private validateTrailingCharacters()V
    .locals 2

    .line 618
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32;->isStrictDecoding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strict decoding: Last encoded character(s) (before the paddings if any) are valid base 32 alphabet but not a possible encoding. Decoding requires either 2, 4, 5, or 7 trailing 5-bit characters to create bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 17
    .param p1, "input"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 374
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v3, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    const/4 v3, 0x1

    if-gez v1, :cond_1

    .line 378
    iput-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 380
    :cond_1
    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, p2

    .end local p2    # "inPos":I
    .local v4, "inPos":I
    .local v5, "i":I
    :goto_0
    const/16 v6, 0x18

    const/16 v7, 0x10

    const/16 v8, 0x8

    const-wide/16 v9, 0xff

    if-ge v5, v1, :cond_6

    .line 381
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inPos":I
    .local v11, "inPos":I
    aget-byte v4, p1, v4

    .line 382
    .local v4, "b":B
    iget-byte v12, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    if-ne v4, v12, :cond_2

    .line 384
    iput-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 385
    move v4, v11

    goto/16 :goto_2

    .line 387
    :cond_2
    iget v12, v0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {v0, v12, v2}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v12

    .line 388
    .local v12, "buffer":[B
    if-ltz v4, :cond_4

    iget-object v13, v0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v14, v13

    if-ge v4, v14, :cond_4

    .line 389
    aget-byte v13, v13, v4

    .line 390
    .local v13, "result":I
    if-ltz v13, :cond_3

    .line 391
    iget v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v14, v3

    rem-int/2addr v14, v8

    iput v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 393
    iget-wide v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v16, 0x5

    shl-long v14, v14, v16

    move/from16 p2, v4

    .end local v4    # "b":B
    .local p2, "b":B
    int-to-long v3, v13

    add-long/2addr v14, v3

    iput-wide v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 394
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v3, :cond_5

    .line 395
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v4, 0x20

    shr-long/2addr v14, v4

    and-long/2addr v14, v9

    long-to-int v4, v14

    int-to-byte v4, v4

    aput-byte v4, v12, v3

    .line 396
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v14, v6

    and-long/2addr v14, v9

    long-to-int v4, v14

    int-to-byte v4, v4

    aput-byte v4, v12, v3

    .line 397
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v14, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v6, v14, v7

    and-long/2addr v6, v9

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v12, v3

    .line 398
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v12, v3

    .line 399
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr v6, v9

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v12, v3

    goto :goto_1

    .line 390
    .end local p2    # "b":B
    .restart local v4    # "b":B
    :cond_3
    move/from16 p2, v4

    .end local v4    # "b":B
    .restart local p2    # "b":B
    goto :goto_1

    .line 388
    .end local v13    # "result":I
    .end local p2    # "b":B
    .restart local v4    # "b":B
    :cond_4
    move/from16 p2, v4

    .line 380
    .end local v4    # "b":B
    .end local v12    # "buffer":[B
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v11

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 408
    .end local v5    # "i":I
    .end local v11    # "inPos":I
    .local v4, "inPos":I
    :cond_6
    :goto_2
    iget-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v3, :cond_7

    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-lez v3, :cond_7

    .line 409
    iget v3, v0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    .line 417
    .local v3, "buffer":[B
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 461
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 452
    :pswitch_0
    const-wide/16 v11, 0x7

    invoke-direct {v0, v11, v12, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 453
    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x3

    shr-long/2addr v11, v5

    iput-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 454
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v5, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v11, v6

    and-long/2addr v11, v9

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 455
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v6, v11, v7

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 456
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 457
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 458
    goto/16 :goto_3

    .line 444
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/codec/binary/Base32;->validateTrailingCharacters()V

    .line 446
    iget-wide v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v11, 0x6

    shr-long/2addr v5, v11

    iput-wide v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 447
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v6, v11, v7

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 448
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 449
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 450
    goto/16 :goto_3

    .line 437
    :pswitch_2
    const-wide/16 v5, 0x1

    invoke-direct {v0, v5, v6, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 438
    iget-wide v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v11, 0x1

    shr-long/2addr v5, v11

    iput-wide v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 439
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v6, v11, v7

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 440
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 441
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 442
    goto :goto_3

    .line 431
    :pswitch_3
    const-wide/16 v5, 0xf

    invoke-direct {v0, v5, v6, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 432
    iget-wide v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x4

    shr-long/2addr v5, v7

    iput-wide v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 433
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 434
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 435
    goto :goto_3

    .line 426
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/codec/binary/Base32;->validateTrailingCharacters()V

    .line 428
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x7

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 429
    goto :goto_3

    .line 420
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/codec/binary/Base32;->validateTrailingCharacters()V

    .line 422
    :pswitch_6
    const-wide/16 v5, 0x3

    invoke-direct {v0, v5, v6, v2}, Lorg/apache/commons/codec/binary/Base32;->validateCharacter(JLorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 423
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x2

    shr-long/2addr v6, v8

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 464
    .end local v3    # "buffer":[B
    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 16
    .param p1, "input"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 485
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-boolean v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v3, :cond_0

    .line 486
    return-void

    .line 490
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_3

    .line 491
    iput-boolean v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 492
    iget v5, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_1

    iget v5, v0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-nez v5, :cond_1

    .line 493
    return-void

    .line 495
    :cond_1
    iget v5, v0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {v0, v5, v2}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v5

    .line 496
    .local v5, "buffer":[B
    iget v6, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 497
    .local v6, "savedPos":I
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    packed-switch v7, :pswitch_data_0

    .line 541
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 531
    :pswitch_0
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x1b

    shr-long/2addr v11, v8

    long-to-int v8, v11

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 532
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x16

    shr-long/2addr v11, v8

    long-to-int v8, v11

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 533
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x11

    shr-long/2addr v11, v8

    long-to-int v8, v11

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 534
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0xc

    shr-long/2addr v11, v8

    long-to-int v8, v11

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 535
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x7

    shr-long/2addr v11, v8

    long-to-int v8, v11

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 536
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v8, v11, v9

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 537
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shl-long/2addr v8, v10

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 538
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 539
    goto/16 :goto_0

    .line 521
    :pswitch_1
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v12, 0x13

    shr-long/2addr v10, v12

    long-to-int v10, v10

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 522
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v12, 0xe

    shr-long/2addr v10, v12

    long-to-int v10, v10

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 523
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v12, 0x9

    shr-long/2addr v10, v12

    long-to-int v10, v10

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 524
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v10, v8

    long-to-int v8, v10

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v9, v8

    aput-byte v8, v5, v7

    .line 525
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shl-long/2addr v9, v4

    long-to-int v4, v9

    and-int/lit8 v4, v4, 0x1f

    aget-byte v4, v8, v4

    aput-byte v4, v5, v7

    .line 526
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 527
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 528
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 529
    goto/16 :goto_0

    .line 511
    :pswitch_2
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v12, 0xb

    shr-long/2addr v10, v12

    long-to-int v10, v10

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 512
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v12, 0x6

    shr-long/2addr v10, v12

    long-to-int v10, v10

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 513
    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v10, v4

    long-to-int v4, v10

    and-int/lit8 v4, v4, 0x1f

    aget-byte v4, v9, v4

    aput-byte v4, v5, v7

    .line 514
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shl-long v8, v9, v8

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 515
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 516
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 517
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 518
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 519
    goto :goto_0

    .line 501
    :pswitch_3
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long v10, v11, v10

    long-to-int v8, v10

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 502
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shl-long v8, v10, v9

    long-to-int v8, v8

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v4

    .line 503
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 504
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 505
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 506
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 507
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 508
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v7, v0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v7, v5, v4

    .line 509
    goto :goto_0

    .line 499
    :pswitch_4
    nop

    .line 543
    :goto_0
    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int/2addr v7, v6

    add-int/2addr v4, v7

    iput v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 545
    iget v4, v0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v4, :cond_2

    iget v4, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v4, :cond_2

    .line 546
    iget-object v4, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    iget v7, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v4, v3, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    iget v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 549
    .end local v5    # "buffer":[B
    .end local v6    # "savedPos":I
    :cond_2
    move/from16 v5, p2

    goto/16 :goto_2

    .line 550
    :cond_3
    const/4 v5, 0x0

    move v6, v5

    move/from16 v5, p2

    .end local p2    # "inPos":I
    .local v5, "inPos":I
    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_6

    .line 551
    iget v7, v0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {v0, v7, v2}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v7

    .line 552
    .local v7, "buffer":[B
    iget v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v8, v4

    const/4 v9, 0x5

    rem-int/2addr v8, v9

    iput v8, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 553
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "inPos":I
    .local v8, "inPos":I
    aget-byte v5, p1, v5

    .line 554
    .local v5, "b":I
    if-gez v5, :cond_4

    .line 555
    add-int/lit16 v5, v5, 0x100

    .line 557
    :cond_4
    iget-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    int-to-long v13, v5

    add-long/2addr v10, v13

    iput-wide v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 558
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v10, :cond_5

    .line 559
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v15, 0x23

    shr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit8 v13, v13, 0x1f

    aget-byte v11, v11, v13

    aput-byte v11, v7, v10

    .line 560
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v15, 0x1e

    shr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit8 v13, v13, 0x1f

    aget-byte v11, v11, v13

    aput-byte v11, v7, v10

    .line 561
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v15, 0x19

    shr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit8 v13, v13, 0x1f

    aget-byte v11, v11, v13

    aput-byte v11, v7, v10

    .line 562
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v15, 0x14

    shr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit8 v13, v13, 0x1f

    aget-byte v11, v11, v13

    aput-byte v11, v7, v10

    .line 563
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v15, 0xf

    shr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit8 v13, v13, 0x1f

    aget-byte v11, v11, v13

    aput-byte v11, v7, v10

    .line 564
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v15, 0xa

    shr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit8 v13, v13, 0x1f

    aget-byte v11, v11, v13

    aput-byte v11, v7, v10

    .line 565
    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    shr-long/2addr v13, v9

    long-to-int v9, v13

    and-int/lit8 v9, v9, 0x1f

    aget-byte v9, v11, v9

    aput-byte v9, v7, v10

    .line 566
    iget v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v10, v0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v13, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    long-to-int v11, v13

    and-int/lit8 v11, v11, 0x1f

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 567
    iget v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/2addr v9, v12

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 568
    iget v9, v0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v9, :cond_5

    iget v9, v0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v9, v10, :cond_5

    .line 569
    iget-object v9, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    iget v10, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v11, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v11, v11

    invoke-static {v9, v3, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v10, v0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 571
    iput v3, v2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 550
    .end local v5    # "b":I
    .end local v7    # "buffer":[B
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto/16 :goto_1

    .line 576
    .end local v6    # "i":I
    .end local v8    # "inPos":I
    .local v5, "inPos":I
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .line 587
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
