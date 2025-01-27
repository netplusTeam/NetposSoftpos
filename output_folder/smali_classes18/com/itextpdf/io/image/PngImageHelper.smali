.class Lcom/itextpdf/io/image/PngImageHelper;
.super Ljava/lang/Object;
.source "PngImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/PngImageHelper$PngParameters;
    }
.end annotation


# static fields
.field public static final IDAT:Ljava/lang/String; = "IDAT"

.field public static final IEND:Ljava/lang/String; = "IEND"

.field public static final IHDR:Ljava/lang/String; = "IHDR"

.field public static final PLTE:Ljava/lang/String; = "PLTE"

.field public static final PNGID:[I

.field private static final PNG_FILTER_AVERAGE:I = 0x3

.field private static final PNG_FILTER_NONE:I = 0x0

.field private static final PNG_FILTER_PAETH:I = 0x4

.field private static final PNG_FILTER_SUB:I = 0x1

.field private static final PNG_FILTER_UP:I = 0x2

.field private static final TRANSFERSIZE:I = 0x1000

.field public static final cHRM:Ljava/lang/String; = "cHRM"

.field public static final gAMA:Ljava/lang/String; = "gAMA"

.field public static final iCCP:Ljava/lang/String; = "iCCP"

.field private static final intents:[Ljava/lang/String;

.field public static final pHYs:Ljava/lang/String; = "pHYs"

.field public static final sRGB:Ljava/lang/String; = "sRGB"

.field public static final tRNS:Ljava/lang/String; = "tRNS"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/image/PngImageHelper;->PNGID:[I

    .line 160
    const-string v0, "/Perceptual"

    const-string v1, "/RelativeColorimetric"

    const-string v2, "/Saturation"

    const-string v3, "/AbsoluteColormetric"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/image/PngImageHelper;->intents:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x89
        0x50
        0x4e
        0x47
        0xd
        0xa
        0x1a
        0xa
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMarker(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 436
    return v1

    .line 437
    :cond_0
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 439
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 437
    .end local v3    # "c":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .restart local v3    # "c":C
    :cond_3
    :goto_1
    return v1

    .line 442
    .end local v0    # "k":I
    .end local v3    # "c":C
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static decodeAverageFilter([B[BII)V
    .locals 5
    .param p0, "curr"    # [B
    .param p1, "prev"    # [B
    .param p2, "count"    # I
    .param p3, "bpp"    # I

    .line 720
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 721
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 722
    .local v1, "raw":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 723
    .local v2, "priorRow":I
    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "i":I
    .end local v1    # "raw":I
    .end local v2    # "priorRow":I
    :cond_0
    move v0, p3

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 727
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 728
    .restart local v1    # "raw":I
    sub-int v2, v0, p3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 729
    .local v2, "priorPixel":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 730
    .local v3, "priorRow":I
    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 732
    .end local v0    # "i":I
    .end local v1    # "raw":I
    .end local v2    # "priorPixel":I
    .end local v3    # "priorRow":I
    :cond_1
    return-void
.end method

.method private static decodeIdat(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 12
    .param p0, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    .line 446
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    .line 447
    .local v0, "nbitDepth":I
    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 448
    const/16 v0, 0x8

    move v7, v0

    goto :goto_0

    .line 447
    :cond_0
    move v7, v0

    .line 449
    .end local v0    # "nbitDepth":I
    .local v7, "nbitDepth":I
    :goto_0
    const/4 v0, -0x1

    .line 450
    .local v0, "size":I
    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v2, v1, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    iput v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    .line 451
    iget-object v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v10, v0

    goto :goto_2

    .line 469
    :pswitch_1
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v0, v1, v2

    .line 470
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    move v10, v0

    goto :goto_2

    .line 465
    :pswitch_2
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v0, v1, v2

    .line 466
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    mul-int/2addr v1, v8

    iput v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    .line 467
    move v10, v0

    goto :goto_2

    .line 460
    :pswitch_3
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    if-ne v1, v9, :cond_2

    .line 461
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int/2addr v1, v2

    move v0, v1

    .line 462
    :cond_2
    iput v9, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    .line 463
    move v10, v0

    goto :goto_2

    .line 456
    :pswitch_4
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v0, v1, v2

    .line 457
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    .line 458
    move v10, v0

    goto :goto_2

    .line 453
    :pswitch_5
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v0, v1, v2

    .line 454
    move v10, v0

    .line 473
    .end local v0    # "size":I
    .local v10, "size":I
    :goto_2
    if-ltz v10, :cond_3

    .line 474
    new-array v0, v10, [B

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    .line 475
    :cond_3
    iget-boolean v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-eqz v0, :cond_4

    .line 476
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    goto :goto_3

    .line 477
    :cond_4
    iget-boolean v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v0, :cond_5

    .line 478
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    .line 479
    :cond_5
    :goto_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->idat:Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v11, v0

    .line 480
    .local v11, "bai":Ljava/io/ByteArrayInputStream;
    invoke-static {v11}, Lcom/itextpdf/io/util/FilterUtil;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dataStream:Ljava/io/InputStream;

    .line 482
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    if-eq v0, v9, :cond_6

    .line 483
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    goto :goto_4

    .line 485
    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 486
    const/4 v0, 0x4

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 487
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x4

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x8

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 488
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 489
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x2

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/2addr v4, v9

    div-int/2addr v4, v8

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 490
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    div-int/2addr v4, v8

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/2addr v5, v9

    div-int/2addr v5, v8

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 491
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    div-int/2addr v5, v8

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 494
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static decodePaethFilter([B[BII)V
    .locals 6
    .param p0, "curr"    # [B
    .param p1, "prev"    # [B
    .param p2, "count"    # I
    .param p3, "bpp"    # I

    .line 752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 753
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 754
    .local v1, "raw":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 755
    .local v2, "priorRow":I
    add-int v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    .end local v0    # "i":I
    .end local v1    # "raw":I
    .end local v2    # "priorRow":I
    :cond_0
    move v0, p3

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 759
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 760
    .restart local v1    # "raw":I
    sub-int v2, v0, p3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 761
    .local v2, "priorPixel":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 762
    .local v3, "priorRow":I
    sub-int v4, v0, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 763
    .local v4, "priorRowPixel":I
    invoke-static {v2, v3, v4}, Lcom/itextpdf/io/image/PngImageHelper;->paethPredictor(III)I

    move-result v5

    add-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 767
    .end local v0    # "i":I
    .end local v1    # "raw":I
    .end local v2    # "priorPixel":I
    .end local v3    # "priorRow":I
    .end local v4    # "priorRowPixel":I
    :cond_1
    return-void
.end method

.method private static decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 14
    .param p0, "xOffset"    # I
    .param p1, "yOffset"    # I
    .param p2, "xStep"    # I
    .param p3, "yStep"    # I
    .param p4, "passWidth"    # I
    .param p5, "passHeight"    # I
    .param p6, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    .line 498
    move/from16 v7, p5

    move-object/from16 v8, p6

    if-eqz p4, :cond_2

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 502
    :cond_0
    iget v0, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int v0, v0, p4

    iget v1, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v9, v0, 0x8

    .line 503
    .local v9, "bytesPerRow":I
    new-array v0, v9, [B

    .line 504
    .local v0, "curr":[B
    new-array v1, v9, [B

    .line 508
    .local v1, "prior":[B
    const/4 v2, 0x0

    .local v2, "srcY":I
    move v3, p1

    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    .line 509
    .end local v0    # "curr":[B
    .end local v1    # "prior":[B
    .end local v2    # "srcY":I
    .local v10, "curr":[B
    .local v11, "prior":[B
    .local v12, "srcY":I
    .local v13, "dstY":I
    :goto_0
    if-ge v12, v7, :cond_1

    .line 512
    const/4 v1, 0x0

    .line 514
    .local v1, "filter":I
    :try_start_0
    iget-object v0, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dataStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .line 515
    iget-object v0, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dataStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {v0, v10, v2, v9}, Lcom/itextpdf/io/util/StreamUtil;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    move v0, v1

    goto :goto_1

    .line 516
    :catch_0
    move-exception v0

    move v0, v1

    .line 520
    .end local v1    # "filter":I
    .local v0, "filter":I
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 537
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Unknown PNG filter."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :pswitch_0
    iget v1, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    invoke-static {v10, v11, v9, v1}, Lcom/itextpdf/io/image/PngImageHelper;->decodePaethFilter([B[BII)V

    .line 534
    goto :goto_2

    .line 530
    :pswitch_1
    iget v1, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    invoke-static {v10, v11, v9, v1}, Lcom/itextpdf/io/image/PngImageHelper;->decodeAverageFilter([B[BII)V

    .line 531
    goto :goto_2

    .line 527
    :pswitch_2
    invoke-static {v10, v11, v9}, Lcom/itextpdf/io/image/PngImageHelper;->decodeUpFilter([B[BI)V

    .line 528
    goto :goto_2

    .line 524
    :pswitch_3
    iget v1, v8, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    invoke-static {v10, v9, v1}, Lcom/itextpdf/io/image/PngImageHelper;->decodeSubFilter([BII)V

    .line 525
    goto :goto_2

    .line 522
    :pswitch_4
    nop

    .line 540
    :goto_2
    move-object v1, v10

    move v2, p0

    move/from16 v3, p2

    move v4, v13

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->processPixels([BIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 543
    move-object v1, v11

    .line 544
    .local v1, "tmp":[B
    move-object v11, v10

    .line 545
    move-object v10, v1

    .line 510
    .end local v0    # "filter":I
    .end local v1    # "tmp":[B
    add-int/lit8 v12, v12, 0x1

    add-int v13, v13, p3

    goto :goto_0

    .line 547
    :cond_1
    return-void

    .line 499
    .end local v9    # "bytesPerRow":I
    .end local v10    # "curr":[B
    .end local v11    # "prior":[B
    .end local v12    # "srcY":I
    .end local v13    # "dstY":I
    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeSubFilter([BII)V
    .locals 3
    .param p0, "curr"    # [B
    .param p1, "count"    # I
    .param p2, "bpp"    # I

    .line 702
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 703
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 704
    .local v1, "val":I
    sub-int v2, v0, p2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 705
    int-to-byte v2, v1

    aput-byte v2, p0, v0

    .line 702
    .end local v1    # "val":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static decodeUpFilter([B[BI)V
    .locals 4
    .param p0, "curr"    # [B
    .param p1, "prev"    # [B
    .param p2, "count"    # I

    .line 710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 711
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 712
    .local v1, "raw":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 713
    .local v2, "prior":I
    add-int v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 710
    .end local v1    # "raw":I
    .end local v2    # "prior":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static getExpectedNumberOfColorComponents(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)I
    .locals 1
    .param p0, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    .line 285
    iget-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public static getInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "pngStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 777
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    .line 776
    return v0
.end method

.method private static getPixel([BIIII)I
    .locals 4
    .param p0, "image"    # [B
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bitDepth"    # I
    .param p4, "bytesPerRow"    # I

    .line 646
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 647
    mul-int v0, p4, p2

    add-int/2addr v0, p1

    .line 648
    .local v0, "pos":I
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 650
    .end local v0    # "pos":I
    :cond_0
    mul-int v1, p4, p2

    div-int v2, v0, p3

    div-int v2, p1, v2

    add-int/2addr v1, v2

    .line 651
    .local v1, "pos":I
    aget-byte v2, p0, v1

    div-int v3, v0, p3

    rem-int v3, p1, v3

    mul-int/2addr v3, p3

    sub-int/2addr v0, v3

    sub-int/2addr v0, p3

    shr-int v0, v2, v0

    .line 652
    .local v0, "v":I
    const/4 v2, 0x1

    shl-int v3, v2, p3

    sub-int/2addr v3, v2

    and-int v2, v0, v3

    return v2
.end method

.method private static getPixel([BLcom/itextpdf/io/image/PngImageHelper$PngParameters;)[I
    .locals 9
    .param p0, "curr"    # [B
    .param p1, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    .line 673
    iget v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 687
    array-length v0, p0

    mul-int/2addr v0, v1

    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    div-int/2addr v0, v3

    new-array v0, v0, [I

    .line 688
    .local v0, "res":[I
    const/4 v3, 0x0

    .line 689
    .local v3, "idx":I
    iget v4, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    div-int/2addr v1, v4

    .line 690
    .local v1, "passes":I
    iget v4, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    .line 691
    .local v4, "mask":I
    const/4 v2, 0x0

    .local v2, "k":I
    goto :goto_2

    .line 681
    .end local v0    # "res":[I
    .end local v1    # "passes":I
    .end local v2    # "k":I
    .end local v3    # "idx":I
    .end local v4    # "mask":I
    :sswitch_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 682
    .restart local v0    # "res":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 683
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 682
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    .end local v3    # "k":I
    :cond_0
    return-object v0

    .line 675
    .end local v0    # "res":[I
    :sswitch_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 676
    .restart local v0    # "res":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 677
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 678
    .end local v1    # "k":I
    :cond_1
    return-object v0

    .line 691
    .local v1, "passes":I
    .restart local v2    # "k":I
    .local v3, "idx":I
    .restart local v4    # "mask":I
    :goto_2
    array-length v5, p0

    if-ge v2, v5, :cond_3

    .line 692
    add-int/lit8 v5, v1, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_2

    .line 693
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    aget-byte v7, p0, v2

    iget v8, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    mul-int/2addr v8, v5

    ushr-int/2addr v7, v8

    and-int/2addr v7, v4

    aput v7, v0, v3

    .line 692
    add-int/lit8 v5, v5, -0x1

    move v3, v6

    goto :goto_3

    .line 691
    .end local v5    # "j":I
    .end local v6    # "idx":I
    .restart local v3    # "idx":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 696
    .end local v2    # "k":I
    :cond_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "pngStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 799
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWord(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "pngStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static paethPredictor(III)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 735
    add-int v0, p0, p1

    sub-int/2addr v0, p2

    .line 736
    .local v0, "p":I
    sub-int v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 737
    .local v1, "pa":I
    sub-int v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 738
    .local v2, "pb":I
    sub-int v3, v0, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 740
    .local v3, "pc":I
    if-gt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    .line 741
    return p0

    .line 742
    :cond_0
    if-gt v2, v3, :cond_1

    .line 743
    return p1

    .line 745
    :cond_1
    return p2
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 4
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "pngStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 173
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 174
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    .line 175
    new-instance v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    move-object v2, p0

    check-cast v2, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;-><init>(Lcom/itextpdf/io/image/PngImageData;)V

    .line 176
    .local v1, "png":Lcom/itextpdf/io/image/PngImageHelper$PngParameters;
    invoke-static {v0, v1}, Lcom/itextpdf/io/image/PngImageHelper;->processPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    nop

    .line 182
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :goto_0
    goto :goto_1

    .line 183
    :catch_0
    move-exception v2

    goto :goto_0

    .line 187
    :goto_1
    iget-object v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    .line 188
    return-void

    .line 180
    .end local v1    # "png":Lcom/itextpdf/io/image/PngImageHelper$PngParameters;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 177
    :catch_1
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "PNG image exception."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "pngStream":Ljava/io/InputStream;
    .end local p0    # "image":Lcom/itextpdf/io/image/ImageData;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "pngStream":Ljava/io/InputStream;
    .restart local p0    # "image":Lcom/itextpdf/io/image/ImageData;
    :goto_2
    if-eqz v0, :cond_1

    .line 182
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 184
    goto :goto_3

    .line 183
    :catch_2
    move-exception v2

    .line 186
    :cond_1
    :goto_3
    throw v1

    .line 166
    .end local v0    # "pngStream":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PNG image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processPixels([BIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 24
    .param p0, "curr"    # [B
    .param p1, "xOffset"    # I
    .param p2, "step"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    .line 551
    move/from16 v0, p4

    move-object/from16 v1, p5

    iget-object v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v2}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v2

    .line 553
    .local v2, "colorType":I
    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lcom/itextpdf/io/image/PngImageHelper;->getPixel([BLcom/itextpdf/io/image/PngImageHelper$PngParameters;)[I

    move-result-object v12

    .line 554
    .local v12, "outPixel":[I
    const/4 v4, 0x0

    .line 555
    .local v4, "sizes":I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v13, v4

    goto :goto_0

    .line 563
    :pswitch_1
    const/4 v4, 0x3

    move v13, v4

    goto :goto_0

    .line 559
    :pswitch_2
    const/4 v4, 0x1

    .line 560
    move v13, v4

    .line 566
    .end local v4    # "sizes":I
    .local v13, "sizes":I
    :goto_0
    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    const/16 v14, 0x10

    const/16 v15, 0x8

    if-eqz v4, :cond_2

    .line 567
    move/from16 v4, p1

    .line 568
    .local v4, "dstX":I
    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v5, v13

    iget v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v6, v14, :cond_0

    move v6, v15

    goto :goto_1

    :cond_0
    iget v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    :goto_1
    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v16, v5, 0x8

    .line 569
    .local v16, "yStride":I
    const/4 v5, 0x0

    move/from16 v17, v4

    move v11, v5

    .end local v4    # "dstX":I
    .local v11, "srcX":I
    .local v17, "dstX":I
    :goto_2
    if-ge v11, v0, :cond_1

    .line 570
    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int v6, v5, v11

    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    move-object v5, v12

    move v7, v13

    move/from16 v8, v17

    move/from16 v9, p3

    move/from16 v18, v11

    .end local v11    # "srcX":I
    .local v18, "srcX":I
    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    .line 571
    add-int v17, v17, p2

    .line 569
    add-int/lit8 v11, v18, 0x1

    .end local v18    # "srcX":I
    .restart local v11    # "srcX":I
    goto :goto_2

    :cond_1
    move/from16 v18, v11

    .line 574
    .end local v11    # "srcX":I
    .end local v16    # "yStride":I
    .end local v17    # "dstX":I
    :cond_2
    iget-boolean v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    .line 575
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_5

    .line 576
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v4, v14, :cond_3

    .line 577
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_3
    if-ge v4, v0, :cond_3

    .line 578
    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v13

    aget v6, v12, v5

    ushr-int/2addr v6, v15

    aput v6, v12, v5

    .line 577
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 580
    .end local v4    # "k":I
    :cond_3
    iget v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    .line 581
    .local v14, "yStride":I
    move/from16 v4, p1

    .line 582
    .local v4, "dstX":I
    const/4 v5, 0x0

    move v15, v4

    move v11, v5

    .end local v4    # "dstX":I
    .restart local v11    # "srcX":I
    .local v15, "dstX":I
    :goto_4
    if-ge v11, v0, :cond_4

    .line 583
    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int/2addr v5, v11

    add-int v6, v5, v13

    const/4 v7, 0x1

    const/16 v10, 0x8

    move-object v5, v12

    move v8, v15

    move/from16 v9, p3

    move/from16 v16, v11

    .end local v11    # "srcX":I
    .local v16, "srcX":I
    move v11, v14

    invoke-static/range {v4 .. v11}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    .line 584
    add-int v15, v15, p2

    .line 582
    add-int/lit8 v11, v16, 0x1

    .end local v16    # "srcX":I
    .restart local v11    # "srcX":I
    goto :goto_4

    :cond_4
    move/from16 v16, v11

    .line 586
    .end local v11    # "srcX":I
    .end local v14    # "yStride":I
    .restart local v16    # "srcX":I
    goto/16 :goto_d

    .line 587
    .end local v15    # "dstX":I
    .end local v16    # "srcX":I
    :cond_5
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    .line 588
    .local v4, "yStride":I
    new-array v6, v6, [I

    .line 589
    .local v6, "v":[I
    move/from16 v7, p1

    .line 590
    .local v7, "dstX":I
    const/4 v8, 0x0

    .local v8, "srcX":I
    :goto_5
    if-ge v8, v0, :cond_7

    .line 591
    aget v9, v12, v8

    .line 592
    .local v9, "idx":I
    iget-object v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 593
    iget-object v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    aget-byte v10, v10, v9

    aput v10, v6, v5

    goto :goto_6

    .line 596
    :cond_6
    const/16 v10, 0xff

    aput v10, v6, v5

    .line 598
    :goto_6
    iget-object v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x8

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    move/from16 v20, v7

    move/from16 v21, p3

    move/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    .line 599
    add-int v7, v7, p2

    .line 590
    .end local v9    # "idx":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 601
    .end local v4    # "yStride":I
    .end local v6    # "v":[I
    :cond_7
    goto/16 :goto_d

    .line 602
    .end local v7    # "dstX":I
    .end local v8    # "srcX":I
    :cond_8
    iget-boolean v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v4, :cond_c

    .line 603
    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_d

    .line 605
    :pswitch_4
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v4, v4, 0x7

    div-int/2addr v4, v15

    .line 606
    .restart local v4    # "yStride":I
    new-array v7, v6, [I

    .line 607
    .local v7, "v":[I
    move/from16 v8, p1

    .line 608
    .local v8, "dstX":I
    const/4 v9, 0x0

    .local v9, "srcX":I
    :goto_7
    if-ge v9, v0, :cond_c

    .line 609
    aget v10, v12, v9

    .line 610
    .local v10, "idx":I
    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    array-length v11, v11

    if-ge v10, v11, :cond_9

    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    aget-byte v11, v11, v10

    if-nez v11, :cond_9

    move v11, v6

    goto :goto_8

    :cond_9
    move v11, v5

    :goto_8
    aput v11, v7, v5

    .line 611
    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, p3

    move/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    .line 612
    add-int v8, v8, p2

    .line 608
    .end local v10    # "idx":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 629
    .end local v4    # "yStride":I
    .end local v7    # "v":[I
    .end local v8    # "dstX":I
    .end local v9    # "srcX":I
    :pswitch_5
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v4, v4, 0x7

    div-int/2addr v4, v15

    .line 630
    .restart local v4    # "yStride":I
    new-array v7, v6, [I

    .line 631
    .restart local v7    # "v":[I
    move/from16 v8, p1

    .line 632
    .restart local v8    # "dstX":I
    const/4 v9, 0x0

    .restart local v9    # "srcX":I
    :goto_9
    if-ge v9, v0, :cond_c

    .line 633
    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int/2addr v10, v9

    .line 634
    .local v10, "markRed":I
    aget v11, v12, v10

    iget v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    if-ne v11, v14, :cond_a

    add-int/lit8 v11, v10, 0x1

    aget v11, v12, v11

    iget v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transGreen:I

    if-ne v11, v14, :cond_a

    add-int/lit8 v11, v10, 0x2

    aget v11, v12, v11

    iget v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transBlue:I

    if-ne v11, v14, :cond_a

    move v11, v6

    goto :goto_a

    :cond_a
    move v11, v5

    :goto_a
    aput v11, v7, v5

    .line 636
    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, p3

    move/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    .line 637
    add-int v8, v8, p2

    .line 632
    .end local v10    # "markRed":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 617
    .end local v4    # "yStride":I
    .end local v7    # "v":[I
    .end local v8    # "dstX":I
    .end local v9    # "srcX":I
    :pswitch_6
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v4, v4, 0x7

    div-int/2addr v4, v15

    .line 618
    .restart local v4    # "yStride":I
    new-array v7, v6, [I

    .line 619
    .restart local v7    # "v":[I
    move/from16 v8, p1

    .line 620
    .restart local v8    # "dstX":I
    const/4 v9, 0x0

    .restart local v9    # "srcX":I
    :goto_b
    if-ge v9, v0, :cond_c

    .line 621
    aget v10, v12, v9

    .line 622
    .local v10, "g":I
    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    if-ne v10, v11, :cond_b

    move v11, v6

    goto :goto_c

    :cond_b
    move v11, v5

    :goto_c
    aput v11, v7, v5

    .line 623
    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, p3

    move/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    .line 624
    add-int v8, v8, p2

    .line 620
    .end local v10    # "g":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 643
    .end local v4    # "yStride":I
    .end local v7    # "v":[I
    .end local v8    # "dstX":I
    .end local v9    # "srcX":I
    :cond_c
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static processPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 16
    .param p0, "pngStream"    # Ljava/io/InputStream;
    .param p1, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lcom/itextpdf/io/image/PngImageHelper;->readPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 192
    iget-object v0, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v2

    .line 193
    .local v2, "colorType":I
    iget-object v0, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    invoke-virtual {v0}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/itextpdf/io/image/PngImageHelper;->getExpectedNumberOfColorComponents(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 194
    const-class v0, Lcom/itextpdf/io/image/PngImageHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v3, "Png image has color profile with incompatible number of color components."

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "pal0":I
    const/4 v3, 0x0

    .line 199
    .local v3, "palIdx":I
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    .line 200
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 201
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    iget-object v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    array-length v7, v7

    if-ge v5, v7, :cond_3

    .line 202
    iget-object v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    aget-byte v7, v7, v5

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 203
    .local v7, "n":I
    if-nez v7, :cond_1

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 205
    move v3, v5

    .line 207
    :cond_1
    if-eqz v7, :cond_2

    if-eq v7, v8, :cond_2

    .line 208
    iput-boolean v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    .line 209
    goto :goto_1

    .line 201
    .end local v7    # "n":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    .end local v5    # "k":I
    :cond_3
    :goto_1
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_4

    .line 214
    iput-boolean v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    .line 215
    :cond_4
    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-nez v5, :cond_6

    if-gt v0, v6, :cond_5

    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    if-ltz v5, :cond_6

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    iput-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    .line 216
    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    const/4 v7, 0x2

    if-nez v5, :cond_7

    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-nez v5, :cond_7

    if-ne v0, v6, :cond_7

    .line 217
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    const-string v8, "Mask"

    new-array v9, v7, [I

    aput v3, v9, v4

    aput v3, v9, v6

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_7
    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    const/16 v8, 0x10

    if-eq v5, v6, :cond_8

    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-eq v5, v8, :cond_8

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_8

    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-nez v5, :cond_8

    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v5, :cond_9

    :cond_8
    move v4, v6

    .line 220
    .local v4, "needDecode":Z
    :cond_9
    const/4 v5, 0x3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 234
    :pswitch_1
    const/4 v7, 0x4

    iput v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    goto :goto_3

    .line 231
    :pswitch_2
    iput v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    .line 232
    goto :goto_3

    .line 228
    :pswitch_3
    iput v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    .line 229
    goto :goto_3

    .line 225
    :pswitch_4
    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    .line 226
    goto :goto_3

    .line 222
    :pswitch_5
    iput v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    .line 223
    nop

    .line 237
    :goto_3
    if-eqz v4, :cond_a

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/io/image/PngImageHelper;->decodeIdat(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 239
    :cond_a
    iget v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    .line 240
    .local v7, "components":I
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_b

    .line 241
    add-int/lit8 v7, v7, -0x1

    .line 242
    :cond_b
    iget v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    .line 243
    .local v9, "bpc":I
    if-ne v9, v8, :cond_c

    .line 244
    const/16 v9, 0x8

    move v8, v9

    goto :goto_4

    .line 243
    :cond_c
    move v8, v9

    .line 245
    .end local v9    # "bpc":I
    .local v8, "bpc":I
    :goto_4
    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    if-eqz v9, :cond_e

    .line 246
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 247
    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    move v12, v7

    move v13, v8

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    goto :goto_6

    .line 249
    :cond_d
    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    const/4 v15, 0x0

    move v12, v7

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B[I)V

    goto :goto_6

    .line 252
    :cond_e
    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v12, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->idat:Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move v12, v7

    move v13, v8

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 253
    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v9, v6}, Lcom/itextpdf/io/image/PngImageData;->setDeflated(Z)V

    .line 254
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v9, "decodeparms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "BitsPerComponent"

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v10, "Predictor"

    const/16 v11, 0xf

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v10, "Columns"

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v10, "Colors"

    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_5

    :cond_f
    move v6, v5

    :cond_10
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iput-object v9, v5, Lcom/itextpdf/io/image/PngImageData;->decodeParms:Ljava/util/Map;

    .line 261
    .end local v9    # "decodeparms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_6
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->intent:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 262
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    const-string v6, "Intent"

    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->intent:Ljava/lang/String;

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_11
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    if-eqz v5, :cond_12

    .line 264
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/image/PngImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V

    .line 265
    :cond_12
    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_13

    .line 266
    invoke-static {v6}, Lcom/itextpdf/io/image/ImageDataFactory;->createRawImage([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/image/RawImageData;

    .line 267
    .local v5, "im2":Lcom/itextpdf/io/image/RawImageData;
    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    const/4 v12, 0x1

    const/16 v13, 0x8

    iget-object v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    move-object v9, v5

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 268
    invoke-virtual {v5}, Lcom/itextpdf/io/image/RawImageData;->makeMask()V

    .line 269
    iget-object v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v9, v5}, Lcom/itextpdf/io/image/PngImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    .line 271
    .end local v5    # "im2":Lcom/itextpdf/io/image/RawImageData;
    :cond_13
    iget-boolean v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v5, :cond_14

    .line 272
    invoke-static {v6}, Lcom/itextpdf/io/image/ImageDataFactory;->createRawImage([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/image/RawImageData;

    .line 273
    .restart local v5    # "im2":Lcom/itextpdf/io/image/RawImageData;
    iget v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    iget-object v14, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    move-object v9, v5

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 274
    invoke-virtual {v5}, Lcom/itextpdf/io/image/RawImageData;->makeMask()V

    .line 275
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/image/PngImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    .line 277
    .end local v5    # "im2":Lcom/itextpdf/io/image/RawImageData;
    :cond_14
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiX:I

    iget v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiY:I

    invoke-virtual {v5, v6, v9}, Lcom/itextpdf/io/image/PngImageData;->setDpi(II)V

    .line 278
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->XYRatio:F

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/image/PngImageData;->setXYRatio(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "pal0":I
    .end local v3    # "palIdx":I
    .end local v4    # "needDecode":Z
    .end local v7    # "components":I
    .end local v8    # "bpc":I
    nop

    .line 282
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v4, "PNG image exception."

    invoke-direct {v3, v4, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 18
    .param p0, "pngStream"    # Ljava/io/InputStream;
    .param p1, "png"    # Lcom/itextpdf/io/image/PngImageHelper$PngParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/itextpdf/io/image/PngImageHelper;->PNGID:[I

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 290
    aget v3, v3, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "file.is.not.a.valid.png"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    .end local v0    # "i":I
    :cond_1
    const/16 v3, 0x1000

    new-array v4, v3, [B

    .line 296
    .local v4, "buffer":[B
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v0

    .line 297
    .local v0, "len":I
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "marker":Ljava/lang/String;
    if-ltz v0, :cond_1b

    invoke-static {v5}, Lcom/itextpdf/io/image/PngImageHelper;->checkMarker(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 300
    const-string v6, "IDAT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 302
    :goto_2
    if-eqz v0, :cond_3

    .line 303
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v4, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 304
    .local v6, "size":I
    if-gez v6, :cond_2

    .line 305
    return-void

    .line 306
    :cond_2
    iget-object v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->idat:Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v8, v4, v7, v6}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->write([BII)V

    .line 307
    sub-int/2addr v0, v6

    goto :goto_2

    .line 309
    .end local v6    # "size":I
    :cond_3
    goto/16 :goto_a

    :cond_4
    const-string/jumbo v6, "tRNS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_9

    .line 310
    iget-object v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v6

    const-string v9, "Mask"

    const/16 v10, 0x10

    const/4 v11, 0x2

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 337
    :pswitch_1
    if-lez v0, :cond_8

    .line 338
    new-array v6, v0, [B

    iput-object v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    .line 339
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    if-ge v6, v0, :cond_5

    .line 340
    iget-object v7, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 341
    .end local v6    # "k":I
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 323
    :pswitch_2
    const/4 v6, 0x6

    if-lt v0, v6, :cond_8

    .line 324
    add-int/lit8 v0, v0, -0x6

    .line 325
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v12

    .line 326
    .local v12, "red":I
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v13

    .line 327
    .local v13, "green":I
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v14

    .line 328
    .local v14, "blue":I
    iget v15, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v15, v10, :cond_6

    .line 329
    iput v12, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    .line 330
    iput v13, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transGreen:I

    .line 331
    iput v14, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transBlue:I

    goto :goto_4

    .line 333
    :cond_6
    iget-object v10, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "[{0} {1} {2} {3} {4} {5}]"

    invoke-static {v7, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v12    # "red":I
    .end local v13    # "green":I
    .end local v14    # "blue":I
    :goto_4
    goto :goto_5

    .line 312
    :pswitch_3
    if-lt v0, v11, :cond_8

    .line 313
    add-int/lit8 v0, v0, -0x2

    .line 314
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v6

    .line 315
    .local v6, "gray":I
    iget v12, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v12, v10, :cond_7

    .line 316
    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    goto :goto_5

    .line 318
    :cond_7
    iget-object v10, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    new-array v11, v11, [Ljava/lang/Object;

    .line 319
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v8

    const-string v7, "[{0} {1}]"

    invoke-static {v7, v11}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v6    # "gray":I
    :cond_8
    :goto_5
    int-to-long v6, v0

    invoke-static {v1, v6, v7}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto/16 :goto_a

    .line 346
    :cond_9
    const-string v6, "IHDR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 347
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    .line 348
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    .line 350
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    .line 351
    iget-object v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/image/PngImageData;->setColorType(I)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->compressionMethod:I

    .line 353
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->filterMethod:I

    .line 354
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    iput v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    goto/16 :goto_a

    .line 355
    :cond_a
    const-string v6, "PLTE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 356
    iget-object v6, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 357
    new-instance v6, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    .line 358
    .local v6, "colorTableBuf":Lcom/itextpdf/io/source/ByteBuffer;
    :goto_6
    add-int/lit8 v7, v0, -0x1

    .end local v0    # "len":I
    .local v7, "len":I
    if-lez v0, :cond_b

    .line 359
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move v0, v7

    goto :goto_6

    .line 361
    :cond_b
    iget-object v0, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/itextpdf/io/image/PngImageData;->setColorPalette([B)V

    .line 362
    .end local v6    # "colorTableBuf":Lcom/itextpdf/io/source/ByteBuffer;
    move v0, v7

    goto/16 :goto_a

    .line 363
    .end local v7    # "len":I
    .restart local v0    # "len":I
    :cond_c
    int-to-long v6, v0

    invoke-static {v1, v6, v7}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto/16 :goto_a

    .line 365
    :cond_d
    const-string v6, "pHYs"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 366
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    .line 367
    .local v6, "dx":I
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v7

    .line 368
    .local v7, "dy":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 369
    .local v9, "unit":I
    if-ne v9, v8, :cond_e

    .line 370
    int-to-float v8, v6

    const v10, 0x3cd013a9    # 0.0254f

    mul-float/2addr v8, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v8, v11

    float-to-int v8, v8

    iput v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiX:I

    .line 371
    int-to-float v8, v7

    mul-float/2addr v8, v10

    add-float/2addr v8, v11

    float-to-int v8, v8

    iput v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiY:I

    goto :goto_7

    .line 373
    :cond_e
    if-eqz v7, :cond_f

    .line 374
    int-to-float v8, v6

    int-to-float v10, v7

    div-float/2addr v8, v10

    iput v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->XYRatio:F

    .line 376
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v9    # "unit":I
    :cond_f
    :goto_7
    goto/16 :goto_a

    :cond_10
    const-string v6, "cHRM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const v7, 0x47c35000    # 100000.0f

    if-eqz v6, :cond_12

    .line 377
    new-instance v6, Lcom/itextpdf/io/image/PngChromaticities;

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v10, v8, v7

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v11, v8, v7

    .line 378
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v12, v8, v7

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v13, v8, v7

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v14, v8, v7

    .line 379
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v15, v8, v7

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v16, v8, v7

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v8

    int-to-float v8, v8

    div-float v17, v8, v7

    move-object v9, v6

    invoke-direct/range {v9 .. v17}, Lcom/itextpdf/io/image/PngChromaticities;-><init>(FFFFFFFF)V

    .line 380
    .local v6, "pngChromaticities":Lcom/itextpdf/io/image/PngChromaticities;
    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    .line 381
    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    .line 382
    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    .line 383
    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_11

    .line 384
    iget-object v7, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/image/PngImageData;->setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V

    .line 386
    .end local v6    # "pngChromaticities":Lcom/itextpdf/io/image/PngChromaticities;
    :cond_11
    goto/16 :goto_a

    :cond_12
    const-string/jumbo v6, "sRGB"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 387
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 388
    .local v6, "ri":I
    sget-object v7, Lcom/itextpdf/io/image/PngImageHelper;->intents:[Ljava/lang/String;

    aget-object v7, v7, v6

    iput-object v7, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->intent:Ljava/lang/String;

    .line 389
    iget-object v7, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    const v8, 0x400ccccd    # 2.2f

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/image/PngImageData;->setGamma(F)V

    .line 390
    new-instance v7, Lcom/itextpdf/io/image/PngChromaticities;

    const v10, 0x3ea01a37    # 0.3127f

    const v11, 0x3ea872b0    # 0.329f

    const v12, 0x3f23d70a    # 0.64f

    const v13, 0x3ea8f5c3    # 0.33f

    const v14, 0x3e99999a    # 0.3f

    const v15, 0x3f19999a    # 0.6f

    const v16, 0x3e19999a    # 0.15f

    const v17, 0x3d75c28f    # 0.06f

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lcom/itextpdf/io/image/PngChromaticities;-><init>(FFFFFFFF)V

    .line 392
    .local v7, "pngChromaticities":Lcom/itextpdf/io/image/PngChromaticities;
    iget-object v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v8, v7}, Lcom/itextpdf/io/image/PngImageData;->setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V

    .line 393
    .end local v6    # "ri":I
    .end local v7    # "pngChromaticities":Lcom/itextpdf/io/image/PngChromaticities;
    goto/16 :goto_a

    :cond_13
    const-string v6, "gAMA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 394
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    .line 395
    .local v6, "gm":I
    if-eqz v6, :cond_14

    .line 396
    iget-object v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    int-to-float v9, v6

    div-float/2addr v7, v9

    invoke-virtual {v8, v7}, Lcom/itextpdf/io/image/PngImageData;->setGamma(F)V

    .line 397
    iget-object v7, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v7}, Lcom/itextpdf/io/image/PngImageData;->isHasCHRM()Z

    move-result v7

    if-nez v7, :cond_14

    .line 398
    new-instance v7, Lcom/itextpdf/io/image/PngChromaticities;

    const v9, 0x3ea01a37    # 0.3127f

    const v10, 0x3ea872b0    # 0.329f

    const v11, 0x3f23d70a    # 0.64f

    const v12, 0x3ea8f5c3    # 0.33f

    const v13, 0x3e99999a    # 0.3f

    const v14, 0x3f19999a    # 0.6f

    const v15, 0x3e19999a    # 0.15f

    const v16, 0x3d75c28f    # 0.06f

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lcom/itextpdf/io/image/PngChromaticities;-><init>(FFFFFFFF)V

    .line 400
    .restart local v7    # "pngChromaticities":Lcom/itextpdf/io/image/PngChromaticities;
    iget-object v8, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v8, v7}, Lcom/itextpdf/io/image/PngImageData;->setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V

    .line 403
    .end local v6    # "gm":I
    .end local v7    # "pngChromaticities":Lcom/itextpdf/io/image/PngChromaticities;
    :cond_14
    goto :goto_a

    :cond_15
    const-string v6, "iCCP"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 405
    :cond_16
    add-int/lit8 v0, v0, -0x1

    .line 406
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-nez v6, :cond_16

    .line 407
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    .line 408
    add-int/lit8 v0, v0, -0x1

    .line 409
    new-array v6, v0, [B

    .line 410
    .local v6, "icccom":[B
    const/4 v7, 0x0

    move v9, v7

    move v7, v0

    .line 411
    .end local v0    # "len":I
    .local v7, "len":I
    .local v9, "p":I
    :goto_8
    if-lez v7, :cond_18

    .line 412
    invoke-virtual {v1, v6, v9, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 413
    .local v0, "r":I
    if-ltz v0, :cond_17

    .line 415
    add-int/2addr v9, v0

    .line 416
    sub-int/2addr v7, v0

    .line 417
    .end local v0    # "r":I
    goto :goto_8

    .line 414
    .restart local v0    # "r":I
    :cond_17
    new-instance v3, Ljava/io/IOException;

    const-string v8, "premature.end.of.file"

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 418
    .end local v0    # "r":I
    :cond_18
    invoke-static {v6, v8}, Lcom/itextpdf/io/util/FilterUtil;->flateDecode([BZ)[B

    move-result-object v8

    .line 419
    .local v8, "iccp":[B
    const/4 v6, 0x0

    .line 421
    :try_start_0
    invoke-static {v8}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v0

    iput-object v0, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_9

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    iput-object v10, v2, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    .line 425
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "icccom":[B
    .end local v8    # "iccp":[B
    .end local v9    # "p":I
    :goto_9
    move v0, v7

    goto :goto_a

    .end local v7    # "len":I
    .local v0, "len":I
    :cond_19
    const-string v6, "IEND"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 426
    nop

    .line 432
    .end local v0    # "len":I
    .end local v5    # "marker":Ljava/lang/String;
    return-void

    .line 428
    .restart local v0    # "len":I
    .restart local v5    # "marker":Ljava/lang/String;
    :cond_1a
    int-to-long v6, v0

    invoke-static {v1, v6, v7}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 430
    :goto_a
    const-wide/16 v6, 0x4

    invoke-static {v1, v6, v7}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 431
    .end local v0    # "len":I
    .end local v5    # "marker":Ljava/lang/String;
    goto/16 :goto_1

    .line 299
    .restart local v0    # "len":I
    .restart local v5    # "marker":Ljava/lang/String;
    :cond_1b
    new-instance v3, Ljava/io/IOException;

    const-string v6, "corrupted.png.file"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static setPixel([B[IIIIIII)V
    .locals 5
    .param p0, "image"    # [B
    .param p1, "data"    # [I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "bitDepth"    # I
    .param p7, "bytesPerRow"    # I

    .line 657
    const/16 v0, 0x8

    if-ne p6, v0, :cond_1

    .line 658
    mul-int v0, p7, p5

    mul-int v1, p3, p4

    add-int/2addr v0, v1

    .line 659
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 660
    add-int v2, v0, v1

    add-int v3, v1, p2

    aget v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "pos":I
    .end local v1    # "k":I
    :cond_0
    goto :goto_2

    :cond_1
    const/16 v1, 0x10

    if-ne p6, v1, :cond_3

    .line 662
    mul-int v1, p7, p5

    mul-int v2, p3, p4

    add-int/2addr v1, v2

    .line 663
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 664
    add-int v3, v1, v2

    add-int v4, v2, p2

    aget v4, p1, v4

    ushr-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 665
    .end local v1    # "pos":I
    .end local v2    # "k":I
    :cond_2
    goto :goto_2

    .line 666
    :cond_3
    mul-int v1, p7, p5

    div-int v2, v0, p6

    div-int v2, p4, v2

    add-int/2addr v1, v2

    .line 667
    .restart local v1    # "pos":I
    aget v2, p1, p2

    div-int v3, v0, p6

    rem-int v3, p4, v3

    mul-int/2addr v3, p6

    sub-int/2addr v0, v3

    sub-int/2addr v0, p6

    shl-int v0, v2, v0

    .line 668
    .local v0, "v":I
    aget-byte v2, p0, v1

    int-to-byte v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 670
    .end local v0    # "v":I
    .end local v1    # "pos":I
    :goto_2
    return-void
.end method
