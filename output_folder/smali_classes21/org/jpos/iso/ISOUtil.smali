.class public Lorg/jpos/iso/ISOUtil;
.super Ljava/lang/Object;
.source "ISOUtil.java"


# static fields
.field public static final CHARSET:Ljava/nio/charset/Charset;

.field public static final EBCDIC:Ljava/nio/charset/Charset;

.field public static final ENCODING:Ljava/lang/String; = "ISO8859_1"

.field public static final ETX:B = 0x3t

.field public static final FS:B = 0x1ct

.field public static final GS:B = 0x1et

.field public static final RS:B = 0x1dt

.field public static final STX:B = 0x2t

.field public static final US:B = 0x1ft

.field public static final hexStrings:[Ljava/lang/String;

.field public static final unicodePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/jpos/iso/ISOUtil;->hexStrings:[Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v2, "d":Ljava/lang/StringBuilder;
    int-to-byte v3, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 56
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    int-to-byte v5, v1

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    sget-object v4, Lorg/jpos/iso/ISOUtil;->hexStrings:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 53
    .end local v2    # "d":Ljava/lang/StringBuilder;
    .end local v3    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    const-string v0, "u00([0-9a-fA-F]{2})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/iso/ISOUtil;->unicodePattern:Ljava/util/regex/Pattern;

    .line 74
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    .line 75
    const-string v0, "IBM1047"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jpos/iso/ISOUtil;->EBCDIC:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static asciiToEbcdic(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # [B
    .param p2, "offset"    # I

    .line 103
    invoke-static {p0}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    return-void
.end method

.method public static asciiToEbcdic([B[BI)V
    .locals 2
    .param p0, "s"    # [B
    .param p1, "e"    # [B
    .param p2, "offset"    # I

    .line 106
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0, p1, p2}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;[BI)V

    .line 107
    return-void
.end method

.method public static asciiToEbcdic(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/jpos/iso/ISOUtil;->EBCDIC:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static asciiToEbcdic([B)[B
    .locals 3
    .param p0, "a"    # [B

    .line 100
    sget-object v0, Lorg/jpos/iso/ISOUtil;->EBCDIC:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static bcd2str([BIIZ)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "padLeft"    # Z

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v0, "d":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-eqz p3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 285
    .local v1, "start":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    add-int v5, p2, v1

    if-ge v4, v5, :cond_3

    .line 286
    and-int/lit8 v5, v4, 0x1

    if-ne v5, v3, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    .line 287
    .local v5, "shift":I
    :goto_2
    shr-int/lit8 v6, v4, 0x1

    add-int/2addr v6, p1

    aget-byte v6, p0, v6

    shr-int/2addr v6, v5

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    .line 289
    .local v6, "c":C
    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 290
    const/16 v6, 0x3d

    .line 291
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    .end local v5    # "shift":I
    .end local v6    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 293
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bitSet2Int(Ljava/util/BitSet;)I
    .locals 6
    .param p0, "bs"    # Ljava/util/BitSet;

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "total":I
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 489
    .local v1, "b":I
    if-lez v1, :cond_1

    .line 490
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 491
    .local v2, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 492
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    add-int/2addr v0, v2

    .line 495
    :cond_0
    shr-int/lit8 v2, v2, 0x1

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .end local v2    # "value":I
    .end local v3    # "i":I
    :cond_1
    return v0
.end method

.method public static bitSet2String(Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # Ljava/util/BitSet;

    .line 425
    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v0

    .line 426
    .local v0, "len":I
    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 428
    .local v1, "d":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 429
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x31

    goto :goto_2

    :cond_1
    const/16 v3, 0x30

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 430
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bitSet2byte(Ljava/util/BitSet;)[B
    .locals 7
    .param p0, "b"    # Ljava/util/BitSet;

    .line 444
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3e

    shr-int/lit8 v0, v0, 0x6

    shl-int/lit8 v0, v0, 0x6

    .line 445
    .local v0, "len":I
    shr-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 446
    .local v1, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1

    .line 447
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    shr-int/lit8 v4, v2, 0x3

    aget-byte v5, v1, v4

    rem-int/lit8 v6, v2, 0x8

    shr-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 446
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x40

    if-le v0, v2, :cond_2

    .line 450
    const/4 v2, 0x0

    aget-byte v4, v1, v2

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 451
    :cond_2
    if-le v0, v3, :cond_3

    .line 452
    const/16 v2, 0x8

    aget-byte v4, v1, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 453
    :cond_3
    return-object v1
.end method

.method public static bitSet2byte(Ljava/util/BitSet;I)[B
    .locals 7
    .param p0, "b"    # Ljava/util/BitSet;
    .param p1, "bytes"    # I

    .line 469
    mul-int/lit8 v0, p1, 0x8

    .line 471
    .local v0, "len":I
    new-array v1, p1, [B

    .line 472
    .local v1, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1

    .line 473
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    shr-int/lit8 v4, v2, 0x3

    aget-byte v5, v1, v4

    rem-int/lit8 v6, v2, 0x8

    shr-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x40

    if-le v0, v2, :cond_2

    .line 477
    const/4 v2, 0x0

    aget-byte v4, v1, v2

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 478
    :cond_2
    if-le v0, v3, :cond_3

    .line 479
    const/16 v2, 0x8

    aget-byte v4, v1, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 480
    :cond_3
    return-object v1
.end method

.method public static bitSet2extendedByte(Ljava/util/BitSet;)[B
    .locals 7
    .param p0, "b"    # Ljava/util/BitSet;

    .line 1141
    const/16 v0, 0x80

    .line 1142
    .local v0, "len":I
    shr-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 1143
    .local v1, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1

    .line 1144
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1145
    shr-int/lit8 v4, v2, 0x3

    aget-byte v5, v1, v4

    rem-int/lit8 v6, v2, 0x8

    shr-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 1143
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1146
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    aget-byte v4, v1, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1147
    return-object v1
.end method

.method public static blankUnPad(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1054
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->unPadRight(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;
    .locals 5
    .param p0, "bmap"    # Ljava/util/BitSet;
    .param p1, "b"    # [B
    .param p2, "bitOffset"    # I

    .line 578
    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    .line 579
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 580
    shr-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x80

    rem-int/lit8 v4, v1, 0x8

    shr-int/2addr v3, v4

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 581
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    .line 579
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method

.method public static byte2BitSet([BII)Ljava/util/BitSet;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "maxBits"    # I

    .line 551
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 552
    .local v0, "b1":Z
    :goto_0
    array-length v4, p0

    add-int/lit8 v5, p1, 0x8

    if-le v4, v5, :cond_1

    add-int/lit8 v4, p1, 0x8

    aget-byte v4, p0, v4

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_1

    move v2, v3

    .line 554
    .local v2, "b65":Z
    :cond_1
    const/16 v3, 0x40

    if-le p2, v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/16 v3, 0xc0

    goto :goto_1

    :cond_2
    if-le p2, v3, :cond_3

    if-eqz v0, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    if-ge p2, v3, :cond_4

    move v3, p2

    .line 558
    .local v3, "len":I
    :cond_4
    :goto_1
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 559
    .local v4, "bmap":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 560
    shr-int/lit8 v6, v5, 0x3

    add-int/2addr v6, p1

    aget-byte v6, p0, v6

    rem-int/lit8 v7, v5, 0x8

    shr-int v7, v1, v7

    and-int/2addr v6, v7

    if-lez v6, :cond_5

    .line 561
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 559
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 562
    .end local v5    # "i":I
    :cond_6
    return-object v4
.end method

.method public static byte2BitSet([BIZ)Ljava/util/BitSet;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "bitZeroMeansExtended"    # Z

    .line 534
    const/16 v0, 0x40

    const/16 v1, 0x80

    if-eqz p2, :cond_0

    aget-byte v2, p0, p1

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 536
    .local v0, "len":I
    :cond_0
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 537
    .local v2, "bmap":Ljava/util/BitSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 538
    shr-int/lit8 v4, v3, 0x3

    add-int/2addr v4, p1

    aget-byte v4, p0, v4

    rem-int/lit8 v5, v3, 0x8

    shr-int v5, v1, v5

    and-int/2addr v4, v5

    if-lez v4, :cond_1

    .line 539
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 537
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bs"    # [B

    .line 701
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/jpos/iso/ISOUtil;->byte2hex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte2hex([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 757
    array-length v0, p0

    if-le v0, p1, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 760
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, v0}, Lorg/jpos/iso/ISOUtil;->byte2hexAppend([BIILjava/lang/StringBuilder;)V

    .line 761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 758
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static byte2hexAppend([BIILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 765
    array-length v0, p0

    if-le v0, p1, :cond_1

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1

    .line 767
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 768
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 769
    aget-byte v1, p0, v0

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static byte2int([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .line 734
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 737
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 738
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_1

    .line 739
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 741
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 742
    aget-byte v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 744
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 745
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0

    .line 735
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_2
    return v0
.end method

.method public static calcLUHN(Ljava/lang/String;)C
    .locals 7
    .param p0, "p"    # Ljava/lang/String;

    .line 1591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    .line 1593
    .local v0, "odd":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "crc":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ge v3, v4, :cond_3

    .line 1594
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1595
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1598
    add-int/lit8 v6, v4, -0x30

    int-to-char v4, v6

    .line 1599
    rem-int/lit8 v6, v3, 0x2

    if-eq v6, v0, :cond_1

    .line 1600
    mul-int/lit8 v6, v4, 0x2

    if-lt v6, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, -0x9

    goto :goto_1

    :cond_0
    mul-int/lit8 v5, v4, 0x2

    :goto_1
    add-int/2addr v2, v5

    goto :goto_2

    .line 1602
    :cond_1
    add-int/2addr v2, v4

    .line 1593
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1596
    .restart local v4    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid PAN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1605
    .end local v4    # "c":C
    :cond_3
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    rem-int/lit8 v1, v2, 0xa

    rsub-int/lit8 v1, v1, 0xa

    :goto_3
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    return v1
.end method

.method public static commaDecode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 1579
    invoke-static {p0}, Lorg/jpos/iso/ISOUtil;->commaDecode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, "ss":[Ljava/lang/String;
    array-length v1, v0

    .line 1581
    .local v1, "l":I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    aget-object v2, v0, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static commaDecode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 1548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1550
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1551
    .local v2, "escaped":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1552
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1553
    .local v4, "c":C
    if-nez v2, :cond_0

    .line 1554
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1556
    :sswitch_0
    const/4 v2, 0x1

    .line 1557
    goto :goto_2

    .line 1559
    :sswitch_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 1561
    goto :goto_2

    .line 1564
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1565
    const/4 v2, 0x0

    .line 1551
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1568
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs commaEncode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "ss"    # [Ljava/lang/String;

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1523
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1524
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1525
    :cond_0
    if-eqz v3, :cond_1

    .line 1526
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1527
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1528
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    .line 1531
    :sswitch_0
    const/16 v6, 0x5c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1534
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1526
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1522
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1538
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static concat([BII[BII)[B
    .locals 2
    .param p0, "array1"    # [B
    .param p1, "beginIndex1"    # I
    .param p2, "length1"    # I
    .param p3, "array2"    # [B
    .param p4, "beginIndex2"    # I
    .param p5, "length2"    # I

    .line 1020
    add-int v0, p2, p5

    new-array v0, v0, [B

    .line 1021
    .local v0, "concatArray":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    return-object v0
.end method

.method public static concat([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 1002
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1003
    .local v0, "concatArray":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1004
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    return-object v0
.end method

.method public static decodeHexDump(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1678
    nop

    .line 1679
    const-string v0, "\\r\\n|[\\r\\n]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/iso/ISOUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jpos/iso/ISOUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 1680
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1685
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1678
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static dumpString([B)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 338
    .local v0, "d":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 339
    .local v3, "aB":B
    int-to-char v4, v3

    .line 340
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    sparse-switch v4, :sswitch_data_0

    .line 390
    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    sget-object v5, Lorg/jpos/iso/ISOUtil;->hexStrings:[Ljava/lang/String;

    and-int/lit16 v6, v3, 0xff

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    goto :goto_1

    .line 387
    :sswitch_0
    const-string v5, "{RS}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    goto :goto_1

    .line 384
    :sswitch_1
    const-string v5, "{FS}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    goto :goto_1

    .line 381
    :sswitch_2
    const-string v5, "{SYN}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    goto :goto_1

    .line 378
    :sswitch_3
    const-string v5, "{NAK}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    goto :goto_1

    .line 375
    :sswitch_4
    const-string v5, "{DLE}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    goto :goto_1

    .line 345
    :sswitch_5
    const-string v5, "{CR}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    goto :goto_1

    .line 348
    :sswitch_6
    const-string v5, "{LF}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    goto :goto_1

    .line 372
    :sswitch_7
    const-string v5, "{BEL}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    goto :goto_1

    .line 369
    :sswitch_8
    const-string v5, "{ACK}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    goto :goto_1

    .line 366
    :sswitch_9
    const-string v5, "{ENQ}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    goto :goto_1

    .line 363
    :sswitch_a
    const-string v5, "{EOT}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    goto :goto_1

    .line 360
    :sswitch_b
    const-string v5, "{ETX}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    goto :goto_1

    .line 357
    :sswitch_c
    const-string v5, "{STX}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    goto :goto_1

    .line 354
    :sswitch_d
    const-string v5, "{SOH}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    goto :goto_1

    .line 351
    :sswitch_e
    const-string v5, "{NULL}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    goto :goto_1

    .line 396
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    .end local v3    # "aB":B
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 399
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0xa -> :sswitch_6
        0xd -> :sswitch_5
        0x10 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x1c -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public static ebcdicToAscii([B)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # [B

    .line 85
    sget-object v0, Lorg/jpos/iso/ISOUtil;->EBCDIC:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ebcdicToAscii([BII)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 88
    sget-object v0, Lorg/jpos/iso/ISOUtil;->EBCDIC:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ebcdicToAsciiBytes([B)[B
    .locals 2
    .param p0, "e"    # [B

    .line 91
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAsciiBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static ebcdicToAsciiBytes([BII)[B
    .locals 2
    .param p0, "e"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 94
    invoke-static {p0, p1, p2}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static formatAmount(JI)Ljava/lang/String;
    .locals 4
    .param p0, "l"    # J
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 802
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "buf":Ljava/lang/String;
    const-wide/16 v1, 0x64

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 804
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0x20

    invoke-static {v0, v2, v3}, Lorg/jpos/iso/ISOUtil;->padleft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .local v1, "s":Ljava/lang/StringBuilder;
    add-int/lit8 v2, p2, -0x3

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatAmountConversionRate(D)Ljava/lang/String;
    .locals 7
    .param p0, "convRate"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 1481
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 1482
    const/4 v0, 0x0

    return-object v0

    .line 1483
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1484
    .local v0, "cr":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    const/4 v2, 0x7

    rsub-int/lit8 v1, v1, 0x7

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    add-int/2addr v1, v3

    .line 1485
    .local v1, "x":I
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1486
    .local v3, "bds":Ljava/lang/String;
    const/16 v4, 0x9

    if-le v1, v4, :cond_1

    .line 1487
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1488
    :cond_1
    invoke-static {v3, v2}, Lorg/jpos/iso/ISOUtil;->zeropadRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1489
    .local v5, "ret":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5, v2}, Lorg/jpos/iso/ISOUtil;->takeFirstN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatDouble(DI)Ljava/lang/String;
    .locals 5
    .param p0, "d"    # D
    .param p2, "len"    # I

    .line 781
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "prefix":Ljava/lang/String;
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, p0

    .line 783
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 782
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "suffix":Ljava/lang/String;
    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    .line 786
    add-int/lit8 v2, p2, -0x3

    const/16 v3, 0x20

    :try_start_0
    invoke-static {v0, v2, v3}, Lorg/jpos/iso/ISOUtil;->padleft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 787
    :cond_0
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 790
    goto :goto_0

    .line 788
    :catch_0
    move-exception v2

    .line 791
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRandomDigits(Ljava/util/Random;II)Ljava/lang/String;
    .locals 3
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "l"    # I
    .param p2, "radix"    # I

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1610
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1611
    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1613
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hex2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;
    .locals 5
    .param p0, "bmap"    # Ljava/util/BitSet;
    .param p1, "b"    # [B
    .param p2, "bitOffset"    # I

    .line 648
    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    .line 649
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 650
    shr-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    int-to-char v2, v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 651
    .local v2, "digit":I
    const/16 v3, 0x8

    rem-int/lit8 v4, v1, 0x4

    shr-int/2addr v3, v4

    and-int/2addr v3, v2

    if-lez v3, :cond_0

    .line 652
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->set(I)V

    .line 649
    .end local v2    # "digit":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method

.method public static hex2BitSet([BII)Ljava/util/BitSet;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "maxBits"    # I

    .line 617
    const/16 v0, 0x80

    const/16 v1, 0x40

    const/16 v2, 0x8

    const/16 v3, 0x10

    if-le p2, v1, :cond_1

    aget-byte v4, p0, p1

    int-to-char v4, v4

    .line 618
    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v4, p2

    .line 620
    .local v4, "len":I
    :goto_0
    if-le v4, v1, :cond_2

    if-le p2, v0, :cond_2

    array-length v1, p0

    add-int/lit8 v5, p1, 0x10

    if-le v1, v5, :cond_2

    add-int/lit8 v1, p1, 0x10

    aget-byte v1, p0, v1

    int-to-char v1, v1

    .line 622
    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 624
    const/16 v4, 0xc0

    .line 626
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 627
    .local v1, "bmap":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 628
    shr-int/lit8 v6, v5, 0x2

    add-int/2addr v6, p1

    aget-byte v6, p0, v6

    int-to-char v6, v6

    invoke-static {v6, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 629
    .local v6, "digit":I
    rem-int/lit8 v7, v5, 0x4

    shr-int v7, v2, v7

    and-int/2addr v7, v6

    if-lez v7, :cond_3

    .line 630
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 631
    const/16 v7, 0x41

    if-ne v5, v7, :cond_3

    if-le p2, v0, :cond_3

    .line 632
    const/16 v4, 0xc0

    .line 627
    .end local v6    # "digit":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 635
    .end local v5    # "i":I
    :cond_4
    return-object v1
.end method

.method public static hex2BitSet([BIZ)Ljava/util/BitSet;
    .locals 7
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "bitZeroMeansExtended"    # Z

    .line 596
    const/16 v0, 0x10

    const/16 v1, 0x40

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    aget-byte v3, p0, p1

    int-to-char v3, v3

    .line 597
    invoke-static {v3, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    nop

    .line 599
    .local v1, "len":I
    :goto_0
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 600
    .local v3, "bmap":Ljava/util/BitSet;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 601
    shr-int/lit8 v5, v4, 0x2

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    int-to-char v5, v5

    invoke-static {v5, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 602
    .local v5, "digit":I
    rem-int/lit8 v6, v4, 0x4

    shr-int v6, v2, v6

    and-int/2addr v6, v5

    if-lez v6, :cond_1

    .line 603
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 600
    .end local v5    # "digit":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 605
    .end local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method public static hex2byte(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 677
    sget-object v0, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hex2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 686
    if-nez p1, :cond_0

    sget-object p1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    .line 687
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 688
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/jpos/iso/ISOUtil;->hex2byte([BII)[B

    move-result-object v0

    return-object v0

    .line 691
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hex2byte([BII)[B
    .locals 7
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 664
    new-array v0, p2, [B

    .line 665
    .local v0, "d":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, p2, 0x2

    if-ge v1, v2, :cond_1

    .line 666
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    .line 667
    .local v2, "shift":I
    :goto_1
    shr-int/lit8 v3, v1, 0x1

    aget-byte v4, v0, v3

    add-int v5, p1, v1

    aget-byte v5, p0, v5

    int-to-char v5, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/2addr v5, v2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 665
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static hex2str([BIIZ)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "padLeft"    # Z

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 307
    .local v0, "d":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-eqz p3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 309
    .local v1, "start":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    add-int v5, p2, v1

    if-ge v4, v5, :cond_2

    .line 310
    and-int/lit8 v5, v4, 0x1

    if-ne v5, v3, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    .line 311
    .local v5, "shift":I
    :goto_2
    shr-int/lit8 v6, v4, 0x1

    add-int/2addr v6, p1

    aget-byte v6, p0, v6

    shr-int/2addr v6, v5

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    .line 313
    .local v6, "c":C
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    .end local v5    # "shift":I
    .end local v6    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 315
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hexDump([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charSet"    # Ljava/nio/charset/Charset;

    .line 1648
    const/16 v0, 0x10

    .line 1650
    .local v0, "width":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1652
    .local v1, "builder":Ljava/lang/StringBuilder;
    move v2, p1

    .local v2, "rowOffset":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_3

    .line 1653
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%06d:  "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    .line 1656
    add-int v5, v2, v4

    array-length v7, p0

    if-ge v5, v7, :cond_0

    .line 1657
    new-array v5, v3, [Ljava/lang/Object;

    add-int v7, v2, v4

    aget-byte v7, p0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "%02x "

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1660
    :cond_0
    const-string v5, "   "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1664
    .end local v4    # "index":I
    :cond_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1665
    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1666
    .local v3, "asciiWidth":I
    const-string v4, "  |  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v2, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v5, "\r\n"

    const-string v7, " "

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1668
    const-string v5, "\n"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1667
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    .end local v3    # "asciiWidth":I
    :cond_2
    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "%n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 1674
    .end local v2    # "rowOffset":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static hexOffset(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .line 1285
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    shl-int/lit8 p0, v0, 0x4

    .line 1286
    const v0, 0xffff

    if-le p0, v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    move v0, v1

    .line 1288
    .local v0, "w":I
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1289
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v1}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v0, "d":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 327
    .local v3, "aB":B
    sget-object v4, Lorg/jpos/iso/ISOUtil;->hexStrings:[Ljava/lang/String;

    and-int/lit16 v5, v3, 0xff

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .end local v3    # "aB":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    .local v0, "d":Ljava/lang/StringBuilder;
    add-int/2addr p2, p1

    .line 412
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 413
    sget-object v2, Lorg/jpos/iso/ISOUtil;->hexStrings:[Ljava/lang/String;

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexdump([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .line 1300
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/jpos/iso/ISOUtil;->hexdump([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexdump([BI)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 1308
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lorg/jpos/iso/ISOUtil;->hexdump([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexdump([BII)Ljava/lang/String;
    .locals 10
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .local v1, "hex":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .local v2, "ascii":Ljava/lang/StringBuilder;
    const-string v3, "  "

    .line 1322
    .local v3, "sep":Ljava/lang/String;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1323
    .local v4, "lineSep":Ljava/lang/String;
    add-int/2addr p2, p1

    .line 1325
    move v5, p1

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x20

    if-ge v5, p2, :cond_1

    .line 1326
    sget-object v7, Lorg/jpos/iso/ISOUtil;->hexStrings:[Ljava/lang/String;

    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1328
    aget-byte v7, p0, v5

    int-to-char v7, v7

    .line 1329
    .local v7, "c":C
    if-lt v7, v6, :cond_0

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    const/16 v8, 0x2e

    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1331
    rem-int/lit8 v8, v5, 0x10

    .line 1332
    .local v8, "j":I
    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    .line 1337
    :sswitch_0
    invoke-static {v5}, Lorg/jpos/iso/ISOUtil;->hexOffset(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 1344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    goto :goto_2

    .line 1334
    :sswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1335
    nop

    .line 1325
    .end local v7    # "c":C
    .end local v8    # "j":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1348
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1349
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v7, 0x31

    if-ge v5, v7, :cond_2

    .line 1350
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1352
    :cond_2
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexOffset(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public static hexor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "op1"    # Ljava/lang/String;
    .param p1, "op2"    # Ljava/lang/String;

    .line 979
    invoke-static {p0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 980
    .local v0, "xor":[B
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static int2BitSet(I)Ljava/util/BitSet;
    .locals 1
    .param p0, "value"    # I

    .line 507
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->int2BitSet(II)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static int2BitSet(II)Ljava/util/BitSet;
    .locals 3
    .param p0, "value"    # I
    .param p1, "offset"    # I

    .line 515
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 517
    .local v0, "bs":Ljava/util/BitSet;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2, p1}, Lorg/jpos/iso/ISOUtil;->hex2BitSet(Ljava/util/BitSet;[BI)Ljava/util/BitSet;

    .line 520
    return-object v0
.end method

.method public static int2byte(I)[B
    .locals 7
    .param p0, "value"    # I

    .line 711
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xff

    if-gez p0, :cond_0

    .line 712
    new-array v0, v0, [B

    ushr-int/lit8 v6, p0, 0x18

    and-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    ushr-int/lit8 v4, p0, 0x10

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    ushr-int/lit8 v3, p0, 0x8

    and-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0

    .line 714
    :cond_0
    if-gt p0, v5, :cond_1

    .line 715
    new-array v0, v3, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    return-object v0

    .line 716
    :cond_1
    const v6, 0xffff

    if-gt p0, v6, :cond_2

    .line 717
    new-array v0, v2, [B

    ushr-int/lit8 v1, p0, 0x8

    and-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    return-object v0

    .line 718
    :cond_2
    const v6, 0xffffff

    if-gt p0, v6, :cond_3

    .line 719
    new-array v0, v1, [B

    ushr-int/lit8 v1, p0, 0x10

    and-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    ushr-int/lit8 v1, p0, 0x8

    and-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0

    .line 722
    :cond_3
    new-array v0, v0, [B

    ushr-int/lit8 v6, p0, 0x18

    and-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    ushr-int/lit8 v4, p0, 0x10

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    ushr-int/lit8 v3, p0, 0x8

    and-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1109
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1110
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1111
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 1112
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    .line 1113
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_2

    .line 1114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_2
    if-lt v0, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1100
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isInternalUnicodeSequence(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 874
    sget-object v0, Lorg/jpos/iso/ISOUtil;->unicodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isNumeric(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .line 1125
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1126
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    if-lt v0, v1, :cond_1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static isZero(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1089
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1090
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    if-lt v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method static synthetic lambda$decodeHexDump$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "x"    # Ljava/lang/String;

    .line 1681
    const-string v0, "^.{4}  "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1682
    const-string v2, "\\s\\s"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1683
    const-string v2, "(([0-9A-F][0-9A-F]\\s){1,16}).*$"

    const-string v3, "$1"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    const-string v2, "\\s"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1681
    return-object v0
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 11
    .param p0, "millis"    # J

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1439
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 1440
    neg-long p0, p0

    .line 1441
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1443
    :cond_0
    const-wide/16 v1, 0x3e8

    rem-long v3, p0, v1

    long-to-int v3, v3

    .line 1444
    .local v3, "ms":I
    div-long/2addr p0, v1

    .line 1445
    const-wide/32 v1, 0x15180

    div-long v1, p0, v1

    long-to-int v1, v1

    .line 1446
    .local v1, "dd":I
    const v2, 0x15180

    mul-int/2addr v2, v1

    int-to-long v4, v2

    sub-long/2addr p0, v4

    .line 1447
    const-wide/16 v4, 0xe10

    div-long v4, p0, v4

    long-to-int v2, v4

    .line 1448
    .local v2, "hh":I
    mul-int/lit16 v4, v2, 0xe10

    int-to-long v4, v4

    sub-long/2addr p0, v4

    .line 1449
    const-wide/16 v4, 0x3c

    div-long v4, p0, v4

    long-to-int v4, v4

    .line 1450
    .local v4, "mm":I
    mul-int/lit8 v5, v4, 0x3c

    int-to-long v5, v5

    sub-long/2addr p0, v5

    .line 1451
    long-to-int v5, p0

    .line 1452
    .local v5, "ss":I
    if-lez v1, :cond_1

    .line 1453
    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    const-string v6, "d "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :cond_1
    int-to-long v6, v2

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1458
    int-to-long v9, v4

    invoke-static {v9, v10, v8}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1460
    int-to-long v6, v5

    invoke-static {v6, v7, v8}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1462
    int-to-long v6, v3

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 882
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "canonical"    # Z

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 820
    .local v2, "len":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 821
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 822
    .local v4, "ch":C
    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 827
    :sswitch_0
    const-string v5, "&gt;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    goto :goto_3

    .line 824
    :sswitch_1
    const-string v5, "&lt;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    goto :goto_3

    .line 836
    :sswitch_2
    const-string v5, "&apos;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    goto :goto_3

    .line 830
    :sswitch_3
    const-string v5, "&amp;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    goto :goto_3

    .line 833
    :sswitch_4
    const-string v5, "&quot;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    goto :goto_3

    .line 840
    :sswitch_5
    if-nez p1, :cond_1

    .line 841
    const-string v5, "&#"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    goto :goto_3

    .line 848
    :cond_1
    :goto_2
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    .line 849
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "\\u%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 851
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    .end local v4    # "ch":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 855
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static padleft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v0, "d":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    .line 125
    .local v1, "fill":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "fill":I
    .local v2, "fill":I
    if-lez v1, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    .end local v0    # "d":Ljava/lang/StringBuilder;
    .end local v2    # "fill":I
    :cond_1
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static padright(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .local v0, "d":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    .line 149
    .local v1, "fill":I
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "fill":I
    .local v2, "fill":I
    if-lez v1, :cond_0

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    .end local v0    # "d":Ljava/lang/StringBuilder;
    .end local v2    # "fill":I
    :cond_1
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseAmountConversionRate(Ljava/lang/String;)D
    .locals 4
    .param p0, "convRate"    # Ljava/lang/String;

    .line 1502
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1505
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1506
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 1507
    .local v1, "pow":I
    new-instance v2, Ljava/math/BigDecimal;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1508
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 1503
    .end local v0    # "bd":Ljava/math/BigDecimal;
    .end local v1    # "pow":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid amount converion rate argument: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1192
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1163
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_3

    .line 1166
    const/4 v1, 0x0

    .line 1167
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1168
    .local v1, "digit":I
    const-string v3, "String contains non-digit"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1170
    move v5, v1

    .line 1171
    .local v5, "result":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1172
    mul-int/2addr v5, p1

    .line 1173
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1174
    if-eq v1, v4, :cond_0

    .line 1176
    add-int/2addr v5, v1

    move v2, v6

    goto :goto_0

    .line 1175
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1178
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_1
    return v5

    .line 1169
    .end local v5    # "result":I
    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1164
    .end local v1    # "digit":I
    .end local v2    # "index":I
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number can have maximum 9 digits"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseInt([B)I
    .locals 1
    .param p0, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1282
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->parseInt([BI)I

    move-result v0

    return v0
.end method

.method public static parseInt([BI)I
    .locals 7
    .param p0, "bArray"    # [B
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1252
    array-length v0, p0

    .line 1253
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_3

    .line 1256
    const/4 v1, 0x0

    .line 1257
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1258
    .local v1, "digit":I
    const-string v3, "Byte array contains non-digit"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1260
    move v5, v1

    .line 1261
    .local v5, "result":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1262
    mul-int/2addr v5, p1

    .line 1263
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1264
    if-eq v1, v4, :cond_0

    .line 1266
    add-int/2addr v5, v1

    move v2, v6

    goto :goto_0

    .line 1265
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1268
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_1
    return v5

    .line 1259
    .end local v5    # "result":I
    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1254
    .end local v1    # "digit":I
    .end local v2    # "index":I
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number can have maximum 9 digits"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseInt([C)I
    .locals 1
    .param p0, "cArray"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1237
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->parseInt([CI)I

    move-result v0

    return v0
.end method

.method public static parseInt([CI)I
    .locals 7
    .param p0, "cArray"    # [C
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1207
    array-length v0, p0

    .line 1208
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_3

    .line 1211
    const/4 v1, 0x0

    .line 1212
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-char v1, p0, v1

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1213
    .local v1, "digit":I
    const-string v3, "Char array contains non-digit"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1215
    move v5, v1

    .line 1216
    .local v5, "result":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1217
    mul-int/2addr v5, p1

    .line 1218
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    aget-char v2, p0, v2

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1219
    if-eq v1, v4, :cond_0

    .line 1221
    add-int/2addr v5, v1

    move v2, v6

    goto :goto_0

    .line 1220
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1223
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_1
    return v5

    .line 1214
    .end local v5    # "result":I
    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1209
    .end local v1    # "digit":I
    .end local v2    # "index":I
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number can have maximum 9 digits"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static protect(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 936
    const/16 v0, 0x5f

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static protect(Ljava/lang/String;C)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "mask"    # C

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 900
    .local v1, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x6

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 901
    .local v3, "clear":I
    :goto_0
    const/4 v4, -0x1

    .line 902
    .local v4, "lastFourIndex":I
    const/16 v5, 0x44

    const/16 v6, 0x3d

    const/16 v7, 0x5e

    if-lez v3, :cond_3

    .line 903
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    .line 904
    .end local v4    # "lastFourIndex":I
    .local v8, "lastFourIndex":I
    if-gez v8, :cond_1

    .line 905
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v8, v4, -0x4

    .line 906
    :cond_1
    if-gez v8, :cond_2

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 907
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    .end local v8    # "lastFourIndex":I
    .restart local v4    # "lastFourIndex":I
    goto :goto_1

    .line 908
    .end local v4    # "lastFourIndex":I
    .restart local v8    # "lastFourIndex":I
    :cond_2
    move v4, v8

    .end local v8    # "lastFourIndex":I
    .restart local v4    # "lastFourIndex":I
    :goto_1
    if-gez v4, :cond_3

    .line 909
    add-int/lit8 v4, v1, -0x4

    .line 911
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v1, :cond_9

    .line 912
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_4

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_4

    goto :goto_3

    .line 914
    :cond_4
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_5

    .line 915
    const/4 v4, 0x0

    .line 916
    sub-int v3, v1, v8

    goto :goto_4

    .line 918
    :cond_5
    if-ne v8, v4, :cond_7

    .line 919
    const/4 v3, 0x4

    goto :goto_4

    .line 913
    :cond_6
    :goto_3
    const/4 v3, 0x1

    .line 920
    :cond_7
    :goto_4
    add-int/lit8 v9, v3, -0x1

    .end local v3    # "clear":I
    .local v9, "clear":I
    if-lez v3, :cond_8

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :cond_8
    move v3, p1

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_2

    .line 922
    .end local v8    # "i":I
    .end local v9    # "clear":I
    .restart local v3    # "clear":I
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 925
    :try_start_0
    const-string v5, "[^\\^]"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 926
    .local v5, "charCount":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 927
    const-string v6, "^"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object p0, v2

    .line 928
    invoke-static {p0, v1, p1}, Lorg/jpos/iso/ISOUtil;->padright(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 932
    .end local v5    # "charCount":I
    :cond_a
    goto :goto_6

    .line 930
    :catch_0
    move-exception v2

    .line 933
    :goto_6
    return-object p0
.end method

.method public static readableFileSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .line 1619
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 1620
    :cond_0
    const-string v1, "Bi"

    const-string v2, "KiB"

    const-string v3, "MiB"

    const-string v4, "GiB"

    const-string v5, "TiB"

    const-string v6, "PiB"

    const-string v7, "EiB"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, "units":[Ljava/lang/String;
    long-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 1622
    .local v1, "digitGroups":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.#"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v6, p0

    int-to-double v8, v1

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static sleep(J)V
    .locals 1
    .param p0, "millis"    # J

    .line 1036
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1038
    :goto_1
    return-void
.end method

.method public static str2bcd(Ljava/lang/String;Z)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "padLeft"    # Z

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 247
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 248
    .local v1, "d":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z[BI)[B

    move-result-object v2

    return-object v2
.end method

.method public static str2bcd(Ljava/lang/String;ZB)[B
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "padLeft"    # Z
    .param p2, "fill"    # B

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    new-array v1, v1, [B

    .line 260
    .local v1, "d":[B
    array-length v3, v1

    if-lez v3, :cond_4

    .line 261
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 262
    and-int/lit8 v5, p2, 0xf

    shl-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 263
    :cond_0
    and-int/lit8 v5, v0, 0x1

    if-ne v5, v2, :cond_1

    if-eqz p1, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    .line 265
    .local v5, "start":I
    :goto_0
    move v6, v5

    .local v6, "i":I
    :goto_1
    add-int v7, v0, v5

    if-ge v6, v7, :cond_3

    .line 266
    shr-int/lit8 v7, v6, 0x1

    aget-byte v8, v1, v7

    sub-int v9, v6, v5

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    and-int/lit8 v10, v6, 0x1

    if-ne v10, v2, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v3

    :goto_2
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 267
    :cond_3
    and-int/lit8 v3, v6, 0x1

    if-ne v3, v2, :cond_4

    .line 268
    shr-int/lit8 v2, v6, 0x1

    aget-byte v3, v1, v2

    and-int/lit8 v4, p2, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 270
    .end local v5    # "start":I
    .end local v6    # "i":I
    :cond_4
    return-object v1
.end method

.method public static str2bcd(Ljava/lang/String;Z[BI)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "padLeft"    # Z
    .param p2, "d"    # [B
    .param p3, "offset"    # I

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 217
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-eqz p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 218
    .local v1, "start":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    add-int v5, v0, v1

    if-ge v4, v5, :cond_2

    .line 219
    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v5, p3

    aget-byte v6, p2, v5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    and-int/lit8 v8, v4, 0x1

    if-ne v8, v3, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    const/4 v8, 0x4

    :goto_2
    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    .end local v4    # "i":I
    :cond_2
    return-object p2
.end method

.method public static str2hex(Ljava/lang/String;Z[BI)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "padLeft"    # Z
    .param p2, "d"    # [B
    .param p3, "offset"    # I

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 233
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-eqz p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 234
    .local v1, "start":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    add-int v5, v0, v1

    if-ge v4, v5, :cond_2

    .line 235
    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v5, p3

    aget-byte v6, p2, v5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    and-int/lit8 v8, v4, 0x1

    if-ne v8, v3, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    const/4 v8, 0x4

    :goto_2
    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    .end local v4    # "i":I
    :cond_2
    return-object p2
.end method

.method public static stripUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 861
    .local v1, "len":I
    :goto_0
    const/4 v2, 0x0

    .line 862
    .local v2, "escape":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 863
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 864
    .local v4, "ch":C
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v1, -0x5

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jpos/iso/ISOUtil;->isInternalUnicodeSequence(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v7, v3, 0x5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    or-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    add-int/lit8 v3, v3, 0x5

    goto :goto_2

    .line 868
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    .end local v4    # "ch":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 870
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static strpad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "d":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 198
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static strpadf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v0, "d":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 1370
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1371
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static takeFirstN(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 1425
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1429
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1430
    invoke-static {p0, p1}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1433
    :cond_1
    return-object p0
.end method

.method public static takeLastN(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 1402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1406
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1407
    invoke-static {p0, p1}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1410
    :cond_1
    return-object p0
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 939
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 940
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 941
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 942
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 946
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 948
    .local v1, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 161
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static trim([BI)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "length"    # I

    .line 990
    new-array v0, p1, [B

    .line 991
    .local v0, "trimmedArray":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    return-object v0
.end method

.method public static trimf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1379
    if-eqz p0, :cond_3

    .line 1380
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1381
    .local v0, "l":I
    if-lez v0, :cond_3

    .line 1382
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1383
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    .line 1386
    :cond_1
    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object p0, v1

    .line 1389
    .end local v0    # "l":I
    :cond_3
    return-object p0
.end method

.method public static unPadLeft(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 1078
    const/4 v0, 0x0

    .local v0, "fill":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1079
    .local v1, "end":I
    if-nez v1, :cond_0

    .line 1080
    return-object p0

    .line 1081
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1082
    :cond_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public static unPadRight(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 1064
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1065
    .local v0, "end":I
    if-nez v0, :cond_0

    .line 1066
    return-object p0

    .line 1067
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static xor([B[B)[B
    .locals 4
    .param p0, "op1"    # [B
    .param p1, "op2"    # [B

    .line 961
    array-length v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 962
    array-length v0, p0

    new-array v0, v0, [B

    .local v0, "result":[B
    goto :goto_0

    .line 965
    .end local v0    # "result":[B
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 967
    .restart local v0    # "result":[B
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 968
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 970
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static zeroUnPad(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1046
    const/16 v0, 0x30

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->unPadLeft(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zeropad(JI)Ljava/lang/String;
    .locals 6
    .param p0, "l"    # J
    .param p2, "len"    # I

    .line 184
    long-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p2

    :try_start_0
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    rem-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, p2, v1}, Lorg/jpos/iso/ISOUtil;->padleft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zeropad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 172
    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lorg/jpos/iso/ISOUtil;->padleft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zeropadRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "d":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 204
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
