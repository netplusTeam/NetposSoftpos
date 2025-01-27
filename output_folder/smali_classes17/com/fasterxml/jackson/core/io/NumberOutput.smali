.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field private static BILLION_L:J

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field static final SMALLEST_INT:Ljava/lang/String;

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static final TRIPLET_TO_CHARS:[I

.field private static final sSmallIntStrs:[Ljava/lang/String;

.field private static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5
    const v0, 0xf4240

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 6
    const v0, 0x3b9aca00

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 7
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    .line 9
    const-wide/32 v0, -0x80000000

    sput-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 10
    const-wide/32 v0, 0x7fffffff

    sput-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 12
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 13
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x3e8

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "fullIx":I
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 29
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 30
    const/4 v4, 0x0

    .local v4, "i3":I
    :goto_2
    if-ge v4, v2, :cond_0

    .line 31
    add-int/lit8 v5, v1, 0x30

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v3, 0x30

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x30

    or-int/2addr v5, v6

    .line 34
    .local v5, "enc":I
    sget-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "fullIx":I
    .local v7, "fullIx":I
    aput v5, v6, v0

    .line 30
    .end local v5    # "enc":I
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_2

    .line 29
    .end local v4    # "i3":I
    .end local v7    # "fullIx":I
    .restart local v0    # "fullIx":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28
    .end local v3    # "i2":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "fullIx":I
    .end local v1    # "i1":I
    :cond_2
    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "10"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 43
    const-string v1, "-1"

    const-string v2, "-2"

    const-string v3, "-3"

    const-string v4, "-4"

    const-string v5, "-5"

    const-string v6, "-6"

    const-string v7, "-7"

    const-string v8, "-8"

    const-string v9, "-9"

    const-string v10, "-10"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _full3(I[BI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .line 489
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, p0

    .line 490
    .local v0, "enc":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 491
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 492
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 493
    return v1
.end method

.method private static _full3(I[CI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .line 480
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, p0

    .line 481
    .local v0, "enc":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 482
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 483
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    and-int/lit8 v2, v0, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 484
    return v1
.end method

.method private static _leading3(I[BI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .line 467
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, p0

    .line 468
    .local v0, "enc":I
    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    .line 469
    const/16 v1, 0x63

    if-le p0, v1, :cond_0

    .line 470
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v1

    .line 472
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v1

    .line 474
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 475
    return v1
.end method

.method private static _leading3(I[CI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .line 454
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v0, p0

    .line 455
    .local v0, "enc":I
    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    .line 456
    const/16 v1, 0x63

    if-le p0, v1, :cond_0

    .line 457
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p1, p2

    move p2, v1

    .line 459
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    move p2, v1

    .line 461
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    and-int/lit8 v2, v0, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 462
    return v1
.end method

.method private static _outputFullBillion(I[BI)I
    .locals 7
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .line 393
    div-int/lit16 v0, p0, 0x3e8

    .line 394
    .local v0, "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 395
    .local v1, "ones":I
    div-int/lit16 v2, v0, 0x3e8

    .line 396
    .local v2, "millions":I
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 398
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v4, v3, v2

    .line 399
    .local v4, "enc":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 400
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 401
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .restart local v5    # "off":I
    int-to-byte v6, v4

    aput-byte v6, p1, p2

    .line 403
    aget p2, v3, v0

    .line 404
    .end local v4    # "enc":I
    .local p2, "enc":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .local v4, "off":I
    shr-int/lit8 v6, p2, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 405
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "off":I
    .restart local v5    # "off":I
    shr-int/lit8 v6, p2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    .line 406
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .restart local v4    # "off":I
    int-to-byte v6, p2

    aput-byte v6, p1, v5

    .line 408
    aget p2, v3, v1

    .line 409
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .local v3, "off":I
    shr-int/lit8 v5, p2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 410
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .restart local v4    # "off":I
    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 411
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .restart local v3    # "off":I
    int-to-byte v5, p2

    aput-byte v5, p1, v4

    .line 413
    return v3
.end method

.method private static _outputFullBillion(I[CI)I
    .locals 7
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .line 338
    div-int/lit16 v0, p0, 0x3e8

    .line 339
    .local v0, "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 340
    .local v1, "ones":I
    div-int/lit16 v2, v0, 0x3e8

    .line 342
    .local v2, "millions":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v4, v3, v2

    .line 343
    .local v4, "enc":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    shr-int/lit8 v6, v4, 0x10

    int-to-char v6, v6

    aput-char v6, p1, p2

    .line 344
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, v5

    .line 345
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .restart local v5    # "off":I
    and-int/lit8 v6, v4, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, p2

    .line 347
    mul-int/lit16 p2, v2, 0x3e8

    sub-int/2addr v0, p2

    .line 348
    aget p2, v3, v0

    .line 349
    .end local v4    # "enc":I
    .local p2, "enc":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .local v4, "off":I
    shr-int/lit8 v6, p2, 0x10

    int-to-char v6, v6

    aput-char v6, p1, v5

    .line 350
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "off":I
    .restart local v5    # "off":I
    shr-int/lit8 v6, p2, 0x8

    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, v4

    .line 351
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .restart local v4    # "off":I
    and-int/lit8 v6, p2, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, v5

    .line 353
    aget p2, v3, v1

    .line 354
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .local v3, "off":I
    shr-int/lit8 v5, p2, 0x10

    int-to-char v5, v5

    aput-char v5, p1, v4

    .line 355
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .restart local v4    # "off":I
    shr-int/lit8 v5, p2, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 356
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .restart local v3    # "off":I
    and-int/lit8 v5, p2, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v4

    .line 358
    return v3
.end method

.method private static _outputSmallestI([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 523
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 524
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 525
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .local v2, "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 524
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 527
    .end local v1    # "i":I
    .end local v2    # "off":I
    .restart local p1    # "off":I
    :cond_0
    return p1
.end method

.method private static _outputSmallestI([CI)I
    .locals 3
    .param p0, "b"    # [C
    .param p1, "off"    # I

    .line 516
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 517
    .local v1, "len":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 518
    add-int v0, p1, v1

    return v0
.end method

.method private static _outputSmallestL([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 507
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 508
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 509
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .local v2, "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 508
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    .end local v2    # "off":I
    .restart local p1    # "off":I
    :cond_0
    return p1
.end method

.method private static _outputSmallestL([CI)I
    .locals 3
    .param p0, "b"    # [C
    .param p1, "off"    # I

    .line 500
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 501
    .local v1, "len":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 502
    add-int v0, p1, v1

    return v0
.end method

.method private static _outputUptoBillion(I[BI)I
    .locals 7
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .line 363
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_1

    .line 364
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 365
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v0

    return v0

    .line 367
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    .line 368
    .local v0, "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 369
    .local v1, "ones":I
    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoMillion([BIII)I

    move-result v2

    return v2

    .line 371
    .end local v0    # "thousands":I
    .end local v1    # "ones":I
    :cond_1
    div-int/lit16 v0, p0, 0x3e8

    .line 372
    .restart local v0    # "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 373
    .restart local v1    # "ones":I
    div-int/lit16 v2, v0, 0x3e8

    .line 374
    .local v2, "millions":I
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 376
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    .line 378
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v4, v3, v0

    .line 379
    .local v4, "enc":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 380
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 381
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .restart local v5    # "off":I
    int-to-byte v6, v4

    aput-byte v6, p1, p2

    .line 383
    aget p2, v3, v1

    .line 384
    .end local v4    # "enc":I
    .local p2, "enc":I
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "off":I
    .local v3, "off":I
    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    .line 385
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 386
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .restart local v3    # "off":I
    int-to-byte v5, p2

    aput-byte v5, p1, v4

    .line 388
    return v3
.end method

.method private static _outputUptoBillion(I[CI)I
    .locals 7
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .line 308
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_1

    .line 309
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 310
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v0

    return v0

    .line 312
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    .line 313
    .local v0, "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 314
    .local v1, "ones":I
    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoMillion([CIII)I

    move-result v2

    return v2

    .line 316
    .end local v0    # "thousands":I
    .end local v1    # "ones":I
    :cond_1
    div-int/lit16 v0, p0, 0x3e8

    .line 317
    .restart local v0    # "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 318
    .restart local v1    # "ones":I
    div-int/lit16 v2, v0, 0x3e8

    .line 319
    .local v2, "millions":I
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v0, v3

    .line 321
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p2

    .line 323
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v4, v3, v0

    .line 324
    .local v4, "enc":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    shr-int/lit8 v6, v4, 0x10

    int-to-char v6, v6

    aput-char v6, p1, p2

    .line 325
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, v5

    .line 326
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .restart local v5    # "off":I
    and-int/lit8 v6, v4, 0x7f

    int-to-char v6, v6

    aput-char v6, p1, p2

    .line 328
    aget p2, v3, v1

    .line 329
    .end local v4    # "enc":I
    .local p2, "enc":I
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "off":I
    .local v3, "off":I
    shr-int/lit8 v4, p2, 0x10

    int-to-char v4, v4

    aput-char v4, p1, v5

    .line 330
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    shr-int/lit8 v5, p2, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 331
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .restart local v3    # "off":I
    and-int/lit8 v5, p2, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v4

    .line 333
    return v3
.end method

.method private static _outputUptoMillion([BIII)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "thousands"    # I
    .param p3, "ones"    # I

    .line 436
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, p2

    .line 437
    .local v1, "enc":I
    const/16 v2, 0x9

    if-le p2, v2, :cond_1

    .line 438
    const/16 v2, 0x63

    if-le p2, v2, :cond_0

    .line 439
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .local v2, "off":I
    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    move p1, v2

    .line 441
    .end local v2    # "off":I
    .restart local p1    # "off":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    move p1, v2

    .line 443
    .end local v2    # "off":I
    .restart local p1    # "off":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    int-to-byte v3, v1

    aput-byte v3, p0, p1

    .line 445
    aget p1, v0, p3

    .line 446
    .end local v1    # "enc":I
    .local p1, "enc":I
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "off":I
    .local v0, "off":I
    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 447
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 448
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "off":I
    .restart local v0    # "off":I
    int-to-byte v2, p1

    aput-byte v2, p0, v1

    .line 449
    return v0
.end method

.method private static _outputUptoMillion([CIII)I
    .locals 4
    .param p0, "b"    # [C
    .param p1, "off"    # I
    .param p2, "thousands"    # I
    .param p3, "ones"    # I

    .line 418
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v1, v0, p2

    .line 419
    .local v1, "enc":I
    const/16 v2, 0x9

    if-le p2, v2, :cond_1

    .line 420
    const/16 v2, 0x63

    if-le p2, v2, :cond_0

    .line 421
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .local v2, "off":I
    shr-int/lit8 v3, v1, 0x10

    int-to-char v3, v3

    aput-char v3, p0, p1

    move p1, v2

    .line 423
    .end local v2    # "off":I
    .restart local p1    # "off":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p0, p1

    move p1, v2

    .line 425
    .end local v2    # "off":I
    .restart local p1    # "off":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    and-int/lit8 v3, v1, 0x7f

    int-to-char v3, v3

    aput-char v3, p0, p1

    .line 427
    aget p1, v0, p3

    .line 428
    .end local v1    # "enc":I
    .local p1, "enc":I
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "off":I
    .local v0, "off":I
    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    aput-char v1, p0, v2

    .line 429
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, v0

    .line 430
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "off":I
    .restart local v0    # "off":I
    and-int/lit8 v2, p1, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, v1

    .line 431
    return v0
.end method

.method public static notFinite(D)Z
    .locals 1
    .param p0, "value"    # D

    .line 284
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static notFinite(F)Z
    .locals 1
    .param p0, "value"    # F

    .line 297
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static outputInt(I[BI)I
    .locals 4
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .line 111
    if-gez p0, :cond_1

    .line 112
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestI([BI)I

    move-result v0

    return v0

    .line 115
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    const/16 v1, 0x2d

    aput-byte v1, p1, p2

    .line 116
    neg-int p0, p0

    move p2, v0

    .line 119
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_1
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    const/16 v1, 0x3e8

    if-ge p0, v0, :cond_4

    .line 120
    if-ge p0, v1, :cond_3

    .line 121
    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    .line 122
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    add-int/lit8 v1, p0, 0x30

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_0

    .line 124
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v0

    .end local p2    # "off":I
    .restart local v0    # "off":I
    goto :goto_0

    .line 127
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    .line 128
    .local v0, "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    .line 129
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    .line 130
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result p2

    move v0, p2

    .line 132
    .end local p2    # "off":I
    .local v0, "off":I
    :goto_0
    return v0

    .line 134
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_4
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_6

    .line 135
    sub-int/2addr p0, v0

    .line 136
    if-lt p0, v0, :cond_5

    .line 137
    sub-int/2addr p0, v0

    .line 138
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    const/16 v1, 0x32

    aput-byte v1, p1, p2

    goto :goto_1

    .line 140
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_5
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    const/16 v1, 0x31

    aput-byte v1, p1, p2

    .line 142
    :goto_1
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result p2

    return p2

    .line 144
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    .line 145
    .local v0, "newValue":I
    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p0, v2

    .line 146
    .local v2, "ones":I
    move p0, v0

    .line 147
    div-int/2addr v0, v1

    .line 148
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 149
    .local v1, "thousands":I
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    .line 150
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result p2

    .line 151
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result v3

    return v3
.end method

.method public static outputInt(I[CI)I
    .locals 4
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .line 58
    if-gez p0, :cond_1

    .line 59
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 62
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestI([CI)I

    move-result v0

    return v0

    .line 64
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    const/16 v1, 0x2d

    aput-char v1, p1, p2

    .line 65
    neg-int p0, p0

    move p2, v0

    .line 68
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_1
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    const/16 v1, 0x3e8

    if-ge p0, v0, :cond_4

    .line 69
    if-ge p0, v1, :cond_3

    .line 70
    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    .line 71
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    aput-char v0, p1, p2

    .line 72
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 74
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v0

    return v0

    .line 76
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    .line 77
    .local v0, "thousands":I
    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    .line 78
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p2

    .line 79
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result p2

    .line 80
    return p2

    .line 88
    .end local v0    # "thousands":I
    :cond_4
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_6

    .line 89
    sub-int/2addr p0, v0

    .line 90
    if-lt p0, v0, :cond_5

    .line 91
    sub-int/2addr p0, v0

    .line 92
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    const/16 v1, 0x32

    aput-char v1, p1, p2

    goto :goto_0

    .line 94
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_5
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    const/16 v1, 0x31

    aput-char v1, p1, p2

    .line 96
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result p2

    return p2

    .line 98
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    .line 99
    .local v0, "newValue":I
    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p0, v2

    .line 100
    .local v2, "ones":I
    move p0, v0

    .line 101
    div-int/2addr v0, v1

    .line 102
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 104
    .local v1, "thousands":I
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p2

    .line 105
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result p2

    .line 106
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result v3

    return v3
.end method

.method public static outputLong(J[BI)I
    .locals 6
    .param p0, "v"    # J
    .param p2, "b"    # [B
    .param p3, "off"    # I

    .line 194
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 195
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 196
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    return v0

    .line 198
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestL([BI)I

    move-result v0

    return v0

    .line 201
    :cond_1
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "off":I
    .local v0, "off":I
    const/16 v1, 0x2d

    aput-byte v1, p2, p3

    .line 202
    neg-long p0, p0

    move p3, v0

    goto :goto_0

    .line 204
    .end local v0    # "off":I
    .restart local p3    # "off":I
    :cond_2
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 205
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    return v0

    .line 210
    :cond_3
    :goto_0
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v2, p0, v0

    .line 211
    .local v2, "upper":J
    mul-long v4, v2, v0

    sub-long/2addr p0, v4

    .line 214
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 215
    long-to-int v0, v2

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoBillion(I[BI)I

    move-result p3

    goto :goto_1

    .line 218
    :cond_4
    div-long v4, v2, v0

    .line 219
    .local v4, "hi":J
    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    .line 220
    long-to-int v0, v4

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p3

    .line 221
    long-to-int v0, v2

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result p3

    .line 223
    .end local v4    # "hi":J
    :goto_1
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result v0

    return v0
.end method

.method public static outputLong(J[CI)I
    .locals 6
    .param p0, "v"    # J
    .param p2, "b"    # [C
    .param p3, "off"    # I

    .line 160
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 161
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 162
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    return v0

    .line 164
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 165
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestL([CI)I

    move-result v0

    return v0

    .line 167
    :cond_1
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "off":I
    .local v0, "off":I
    const/16 v1, 0x2d

    aput-char v1, p2, p3

    .line 168
    neg-long p0, p0

    move p3, v0

    goto :goto_0

    .line 170
    .end local v0    # "off":I
    .restart local p3    # "off":I
    :cond_2
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 171
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    return v0

    .line 176
    :cond_3
    :goto_0
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v2, p0, v0

    .line 177
    .local v2, "upper":J
    mul-long v4, v2, v0

    sub-long/2addr p0, v4

    .line 180
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 181
    long-to-int v0, v2

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoBillion(I[CI)I

    move-result p3

    goto :goto_1

    .line 184
    :cond_4
    div-long v4, v2, v0

    .line 185
    .local v4, "hi":J
    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    .line 186
    long-to-int v0, v4

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p3

    .line 187
    long-to-int v0, v2

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result p3

    .line 189
    .end local v4    # "hi":J
    :goto_1
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result v0

    return v0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # D

    .line 258
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # F

    .line 265
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0, "v"    # I

    .line 238
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 239
    if-ltz p0, :cond_0

    .line 240
    aget-object v0, v0, p0

    return-object v0

    .line 242
    :cond_0
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 243
    .local v0, "v2":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 244
    aget-object v1, v1, v0

    return-object v1

    .line 247
    .end local v0    # "v2":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    .line 251
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 252
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
