.class final Lcom/itextpdf/barcodes/qrcode/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 592
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .local v0, "bytes":[B
    nop

    .line 596
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 597
    aget-byte v2, v0, v1

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 593
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 594
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static appendAlphanumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 566
    .local v0, "length":I
    const/4 v1, 0x0

    .line 567
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 568
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v2

    .line 569
    .local v2, "code1":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 572
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 573
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v4

    .line 574
    .local v4, "code2":I
    if-eq v4, v3, :cond_0

    .line 578
    mul-int/lit8 v3, v2, 0x2d

    add-int/2addr v3, v4

    const/16 v5, 0xb

    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 579
    nop

    .end local v4    # "code2":I
    add-int/lit8 v1, v1, 0x2

    .line 580
    goto :goto_1

    .line 575
    .restart local v4    # "code2":I
    :cond_0
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v3}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v3

    .line 582
    .end local v4    # "code2":I
    :cond_1
    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 583
    add-int/lit8 v1, v1, 0x1

    .line 585
    .end local v2    # "code1":I
    :goto_1
    goto :goto_0

    .line 570
    .restart local v2    # "code1":I
    :cond_2
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v3}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v3

    .line 586
    .end local v2    # "code1":I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/itextpdf/barcodes/qrcode/Mode;
    .param p2, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendNumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    goto :goto_0

    .line 529
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-static {p0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendAlphanumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    goto :goto_0

    .line 531
    :cond_1
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    invoke-static {p0, p2, p3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_2
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    invoke-static {p0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_3
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendECI(Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 2
    .param p0, "eci"    # Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;

    .line 628
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 630
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 631
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 604
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .local v0, "bytes":[B
    nop

    .line 608
    array-length v1, v0

    .line 609
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 610
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 611
    .local v3, "byte1":I
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 612
    .local v4, "byte2":I
    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v5, v4

    .line 613
    .local v5, "code":I
    const/4 v6, -0x1

    .line 614
    .local v6, "subtracted":I
    const v7, 0x8140

    if-lt v5, v7, :cond_0

    const v8, 0x9ffc

    if-gt v5, v8, :cond_0

    .line 615
    sub-int v6, v5, v7

    goto :goto_1

    .line 616
    :cond_0
    const v7, 0xe040

    if-lt v5, v7, :cond_1

    const v7, 0xebbf

    if-gt v5, v7, :cond_1

    .line 617
    const v7, 0xc140

    sub-int v6, v5, v7

    .line 619
    :cond_1
    :goto_1
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 622
    shr-int/lit8 v7, v6, 0x8

    mul-int/lit16 v7, v7, 0xc0

    and-int/lit16 v8, v6, 0xff

    add-int/2addr v7, v8

    .line 623
    .local v7, "encoded":I
    const/16 v8, 0xd

    invoke-virtual {p1, v7, v8}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 609
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    .end local v7    # "encoded":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 620
    .restart local v3    # "byte1":I
    .restart local v4    # "byte2":I
    .restart local v5    # "code":I
    .restart local v6    # "subtracted":I
    :cond_2
    new-instance v7, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v8, "Invalid byte sequence"

    invoke-direct {v7, v8}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 625
    .end local v2    # "i":I
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    :cond_3
    return-void

    .line 605
    .end local v0    # "bytes":[B
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 606
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static appendLengthInfo(IILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 5
    .param p0, "numLetters"    # I
    .param p1, "version"    # I
    .param p2, "mode"    # Lcom/itextpdf/barcodes/qrcode/Mode;
    .param p3, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 515
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/barcodes/qrcode/Mode;->getCharacterCountBits(Lcom/itextpdf/barcodes/qrcode/Version;)I

    move-result v0

    .line 516
    .local v0, "numBits":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    if-gt p0, v2, :cond_0

    .line 519
    invoke-virtual {p3, p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 520
    return-void

    .line 517
    :cond_0
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is bigger than"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shl-int v4, v1, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static appendModeInfo(Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 2
    .param p0, "mode"    # Lcom/itextpdf/barcodes/qrcode/Mode;
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;

    .line 506
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 507
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;

    .line 541
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 542
    .local v0, "length":I
    const/4 v1, 0x0

    .line 543
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 544
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 545
    .local v2, "num1":I
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    .line 547
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 548
    .local v3, "num2":I
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 549
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 550
    nop

    .end local v3    # "num2":I
    .end local v4    # "num3":I
    add-int/lit8 v1, v1, 0x3

    .line 551
    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 553
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 554
    .restart local v3    # "num2":I
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v3

    const/4 v5, 0x7

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 555
    nop

    .end local v3    # "num2":I
    add-int/lit8 v1, v1, 0x2

    .line 556
    goto :goto_1

    .line 558
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 561
    .end local v2    # "num1":I
    :goto_1
    goto :goto_0

    .line 562
    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "penalty":I
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule1(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule2(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule3(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule4(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    return v0
.end method

.method private static chooseMaskPattern(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 4
    .param p0, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .param p1, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p2, "version"    # I
    .param p3, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 272
    const v0, 0x7fffffff

    .line 273
    .local v0, "minPenalty":I
    const/4 v1, -0x1

    .line 276
    .local v1, "bestMaskPattern":I
    const/4 v2, 0x0

    .local v2, "maskPattern":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 277
    invoke-static {p0, p1, p2, v2, p3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->buildMatrix(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 278
    invoke-static {p3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->calculateMaskPenalty(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v3

    .line 279
    .local v3, "penalty":I
    if-ge v3, v0, :cond_0

    .line 280
    move v0, v3

    .line 281
    move v1, v2

    .line 276
    .end local v3    # "penalty":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "maskPattern":I
    :cond_1
    return v1
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;

    move-result-object v0

    return-object v0
.end method

.method public static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 224
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    :goto_0
    return-object v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    .line 229
    .local v0, "hasNumeric":Z
    const/4 v1, 0x0

    .line 230
    .local v1, "hasAlphanumeric":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 231
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 232
    .local v3, "c":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 233
    const/4 v0, 0x1

    goto :goto_2

    .line 234
    :cond_2
    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 235
    const/4 v1, 0x1

    .line 230
    .end local v3    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .restart local v3    # "c":C
    :cond_3
    sget-object v4, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v4

    .line 240
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    .line 241
    sget-object v2, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v2

    .line 242
    :cond_5
    if-eqz v0, :cond_6

    .line 243
    sget-object v2, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v2

    .line 245
    :cond_6
    sget-object v2, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v2
.end method

.method public static encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Lcom/itextpdf/barcodes/qrcode/QRCode;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p2, "qrCode"    # Lcom/itextpdf/barcodes/qrcode/QRCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/barcodes/qrcode/QRCode;)V

    .line 114
    return-void
.end method

.method public static encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/barcodes/qrcode/QRCode;)V
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p3, "qrCode"    # Lcom/itextpdf/barcodes/qrcode/QRCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/barcodes/qrcode/QRCode;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 136
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/barcodes/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->CHARACTER_SET:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "encoding":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 138
    const-string v0, "ISO-8859-1"

    .line 140
    :cond_1
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    sget-object v2, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->MIN_VERSION_NR:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->MIN_VERSION_NR:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v1

    .line 142
    .local v2, "desiredMinVersion":I
    :goto_2
    if-ge v2, v1, :cond_4

    const/4 v2, 0x1

    .line 143
    :cond_4
    const/16 v1, 0x28

    if-le v2, v1, :cond_5

    const/16 v2, 0x28

    .line 145
    :cond_5
    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;

    move-result-object v1

    .line 148
    .local v1, "mode":Lcom/itextpdf/barcodes/qrcode/Mode;
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 149
    .local v3, "dataBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    invoke-static {p0, v1, v3, v0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v4

    .line 152
    .local v4, "numInputBytes":I
    invoke-static {v4, p1, v2, v1, p3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->initQRCode(ILcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/QRCode;)V

    .line 155
    new-instance v5, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v5}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 158
    .local v5, "headerAndDataBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    sget-object v6, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    if-ne v1, v6, :cond_6

    const-string v6, "ISO-8859-1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 159
    invoke-static {v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    move-result-object v6

    .line 160
    .local v6, "eci":Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    if-eqz v6, :cond_6

    .line 161
    invoke-static {v6, v5}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendECI(Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 165
    .end local v6    # "eci":Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    :cond_6
    invoke-static {v1, v5}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendModeInfo(Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 167
    sget-object v6, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 168
    .local v6, "numLetters":I
    :goto_3
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getVersion()I

    move-result v7

    invoke-static {v6, v7, v1, v5}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendLengthInfo(IILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 169
    invoke-virtual {v5, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBitVector(Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 172
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumDataBytes()I

    move-result v7

    invoke-static {v7, v5}, Lcom/itextpdf/barcodes/qrcode/Encoder;->terminateBits(ILcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 175
    new-instance v7, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v7}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 176
    .local v7, "finalBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumTotalBytes()I

    move-result v8

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumDataBytes()I

    move-result v9

    .line 177
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumRSBlocks()I

    move-result v10

    .line 176
    invoke-static {v5, v8, v9, v10, v7}, Lcom/itextpdf/barcodes/qrcode/Encoder;->interleaveWithECBytes(Lcom/itextpdf/barcodes/qrcode/BitVector;IIILcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 180
    new-instance v8, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMatrixWidth()I

    move-result v9

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMatrixWidth()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;-><init>(II)V

    .line 181
    .local v8, "matrix":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getECLevel()Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    move-result-object v9

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getVersion()I

    move-result v10

    invoke-static {v7, v9, v10, v8}, Lcom/itextpdf/barcodes/qrcode/Encoder;->chooseMaskPattern(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v9

    invoke-virtual {p3, v9}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMaskPattern(I)V

    .line 185
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getECLevel()Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    move-result-object v9

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getVersion()I

    move-result v10

    .line 186
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMaskPattern()I

    move-result v11

    .line 185
    invoke-static {v7, v9, v10, v11, v8}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->buildMatrix(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 187
    invoke-virtual {p3, v8}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMatrix(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 189
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->isValid()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 192
    return-void

    .line 190
    :cond_8
    new-instance v9, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid QR code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method static generateECBytes(Lcom/itextpdf/barcodes/qrcode/ByteArray;I)Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .locals 5
    .param p0, "dataBytes"    # Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .param p1, "numEcBytesInBlock"    # I

    .line 488
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v0

    .line 489
    .local v0, "numDataBytes":I
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 490
    .local v1, "toEncode":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 491
    invoke-virtual {p0, v2}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->at(I)I

    move-result v3

    aput v3, v1, v2

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;

    sget-object v3, Lcom/itextpdf/barcodes/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v2, v3}, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;)V

    invoke-virtual {v2, v1, p1}, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->encode([II)V

    .line 495
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/ByteArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/barcodes/qrcode/ByteArray;-><init>(I)V

    .line 496
    .local v2, "ecBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 497
    add-int v4, v0, v3

    aget v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->set(II)V

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 499
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method static getAlphanumericCode(I)I
    .locals 2
    .param p0, "code"    # I

    .line 199
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 200
    aget v0, v0, p0

    return v0

    .line 202
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 374
    if-ge p3, p2, :cond_4

    .line 378
    rem-int v0, p0, p2

    .line 380
    .local v0, "numRsBlocksInGroup2":I
    sub-int v1, p2, v0

    .line 382
    .local v1, "numRsBlocksInGroup1":I
    div-int v2, p0, p2

    .line 384
    .local v2, "numTotalBytesInGroup1":I
    add-int/lit8 v3, v2, 0x1

    .line 386
    .local v3, "numTotalBytesInGroup2":I
    div-int v4, p1, p2

    .line 388
    .local v4, "numDataBytesInGroup1":I
    add-int/lit8 v5, v4, 0x1

    .line 390
    .local v5, "numDataBytesInGroup2":I
    sub-int v6, v2, v4

    .line 392
    .local v6, "numEcBytesInGroup1":I
    sub-int v7, v3, v5

    .line 395
    .local v7, "numEcBytesInGroup2":I
    if-ne v6, v7, :cond_3

    .line 399
    add-int v8, v1, v0

    if-ne p2, v8, :cond_2

    .line 403
    add-int v8, v4, v6

    mul-int/2addr v8, v1

    add-int v9, v5, v7

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    if-ne p0, v8, :cond_1

    .line 411
    const/4 v8, 0x0

    if-ge p3, v1, :cond_0

    .line 412
    aput v4, p4, v8

    .line 413
    aput v6, p5, v8

    goto :goto_0

    .line 415
    :cond_0
    aput v5, p4, v8

    .line 416
    aput v7, p5, v8

    .line 418
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v8, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 400
    :cond_2
    new-instance v8, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 396
    :cond_3
    new-instance v8, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 375
    .end local v0    # "numRsBlocksInGroup2":I
    .end local v1    # "numRsBlocksInGroup1":I
    .end local v2    # "numTotalBytesInGroup1":I
    .end local v3    # "numTotalBytesInGroup2":I
    .end local v4    # "numDataBytesInGroup1":I
    .end local v5    # "numDataBytesInGroup2":I
    .end local v6    # "numEcBytesInGroup1":I
    .end local v7    # "numEcBytesInGroup2":I
    :cond_4
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initQRCode(ILcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/QRCode;)V
    .locals 8
    .param p0, "numInputBytes"    # I
    .param p1, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p2, "desiredMinVersion"    # I
    .param p3, "mode"    # Lcom/itextpdf/barcodes/qrcode/Mode;
    .param p4, "qrCode"    # Lcom/itextpdf/barcodes/qrcode/QRCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 293
    invoke-virtual {p4, p1}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setECLevel(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;)V

    .line 294
    invoke-virtual {p4, p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMode(Lcom/itextpdf/barcodes/qrcode/Mode;)V

    .line 297
    move v0, p2

    .local v0, "versionNum":I
    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 298
    invoke-static {v0}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object v1

    .line 300
    .local v1, "version":Lcom/itextpdf/barcodes/qrcode/Version;
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/Version;->getTotalCodewords()I

    move-result v2

    .line 302
    .local v2, "numBytes":I
    invoke-virtual {v1, p1}, Lcom/itextpdf/barcodes/qrcode/Version;->getECBlocksForLevel(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;)Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    move-result-object v3

    .line 303
    .local v3, "ecBlocks":Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getTotalECCodewords()I

    move-result v4

    .line 305
    .local v4, "numEcBytes":I
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getNumBlocks()I

    move-result v5

    .line 307
    .local v5, "numRSBlocks":I
    sub-int v6, v2, v4

    .line 311
    .local v6, "numDataBytes":I
    add-int/lit8 v7, p0, 0x3

    if-lt v6, v7, :cond_0

    .line 313
    invoke-virtual {p4, v0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setVersion(I)V

    .line 314
    invoke-virtual {p4, v2}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumTotalBytes(I)V

    .line 315
    invoke-virtual {p4, v6}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumDataBytes(I)V

    .line 316
    invoke-virtual {p4, v5}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumRSBlocks(I)V

    .line 318
    invoke-virtual {p4, v4}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumECBytes(I)V

    .line 320
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/Version;->getDimensionForVersion()I

    move-result v7

    invoke-virtual {p4, v7}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMatrixWidth(I)V

    .line 321
    return-void

    .line 297
    .end local v1    # "version":Lcom/itextpdf/barcodes/qrcode/Version;
    .end local v2    # "numBytes":I
    .end local v3    # "ecBlocks":Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;
    .end local v4    # "numEcBytes":I
    .end local v5    # "numRSBlocks":I
    .end local v6    # "numDataBytes":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "versionNum":I
    :cond_1
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Cannot find proper rs block info (input data too big?)"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static interleaveWithECBytes(Lcom/itextpdf/barcodes/qrcode/BitVector;IIILcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 17
    .param p0, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .param p4, "result"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 428
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "dataBytesOffset":I
    const/4 v1, 0x0

    .line 436
    .local v1, "maxNumDataBytes":I
    const/4 v2, 0x0

    .line 439
    .local v2, "maxNumEcBytes":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v3

    .line 441
    .local v10, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/barcodes/qrcode/BlockPair;>;"
    const/4 v3, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    .end local v0    # "dataBytesOffset":I
    .end local v1    # "maxNumDataBytes":I
    .end local v2    # "maxNumEcBytes":I
    .local v11, "dataBytesOffset":I
    .local v12, "maxNumDataBytes":I
    .local v13, "maxNumEcBytes":I
    .local v14, "i":I
    :goto_0
    if-ge v14, v8, :cond_0

    .line 442
    const/4 v0, 0x1

    new-array v15, v0, [I

    .line 443
    .local v15, "numDataBytesInBlock":[I
    new-array v5, v0, [I

    .line 444
    .local v5, "numEcBytesInBlock":[I
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v14

    move-object v4, v15

    move-object/from16 v16, v5

    .end local v5    # "numEcBytesInBlock":[I
    .local v16, "numEcBytesInBlock":[I
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 448
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/ByteArray;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;-><init>()V

    .line 449
    .local v0, "dataBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->getArray()[B

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v15, v2

    invoke-virtual {v0, v1, v11, v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->set([BII)V

    .line 450
    aget v1, v16, v2

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->generateECBytes(Lcom/itextpdf/barcodes/qrcode/ByteArray;I)Lcom/itextpdf/barcodes/qrcode/ByteArray;

    move-result-object v1

    .line 451
    .local v1, "ecBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/BlockPair;

    invoke-direct {v3, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BlockPair;-><init>(Lcom/itextpdf/barcodes/qrcode/ByteArray;Lcom/itextpdf/barcodes/qrcode/ByteArray;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 454
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 455
    aget v2, v15, v2

    add-int/2addr v11, v2

    .line 441
    .end local v0    # "dataBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .end local v1    # "ecBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .end local v15    # "numDataBytesInBlock":[I
    .end local v16    # "numEcBytesInBlock":[I
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 457
    .end local v14    # "i":I
    :cond_0
    if-ne v7, v11, :cond_8

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v12, :cond_3

    .line 463
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 464
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/barcodes/qrcode/BlockPair;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BlockPair;->getDataBytes()Lcom/itextpdf/barcodes/qrcode/ByteArray;

    move-result-object v3

    .line 465
    .local v3, "dataBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 466
    invoke-virtual {v3, v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->at(I)I

    move-result v4

    invoke-virtual {v9, v4, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 463
    .end local v3    # "dataBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 462
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v13, :cond_6

    .line 472
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 473
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/barcodes/qrcode/BlockPair;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BlockPair;->getErrorCorrectionBytes()Lcom/itextpdf/barcodes/qrcode/ByteArray;

    move-result-object v3

    .line 474
    .local v3, "ecBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 475
    invoke-virtual {v3, v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->at(I)I

    move-result v4

    invoke-virtual {v9, v4, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 472
    .end local v3    # "ecBytes":Lcom/itextpdf/barcodes/qrcode/ByteArray;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 471
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 481
    .end local v0    # "i":I
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v0

    if-ne v6, v0, :cond_7

    .line 485
    return-void

    .line 482
    :cond_7
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interleaving error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 483
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " differ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_8
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    .end local v10    # "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/barcodes/qrcode/BlockPair;>;"
    .end local v11    # "dataBytesOffset":I
    .end local v12    # "maxNumDataBytes":I
    .end local v13    # "maxNumEcBytes":I
    :cond_9
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v1, "bytes":[B
    nop

    .line 255
    array-length v2, v1

    .line 256
    .local v2, "length":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    .line 257
    return v0

    .line 259
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 260
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    .line 261
    .local v4, "byte1":I
    const/16 v5, 0x81

    if-lt v4, v5, :cond_1

    const/16 v5, 0x9f

    if-le v4, v5, :cond_2

    :cond_1
    const/16 v5, 0xe0

    if-lt v4, v5, :cond_3

    const/16 v5, 0xeb

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 259
    .end local v4    # "byte1":I
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 262
    .restart local v4    # "byte1":I
    :cond_3
    :goto_1
    return v0

    .line 265
    .end local v3    # "i":I
    .end local v4    # "byte1":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 252
    .end local v1    # "bytes":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 253
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    return v0
.end method

.method static terminateBits(ILcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 6
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 331
    shl-int/lit8 v0, p0, 0x3

    .line 332
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v1

    if-gt v1, v0, :cond_6

    .line 337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 338
    invoke-virtual {p1, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v1

    const/16 v2, 0x8

    rem-int/2addr v1, v2

    .line 342
    .local v1, "numBitsInLastByte":I
    if-lez v1, :cond_1

    .line 343
    rsub-int/lit8 v4, v1, 0x8

    .line 344
    .local v4, "numPaddingBits":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 345
    invoke-virtual {p1, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 349
    .end local v4    # "numPaddingBits":I
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v3

    rem-int/2addr v3, v2

    if-nez v3, :cond_5

    .line 353
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v3

    sub-int v3, p0, v3

    .line 354
    .local v3, "numPaddingBytes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 355
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_2

    .line 356
    const/16 v5, 0xec

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    goto :goto_3

    .line 358
    :cond_2
    const/16 v5, 0x11

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 354
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 361
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 364
    return-void

    .line 362
    :cond_4
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v4, "Bits size does not equal capacity"

    invoke-direct {v2, v4}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    .end local v3    # "numPaddingBytes":I
    :cond_5
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v3, "Number of bits is not a multiple of 8"

    invoke-direct {v2, v3}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v1    # "numBitsInLastByte":I
    :cond_6
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data bits cannot fit in the QR Code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
