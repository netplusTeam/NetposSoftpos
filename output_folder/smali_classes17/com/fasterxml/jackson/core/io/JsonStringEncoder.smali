.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final INITIAL_BYTE_BUFFER_SIZE:I = 0xc8

.field private static final INITIAL_CHAR_BUFFER_SIZE:I = 0x78

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field private static final instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 26
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "esc"    # I
    .param p3, "bb"    # Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    .param p4, "ptr"    # I

    .line 476
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 477
    const/16 v0, 0x5c

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 478
    if-gez p2, :cond_1

    .line 479
    const/16 v0, 0x75

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 480
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 481
    shr-int/lit8 v0, p1, 0x8

    .line 482
    .local v0, "hi":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 483
    and-int/lit8 v2, v0, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 484
    and-int/lit16 p1, p1, 0xff

    .line 485
    .end local v0    # "hi":I
    goto :goto_0

    .line 486
    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 487
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 489
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v1, v0, v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 490
    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1

    .line 492
    :cond_1
    int-to-byte v0, p2

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 494
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v0

    return v0
.end method

.method private _appendNamed(I[C)I
    .locals 2
    .param p1, "esc"    # I
    .param p2, "qbuf"    # [C

    .line 470
    int-to-char v0, p1

    const/4 v1, 0x1

    aput-char v0, p2, v1

    .line 471
    const/4 v0, 0x2

    return v0
.end method

.method private _appendNumeric(I[C)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "qbuf"    # [C

    .line 462
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    .line 464
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    const/4 v2, 0x4

    aput-char v1, p2, v2

    .line 465
    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    const/4 v1, 0x5

    aput-char v0, p2, v1

    .line 466
    const/4 v0, 0x6

    return v0
.end method

.method private static _convert(II)I
    .locals 3
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 499
    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    .line 502
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int v2, p0, v2

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    sub-int v0, p1, v0

    add-int/2addr v2, v0

    return v2

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static _illegal(I)V
    .locals 2
    .param p0, "c"    # I

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _qbuf()[C
    .locals 3

    .line 454
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 455
    .local v0, "qbuf":[C
    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 456
    const/4 v1, 0x2

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 457
    const/4 v1, 0x3

    aput-char v2, v0, v1

    .line 458
    return-object v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 1

    .line 52
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-object v0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 360
    .local v1, "inputEnd":I
    const/4 v2, 0x0

    .line 361
    .local v2, "outputPtr":I
    const/16 v3, 0xc8

    new-array v3, v3, [B

    .line 362
    .local v3, "outputBuffer":[B
    array-length v4, v3

    .line 363
    .local v4, "outputEnd":I
    const/4 v5, 0x0

    .line 366
    .local v5, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :goto_0
    if-ge v0, v1, :cond_10

    .line 367
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 370
    .local v0, "c":I
    :goto_1
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_3

    .line 371
    if-lt v2, v4, :cond_1

    .line 372
    if-nez v5, :cond_0

    .line 373
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v5

    .line 375
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 376
    array-length v4, v3

    .line 377
    const/4 v2, 0x0

    .line 379
    :cond_1
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    int-to-byte v8, v0

    aput-byte v8, v3, v2

    .line 380
    if-lt v6, v1, :cond_2

    .line 381
    move v0, v6

    move v2, v7

    goto/16 :goto_4

    .line 383
    :cond_2
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v2, "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v6, v2

    move v2, v7

    goto :goto_1

    .line 387
    .end local v7    # "outputPtr":I
    .local v2, "outputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_3
    if-nez v5, :cond_4

    .line 388
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v5

    .line 390
    :cond_4
    if-lt v2, v4, :cond_5

    .line 391
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 392
    array-length v4, v3

    .line 393
    const/4 v2, 0x0

    .line 395
    :cond_5
    const/16 v7, 0x800

    if-ge v0, v7, :cond_6

    .line 396
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    move v2, v0

    move v0, v6

    goto/16 :goto_3

    .line 399
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_6
    const v7, 0xd800

    if-lt v0, v7, :cond_d

    const v7, 0xdfff

    if-le v0, v7, :cond_7

    goto :goto_2

    .line 408
    :cond_7
    const v7, 0xdbff

    if-le v0, v7, :cond_8

    .line 409
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 412
    :cond_8
    if-lt v6, v1, :cond_9

    .line 413
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 415
    :cond_9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v7, "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v0

    .line 416
    const v6, 0x10ffff

    if-le v0, v6, :cond_a

    .line 417
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 419
    :cond_a
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v6, "outputPtr":I
    shr-int/lit8 v8, v0, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 420
    if-lt v6, v4, :cond_b

    .line 421
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 422
    array-length v4, v3

    .line 423
    const/4 v6, 0x0

    .line 425
    :cond_b
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    .line 426
    if-lt v2, v4, :cond_c

    .line 427
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 428
    array-length v4, v3

    .line 429
    const/4 v2, 0x0

    .line 431
    :cond_c
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    move v2, v0

    move v0, v7

    move v7, v6

    goto :goto_3

    .line 400
    .end local v7    # "inputPtr":I
    .restart local v2    # "outputPtr":I
    .local v6, "inputPtr":I
    :cond_d
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 401
    if-lt v7, v4, :cond_e

    .line 402
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 403
    array-length v4, v3

    .line 404
    const/4 v7, 0x0

    .line 406
    :cond_e
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    move v7, v2

    move v2, v0

    move v0, v6

    .line 434
    .end local v6    # "inputPtr":I
    .local v0, "inputPtr":I
    .local v2, "c":I
    .restart local v7    # "outputPtr":I
    :goto_3
    if-lt v7, v4, :cond_f

    .line 435
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 436
    array-length v4, v3

    .line 437
    const/4 v7, 0x0

    .line 439
    :cond_f
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v6, "outputPtr":I
    and-int/lit8 v8, v2, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 440
    .end local v2    # "c":I
    move v2, v6

    goto/16 :goto_0

    .line 441
    .end local v6    # "outputPtr":I
    .local v2, "outputPtr":I
    :cond_10
    :goto_4
    if-nez v5, :cond_11

    .line 442
    const/4 v6, 0x0

    invoke-static {v3, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    return-object v6

    .line 444
    :cond_11
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v6

    return-object v6
.end method

.method public quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "output"    # Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    .line 218
    .local v0, "escCodes":[I
    array-length v1, v0

    .line 219
    .local v1, "escCodeCount":I
    const/4 v2, 0x0

    .line 220
    .local v2, "inPtr":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 221
    .local v3, "inputLen":I
    const/4 v4, 0x0

    .line 224
    .local v4, "qbuf":[C
    :goto_0
    if-ge v2, v3, :cond_4

    .line 227
    :goto_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 228
    .local v5, "c":C
    if-ge v5, v1, :cond_2

    aget v6, v0, v5

    if-eqz v6, :cond_2

    .line 229
    nop

    .line 237
    .end local v5    # "c":C
    if-nez v4, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v4

    .line 240
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "inPtr":I
    .local v5, "inPtr":I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 241
    .local v2, "d":C
    aget v6, v0, v2

    .line 242
    .local v6, "escCode":I
    if-gez v6, :cond_1

    .line 243
    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_2

    .line 244
    :cond_1
    invoke-direct {p0, v6, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_2
    nop

    .line 245
    .local v7, "length":I
    const/4 v8, 0x0

    invoke-virtual {p2, v4, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 246
    .end local v2    # "d":C
    .end local v6    # "escCode":I
    .end local v7    # "length":I
    move v2, v5

    goto :goto_0

    .line 231
    .local v2, "inPtr":I
    .local v5, "c":C
    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_3

    .line 233
    goto :goto_3

    .line 235
    .end local v5    # "c":C
    :cond_3
    goto :goto_1

    .line 247
    :cond_4
    :goto_3
    return-void
.end method

.method public quoteAsString(Ljava/lang/CharSequence;)[C
    .locals 14
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 139
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    const/16 v1, 0x78

    new-array v1, v1, [C

    .line 146
    .local v1, "outputBuffer":[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 147
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 148
    .local v3, "escCodeCount":I
    const/4 v4, 0x0

    .line 149
    .local v4, "inPtr":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 150
    .local v5, "inputLen":I
    const/4 v6, 0x0

    .line 151
    .local v6, "outPtr":I
    const/4 v7, 0x0

    .line 154
    .local v7, "qbuf":[C
    :goto_0
    const/4 v8, 0x0

    if-ge v4, v5, :cond_a

    .line 157
    :goto_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 158
    .local v9, "c":C
    if-ge v9, v3, :cond_6

    aget v10, v2, v9

    if-eqz v10, :cond_6

    .line 159
    nop

    .line 174
    .end local v9    # "c":C
    if-nez v7, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v7

    .line 177
    :cond_1
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "inPtr":I
    .local v9, "inPtr":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 178
    .local v4, "d":C
    aget v10, v2, v4

    .line 179
    .local v10, "escCode":I
    if-gez v10, :cond_2

    .line 180
    invoke-direct {p0, v4, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v11

    goto :goto_2

    .line 181
    :cond_2
    invoke-direct {p0, v10, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v11

    :goto_2
    nop

    .line 183
    .local v11, "length":I
    add-int v12, v6, v11

    array-length v13, v1

    if-le v12, v13, :cond_5

    .line 184
    array-length v12, v1

    sub-int/2addr v12, v6

    .line 185
    .local v12, "first":I
    if-lez v12, :cond_3

    .line 186
    invoke-static {v7, v8, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :cond_3
    if-nez v0, :cond_4

    .line 189
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v0

    .line 191
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 192
    sub-int v13, v11, v12

    .line 193
    .local v13, "second":I
    invoke-static {v7, v12, v1, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    move v6, v13

    .line 195
    .end local v12    # "first":I
    .end local v13    # "second":I
    goto :goto_3

    .line 196
    :cond_5
    invoke-static {v7, v8, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int/2addr v6, v11

    .line 199
    .end local v4    # "d":C
    .end local v10    # "escCode":I
    .end local v11    # "length":I
    :goto_3
    move v4, v9

    goto :goto_0

    .line 161
    .local v4, "inPtr":I
    .local v9, "c":C
    :cond_6
    array-length v10, v1

    if-lt v6, v10, :cond_8

    .line 162
    if-nez v0, :cond_7

    .line 163
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v0

    .line 165
    :cond_7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 166
    const/4 v6, 0x0

    .line 168
    :cond_8
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "outPtr":I
    .local v10, "outPtr":I
    aput-char v9, v1, v6

    .line 169
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v5, :cond_9

    .line 170
    move v6, v10

    goto :goto_4

    .line 172
    .end local v9    # "c":C
    :cond_9
    move v6, v10

    goto :goto_1

    .line 201
    .end local v10    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_a
    :goto_4
    if-nez v0, :cond_b

    .line 202
    invoke-static {v1, v8, v6}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v8

    return-object v8

    .line 204
    :cond_b
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 205
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v8

    return-object v8
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 14
    .param p1, "input"    # Ljava/lang/String;

    .line 67
    const/16 v0, 0x78

    new-array v0, v0, [C

    .line 68
    .local v0, "outputBuffer":[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v1

    .line 69
    .local v1, "escCodes":[I
    array-length v2, v1

    .line 70
    .local v2, "escCodeCount":I
    const/4 v3, 0x0

    .line 71
    .local v3, "inPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 72
    .local v4, "inputLen":I
    const/4 v5, 0x0

    .line 73
    .local v5, "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    const/4 v6, 0x0

    .line 74
    .local v6, "outPtr":I
    const/4 v7, 0x0

    .line 77
    .local v7, "qbuf":[C
    :goto_0
    const/4 v8, 0x0

    if-ge v3, v4, :cond_9

    .line 80
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 81
    .local v9, "c":C
    if-ge v9, v2, :cond_5

    aget v10, v1, v9

    if-eqz v10, :cond_5

    .line 82
    nop

    .line 97
    .end local v9    # "c":C
    if-nez v7, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v7

    .line 100
    :cond_0
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "inPtr":I
    .local v9, "inPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 101
    .local v3, "d":C
    aget v10, v1, v3

    .line 102
    .local v10, "escCode":I
    if-gez v10, :cond_1

    .line 103
    invoke-direct {p0, v3, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v11

    goto :goto_2

    .line 104
    :cond_1
    invoke-direct {p0, v10, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v11

    :goto_2
    nop

    .line 106
    .local v11, "length":I
    add-int v12, v6, v11

    array-length v13, v0

    if-le v12, v13, :cond_4

    .line 107
    array-length v12, v0

    sub-int/2addr v12, v6

    .line 108
    .local v12, "first":I
    if-lez v12, :cond_2

    .line 109
    invoke-static {v7, v8, v0, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_2
    if-nez v5, :cond_3

    .line 112
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 114
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    .line 115
    sub-int v13, v11, v12

    .line 116
    .local v13, "second":I
    invoke-static {v7, v12, v0, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    move v6, v13

    .line 118
    .end local v12    # "first":I
    .end local v13    # "second":I
    goto :goto_3

    .line 119
    :cond_4
    invoke-static {v7, v8, v0, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    add-int/2addr v6, v11

    .line 122
    .end local v3    # "d":C
    .end local v10    # "escCode":I
    .end local v11    # "length":I
    :goto_3
    move v3, v9

    goto :goto_0

    .line 84
    .local v3, "inPtr":I
    .local v9, "c":C
    :cond_5
    array-length v10, v0

    if-lt v6, v10, :cond_7

    .line 85
    if-nez v5, :cond_6

    .line 86
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 88
    :cond_6
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    .line 89
    const/4 v6, 0x0

    .line 91
    :cond_7
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "outPtr":I
    .local v10, "outPtr":I
    aput-char v9, v0, v6

    .line 92
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_8

    .line 93
    move v6, v10

    goto :goto_4

    .line 95
    .end local v9    # "c":C
    :cond_8
    move v6, v10

    goto :goto_1

    .line 124
    .end local v10    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_9
    :goto_4
    if-nez v5, :cond_a

    .line 125
    invoke-static {v0, v8, v6}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v8

    return-object v8

    .line 127
    :cond_a
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 128
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v8

    return-object v8
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 258
    .local v1, "inputEnd":I
    const/4 v2, 0x0

    .line 259
    .local v2, "outputPtr":I
    const/16 v3, 0xc8

    new-array v3, v3, [B

    .line 260
    .local v3, "outputBuffer":[B
    const/4 v4, 0x0

    .line 263
    .local v4, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :goto_0
    if-ge v0, v1, :cond_12

    .line 264
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v5

    .line 268
    .local v5, "escCodes":[I
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 269
    .local v6, "ch":I
    const/16 v7, 0x7f

    if-gt v6, v7, :cond_4

    aget v8, v5, v6

    if-eqz v8, :cond_0

    .line 270
    goto :goto_2

    .line 272
    :cond_0
    array-length v7, v3

    if-lt v2, v7, :cond_2

    .line 273
    if-nez v4, :cond_1

    .line 274
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    .line 276
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 277
    const/4 v2, 0x0

    .line 279
    :cond_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    int-to-byte v8, v6

    aput-byte v8, v3, v2

    .line 280
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_3

    .line 281
    move v2, v7

    goto/16 :goto_5

    .line 283
    .end local v6    # "ch":I
    :cond_3
    move v2, v7

    goto :goto_1

    .line 284
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 285
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    .line 287
    :cond_5
    array-length v6, v3

    if-lt v2, v6, :cond_6

    .line 288
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 289
    const/4 v2, 0x0

    .line 292
    :cond_6
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 293
    .local v0, "ch":I
    if-gt v0, v7, :cond_7

    .line 294
    aget v7, v5, v0

    .line 296
    .local v7, "escape":I
    invoke-direct {p0, v0, v7, v4, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v2

    .line 297
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v3

    .line 298
    move v0, v6

    goto :goto_0

    .line 300
    .end local v7    # "escape":I
    :cond_7
    const/16 v7, 0x7ff

    if-gt v0, v7, :cond_8

    .line 301
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 302
    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v0, v2, 0x80

    move v2, v0

    move v0, v6

    goto/16 :goto_4

    .line 305
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_8
    const v7, 0xd800

    if-lt v0, v7, :cond_f

    const v7, 0xdfff

    if-le v0, v7, :cond_9

    goto :goto_3

    .line 314
    :cond_9
    const v7, 0xdbff

    if-le v0, v7, :cond_a

    .line 315
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 318
    :cond_a
    if-lt v6, v1, :cond_b

    .line 319
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 321
    :cond_b
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v7, "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v0

    .line 322
    const v6, 0x10ffff

    if-le v0, v6, :cond_c

    .line 323
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 325
    :cond_c
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v6, "outputPtr":I
    shr-int/lit8 v8, v0, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 326
    array-length v2, v3

    if-lt v6, v2, :cond_d

    .line 327
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 328
    const/4 v6, 0x0

    .line 330
    :cond_d
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    .line 331
    array-length v6, v3

    if-lt v2, v6, :cond_e

    .line 332
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 333
    const/4 v2, 0x0

    .line 335
    :cond_e
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 336
    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v0, v2, 0x80

    move v2, v0

    move v0, v7

    move v7, v6

    goto :goto_4

    .line 306
    .end local v7    # "inputPtr":I
    .restart local v2    # "outputPtr":I
    .local v6, "inputPtr":I
    :cond_f
    :goto_3
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 307
    array-length v2, v3

    if-lt v7, v2, :cond_10

    .line 308
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 309
    const/4 v7, 0x0

    .line 311
    :cond_10
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 312
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v0, v7, 0x80

    move v7, v2

    move v2, v0

    move v0, v6

    .line 339
    .end local v6    # "inputPtr":I
    .local v0, "inputPtr":I
    .local v2, "ch":I
    .restart local v7    # "outputPtr":I
    :goto_4
    array-length v6, v3

    if-lt v7, v6, :cond_11

    .line 340
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 341
    const/4 v7, 0x0

    .line 343
    :cond_11
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v6, "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, v3, v7

    .line 344
    .end local v2    # "ch":I
    .end local v5    # "escCodes":[I
    move v2, v6

    goto/16 :goto_0

    .line 345
    .end local v6    # "outputPtr":I
    .local v2, "outputPtr":I
    :cond_12
    :goto_5
    if-nez v4, :cond_13

    .line 346
    const/4 v5, 0x0

    invoke-static {v3, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    return-object v5

    .line 348
    :cond_13
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v5

    return-object v5
.end method
