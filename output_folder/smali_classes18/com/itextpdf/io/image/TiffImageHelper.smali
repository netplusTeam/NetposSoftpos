.class Lcom/itextpdf/io/image/TiffImageHelper;
.super Ljava/lang/Object;
.source "TiffImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPredictor([BIIII)V
    .locals 5
    .param p0, "uncompData"    # [B
    .param p1, "predictor"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "samplesPerPixel"    # I

    .line 687
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 688
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 691
    mul-int v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p4

    .line 692
    .local v1, "count":I
    move v2, p4

    .local v2, "i":I
    :goto_1
    mul-int v3, p2, p4

    if-ge v2, v3, :cond_1

    .line 693
    aget-byte v3, p0, v1

    sub-int v4, v1, p4

    aget-byte v4, p0, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 694
    add-int/lit8 v1, v1, 0x1

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 690
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "j":I
    .end local v1    # "count":I
    :cond_2
    return-void
.end method

.method private static decodePackbits([B[B)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "dst"    # [B

    .line 653
    const/4 v0, 0x0

    .local v0, "srcCount":I
    const/4 v1, 0x0

    .line 656
    .local v1, "dstCount":I
    :goto_0
    :try_start_0
    array-length v2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-ge v1, v2, :cond_4

    .line 657
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "srcCount":I
    .local v2, "srcCount":I
    :try_start_1
    aget-byte v0, p0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 660
    .local v0, "b":B
    if-ltz v0, :cond_1

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_1

    .line 662
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_0

    .line 663
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dstCount":I
    .local v4, "dstCount":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "srcCount":I
    .local v5, "srcCount":I
    :try_start_2
    aget-byte v2, p0, v2

    aput-byte v2, p1, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 662
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    move v2, v5

    goto :goto_1

    .line 681
    .end local v0    # "b":B
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    move v1, v4

    move v0, v5

    goto :goto_3

    .line 662
    .end local v4    # "dstCount":I
    .end local v5    # "srcCount":I
    .restart local v0    # "b":B
    .restart local v1    # "dstCount":I
    .restart local v2    # "srcCount":I
    .restart local v3    # "i":I
    :cond_0
    move v0, v2

    .end local v3    # "i":I
    goto :goto_0

    .line 667
    :cond_1
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_3

    const/16 v3, -0x80

    if-eq v0, v3, :cond_3

    .line 669
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "srcCount":I
    .local v3, "srcCount":I
    :try_start_3
    aget-byte v2, p0, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 673
    .local v2, "repeat":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    not-int v5, v0

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_2

    .line 674
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dstCount":I
    .local v5, "dstCount":I
    :try_start_4
    aput-byte v2, p1, v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 673
    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_2

    .line 681
    .end local v0    # "b":B
    .end local v2    # "repeat":B
    .end local v4    # "i":I
    :catch_1
    move-exception v0

    move v0, v3

    move v1, v5

    goto :goto_3

    .line 673
    .end local v5    # "dstCount":I
    .restart local v0    # "b":B
    .restart local v1    # "dstCount":I
    .restart local v2    # "repeat":B
    .restart local v4    # "i":I
    :cond_2
    move v0, v3

    .end local v4    # "i":I
    goto :goto_0

    .line 681
    .end local v0    # "b":B
    .end local v2    # "repeat":B
    :catch_2
    move-exception v0

    move v0, v3

    goto :goto_3

    .line 678
    .end local v3    # "srcCount":I
    .restart local v0    # "b":B
    .local v2, "srcCount":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    .line 681
    .end local v0    # "b":B
    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_3

    .line 683
    .end local v2    # "srcCount":I
    .local v0, "srcCount":I
    :cond_4
    goto :goto_3

    .line 681
    :catch_4
    move-exception v2

    .line 684
    :goto_3
    return-void
.end method

.method private static getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J
    .locals 6
    .param p0, "dir"    # Lcom/itextpdf/io/codec/TIFFDirectory;
    .param p1, "tag"    # I

    .line 634
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 635
    .local v0, "field":Lcom/itextpdf/io/codec/TIFFField;
    if-nez v0, :cond_0

    .line 636
    const/4 v1, 0x0

    return-object v1

    .line 638
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 639
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsLongs()[J

    move-result-object v1

    .local v1, "offset":[J
    goto :goto_1

    .line 643
    .end local v1    # "offset":[J
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsChars()[C

    move-result-object v1

    .line 644
    .local v1, "temp":[C
    array-length v2, v1

    new-array v2, v2, [J

    .line 645
    .local v2, "offset":[J
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 646
    aget-char v4, v1, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 648
    .end local v2    # "offset":[J
    .end local v3    # "k":I
    .local v1, "offset":[J
    :goto_1
    return-object v1
.end method

.method private static getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I
    .locals 9
    .param p0, "fd"    # Lcom/itextpdf/io/codec/TIFFField;
    .param p1, "resolutionUnit"    # I

    .line 597
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 598
    return v0

    .line 599
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsRational(I)[J

    move-result-object v1

    .line 600
    .local v1, "res":[J
    aget-wide v2, v1, v0

    long-to-float v0, v2

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    .line 601
    .local v0, "frac":F
    const/4 v2, 0x0

    .line 602
    .local v2, "dpi":I
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 608
    :pswitch_0
    float-to-double v5, v0

    const-wide v7, 0x400451eb851eb852L    # 2.54

    mul-double/2addr v5, v7

    add-double/2addr v5, v3

    double-to-int v2, v5

    goto :goto_0

    .line 605
    :pswitch_1
    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v2, v5

    .line 606
    nop

    .line 611
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processExtraSamples(Lcom/itextpdf/io/source/DeflaterOutputStream;Lcom/itextpdf/io/source/DeflaterOutputStream;[BIIII)V
    .locals 8
    .param p0, "zip"    # Lcom/itextpdf/io/source/DeflaterOutputStream;
    .param p1, "mzip"    # Lcom/itextpdf/io/source/DeflaterOutputStream;
    .param p2, "outBuf"    # [B
    .param p3, "samplePerPixel"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    const/16 v0, 0x8

    if-ne p4, v0, :cond_2

    .line 617
    mul-int v0, p5, p6

    new-array v0, v0, [B

    .line 618
    .local v0, "mask":[B
    const/4 v1, 0x0

    .line 619
    .local v1, "mptr":I
    const/4 v2, 0x0

    .line 620
    .local v2, "optr":I
    mul-int v3, p5, p6

    mul-int/2addr v3, p3

    .line 621
    .local v3, "total":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 622
    const/4 v5, 0x0

    .local v5, "s":I
    :goto_1
    add-int/lit8 v6, p3, -0x1

    if-ge v5, v6, :cond_0

    .line 623
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "optr":I
    .local v6, "optr":I
    add-int v7, v4, v5

    aget-byte v7, p2, v7

    aput-byte v7, p2, v2

    .line 622
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_1

    .line 625
    .end local v5    # "s":I
    .end local v6    # "optr":I
    .restart local v2    # "optr":I
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "mptr":I
    .local v5, "mptr":I
    add-int v6, v4, p3

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p2, v6

    aput-byte v6, v0, v1

    .line 621
    add-int/2addr v4, p3

    move v1, v5

    goto :goto_0

    .line 627
    .end local v4    # "k":I
    .end local v5    # "mptr":I
    .restart local v1    # "mptr":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4, v2}, Lcom/itextpdf/io/source/DeflaterOutputStream;->write([BII)V

    .line 628
    invoke-virtual {p1, v0, v4, v1}, Lcom/itextpdf/io/source/DeflaterOutputStream;->write([BII)V

    .line 629
    .end local v0    # "mask":[B
    .end local v1    # "mptr":I
    .end local v2    # "optr":I
    .end local v3    # "total":I
    nop

    .line 631
    return-void

    .line 630
    :cond_2
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Extra samples are not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 5
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 89
    :cond_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    .line 90
    .local v0, "ras":Lcom/itextpdf/io/source/IRandomAccessSource;
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 91
    .local v1, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    new-instance v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v2, v3}, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;-><init>(Lcom/itextpdf/io/image/TiffImageData;)V

    .line 92
    .local v2, "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    invoke-static {v1, v2}, Lcom/itextpdf/io/image/TiffImageHelper;->processTiffImage(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V

    .line 93
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 95
    iget-boolean v3, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->jpegProcessing:Z

    if-nez v3, :cond_1

    .line 96
    iget-object v3, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    iget-object v4, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->additional:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "ras":Lcom/itextpdf/io/source/IRandomAccessSource;
    .end local v1    # "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local v2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :cond_1
    nop

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "TIFF image exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TIFF image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processTiffImage(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V
    .locals 51
    .param p0, "s"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p1, "tiff"    # Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/TiffImageData;->isRecoverFromImageError()Z

    move-result v3

    .line 105
    .local v3, "recoverFromImageError":Z
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/TiffImageData;->getPage()I

    move-result v4

    .line 106
    .local v4, "page":I
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/TiffImageData;->isDirect()Z

    move-result v5

    .line 107
    .local v5, "direct":Z
    const/4 v6, 0x1

    if-lt v4, v6, :cond_22

    .line 110
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/codec/TIFFDirectory;

    add-int/lit8 v7, v4, -0x1

    invoke-direct {v0, v1, v7}, Lcom/itextpdf/io/codec/TIFFDirectory;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V

    move-object v7, v0

    .line 111
    .local v7, "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    const/16 v0, 0x142

    invoke-virtual {v7, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "compression":I
    const/16 v8, 0x103

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    if-eqz v9, :cond_0

    .line 115
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-int v0, v8

    move v8, v0

    goto :goto_0

    .line 288
    .end local v0    # "compression":I
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    :catch_0
    move-exception v0

    move/from16 v46, v3

    move/from16 v27, v4

    move/from16 v39, v5

    move-object v3, v2

    goto/16 :goto_1a

    .line 114
    .restart local v0    # "compression":I
    .restart local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    :cond_0
    move v8, v0

    .line 117
    .end local v0    # "compression":I
    .local v8, "compression":I
    :goto_0
    sparse-switch v8, :sswitch_data_0

    .line 124
    move/from16 v46, v3

    move/from16 v27, v4

    move/from16 v39, v5

    move-object v4, v7

    move/from16 v45, v8

    move-object v3, v2

    .end local v3    # "recoverFromImageError":Z
    .end local v5    # "direct":Z
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v8    # "compression":I
    .local v4, "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .local v27, "page":I
    .local v39, "direct":Z
    .local v45, "compression":I
    .local v46, "recoverFromImageError":Z
    :try_start_2
    invoke-static {v4, v1, v3}, Lcom/itextpdf/io/image/TiffImageHelper;->processTiffImageColor(Lcom/itextpdf/io/codec/TIFFDirectory;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    goto/16 :goto_19

    .line 122
    .end local v27    # "page":I
    .end local v39    # "direct":Z
    .end local v45    # "compression":I
    .end local v46    # "recoverFromImageError":Z
    .restart local v3    # "recoverFromImageError":Z
    .local v4, "page":I
    .restart local v5    # "direct":Z
    .restart local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v8    # "compression":I
    :sswitch_0
    nop

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "rotation":F
    const/16 v9, 0x112

    :try_start_3
    invoke-virtual {v7, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    const/16 v11, 0x8

    if-eqz v10, :cond_6

    .line 129
    :try_start_4
    invoke-virtual {v7, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    long-to-int v9, v9

    .line 130
    .local v9, "rot":I
    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    goto :goto_2

    .line 132
    :cond_1
    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    if-ne v9, v11, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    const/4 v10, 0x6

    if-eq v9, v10, :cond_3

    const/4 v10, 0x7

    if-ne v9, v10, :cond_6

    .line 135
    :cond_3
    const v0, -0x4036f025

    move v9, v0

    goto :goto_3

    .line 133
    :cond_4
    :goto_1
    const v0, 0x3fc90fdb

    move v9, v0

    goto :goto_3

    .line 131
    :cond_5
    :goto_2
    const v0, 0x40490fdb    # (float)Math.PI

    move v9, v0

    goto :goto_3

    .line 138
    .end local v9    # "rot":I
    :cond_6
    move v9, v0

    .end local v0    # "rotation":F
    .local v9, "rotation":F
    :goto_3
    const-wide/16 v12, 0x0

    .line 139
    .local v12, "tiffT4Options":J
    const-wide/16 v14, 0x0

    .line 140
    .local v14, "tiffT6Options":J
    const/4 v0, 0x1

    .line 141
    .local v0, "fillOrder":I
    const/16 v10, 0x101

    move-wide/from16 v17, v12

    .end local v12    # "tiffT4Options":J
    .local v17, "tiffT4Options":J
    :try_start_5
    invoke-virtual {v7, v10}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v10, v11

    .line 142
    .local v10, "h":I
    const/16 v11, 0x100

    invoke-virtual {v7, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    .line 143
    .local v11, "w":I
    const/4 v12, 0x0

    .line 144
    .local v12, "XYRatio":F
    const/4 v13, 0x2

    .line 145
    .local v13, "resolutionUnit":I
    const/16 v6, 0x128

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11

    if-eqz v19, :cond_7

    .line 146
    move/from16 v19, v12

    move/from16 v20, v13

    .end local v12    # "XYRatio":F
    .end local v13    # "resolutionUnit":I
    .local v19, "XYRatio":F
    .local v20, "resolutionUnit":I
    :try_start_6
    invoke-virtual {v7, v6}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    long-to-int v13, v12

    .end local v20    # "resolutionUnit":I
    .restart local v13    # "resolutionUnit":I
    goto :goto_4

    .line 145
    .end local v19    # "XYRatio":F
    .restart local v12    # "XYRatio":F
    :cond_7
    move/from16 v19, v12

    move/from16 v20, v13

    .line 147
    .end local v12    # "XYRatio":F
    .restart local v19    # "XYRatio":F
    :goto_4
    const/16 v6, 0x11a

    :try_start_7
    invoke-virtual {v7, v6}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v6

    .line 148
    .local v6, "dpiX":I
    const/16 v12, 0x11b

    invoke-virtual {v7, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v12

    invoke-static {v12, v13}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    .line 149
    .local v12, "dpiY":I
    move/from16 v27, v4

    const/4 v4, 0x1

    .end local v4    # "page":I
    .restart local v27    # "page":I
    if-ne v13, v4, :cond_9

    .line 150
    if-eqz v12, :cond_8

    .line 151
    int-to-float v4, v6

    move/from16 v20, v0

    .end local v0    # "fillOrder":I
    .local v20, "fillOrder":I
    int-to-float v0, v12

    div-float v0, v4, v0

    .end local v19    # "XYRatio":F
    .local v0, "XYRatio":F
    goto :goto_5

    .line 150
    .end local v20    # "fillOrder":I
    .local v0, "fillOrder":I
    .restart local v19    # "XYRatio":F
    :cond_8
    move/from16 v20, v0

    .end local v0    # "fillOrder":I
    .restart local v20    # "fillOrder":I
    move/from16 v0, v19

    .line 152
    .end local v19    # "XYRatio":F
    .local v0, "XYRatio":F
    :goto_5
    const/4 v6, 0x0

    .line 153
    const/4 v12, 0x0

    move v4, v0

    goto :goto_6

    .line 149
    .end local v20    # "fillOrder":I
    .local v0, "fillOrder":I
    .restart local v19    # "XYRatio":F
    :cond_9
    move/from16 v20, v0

    .end local v0    # "fillOrder":I
    .restart local v20    # "fillOrder":I
    move/from16 v4, v19

    .line 155
    .end local v19    # "XYRatio":F
    .local v4, "XYRatio":F
    :goto_6
    move v0, v10

    .line 156
    .local v0, "rowsStrip":I
    move/from16 v19, v0

    .end local v0    # "rowsStrip":I
    .local v19, "rowsStrip":I
    const/16 v0, 0x116

    :try_start_8
    invoke-virtual {v7, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    if-eqz v21, :cond_a

    .line 157
    move-wide/from16 v21, v14

    move v15, v13

    .end local v13    # "resolutionUnit":I
    .end local v14    # "tiffT6Options":J
    .local v15, "resolutionUnit":I
    .local v21, "tiffT6Options":J
    :try_start_9
    invoke-virtual {v7, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    long-to-int v0, v13

    .end local v19    # "rowsStrip":I
    .restart local v0    # "rowsStrip":I
    goto :goto_7

    .line 288
    .end local v0    # "rowsStrip":I
    .end local v4    # "XYRatio":F
    .end local v6    # "dpiX":I
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v8    # "compression":I
    .end local v9    # "rotation":F
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v15    # "resolutionUnit":I
    .end local v17    # "tiffT4Options":J
    .end local v20    # "fillOrder":I
    .end local v21    # "tiffT6Options":J
    :catch_1
    move-exception v0

    move/from16 v46, v3

    move/from16 v39, v5

    move-object v3, v2

    goto/16 :goto_1a

    .line 156
    .restart local v4    # "XYRatio":F
    .restart local v6    # "dpiX":I
    .restart local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v8    # "compression":I
    .restart local v9    # "rotation":F
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "resolutionUnit":I
    .restart local v14    # "tiffT6Options":J
    .restart local v17    # "tiffT4Options":J
    .restart local v19    # "rowsStrip":I
    .restart local v20    # "fillOrder":I
    :cond_a
    move-wide/from16 v21, v14

    move v15, v13

    .end local v13    # "resolutionUnit":I
    .end local v14    # "tiffT6Options":J
    .restart local v15    # "resolutionUnit":I
    .restart local v21    # "tiffT6Options":J
    move/from16 v0, v19

    .line 158
    .end local v19    # "rowsStrip":I
    .restart local v0    # "rowsStrip":I
    :goto_7
    if-lez v0, :cond_c

    if-le v0, v10, :cond_b

    goto :goto_8

    :cond_b
    move v13, v0

    goto :goto_9

    .line 159
    :cond_c
    :goto_8
    move v0, v10

    move v13, v0

    .line 160
    .end local v0    # "rowsStrip":I
    .local v13, "rowsStrip":I
    :goto_9
    const/16 v0, 0x111

    :try_start_a
    invoke-static {v7, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v0

    move-object v14, v0

    .line 161
    .local v14, "offset":[J
    const/16 v0, 0x117

    invoke-static {v7, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    .line 164
    .local v0, "size":[J
    const-wide/16 v23, 0x0

    move/from16 v28, v15

    .end local v15    # "resolutionUnit":I
    .local v28, "resolutionUnit":I
    if-eqz v0, :cond_e

    :try_start_b
    array-length v15, v0

    move/from16 v29, v9

    const/4 v9, 0x1

    .end local v9    # "rotation":F
    .local v29, "rotation":F
    if-ne v15, v9, :cond_d

    const/4 v9, 0x0

    aget-wide v25, v0, v9

    cmp-long v15, v25, v23

    if-eqz v15, :cond_f

    aget-wide v25, v0, v9

    aget-wide v30, v14, v9

    add-long v25, v25, v30

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v30
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    cmp-long v9, v25, v30

    if-lez v9, :cond_d

    goto :goto_a

    :cond_d
    move/from16 v30, v3

    move/from16 v31, v4

    goto :goto_b

    .end local v29    # "rotation":F
    .restart local v9    # "rotation":F
    :cond_e
    move/from16 v29, v9

    .end local v9    # "rotation":F
    .restart local v29    # "rotation":F
    :cond_f
    :goto_a
    if-ne v10, v13, :cond_10

    .line 165
    const/4 v9, 0x1

    :try_start_c
    new-array v15, v9, [J

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v25
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v9, 0x0

    .end local v3    # "recoverFromImageError":Z
    .end local v4    # "XYRatio":F
    .local v30, "recoverFromImageError":Z
    .local v31, "XYRatio":F
    :try_start_d
    aget-wide v3, v14, v9

    long-to-int v3, v3

    int-to-long v3, v3

    sub-long v25, v25, v3

    aput-wide v25, v15, v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move-object v0, v15

    move-object v3, v0

    goto :goto_c

    .line 288
    .end local v0    # "size":[J
    .end local v6    # "dpiX":I
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v8    # "compression":I
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v14    # "offset":[J
    .end local v17    # "tiffT4Options":J
    .end local v20    # "fillOrder":I
    .end local v21    # "tiffT6Options":J
    .end local v28    # "resolutionUnit":I
    .end local v29    # "rotation":F
    .end local v30    # "recoverFromImageError":Z
    .end local v31    # "XYRatio":F
    .restart local v3    # "recoverFromImageError":Z
    :catch_2
    move-exception v0

    move/from16 v46, v3

    move/from16 v39, v5

    move-object v3, v2

    .end local v3    # "recoverFromImageError":Z
    .restart local v30    # "recoverFromImageError":Z
    goto/16 :goto_1a

    .line 164
    .end local v30    # "recoverFromImageError":Z
    .restart local v0    # "size":[J
    .restart local v3    # "recoverFromImageError":Z
    .restart local v4    # "XYRatio":F
    .restart local v6    # "dpiX":I
    .restart local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v8    # "compression":I
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "rowsStrip":I
    .restart local v14    # "offset":[J
    .restart local v17    # "tiffT4Options":J
    .restart local v20    # "fillOrder":I
    .restart local v21    # "tiffT6Options":J
    .restart local v28    # "resolutionUnit":I
    .restart local v29    # "rotation":F
    :cond_10
    move/from16 v30, v3

    move/from16 v31, v4

    .line 167
    .end local v3    # "recoverFromImageError":Z
    .end local v4    # "XYRatio":F
    .restart local v30    # "recoverFromImageError":Z
    .restart local v31    # "XYRatio":F
    :goto_b
    move-object v3, v0

    .end local v0    # "size":[J
    .local v3, "size":[J
    :goto_c
    const/4 v0, 0x0

    .line 168
    .local v0, "reverse":Z
    const/16 v4, 0x10a

    :try_start_e
    invoke-virtual {v7, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 169
    .local v4, "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    if-eqz v4, :cond_11

    .line 170
    const/4 v9, 0x0

    :try_start_f
    invoke-virtual {v4, v9}, Lcom/itextpdf/io/codec/TIFFField;->getAsInt(I)I

    move-result v15
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move v9, v15

    .end local v20    # "fillOrder":I
    .local v9, "fillOrder":I
    goto :goto_d

    .line 288
    .end local v0    # "reverse":Z
    .end local v3    # "size":[J
    .end local v4    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v6    # "dpiX":I
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v8    # "compression":I
    .end local v9    # "fillOrder":I
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v14    # "offset":[J
    .end local v17    # "tiffT4Options":J
    .end local v21    # "tiffT6Options":J
    .end local v28    # "resolutionUnit":I
    .end local v29    # "rotation":F
    .end local v31    # "XYRatio":F
    :catch_3
    move-exception v0

    move-object v3, v2

    move/from16 v39, v5

    move/from16 v46, v30

    goto/16 :goto_1a

    .line 169
    .restart local v0    # "reverse":Z
    .restart local v3    # "size":[J
    .restart local v4    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v6    # "dpiX":I
    .restart local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v8    # "compression":I
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "rowsStrip":I
    .restart local v14    # "offset":[J
    .restart local v17    # "tiffT4Options":J
    .restart local v20    # "fillOrder":I
    .restart local v21    # "tiffT6Options":J
    .restart local v28    # "resolutionUnit":I
    .restart local v29    # "rotation":F
    .restart local v31    # "XYRatio":F
    :cond_11
    move/from16 v9, v20

    .line 171
    .end local v20    # "fillOrder":I
    .restart local v9    # "fillOrder":I
    :goto_d
    const/4 v15, 0x2

    if-ne v9, v15, :cond_12

    const/4 v15, 0x1

    goto :goto_e

    :cond_12
    const/4 v15, 0x0

    .line 172
    .end local v0    # "reverse":Z
    .local v15, "reverse":Z
    :goto_e
    const/4 v0, 0x0

    .line 173
    .local v0, "parameters":I
    move-object/from16 v32, v4

    .end local v4    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .local v32, "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    const/16 v4, 0x106

    :try_start_10
    invoke-virtual {v7, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v20
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    const-wide/16 v25, 0x1

    if-eqz v20, :cond_13

    .line 174
    :try_start_11
    invoke-virtual {v7, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v33

    .line 175
    .local v33, "photo":J
    cmp-long v4, v33, v25

    if-nez v4, :cond_13

    .line 176
    or-int/lit8 v0, v0, 0x1

    .line 178
    .end local v33    # "photo":J
    :cond_13
    const/4 v4, 0x0

    .line 179
    .local v4, "imagecomp":I
    const-wide/16 v33, 0x4

    sparse-switch v8, :sswitch_data_1

    move/from16 v35, v15

    .end local v15    # "reverse":Z
    .local v35, "reverse":Z
    move v15, v4

    move-wide/from16 v36, v21

    move v4, v0

    goto/16 :goto_10

    .line 198
    .end local v35    # "reverse":Z
    .restart local v15    # "reverse":Z
    :sswitch_1
    const/16 v4, 0x100

    .line 199
    move/from16 v20, v4

    .end local v4    # "imagecomp":I
    .local v20, "imagecomp":I
    const/16 v4, 0x125

    invoke-virtual {v7, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v4

    .line 200
    .local v4, "t6OptionsField":Lcom/itextpdf/io/codec/TIFFField;
    if-eqz v4, :cond_14

    .line 201
    move/from16 v35, v15

    const/4 v15, 0x0

    .end local v15    # "reverse":Z
    .restart local v35    # "reverse":Z
    invoke-virtual {v4, v15}, Lcom/itextpdf/io/codec/TIFFField;->getAsLong(I)J

    move-result-wide v23

    move-wide/from16 v21, v23

    move v4, v0

    move/from16 v15, v20

    move-wide/from16 v36, v21

    goto :goto_10

    .line 200
    .end local v35    # "reverse":Z
    .restart local v15    # "reverse":Z
    :cond_14
    move/from16 v35, v15

    .end local v15    # "reverse":Z
    .restart local v35    # "reverse":Z
    move v4, v0

    move/from16 v15, v20

    move-wide/from16 v36, v21

    goto :goto_10

    .line 186
    .end local v20    # "imagecomp":I
    .end local v35    # "reverse":Z
    .local v4, "imagecomp":I
    .restart local v15    # "reverse":Z
    :sswitch_2
    move/from16 v35, v15

    .end local v15    # "reverse":Z
    .restart local v35    # "reverse":Z
    const/16 v4, 0x101

    .line 187
    or-int/lit8 v0, v0, 0xc

    .line 188
    const/16 v15, 0x124

    invoke-virtual {v7, v15}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v15

    .line 189
    .local v15, "t4OptionsField":Lcom/itextpdf/io/codec/TIFFField;
    if-eqz v15, :cond_17

    .line 190
    move/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "imagecomp":I
    .restart local v20    # "imagecomp":I
    invoke-virtual {v15, v4}, Lcom/itextpdf/io/codec/TIFFField;->getAsLong(I)J

    move-result-wide v36
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    move-wide/from16 v17, v36

    .line 191
    and-long v25, v17, v25

    cmp-long v4, v25, v23

    if-eqz v4, :cond_15

    .line 192
    const/16 v4, 0x102

    .end local v20    # "imagecomp":I
    .restart local v4    # "imagecomp":I
    goto :goto_f

    .line 191
    .end local v4    # "imagecomp":I
    .restart local v20    # "imagecomp":I
    :cond_15
    move/from16 v4, v20

    .line 193
    .end local v20    # "imagecomp":I
    .restart local v4    # "imagecomp":I
    :goto_f
    and-long v25, v17, v33

    cmp-long v20, v25, v23

    if-eqz v20, :cond_16

    .line 194
    or-int/lit8 v0, v0, 0x2

    move v15, v4

    move-wide/from16 v36, v21

    move v4, v0

    goto :goto_10

    .line 193
    :cond_16
    move v15, v4

    move-wide/from16 v36, v21

    move v4, v0

    goto :goto_10

    .line 189
    :cond_17
    move/from16 v20, v4

    .end local v4    # "imagecomp":I
    .restart local v20    # "imagecomp":I
    move v4, v0

    move/from16 v15, v20

    move-wide/from16 v36, v21

    goto :goto_10

    .line 182
    .end local v20    # "imagecomp":I
    .end local v35    # "reverse":Z
    .restart local v4    # "imagecomp":I
    .local v15, "reverse":Z
    :sswitch_3
    move/from16 v35, v15

    .end local v15    # "reverse":Z
    .restart local v35    # "reverse":Z
    const/16 v4, 0x101

    .line 183
    or-int/lit8 v0, v0, 0xa

    .line 184
    move v15, v4

    move-wide/from16 v36, v21

    move v4, v0

    .line 206
    .end local v0    # "parameters":I
    .end local v21    # "tiffT6Options":J
    .local v4, "parameters":I
    .local v15, "imagecomp":I
    .local v36, "tiffT6Options":J
    :goto_10
    const/16 v38, 0x0

    if-eqz v5, :cond_18

    if-ne v13, v10, :cond_18

    .line 207
    move/from16 v39, v5

    move/from16 v40, v6

    const/16 v16, 0x0

    .end local v5    # "direct":Z
    .end local v6    # "dpiX":I
    .restart local v39    # "direct":Z
    .local v40, "dpiX":I
    :try_start_12
    aget-wide v5, v3, v16

    long-to-int v0, v5

    new-array v0, v0, [B

    .line 208
    .local v0, "im":[B
    aget-wide v5, v14, v16

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 209
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 210
    iget-object v5, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v23, v15

    move/from16 v24, v4

    move-object/from16 v25, v0

    invoke-static/range {v19 .. v26}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 211
    iget-object v5, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/image/TiffImageData;->setInverted(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 212
    .end local v0    # "im":[B
    move/from16 v45, v8

    move/from16 v44, v9

    move/from16 v43, v15

    move-wide/from16 v41, v17

    move/from16 v46, v30

    move/from16 v9, v40

    move/from16 v18, v4

    move-object/from16 v17, v7

    move-object/from16 v40, v14

    move-object/from16 v49, v3

    move-object v3, v2

    move/from16 v2, v29

    move-object/from16 v29, v49

    goto/16 :goto_16

    .line 288
    .end local v3    # "size":[J
    .end local v4    # "parameters":I
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v8    # "compression":I
    .end local v9    # "fillOrder":I
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v14    # "offset":[J
    .end local v15    # "imagecomp":I
    .end local v17    # "tiffT4Options":J
    .end local v28    # "resolutionUnit":I
    .end local v29    # "rotation":F
    .end local v31    # "XYRatio":F
    .end local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v35    # "reverse":Z
    .end local v36    # "tiffT6Options":J
    .end local v40    # "dpiX":I
    :catch_4
    move-exception v0

    move-object v3, v2

    move/from16 v46, v30

    goto/16 :goto_1a

    .line 206
    .end local v39    # "direct":Z
    .restart local v3    # "size":[J
    .restart local v4    # "parameters":I
    .restart local v5    # "direct":Z
    .restart local v6    # "dpiX":I
    .restart local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v8    # "compression":I
    .restart local v9    # "fillOrder":I
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "rowsStrip":I
    .restart local v14    # "offset":[J
    .restart local v15    # "imagecomp":I
    .restart local v17    # "tiffT4Options":J
    .restart local v28    # "resolutionUnit":I
    .restart local v29    # "rotation":F
    .restart local v31    # "XYRatio":F
    .restart local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v35    # "reverse":Z
    .restart local v36    # "tiffT6Options":J
    :cond_18
    move/from16 v39, v5

    move/from16 v40, v6

    .line 213
    .end local v5    # "direct":Z
    .end local v6    # "dpiX":I
    .restart local v39    # "direct":Z
    .restart local v40    # "dpiX":I
    move v0, v10

    .line 214
    .local v0, "rowsLeft":I
    :try_start_13
    new-instance v5, Lcom/itextpdf/io/codec/CCITTG4Encoder;

    invoke-direct {v5, v11}, Lcom/itextpdf/io/codec/CCITTG4Encoder;-><init>(I)V

    .line 215
    .local v5, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    const/4 v6, 0x0

    move-wide/from16 v41, v17

    move-object/from16 v17, v7

    move v7, v6

    move v6, v0

    .end local v0    # "rowsLeft":I
    .local v6, "rowsLeft":I
    .local v7, "k":I
    .local v17, "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .local v41, "tiffT4Options":J
    :goto_11
    array-length v0, v14

    if-ge v7, v0, :cond_1d

    .line 216
    move/from16 v18, v4

    move-object/from16 v43, v5

    .end local v4    # "parameters":I
    .end local v5    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v18, "parameters":I
    .local v43, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    aget-wide v4, v3, v7

    long-to-int v0, v4

    new-array v0, v0, [B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    move-object v4, v0

    .line 217
    .local v4, "im":[B
    move-object v5, v3

    .end local v3    # "size":[J
    .local v5, "size":[J
    :try_start_14
    aget-wide v2, v14, v7

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 218
    invoke-virtual {v1, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 219
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 220
    .local v2, "height":I
    new-instance v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;

    invoke-direct {v0, v9, v11, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;-><init>(III)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    move-object v3, v0

    .line 221
    .local v3, "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    move/from16 v44, v9

    move/from16 v9, v30

    .end local v30    # "recoverFromImageError":Z
    .local v9, "recoverFromImageError":Z
    .local v44, "fillOrder":I
    :try_start_15
    invoke-virtual {v3, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setRecoverFromImageError(Z)V

    .line 222
    add-int/lit8 v0, v11, 0x7

    const/16 v16, 0x8

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v2

    new-array v0, v0, [B
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    move-object/from16 v30, v0

    .line 223
    .local v30, "outBuf":[B
    sparse-switch v8, :sswitch_data_2

    move/from16 v45, v8

    move/from16 v46, v9

    move/from16 v9, v40

    move-object/from16 v8, v43

    move-object/from16 v40, v14

    move/from16 v43, v15

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v3, p1

    move-object/from16 v49, v5

    move v5, v2

    move/from16 v2, v29

    move-object/from16 v29, v49

    move-object/from16 v50, v30

    move/from16 v30, v7

    move-object/from16 v7, v50

    .end local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .end local v15    # "imagecomp":I
    .local v2, "rotation":F
    .local v5, "height":I
    .local v7, "outBuf":[B
    .local v8, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v9, "dpiX":I
    .local v14, "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v29, "size":[J
    .local v30, "k":I
    .local v40, "offset":[J
    .local v43, "imagecomp":I
    .restart local v45    # "compression":I
    .restart local v46    # "recoverFromImageError":Z
    goto/16 :goto_15

    .line 260
    .end local v45    # "compression":I
    .end local v46    # "recoverFromImageError":Z
    .local v2, "height":I
    .restart local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v5, "size":[J
    .local v7, "k":I
    .local v8, "compression":I
    .local v9, "recoverFromImageError":Z
    .local v14, "offset":[J
    .restart local v15    # "imagecomp":I
    .local v29, "rotation":F
    .local v30, "outBuf":[B
    .local v40, "dpiX":I
    .local v43, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    :sswitch_4
    const/16 v23, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v30

    move-object/from16 v22, v4

    move/from16 v24, v2

    move-wide/from16 v25, v36

    :try_start_16
    invoke-virtual/range {v20 .. v26}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V
    :try_end_16
    .catch Lcom/itextpdf/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    .line 265
    goto :goto_12

    .line 261
    :catch_5
    move-exception v0

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    .line 262
    .local v0, "e":Lcom/itextpdf/io/IOException;
    if-eqz v9, :cond_19

    .line 266
    .end local v0    # "e":Lcom/itextpdf/io/IOException;
    :goto_12
    move/from16 v45, v8

    move-object/from16 v8, v43

    move-object/from16 v49, v30

    move/from16 v30, v7

    move-object/from16 v7, v49

    .end local v43    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v7, "outBuf":[B
    .local v8, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v30, "k":I
    .restart local v45    # "compression":I
    :try_start_17
    invoke-virtual {v8, v7, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    move/from16 v46, v9

    move/from16 v43, v15

    move/from16 v9, v40

    const/4 v15, 0x0

    move-object/from16 v40, v14

    move-object v14, v3

    move-object/from16 v3, p1

    move-object/from16 v49, v5

    move v5, v2

    move/from16 v2, v29

    move-object/from16 v29, v49

    goto/16 :goto_15

    .line 263
    .end local v45    # "compression":I
    .restart local v0    # "e":Lcom/itextpdf/io/IOException;
    .local v7, "k":I
    .local v8, "compression":I
    .local v30, "outBuf":[B
    .restart local v43    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    :cond_19
    move/from16 v45, v8

    move-object/from16 v8, v43

    move-object/from16 v49, v30

    move/from16 v30, v7

    move-object/from16 v7, v49

    .end local v9    # "recoverFromImageError":Z
    .end local v27    # "page":I
    .end local v39    # "direct":Z
    .end local v43    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    .local v7, "outBuf":[B
    .local v8, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v30, "k":I
    .restart local v45    # "compression":I
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    .line 231
    .end local v0    # "e":Lcom/itextpdf/io/IOException;
    .end local v45    # "compression":I
    .local v7, "k":I
    .local v8, "compression":I
    .restart local v9    # "recoverFromImageError":Z
    .restart local v27    # "page":I
    .local v30, "outBuf":[B
    .restart local v39    # "direct":Z
    .restart local v43    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :sswitch_5
    move/from16 v45, v8

    move-object/from16 v8, v43

    move-object/from16 v49, v30

    move/from16 v30, v7

    move-object/from16 v7, v49

    .end local v43    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v7, "outBuf":[B
    .local v8, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v30, "k":I
    .restart local v45    # "compression":I
    const/16 v23, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    move-object/from16 v22, v4

    move/from16 v24, v2

    move-wide/from16 v25, v41

    :try_start_18
    invoke-virtual/range {v20 .. v26}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    .line 255
    goto :goto_13

    .line 288
    .end local v2    # "height":I
    .end local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .end local v4    # "im":[B
    .end local v5    # "size":[J
    .end local v6    # "rowsLeft":I
    .end local v7    # "outBuf":[B
    .end local v8    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v14    # "offset":[J
    .end local v15    # "imagecomp":I
    .end local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v18    # "parameters":I
    .end local v28    # "resolutionUnit":I
    .end local v29    # "rotation":F
    .end local v30    # "k":I
    .end local v31    # "XYRatio":F
    .end local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v35    # "reverse":Z
    .end local v36    # "tiffT6Options":J
    .end local v40    # "dpiX":I
    .end local v41    # "tiffT4Options":J
    .end local v44    # "fillOrder":I
    .end local v45    # "compression":I
    :catch_6
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v46, v9

    goto/16 :goto_1a

    .line 232
    .restart local v2    # "height":I
    .restart local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .restart local v4    # "im":[B
    .restart local v5    # "size":[J
    .restart local v6    # "rowsLeft":I
    .restart local v7    # "outBuf":[B
    .restart local v8    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "rowsStrip":I
    .restart local v14    # "offset":[J
    .restart local v15    # "imagecomp":I
    .restart local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v18    # "parameters":I
    .restart local v28    # "resolutionUnit":I
    .restart local v29    # "rotation":F
    .restart local v30    # "k":I
    .restart local v31    # "XYRatio":F
    .restart local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v35    # "reverse":Z
    .restart local v36    # "tiffT6Options":J
    .restart local v40    # "dpiX":I
    .restart local v41    # "tiffT4Options":J
    .restart local v44    # "fillOrder":I
    .restart local v45    # "compression":I
    :catch_7
    move-exception v0

    move-object/from16 v20, v0

    move-object/from16 v43, v20

    .line 234
    .local v43, "e":Ljava/lang/RuntimeException;
    xor-long v41, v41, v33

    .line 236
    const/16 v23, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    move-object/from16 v22, v4

    move/from16 v24, v2

    move-wide/from16 v25, v41

    :try_start_19
    invoke-virtual/range {v20 .. v26}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    .line 254
    nop

    .line 256
    .end local v43    # "e":Ljava/lang/RuntimeException;
    :goto_13
    :try_start_1a
    invoke-virtual {v8, v7, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6

    .line 257
    move/from16 v46, v9

    move/from16 v43, v15

    move/from16 v9, v40

    const/4 v15, 0x0

    move-object/from16 v40, v14

    move-object v14, v3

    move-object/from16 v3, p1

    move-object/from16 v49, v5

    move v5, v2

    move/from16 v2, v29

    move-object/from16 v29, v49

    goto/16 :goto_15

    .line 237
    .restart local v43    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 238
    .local v0, "e2":Ljava/lang/RuntimeException;
    if-eqz v9, :cond_1c

    .line 240
    move/from16 v46, v9

    const/4 v9, 0x1

    .end local v9    # "recoverFromImageError":Z
    .restart local v46    # "recoverFromImageError":Z
    if-eq v13, v9, :cond_1b

    .line 244
    move/from16 v47, v2

    move-object/from16 v48, v3

    const/4 v9, 0x0

    .end local v2    # "height":I
    .end local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v47, "height":I
    .local v48, "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    :try_start_1b
    aget-wide v2, v5, v9

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 245
    .end local v4    # "im":[B
    .local v2, "im":[B
    aget-wide v3, v14, v9

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 246
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 247
    move-object/from16 v3, p1

    :try_start_1c
    iget-object v4, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v4

    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v23, v15

    move/from16 v24, v18

    move-object/from16 v25, v2

    invoke-static/range {v19 .. v26}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 248
    iget-object v4, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/itextpdf/io/image/TiffImageData;->setInverted(Z)V

    .line 249
    iget-object v4, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v9, v40

    .end local v40    # "dpiX":I
    .local v9, "dpiX":I
    invoke-virtual {v4, v9, v12}, Lcom/itextpdf/io/image/TiffImageData;->setDpi(II)V

    .line 250
    iget-object v4, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move-object/from16 v16, v2

    move/from16 v2, v31

    .end local v31    # "XYRatio":F
    .local v2, "XYRatio":F
    .local v16, "im":[B
    invoke-virtual {v4, v2}, Lcom/itextpdf/io/image/TiffImageData;->setXYRatio(F)V

    .line 251
    cmpl-float v4, v29, v38

    if-eqz v4, :cond_1a

    .line 252
    iget-object v4, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v31, v2

    move/from16 v2, v29

    .end local v29    # "rotation":F
    .local v2, "rotation":F
    .restart local v31    # "XYRatio":F
    invoke-virtual {v4, v2}, Lcom/itextpdf/io/image/TiffImageData;->setRotation(F)V

    goto :goto_14

    .line 251
    .end local v31    # "XYRatio":F
    .local v2, "XYRatio":F
    .restart local v29    # "rotation":F
    :cond_1a
    move/from16 v31, v2

    move/from16 v2, v29

    .line 253
    .end local v29    # "rotation":F
    .local v2, "rotation":F
    .restart local v31    # "XYRatio":F
    :goto_14
    return-void

    .line 288
    .end local v0    # "e2":Ljava/lang/RuntimeException;
    .end local v2    # "rotation":F
    .end local v5    # "size":[J
    .end local v6    # "rowsLeft":I
    .end local v7    # "outBuf":[B
    .end local v8    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v9    # "dpiX":I
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v14    # "offset":[J
    .end local v15    # "imagecomp":I
    .end local v16    # "im":[B
    .end local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v18    # "parameters":I
    .end local v28    # "resolutionUnit":I
    .end local v30    # "k":I
    .end local v31    # "XYRatio":F
    .end local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v35    # "reverse":Z
    .end local v36    # "tiffT6Options":J
    .end local v41    # "tiffT4Options":J
    .end local v43    # "e":Ljava/lang/RuntimeException;
    .end local v44    # "fillOrder":I
    .end local v45    # "compression":I
    .end local v47    # "height":I
    .end local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    :catch_9
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_1a

    .line 241
    .restart local v0    # "e2":Ljava/lang/RuntimeException;
    .local v2, "height":I
    .restart local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .restart local v4    # "im":[B
    .restart local v5    # "size":[J
    .restart local v6    # "rowsLeft":I
    .restart local v7    # "outBuf":[B
    .restart local v8    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "rowsStrip":I
    .restart local v14    # "offset":[J
    .restart local v15    # "imagecomp":I
    .restart local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v18    # "parameters":I
    .restart local v28    # "resolutionUnit":I
    .restart local v29    # "rotation":F
    .restart local v30    # "k":I
    .restart local v31    # "XYRatio":F
    .restart local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v35    # "reverse":Z
    .restart local v36    # "tiffT6Options":J
    .restart local v40    # "dpiX":I
    .restart local v41    # "tiffT4Options":J
    .restart local v43    # "e":Ljava/lang/RuntimeException;
    .restart local v44    # "fillOrder":I
    .restart local v45    # "compression":I
    :cond_1b
    move/from16 v47, v2

    move-object/from16 v48, v3

    move/from16 v2, v29

    move/from16 v9, v40

    move-object/from16 v3, p1

    .end local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .end local v27    # "page":I
    .end local v29    # "rotation":F
    .end local v39    # "direct":Z
    .end local v40    # "dpiX":I
    .end local v46    # "recoverFromImageError":Z
    .end local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    .local v2, "rotation":F
    .restart local v9    # "dpiX":I
    .restart local v47    # "height":I
    .restart local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    throw v43

    .line 239
    .end local v47    # "height":I
    .end local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v2, "height":I
    .restart local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v9, "recoverFromImageError":Z
    .restart local v27    # "page":I
    .restart local v29    # "rotation":F
    .restart local v39    # "direct":Z
    .restart local v40    # "dpiX":I
    .restart local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :cond_1c
    move/from16 v47, v2

    move-object/from16 v48, v3

    move/from16 v46, v9

    move/from16 v2, v29

    move/from16 v9, v40

    move-object/from16 v3, p1

    .end local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .end local v27    # "page":I
    .end local v29    # "rotation":F
    .end local v39    # "direct":Z
    .end local v40    # "dpiX":I
    .end local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    .local v2, "rotation":F
    .local v9, "dpiX":I
    .restart local v47    # "height":I
    .restart local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    throw v43

    .line 226
    .end local v0    # "e2":Ljava/lang/RuntimeException;
    .end local v45    # "compression":I
    .end local v47    # "height":I
    .end local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v2, "height":I
    .restart local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v7, "k":I
    .local v8, "compression":I
    .local v9, "recoverFromImageError":Z
    .restart local v27    # "page":I
    .restart local v29    # "rotation":F
    .local v30, "outBuf":[B
    .restart local v39    # "direct":Z
    .restart local v40    # "dpiX":I
    .local v43, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :sswitch_6
    move/from16 v47, v2

    move-object/from16 v48, v3

    move/from16 v45, v8

    move/from16 v46, v9

    move/from16 v2, v29

    move/from16 v9, v40

    move-object/from16 v8, v43

    move-object/from16 v3, p1

    move-object/from16 v49, v30

    move/from16 v30, v7

    move-object/from16 v7, v49

    .end local v3    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .end local v29    # "rotation":F
    .end local v40    # "dpiX":I
    .end local v43    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v2, "rotation":F
    .local v7, "outBuf":[B
    .local v8, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v9, "dpiX":I
    .local v30, "k":I
    .restart local v45    # "compression":I
    .restart local v46    # "recoverFromImageError":Z
    .restart local v47    # "height":I
    .restart local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    move-object/from16 v29, v5

    move-object/from16 v40, v14

    move/from16 v43, v15

    move/from16 v5, v47

    move-object/from16 v14, v48

    const/4 v15, 0x0

    .end local v15    # "imagecomp":I
    .end local v47    # "height":I
    .end local v48    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v5, "height":I
    .local v14, "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .local v29, "size":[J
    .local v40, "offset":[J
    .local v43, "imagecomp":I
    invoke-virtual {v14, v7, v4, v15, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decode1D([B[BII)V

    .line 227
    invoke-virtual {v8, v7, v5}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    .line 228
    nop

    .line 269
    :goto_15
    sub-int/2addr v6, v13

    .line 215
    .end local v4    # "im":[B
    .end local v5    # "height":I
    .end local v7    # "outBuf":[B
    .end local v14    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    add-int/lit8 v7, v30, 0x1

    move-object v5, v8

    move/from16 v4, v18

    move-object/from16 v14, v40

    move/from16 v15, v43

    move/from16 v8, v45

    move/from16 v30, v46

    move/from16 v40, v9

    move/from16 v9, v44

    move-object/from16 v49, v29

    move/from16 v29, v2

    move-object v2, v3

    move-object/from16 v3, v49

    .end local v30    # "k":I
    .local v7, "k":I
    goto/16 :goto_11

    .line 288
    .end local v2    # "rotation":F
    .end local v6    # "rowsLeft":I
    .end local v7    # "k":I
    .end local v8    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v18    # "parameters":I
    .end local v28    # "resolutionUnit":I
    .end local v29    # "size":[J
    .end local v31    # "XYRatio":F
    .end local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v35    # "reverse":Z
    .end local v36    # "tiffT6Options":J
    .end local v40    # "offset":[J
    .end local v41    # "tiffT4Options":J
    .end local v43    # "imagecomp":I
    .end local v44    # "fillOrder":I
    .end local v45    # "compression":I
    .end local v46    # "recoverFromImageError":Z
    .local v9, "recoverFromImageError":Z
    :catch_a
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v46, v9

    .end local v9    # "recoverFromImageError":Z
    .restart local v46    # "recoverFromImageError":Z
    goto/16 :goto_1a

    .end local v46    # "recoverFromImageError":Z
    .local v30, "recoverFromImageError":Z
    :catch_b
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_18

    .line 215
    .local v3, "size":[J
    .local v4, "parameters":I
    .local v5, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v6    # "rowsLeft":I
    .restart local v7    # "k":I
    .local v8, "compression":I
    .local v9, "fillOrder":I
    .restart local v10    # "h":I
    .restart local v11    # "w":I
    .restart local v12    # "dpiY":I
    .restart local v13    # "rowsStrip":I
    .local v14, "offset":[J
    .restart local v15    # "imagecomp":I
    .restart local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v28    # "resolutionUnit":I
    .local v29, "rotation":F
    .restart local v31    # "XYRatio":F
    .restart local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v35    # "reverse":Z
    .restart local v36    # "tiffT6Options":J
    .local v40, "dpiX":I
    .restart local v41    # "tiffT4Options":J
    :cond_1d
    move/from16 v18, v4

    move/from16 v45, v8

    move/from16 v44, v9

    move/from16 v43, v15

    move/from16 v46, v30

    move/from16 v9, v40

    move-object v8, v5

    move/from16 v30, v7

    move-object/from16 v40, v14

    move-object/from16 v49, v3

    move-object v3, v2

    move/from16 v2, v29

    move-object/from16 v29, v49

    .line 271
    .end local v3    # "size":[J
    .end local v4    # "parameters":I
    .end local v5    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v7    # "k":I
    .end local v14    # "offset":[J
    .end local v15    # "imagecomp":I
    .end local v30    # "recoverFromImageError":Z
    .restart local v2    # "rotation":F
    .local v8, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v9, "dpiX":I
    .restart local v18    # "parameters":I
    .local v29, "size":[J
    .local v40, "offset":[J
    .restart local v43    # "imagecomp":I
    .restart local v44    # "fillOrder":I
    .restart local v45    # "compression":I
    .restart local v46    # "recoverFromImageError":Z
    invoke-virtual {v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->close()[B

    move-result-object v25

    .line 272
    .local v25, "g4pic":[B
    iget-object v0, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/16 v22, 0x0

    const/16 v23, 0x100

    and-int/lit8 v24, v18, 0x1

    const/16 v26, 0x0

    move-object/from16 v19, v0

    move/from16 v20, v11

    move/from16 v21, v10

    invoke-static/range {v19 .. v26}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 275
    .end local v6    # "rowsLeft":I
    .end local v8    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v25    # "g4pic":[B
    :goto_16
    iget-object v0, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0, v9, v12}, Lcom/itextpdf/io/image/TiffImageData;->setDpi(II)V

    .line 276
    const v0, 0x8773

    move-object/from16 v4, v17

    .end local v17    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .local v4, "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    invoke-virtual {v4, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    if-eqz v5, :cond_1f

    .line 278
    :try_start_1d
    invoke-virtual {v4, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 279
    .local v0, "fd":Lcom/itextpdf/io/codec/TIFFField;
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v5

    .line 280
    .local v5, "icc_prof":Lcom/itextpdf/io/colors/IccProfile;
    invoke-virtual {v5}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1e

    .line 281
    iget-object v6, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/image/TiffImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10

    .line 284
    .end local v0    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    .end local v5    # "icc_prof":Lcom/itextpdf/io/colors/IccProfile;
    :cond_1e
    goto :goto_17

    .line 282
    :catch_c
    move-exception v0

    .line 286
    :cond_1f
    :goto_17
    cmpl-float v0, v2, v38

    if-eqz v0, :cond_20

    .line 287
    :try_start_1e
    iget-object v0, v3, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/image/TiffImageData;->setRotation(F)V

    .line 290
    .end local v2    # "rotation":F
    .end local v4    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local v9    # "dpiX":I
    .end local v10    # "h":I
    .end local v11    # "w":I
    .end local v12    # "dpiY":I
    .end local v13    # "rowsStrip":I
    .end local v18    # "parameters":I
    .end local v28    # "resolutionUnit":I
    .end local v29    # "size":[J
    .end local v31    # "XYRatio":F
    .end local v32    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v35    # "reverse":Z
    .end local v36    # "tiffT6Options":J
    .end local v40    # "offset":[J
    .end local v41    # "tiffT4Options":J
    .end local v43    # "imagecomp":I
    .end local v44    # "fillOrder":I
    .end local v45    # "compression":I
    :cond_20
    nop

    .line 291
    return-void

    .line 288
    .end local v46    # "recoverFromImageError":Z
    .restart local v30    # "recoverFromImageError":Z
    :catch_d
    move-exception v0

    move-object v3, v2

    :goto_18
    move/from16 v46, v30

    .end local v30    # "recoverFromImageError":Z
    .restart local v46    # "recoverFromImageError":Z
    goto :goto_1a

    .end local v39    # "direct":Z
    .end local v46    # "recoverFromImageError":Z
    .local v5, "direct":Z
    .restart local v30    # "recoverFromImageError":Z
    :catch_e
    move-exception v0

    move-object v3, v2

    move/from16 v39, v5

    move/from16 v46, v30

    .end local v5    # "direct":Z
    .end local v30    # "recoverFromImageError":Z
    .restart local v39    # "direct":Z
    .restart local v46    # "recoverFromImageError":Z
    goto :goto_1a

    .end local v39    # "direct":Z
    .end local v46    # "recoverFromImageError":Z
    .local v3, "recoverFromImageError":Z
    .restart local v5    # "direct":Z
    :catch_f
    move-exception v0

    move/from16 v46, v3

    move/from16 v39, v5

    move-object v3, v2

    .end local v3    # "recoverFromImageError":Z
    .end local v5    # "direct":Z
    .restart local v39    # "direct":Z
    .restart local v46    # "recoverFromImageError":Z
    goto :goto_1a

    .line 125
    .restart local v4    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v45    # "compression":I
    :goto_19
    return-void

    .line 112
    .end local v27    # "page":I
    .end local v39    # "direct":Z
    .end local v45    # "compression":I
    .end local v46    # "recoverFromImageError":Z
    .restart local v3    # "recoverFromImageError":Z
    .local v4, "page":I
    .restart local v5    # "direct":Z
    .local v7, "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    :cond_21
    move/from16 v46, v3

    move/from16 v27, v4

    move/from16 v39, v5

    move-object v4, v7

    move-object v3, v2

    .end local v3    # "recoverFromImageError":Z
    .end local v5    # "direct":Z
    .end local v7    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .local v4, "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v27    # "page":I
    .restart local v39    # "direct":Z
    .restart local v46    # "recoverFromImageError":Z
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v2, "Tiles are not supported."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v27    # "page":I
    .end local v39    # "direct":Z
    .end local v46    # "recoverFromImageError":Z
    .end local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    .line 288
    .end local v4    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local v27    # "page":I
    .restart local v39    # "direct":Z
    .restart local v46    # "recoverFromImageError":Z
    .restart local p0    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p1    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :catch_10
    move-exception v0

    goto :goto_1a

    .end local v27    # "page":I
    .end local v39    # "direct":Z
    .end local v46    # "recoverFromImageError":Z
    .restart local v3    # "recoverFromImageError":Z
    .local v4, "page":I
    .restart local v5    # "direct":Z
    :catch_11
    move-exception v0

    move/from16 v46, v3

    move/from16 v27, v4

    move/from16 v39, v5

    move-object v3, v2

    .line 289
    .end local v3    # "recoverFromImageError":Z
    .end local v4    # "page":I
    .end local v5    # "direct":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v27    # "page":I
    .restart local v39    # "direct":Z
    .restart local v46    # "recoverFromImageError":Z
    :goto_1a
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v4, "Cannot read TIFF image."

    invoke-direct {v2, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v27    # "page":I
    .end local v39    # "direct":Z
    .end local v46    # "recoverFromImageError":Z
    .restart local v3    # "recoverFromImageError":Z
    .restart local v4    # "page":I
    .restart local v5    # "direct":Z
    :cond_22
    move/from16 v46, v3

    move-object v3, v2

    .end local v3    # "recoverFromImageError":Z
    .restart local v46    # "recoverFromImageError":Z
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v2, "Page number must be >= 1."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8003 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8003 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8003 -> :sswitch_6
    .end sparse-switch
.end method

.method private static processTiffImageColor(Lcom/itextpdf/io/codec/TIFFDirectory;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V
    .locals 51
    .param p0, "dir"    # Lcom/itextpdf/io/codec/TIFFDirectory;
    .param p1, "s"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p2, "tiff"    # Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, "compression":I
    const/16 v4, 0x103

    :try_start_0
    invoke-virtual {v1, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    invoke-virtual {v1, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    long-to-int v0, v4

    move v4, v0

    goto :goto_0

    .line 296
    :cond_0
    move v4, v0

    .line 299
    .end local v0    # "compression":I
    .local v4, "compression":I
    :goto_0
    const/4 v0, 0x1

    .line 300
    .local v0, "predictor":I
    const/4 v5, 0x0

    .line 301
    .local v5, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 311
    move/from16 v24, v0

    move-object v10, v1

    move-object v7, v2

    move-object v9, v3

    move-object/from16 v25, v5

    .end local v0    # "predictor":I
    .end local v5    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v24, "predictor":I
    .local v25, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :try_start_1
    new-instance v0, Lcom/itextpdf/io/IOException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_2a

    .line 309
    .end local v24    # "predictor":I
    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v0    # "predictor":I
    .restart local v5    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :sswitch_0
    nop

    .line 313
    const/16 v8, 0x106

    :try_start_2
    invoke-virtual {v1, v8}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 314
    .local v8, "photometric":I
    const/4 v9, 0x6

    const/4 v10, 0x7

    packed-switch v8, :pswitch_data_0

    .line 322
    :pswitch_0
    if-eq v4, v9, :cond_2

    if-ne v4, v10, :cond_1

    goto :goto_1

    .line 320
    :pswitch_1
    goto :goto_1

    .line 323
    :cond_1
    new-instance v9, Lcom/itextpdf/io/IOException;

    const-string v10, "Photometric {0} is not supported."

    invoke-direct {v9, v10}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-virtual {v9, v7}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v6

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v6

    .line 325
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :cond_2
    :goto_1
    const/4 v11, 0x0

    .line 326
    .local v11, "rotation":F
    const/16 v12, 0x112

    invoke-virtual {v1, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x5

    const/16 v7, 0x8

    const/4 v6, 0x3

    if-eqz v13, :cond_8

    .line 327
    invoke-virtual {v1, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    .line 328
    .local v12, "rot":I
    if-eq v12, v6, :cond_7

    if-ne v12, v14, :cond_3

    goto :goto_3

    .line 330
    :cond_3
    if-eq v12, v15, :cond_6

    if-ne v12, v7, :cond_4

    goto :goto_2

    .line 332
    :cond_4
    if-eq v12, v9, :cond_5

    if-ne v12, v10, :cond_8

    .line 333
    :cond_5
    const v11, -0x4036f025

    goto :goto_4

    .line 331
    :cond_6
    :goto_2
    const v11, 0x3fc90fdb

    goto :goto_4

    .line 329
    :cond_7
    :goto_3
    const v11, 0x40490fdb    # (float)Math.PI

    .line 335
    .end local v12    # "rot":I
    :cond_8
    :goto_4
    const/16 v12, 0x11c

    invoke-virtual {v1, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 336
    invoke-virtual {v1, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    const-wide/16 v18, 0x2

    cmp-long v12, v12, v18

    if-eqz v12, :cond_9

    goto :goto_5

    .line 337
    :cond_9
    new-instance v6, Lcom/itextpdf/io/IOException;

    const-string v7, "Planar images are not supported."

    invoke-direct {v6, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v6

    .line 338
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :cond_a
    :goto_5
    const/4 v12, 0x0

    .line 339
    .local v12, "extraSamples":I
    const/16 v13, 0x152

    invoke-virtual {v1, v13}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 340
    const/4 v12, 0x1

    .line 341
    :cond_b
    const/4 v13, 0x1

    .line 344
    .local v13, "samplePerPixel":I
    const/16 v14, 0x115

    invoke-virtual {v1, v14}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 345
    move/from16 v19, v11

    .end local v11    # "rotation":F
    .local v19, "rotation":F
    invoke-virtual {v1, v14}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v10

    long-to-int v13, v10

    goto :goto_6

    .line 344
    .end local v19    # "rotation":F
    .restart local v11    # "rotation":F
    :cond_c
    move/from16 v19, v11

    .line 346
    .end local v11    # "rotation":F
    .restart local v19    # "rotation":F
    :goto_6
    const/4 v10, 0x1

    .line 347
    .local v10, "bitsPerSample":I
    const/16 v11, 0x102

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 348
    move/from16 v21, v10

    .end local v10    # "bitsPerSample":I
    .local v21, "bitsPerSample":I
    invoke-virtual {v1, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    long-to-int v10, v9

    .end local v21    # "bitsPerSample":I
    .restart local v10    # "bitsPerSample":I
    goto :goto_7

    .line 347
    :cond_d
    move/from16 v21, v10

    .line 349
    :goto_7
    sparse-switch v10, :sswitch_data_1

    .line 356
    move/from16 v24, v0

    move-object v7, v2

    move-object v9, v3

    move-object/from16 v25, v5

    move v15, v10

    move/from16 v49, v12

    move/from16 v11, v19

    move-object v10, v1

    .end local v0    # "predictor":I
    .end local v5    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v10    # "bitsPerSample":I
    .end local v12    # "extraSamples":I
    .end local v19    # "rotation":F
    .restart local v11    # "rotation":F
    .local v15, "bitsPerSample":I
    .restart local v24    # "predictor":I
    .restart local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v49, "extraSamples":I
    :try_start_3
    new-instance v0, Lcom/itextpdf/io/IOException;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_29

    .line 354
    .end local v11    # "rotation":F
    .end local v15    # "bitsPerSample":I
    .end local v24    # "predictor":I
    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v49    # "extraSamples":I
    .restart local v0    # "predictor":I
    .restart local v5    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v10    # "bitsPerSample":I
    .restart local v12    # "extraSamples":I
    .restart local v19    # "rotation":F
    :sswitch_1
    nop

    .line 358
    const/16 v9, 0x101

    :try_start_4
    invoke-virtual {v1, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 359
    .local v6, "h":I
    const/16 v7, 0x100

    move v9, v12

    .end local v12    # "extraSamples":I
    .local v9, "extraSamples":I
    invoke-virtual {v1, v7}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v7, v11

    .line 362
    .local v7, "w":I
    const/4 v11, 0x2

    .line 363
    .local v11, "resolutionUnit":I
    const/16 v12, 0x128

    invoke-virtual {v1, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 364
    invoke-virtual {v1, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v14

    long-to-int v11, v14

    move v12, v11

    goto :goto_8

    .line 363
    :cond_e
    move v12, v11

    .line 365
    .end local v11    # "resolutionUnit":I
    .local v12, "resolutionUnit":I
    :goto_8
    const/16 v11, 0x11a

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v11

    invoke-static {v11, v12}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v11

    move v15, v11

    .line 366
    .local v15, "dpiX":I
    const/16 v11, 0x11b

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v11

    invoke-static {v11, v12}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v11

    move v14, v11

    .line 367
    .local v14, "dpiY":I
    const/4 v11, 0x1

    .line 368
    .local v11, "fillOrder":I
    move/from16 v24, v0

    .end local v0    # "predictor":I
    .restart local v24    # "predictor":I
    const/16 v0, 0x10a

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    move-object/from16 v36, v0

    .line 369
    .local v36, "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    move-object v0, v5

    move-object/from16 v5, v36

    .end local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .local v0, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v5, "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    if-eqz v5, :cond_f

    .line 370
    move/from16 v25, v11

    const/4 v11, 0x0

    .end local v11    # "fillOrder":I
    .local v25, "fillOrder":I
    invoke-virtual {v5, v11}, Lcom/itextpdf/io/codec/TIFFField;->getAsInt(I)I

    move-result v26

    move/from16 v11, v26

    .end local v25    # "fillOrder":I
    .restart local v11    # "fillOrder":I
    goto :goto_9

    .line 369
    :cond_f
    move/from16 v25, v11

    .line 371
    :goto_9
    move-object/from16 v36, v5

    .end local v5    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    const/4 v5, 0x2

    if-ne v11, v5, :cond_10

    const/16 v25, 0x1

    goto :goto_a

    :cond_10
    const/16 v25, 0x0

    :goto_a
    move/from16 v37, v25

    .line 372
    .local v37, "reverse":Z
    move/from16 v25, v6

    .line 375
    .local v25, "rowsStrip":I
    const/16 v5, 0x116

    invoke-virtual {v1, v5}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 376
    move/from16 v26, v11

    move/from16 v38, v12

    .end local v11    # "fillOrder":I
    .end local v12    # "resolutionUnit":I
    .local v26, "fillOrder":I
    .local v38, "resolutionUnit":I
    invoke-virtual {v1, v5}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v5, v11

    .end local v25    # "rowsStrip":I
    .local v5, "rowsStrip":I
    goto :goto_b

    .line 375
    .end local v5    # "rowsStrip":I
    .end local v26    # "fillOrder":I
    .end local v38    # "resolutionUnit":I
    .restart local v11    # "fillOrder":I
    .restart local v12    # "resolutionUnit":I
    .restart local v25    # "rowsStrip":I
    :cond_11
    move/from16 v26, v11

    move/from16 v38, v12

    .end local v11    # "fillOrder":I
    .end local v12    # "resolutionUnit":I
    .restart local v26    # "fillOrder":I
    .restart local v38    # "resolutionUnit":I
    move/from16 v5, v25

    .line 377
    .end local v25    # "rowsStrip":I
    .restart local v5    # "rowsStrip":I
    :goto_b
    if-lez v5, :cond_12

    if-le v5, v6, :cond_13

    .line 378
    :cond_12
    move v5, v6

    .line 379
    :cond_13
    const/16 v11, 0x111

    invoke-static {v1, v11}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v11

    move-object v12, v11

    .line 380
    .local v12, "offset":[J
    const/16 v11, 0x117

    invoke-static {v1, v11}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v11

    .line 383
    .local v11, "size":[J
    if-eqz v11, :cond_14

    move-object/from16 v25, v0

    .end local v0    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v25, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    array-length v0, v11

    move/from16 v27, v14

    const/4 v14, 0x1

    .end local v14    # "dpiY":I
    .local v27, "dpiY":I
    if-ne v0, v14, :cond_16

    const/4 v14, 0x0

    aget-wide v28, v11, v14

    const-wide/16 v30, 0x0

    cmp-long v0, v28, v30

    if-eqz v0, :cond_15

    aget-wide v28, v11, v14

    aget-wide v30, v12, v14

    add-long v28, v28, v30

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v30
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    cmp-long v0, v28, v30

    if-lez v0, :cond_16

    goto :goto_c

    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v27    # "dpiY":I
    .restart local v0    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v14    # "dpiY":I
    :cond_14
    move-object/from16 v25, v0

    move/from16 v27, v14

    .end local v0    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v14    # "dpiY":I
    .restart local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v27    # "dpiY":I
    :cond_15
    :goto_c
    if-ne v6, v5, :cond_16

    .line 384
    const/4 v14, 0x1

    :try_start_5
    new-array v0, v14, [J

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v28

    const/4 v14, 0x0

    aget-wide v2, v12, v14

    long-to-int v2, v2

    int-to-long v2, v2

    sub-long v28, v28, v2

    aput-wide v28, v0, v14

    move-object v11, v0

    move-object v2, v11

    goto :goto_f

    .line 591
    .end local v4    # "compression":I
    .end local v5    # "rowsStrip":I
    .end local v6    # "h":I
    .end local v7    # "w":I
    .end local v8    # "photometric":I
    .end local v9    # "extraSamples":I
    .end local v10    # "bitsPerSample":I
    .end local v11    # "size":[J
    .end local v12    # "offset":[J
    .end local v13    # "samplePerPixel":I
    .end local v15    # "dpiX":I
    .end local v19    # "rotation":F
    .end local v24    # "predictor":I
    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v26    # "fillOrder":I
    .end local v27    # "dpiY":I
    .end local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v37    # "reverse":Z
    .end local v38    # "resolutionUnit":I
    :catch_0
    move-exception v0

    move-object/from16 v7, p1

    :goto_d
    move-object/from16 v9, p2

    :goto_e
    move-object v10, v1

    goto/16 :goto_2b

    .line 386
    .restart local v4    # "compression":I
    .restart local v5    # "rowsStrip":I
    .restart local v6    # "h":I
    .restart local v7    # "w":I
    .restart local v8    # "photometric":I
    .restart local v9    # "extraSamples":I
    .restart local v10    # "bitsPerSample":I
    .restart local v11    # "size":[J
    .restart local v12    # "offset":[J
    .restart local v13    # "samplePerPixel":I
    .restart local v15    # "dpiX":I
    .restart local v19    # "rotation":F
    .restart local v24    # "predictor":I
    .restart local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v26    # "fillOrder":I
    .restart local v27    # "dpiY":I
    .restart local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v37    # "reverse":Z
    .restart local v38    # "resolutionUnit":I
    :cond_16
    move-object v2, v11

    .end local v11    # "size":[J
    .local v2, "size":[J
    :goto_f
    const/4 v0, 0x5

    if-eq v4, v0, :cond_18

    const v0, 0x80b2

    if-eq v4, v0, :cond_18

    const/16 v3, 0x8

    if-ne v4, v3, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v3, v26

    .end local v26    # "fillOrder":I
    .local v3, "fillOrder":I
    goto :goto_12

    .end local v3    # "fillOrder":I
    .restart local v26    # "fillOrder":I
    :cond_18
    :goto_10
    move/from16 v3, v26

    .line 387
    .end local v26    # "fillOrder":I
    .restart local v3    # "fillOrder":I
    const/16 v0, 0x13d

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 388
    .local v0, "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    if-eqz v0, :cond_1c

    .line 389
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/itextpdf/io/codec/TIFFField;->getAsInt(I)I

    move-result v21

    move/from16 v14, v21

    .line 390
    .end local v24    # "predictor":I
    .local v14, "predictor":I
    const/4 v11, 0x1

    if-eq v14, v11, :cond_1a

    const/4 v11, 0x2

    if-ne v14, v11, :cond_19

    move-object/from16 v26, v0

    goto :goto_11

    .line 391
    :cond_19
    new-instance v11, Lcom/itextpdf/io/IOException;

    move-object/from16 v26, v0

    .end local v0    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    .local v26, "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    const-string v0, "Illegal value for predictor in TIFF file."

    invoke-direct {v11, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v11

    .line 390
    .end local v26    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v0    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :cond_1a
    move-object/from16 v26, v0

    .line 393
    .end local v0    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v26    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    :goto_11
    const/4 v11, 0x2

    if-ne v14, v11, :cond_1d

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1b

    goto :goto_13

    .line 394
    :cond_1b
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string/jumbo v11, "{0} bit samples are not supported for horizontal differencing predictor."

    invoke-direct {v0, v11}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v11, v17

    invoke-virtual {v0, v11}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v0

    .line 388
    .end local v14    # "predictor":I
    .end local v26    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v0    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v24    # "predictor":I
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :cond_1c
    move-object/from16 v26, v0

    .line 398
    .end local v0    # "predictorField":Lcom/itextpdf/io/codec/TIFFField;
    :goto_12
    move/from16 v14, v24

    .end local v24    # "predictor":I
    .restart local v14    # "predictor":I
    :cond_1d
    :goto_13
    const/4 v0, 0x5

    if-ne v4, v0, :cond_1e

    .line 399
    new-instance v0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;

    invoke-direct {v0, v7, v14, v13}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;-><init>(III)V

    move-object v11, v0

    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v0, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    goto :goto_14

    .line 398
    .end local v0    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :cond_1e
    move-object/from16 v11, v25

    .line 401
    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v11, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :goto_14
    move v0, v6

    .line 402
    .local v0, "rowsLeft":I
    const/16 v22, 0x0

    .line 403
    .local v22, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    const/16 v24, 0x0

    .line 404
    .local v24, "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    const/16 v25, 0x0

    .line 405
    .local v25, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    const/16 v26, 0x0

    .line 406
    .local v26, "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    if-lez v9, :cond_1f

    .line 407
    new-instance v28, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct/range {v28 .. v28}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    move-object/from16 v24, v28

    .line 408
    move/from16 v28, v0

    .end local v0    # "rowsLeft":I
    .local v28, "rowsLeft":I
    new-instance v0, Lcom/itextpdf/io/source/DeflaterOutputStream;

    move/from16 v39, v3

    move-object/from16 v3, v24

    .end local v24    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v3, "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v39, "fillOrder":I
    invoke-direct {v0, v3}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v26, v0

    move-object/from16 v40, v26

    goto :goto_15

    .line 406
    .end local v28    # "rowsLeft":I
    .end local v39    # "fillOrder":I
    .restart local v0    # "rowsLeft":I
    .local v3, "fillOrder":I
    .restart local v24    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    :cond_1f
    move/from16 v28, v0

    move/from16 v39, v3

    .end local v0    # "rowsLeft":I
    .end local v3    # "fillOrder":I
    .restart local v28    # "rowsLeft":I
    .restart local v39    # "fillOrder":I
    move-object/from16 v3, v24

    move-object/from16 v40, v26

    .line 411
    .end local v24    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v26    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .local v3, "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v40, "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    :goto_15
    const/4 v0, 0x0

    .line 412
    .local v0, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    move/from16 v24, v14

    const/4 v14, 0x1

    .end local v14    # "predictor":I
    .local v24, "predictor":I
    if-ne v10, v14, :cond_20

    if-ne v13, v14, :cond_20

    const/4 v14, 0x3

    if-eq v8, v14, :cond_20

    .line 413
    new-instance v14, Lcom/itextpdf/io/codec/CCITTG4Encoder;

    invoke-direct {v14, v7}, Lcom/itextpdf/io/codec/CCITTG4Encoder;-><init>(I)V

    move-object v0, v14

    move-object/from16 v41, v3

    move-object/from16 v43, v22

    move/from16 v3, v24

    move-object/from16 v44, v25

    move/from16 v42, v27

    goto :goto_16

    .line 415
    :cond_20
    new-instance v14, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v14}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 416
    .end local v22    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v14, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    move-object/from16 v22, v0

    const/4 v0, 0x6

    .end local v0    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v22, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    move-object/from16 v41, v3

    if-eq v4, v0, :cond_21

    move-object v0, v14

    move/from16 v3, v24

    move/from16 v14, v27

    .end local v24    # "predictor":I
    .end local v27    # "dpiY":I
    .local v0, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v3, "predictor":I
    .local v14, "dpiY":I
    .local v41, "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    move/from16 v42, v14

    const/4 v14, 0x7

    .end local v14    # "dpiY":I
    .local v42, "dpiY":I
    if-eq v4, v14, :cond_22

    .line 417
    new-instance v14, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-direct {v14, v0}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v25, v14

    move-object/from16 v43, v0

    move-object/from16 v14, v22

    move-object/from16 v44, v25

    goto :goto_16

    .line 416
    .end local v0    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v42    # "dpiY":I
    .local v3, "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v14, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v24    # "predictor":I
    .restart local v27    # "dpiY":I
    :cond_21
    move-object v0, v14

    move/from16 v3, v24

    move/from16 v42, v27

    .line 419
    .end local v14    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v24    # "predictor":I
    .end local v27    # "dpiY":I
    .restart local v0    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v3, "predictor":I
    .restart local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v42    # "dpiY":I
    :cond_22
    move-object/from16 v43, v0

    move-object/from16 v14, v22

    move-object/from16 v44, v25

    .end local v0    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v22    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v25    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .local v14, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v43, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .local v44, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    :goto_16
    const/4 v0, 0x6

    if-ne v4, v0, :cond_25

    .line 424
    const/16 v0, 0x201

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 427
    move-object/from16 v46, v14

    move/from16 v45, v15

    .end local v14    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v15    # "dpiX":I
    .local v45, "dpiX":I
    .local v46, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    .line 428
    .local v0, "jpegOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v14

    long-to-int v14, v14

    sub-int/2addr v14, v0

    .line 430
    .local v14, "jpegLength":I
    const/16 v15, 0x202

    invoke-virtual {v1, v15}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 431
    move/from16 v22, v14

    .end local v14    # "jpegLength":I
    .local v22, "jpegLength":I
    invoke-virtual {v1, v15}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v47, v6

    move/from16 v48, v7

    const/4 v15, 0x0

    .end local v6    # "h":I
    .end local v7    # "w":I
    .local v47, "h":I
    .local v48, "w":I
    aget-wide v6, v2, v15

    long-to-int v6, v6

    add-int/2addr v14, v6

    .end local v22    # "jpegLength":I
    .restart local v14    # "jpegLength":I
    goto :goto_17

    .line 430
    .end local v47    # "h":I
    .end local v48    # "w":I
    .restart local v6    # "h":I
    .restart local v7    # "w":I
    :cond_23
    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v22, v14

    .line 435
    .end local v6    # "h":I
    .end local v7    # "w":I
    .restart local v47    # "h":I
    .restart local v48    # "w":I
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v6, v0

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [B

    .line 437
    .local v6, "jpeg":[B
    move v7, v14

    .end local v14    # "jpegLength":I
    .local v7, "jpegLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    long-to-int v14, v14

    .line 438
    .local v14, "posFilePointer":I
    add-int/2addr v14, v0

    .line 439
    move/from16 v49, v9

    move v15, v10

    .end local v9    # "extraSamples":I
    .end local v10    # "bitsPerSample":I
    .local v15, "bitsPerSample":I
    .restart local v49    # "extraSamples":I
    int-to-long v9, v14

    move/from16 v22, v7

    move-object/from16 v7, p1

    .end local v7    # "jpegLength":I
    .restart local v22    # "jpegLength":I
    :try_start_6
    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 440
    invoke-virtual {v7, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 441
    move-object/from16 v9, p2

    :try_start_7
    iget-object v10, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    iput-object v6, v10, Lcom/itextpdf/io/image/TiffImageData;->data:[B

    .line 442
    iget-object v10, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v23, v0

    .end local v0    # "jpegOffset":I
    .local v23, "jpegOffset":I
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-virtual {v10, v0}, Lcom/itextpdf/io/image/TiffImageData;->setOriginalType(Lcom/itextpdf/io/image/ImageType;)V

    .line 443
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-static {v0}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 444
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->jpegProcessing:Z

    .line 445
    .end local v6    # "jpeg":[B
    .end local v14    # "posFilePointer":I
    .end local v22    # "jpegLength":I
    .end local v23    # "jpegOffset":I
    move-object/from16 v24, v11

    goto/16 :goto_1a

    .line 591
    .end local v2    # "size":[J
    .end local v3    # "predictor":I
    .end local v4    # "compression":I
    .end local v5    # "rowsStrip":I
    .end local v8    # "photometric":I
    .end local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v12    # "offset":[J
    .end local v13    # "samplePerPixel":I
    .end local v15    # "bitsPerSample":I
    .end local v19    # "rotation":F
    .end local v28    # "rowsLeft":I
    .end local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v37    # "reverse":Z
    .end local v38    # "resolutionUnit":I
    .end local v39    # "fillOrder":I
    .end local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v42    # "dpiY":I
    .end local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v45    # "dpiX":I
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v47    # "h":I
    .end local v48    # "w":I
    .end local v49    # "extraSamples":I
    :catch_1
    move-exception v0

    goto/16 :goto_d

    .line 425
    .restart local v2    # "size":[J
    .restart local v3    # "predictor":I
    .restart local v4    # "compression":I
    .restart local v5    # "rowsStrip":I
    .local v6, "h":I
    .local v7, "w":I
    .restart local v8    # "photometric":I
    .restart local v9    # "extraSamples":I
    .restart local v10    # "bitsPerSample":I
    .restart local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v12    # "offset":[J
    .restart local v13    # "samplePerPixel":I
    .local v14, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v15, "dpiX":I
    .restart local v19    # "rotation":F
    .restart local v28    # "rowsLeft":I
    .restart local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v37    # "reverse":Z
    .restart local v38    # "resolutionUnit":I
    .restart local v39    # "fillOrder":I
    .restart local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v42    # "dpiY":I
    .restart local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    :cond_24
    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v49, v9

    move-object/from16 v46, v14

    move/from16 v45, v15

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move v15, v10

    .end local v6    # "h":I
    .end local v7    # "w":I
    .end local v9    # "extraSamples":I
    .end local v10    # "bitsPerSample":I
    .end local v14    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v15, "bitsPerSample":I
    .restart local v45    # "dpiX":I
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v47    # "h":I
    .restart local v48    # "w":I
    .restart local v49    # "extraSamples":I
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v6, "Missing tag(s) for OJPEG compression"

    invoke-direct {v0, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 591
    .end local v2    # "size":[J
    .end local v3    # "predictor":I
    .end local v4    # "compression":I
    .end local v5    # "rowsStrip":I
    .end local v8    # "photometric":I
    .end local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v12    # "offset":[J
    .end local v13    # "samplePerPixel":I
    .end local v15    # "bitsPerSample":I
    .end local v19    # "rotation":F
    .end local v28    # "rowsLeft":I
    .end local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v37    # "reverse":Z
    .end local v38    # "resolutionUnit":I
    .end local v39    # "fillOrder":I
    .end local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v42    # "dpiY":I
    .end local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v45    # "dpiX":I
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v47    # "h":I
    .end local v48    # "w":I
    .end local v49    # "extraSamples":I
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :catch_2
    move-exception v0

    goto/16 :goto_e

    .line 445
    .restart local v2    # "size":[J
    .restart local v3    # "predictor":I
    .restart local v4    # "compression":I
    .restart local v5    # "rowsStrip":I
    .restart local v6    # "h":I
    .restart local v7    # "w":I
    .restart local v8    # "photometric":I
    .restart local v9    # "extraSamples":I
    .restart local v10    # "bitsPerSample":I
    .restart local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v12    # "offset":[J
    .restart local v13    # "samplePerPixel":I
    .restart local v14    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v15, "dpiX":I
    .restart local v19    # "rotation":F
    .restart local v28    # "rowsLeft":I
    .restart local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v37    # "reverse":Z
    .restart local v38    # "resolutionUnit":I
    .restart local v39    # "fillOrder":I
    .restart local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v42    # "dpiY":I
    .restart local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    :cond_25
    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v49, v9

    move-object/from16 v46, v14

    move/from16 v45, v15

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move v15, v10

    .end local v6    # "h":I
    .end local v7    # "w":I
    .end local v9    # "extraSamples":I
    .end local v10    # "bitsPerSample":I
    .end local v14    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v15, "bitsPerSample":I
    .restart local v45    # "dpiX":I
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v47    # "h":I
    .restart local v48    # "w":I
    .restart local v49    # "extraSamples":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_2b

    .line 446
    :try_start_8
    array-length v0, v2

    const/4 v6, 0x1

    if-gt v0, v6, :cond_2a

    .line 448
    move-object v14, v11

    const/4 v6, 0x0

    .end local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v14, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    aget-wide v10, v2, v6

    long-to-int v0, v10

    new-array v0, v0, [B

    .line 449
    .local v0, "jpeg":[B
    aget-wide v10, v12, v6

    invoke-virtual {v7, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 450
    invoke-virtual {v7, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 453
    const/16 v6, 0x15b

    invoke-virtual {v1, v6}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v6

    .line 454
    .local v6, "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    if-eqz v6, :cond_28

    .line 455
    invoke-virtual {v6}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v10

    .line 456
    .local v10, "temp":[B
    const/4 v11, 0x0

    .line 457
    .local v11, "tableoffset":I
    move-object/from16 v22, v6

    .end local v6    # "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    .local v22, "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    array-length v6, v10

    .line 459
    .local v6, "tablelength":I
    move/from16 v23, v11

    const/16 v17, 0x0

    .end local v11    # "tableoffset":I
    .local v23, "tableoffset":I
    aget-byte v11, v10, v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v24, v14

    .end local v14    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v24, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    const/4 v14, -0x1

    if-ne v11, v14, :cond_26

    const/4 v11, 0x1

    :try_start_9
    aget-byte v14, v10, v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/16 v11, -0x28

    if-ne v14, v11, :cond_26

    .line 460
    const/4 v11, 0x2

    .line 461
    .end local v23    # "tableoffset":I
    .restart local v11    # "tableoffset":I
    add-int/lit8 v6, v6, -0x2

    goto :goto_18

    .line 464
    .end local v11    # "tableoffset":I
    .restart local v23    # "tableoffset":I
    :cond_26
    move/from16 v11, v23

    .end local v23    # "tableoffset":I
    .restart local v11    # "tableoffset":I
    :goto_18
    :try_start_a
    array-length v14, v10

    const/16 v23, 0x2

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, v10, v14

    const/4 v1, -0x1

    if-ne v14, v1, :cond_27

    array-length v1, v10

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    aget-byte v1, v10, v1

    const/16 v14, -0x27

    if-ne v1, v14, :cond_27

    .line 465
    add-int/lit8 v6, v6, -0x2

    .line 466
    :cond_27
    new-array v1, v6, [B

    .line 467
    .local v1, "tables":[B
    const/4 v14, 0x0

    invoke-static {v10, v11, v1, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    array-length v14, v0

    move/from16 v23, v6

    .end local v6    # "tablelength":I
    .local v23, "tablelength":I
    array-length v6, v1

    add-int/2addr v14, v6

    new-array v6, v14, [B

    .line 470
    .local v6, "jpegwithtables":[B
    move-object/from16 v25, v10

    const/4 v10, 0x0

    const/4 v14, 0x2

    .end local v10    # "temp":[B
    .local v25, "temp":[B
    invoke-static {v0, v10, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    array-length v10, v1

    move/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "tableoffset":I
    .local v26, "tableoffset":I
    invoke-static {v1, v11, v6, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    array-length v10, v1

    add-int/2addr v10, v14

    array-length v11, v0

    sub-int/2addr v11, v14

    invoke-static {v0, v14, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    move-object v0, v6

    goto :goto_19

    .line 454
    .end local v1    # "tables":[B
    .end local v22    # "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    .end local v23    # "tablelength":I
    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v25    # "temp":[B
    .end local v26    # "tableoffset":I
    .local v6, "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v14    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :cond_28
    move-object/from16 v22, v6

    move-object/from16 v24, v14

    .line 475
    .end local v6    # "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    .end local v14    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v22    # "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :goto_19
    iget-object v1, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    iput-object v0, v1, Lcom/itextpdf/io/image/TiffImageData;->data:[B

    .line 476
    iget-object v1, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    sget-object v6, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-virtual {v1, v6}, Lcom/itextpdf/io/image/TiffImageData;->setOriginalType(Lcom/itextpdf/io/image/ImageType;)V

    .line 477
    iget-object v1, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-static {v1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 478
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->jpegProcessing:Z

    .line 479
    const/4 v1, 0x2

    if-ne v8, v1, :cond_29

    .line 480
    iget-object v1, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/itextpdf/io/image/TiffImageData;->setColorTransform(I)V

    .line 482
    .end local v0    # "jpeg":[B
    .end local v22    # "jpegtables":Lcom/itextpdf/io/codec/TIFFField;
    :cond_29
    nop

    .line 528
    :goto_1a
    move/from16 v27, v3

    move-object/from16 v50, v24

    move-object/from16 v3, v44

    move/from16 v14, v48

    move-object/from16 v48, v2

    move-object/from16 v2, v46

    goto/16 :goto_20

    .line 447
    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v11, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :cond_2a
    move-object/from16 v24, v11

    .end local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Compression jpeg is only supported with a single strip. This image has {0} strips."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v1, v10

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v0

    .line 591
    .end local v2    # "size":[J
    .end local v3    # "predictor":I
    .end local v4    # "compression":I
    .end local v5    # "rowsStrip":I
    .end local v8    # "photometric":I
    .end local v12    # "offset":[J
    .end local v13    # "samplePerPixel":I
    .end local v15    # "bitsPerSample":I
    .end local v19    # "rotation":F
    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v28    # "rowsLeft":I
    .end local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v37    # "reverse":Z
    .end local v38    # "resolutionUnit":I
    .end local v39    # "fillOrder":I
    .end local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v42    # "dpiY":I
    .end local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v45    # "dpiX":I
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v47    # "h":I
    .end local v48    # "w":I
    .end local v49    # "extraSamples":I
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :catch_3
    move-exception v0

    move-object/from16 v10, p0

    goto/16 :goto_2b

    .line 483
    .restart local v2    # "size":[J
    .restart local v3    # "predictor":I
    .restart local v4    # "compression":I
    .restart local v5    # "rowsStrip":I
    .restart local v8    # "photometric":I
    .restart local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v12    # "offset":[J
    .restart local v13    # "samplePerPixel":I
    .restart local v15    # "bitsPerSample":I
    .restart local v19    # "rotation":F
    .restart local v28    # "rowsLeft":I
    .restart local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v37    # "reverse":Z
    .restart local v38    # "resolutionUnit":I
    .restart local v39    # "fillOrder":I
    .restart local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v42    # "dpiY":I
    .restart local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .restart local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v45    # "dpiX":I
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v47    # "h":I
    .restart local v48    # "w":I
    .restart local v49    # "extraSamples":I
    :cond_2b
    move-object/from16 v24, v11

    .end local v11    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    const/4 v0, 0x0

    move/from16 v1, v28

    .end local v28    # "rowsLeft":I
    .local v0, "k":I
    .local v1, "rowsLeft":I
    :goto_1b
    array-length v6, v12

    if-ge v0, v6, :cond_30

    .line 484
    aget-wide v10, v2, v0

    long-to-int v6, v10

    new-array v6, v6, [B

    .line 485
    .local v6, "im":[B
    aget-wide v10, v12, v0

    invoke-virtual {v7, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 486
    invoke-virtual {v7, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 487
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 488
    .local v10, "height":I
    const/4 v11, 0x0

    .line 489
    .local v11, "outBuf":[B
    const/4 v14, 0x1

    if-eq v4, v14, :cond_2c

    .line 490
    mul-int v14, v48, v15

    mul-int/2addr v14, v13

    const/16 v20, 0x7

    add-int/lit8 v14, v14, 0x7

    const/16 v21, 0x8

    div-int/lit8 v14, v14, 0x8

    mul-int/2addr v14, v10

    new-array v14, v14, [B

    move-object v11, v14

    .line 491
    :cond_2c
    if-eqz v37, :cond_2d

    .line 492
    invoke-static {v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 493
    :cond_2d
    sparse-switch v4, :sswitch_data_2

    move/from16 v14, v48

    move-object/from16 v48, v2

    move-object/from16 v2, v24

    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v2, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v14, "w":I
    .local v48, "size":[J
    goto :goto_1c

    .line 503
    .end local v14    # "w":I
    .local v2, "size":[J
    .restart local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v48, "w":I
    :sswitch_2
    invoke-static {v6, v11}, Lcom/itextpdf/io/image/TiffImageHelper;->decodePackbits([B[B)V

    .line 504
    move/from16 v14, v48

    move-object/from16 v48, v2

    move-object/from16 v2, v24

    goto :goto_1c

    .line 496
    :sswitch_3
    invoke-static {v6, v11}, Lcom/itextpdf/io/util/FilterUtil;->inflateData([B[B)V

    .line 497
    move/from16 v14, v48

    .end local v48    # "w":I
    .restart local v14    # "w":I
    invoke-static {v11, v3, v14, v10, v13}, Lcom/itextpdf/io/image/TiffImageHelper;->applyPredictor([BIIII)V

    .line 498
    move-object/from16 v48, v2

    move-object/from16 v2, v24

    goto :goto_1c

    .line 506
    .end local v14    # "w":I
    .restart local v48    # "w":I
    :sswitch_4
    move/from16 v14, v48

    .end local v48    # "w":I
    .restart local v14    # "w":I
    move-object/from16 v48, v2

    move-object/from16 v2, v24

    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v2, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v48, "size":[J
    invoke-virtual {v2, v6, v11, v10}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->decode([B[BI)[B

    goto :goto_1c

    .line 500
    .end local v14    # "w":I
    .local v2, "size":[J
    .restart local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v48, "w":I
    :sswitch_5
    move/from16 v14, v48

    move-object/from16 v48, v2

    move-object/from16 v2, v24

    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v2, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v14    # "w":I
    .local v48, "size":[J
    move-object v11, v6

    .line 501
    nop

    .line 509
    :goto_1c
    move-object/from16 v50, v2

    const/4 v2, 0x1

    .end local v2    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v50, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    if-ne v15, v2, :cond_2e

    if-ne v13, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v8, v2, :cond_2e

    .line 510
    move-object/from16 v2, v46

    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v2, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    invoke-virtual {v2, v11, v10}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    move/from16 v27, v3

    move-object/from16 v3, v44

    goto :goto_1d

    .line 509
    .end local v2    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    :cond_2e
    move-object/from16 v2, v46

    .line 512
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v2    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    if-lez v49, :cond_2f

    .line 513
    move-object/from16 v21, v44

    move-object/from16 v22, v40

    move-object/from16 v23, v11

    move/from16 v24, v13

    move/from16 v25, v15

    move/from16 v26, v14

    move/from16 v27, v10

    invoke-static/range {v21 .. v27}, Lcom/itextpdf/io/image/TiffImageHelper;->processExtraSamples(Lcom/itextpdf/io/source/DeflaterOutputStream;Lcom/itextpdf/io/source/DeflaterOutputStream;[BIIII)V

    move/from16 v27, v3

    move-object/from16 v3, v44

    goto :goto_1d

    .line 515
    :cond_2f
    move/from16 v27, v3

    move-object/from16 v3, v44

    .end local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .local v3, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .local v27, "predictor":I
    invoke-virtual {v3, v11}, Lcom/itextpdf/io/source/DeflaterOutputStream;->write([B)V

    .line 517
    :goto_1d
    sub-int/2addr v1, v5

    .line 483
    .end local v6    # "im":[B
    .end local v10    # "height":I
    .end local v11    # "outBuf":[B
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v46, v2

    move-object/from16 v44, v3

    move/from16 v3, v27

    move-object/from16 v2, v48

    move-object/from16 v24, v50

    move/from16 v48, v14

    goto/16 :goto_1b

    .end local v14    # "w":I
    .end local v27    # "predictor":I
    .end local v50    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .local v2, "size":[J
    .local v3, "predictor":I
    .restart local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v48, "w":I
    :cond_30
    move/from16 v27, v3

    move-object/from16 v50, v24

    move-object/from16 v3, v44

    move/from16 v14, v48

    move-object/from16 v48, v2

    move-object/from16 v2, v46

    .line 519
    .end local v0    # "k":I
    .end local v24    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .end local v44    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v2, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v3, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v14    # "w":I
    .restart local v27    # "predictor":I
    .local v48, "size":[J
    .restart local v50    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    const/4 v6, 0x1

    if-ne v15, v6, :cond_32

    if-ne v13, v6, :cond_32

    const/4 v10, 0x3

    if-eq v8, v10, :cond_32

    .line 520
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/16 v31, 0x0

    const/16 v32, 0x100

    if-ne v8, v6, :cond_31

    const/16 v33, 0x1

    goto :goto_1e

    :cond_31
    const/16 v33, 0x0

    .line 521
    :goto_1e
    invoke-virtual {v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->close()[B

    move-result-object v34

    const/16 v35, 0x0

    .line 520
    move-object/from16 v28, v0

    move/from16 v29, v14

    move/from16 v30, v47

    invoke-static/range {v28 .. v35}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    goto :goto_1f

    .line 523
    :cond_32
    invoke-virtual {v3}, Lcom/itextpdf/io/source/DeflaterOutputStream;->close()V

    .line 524
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    sub-int v24, v13, v49

    invoke-virtual/range {v43 .. v43}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    move-object/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v47

    move/from16 v25, v15

    invoke-static/range {v21 .. v26}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 525
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/itextpdf/io/image/TiffImageData;->setDeflated(Z)V

    .line 528
    :goto_1f
    move/from16 v28, v1

    .end local v1    # "rowsLeft":I
    .restart local v28    # "rowsLeft":I
    :goto_20
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v6, v42

    move/from16 v1, v45

    .end local v42    # "dpiY":I
    .end local v45    # "dpiX":I
    .local v1, "dpiX":I
    .local v6, "dpiY":I
    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/io/image/TiffImageData;->setDpi(II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 529
    const/4 v0, 0x6

    if-eq v4, v0, :cond_3b

    const/4 v0, 0x7

    if-eq v4, v0, :cond_3b

    .line 530
    const v0, 0x8773

    move-object/from16 v10, p0

    :try_start_b
    invoke-virtual {v10, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v11, :cond_34

    .line 532
    :try_start_c
    invoke-virtual {v10, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 533
    .local v0, "fd":Lcom/itextpdf/io/codec/TIFFField;
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v11
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 534
    .local v11, "icc_prof":Lcom/itextpdf/io/colors/IccProfile;
    move-object/from16 v20, v0

    .end local v0    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    .local v20, "fd":Lcom/itextpdf/io/codec/TIFFField;
    sub-int v0, v13, v49

    move/from16 v45, v1

    .end local v1    # "dpiX":I
    .restart local v45    # "dpiX":I
    :try_start_d
    invoke-virtual {v11}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 535
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0, v11}, Lcom/itextpdf/io/image/TiffImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 539
    .end local v11    # "icc_prof":Lcom/itextpdf/io/colors/IccProfile;
    .end local v20    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    :cond_33
    goto :goto_21

    .line 537
    :catch_4
    move-exception v0

    goto :goto_21

    .end local v45    # "dpiX":I
    .restart local v1    # "dpiX":I
    :catch_5
    move-exception v0

    move/from16 v45, v1

    .end local v1    # "dpiX":I
    .restart local v45    # "dpiX":I
    goto :goto_21

    .line 530
    .end local v45    # "dpiX":I
    .restart local v1    # "dpiX":I
    :cond_34
    move/from16 v45, v1

    .line 541
    .end local v1    # "dpiX":I
    .restart local v45    # "dpiX":I
    :goto_21
    const/16 v0, 0x140

    :try_start_e
    invoke-virtual {v10, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 542
    invoke-virtual {v10, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 543
    .restart local v0    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsChars()[C

    move-result-object v1

    .line 544
    .local v1, "rgb":[C
    array-length v11, v1

    new-array v11, v11, [B

    .line 545
    .local v11, "palette":[B
    move-object/from16 v20, v0

    .end local v0    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    .restart local v20    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    array-length v0, v1

    const/16 v21, 0x3

    div-int/lit8 v0, v0, 0x3

    .line 546
    .local v0, "gColor":I
    mul-int/lit8 v21, v0, 0x2

    .line 547
    .local v21, "bColor":I
    const/16 v22, 0x0

    move-object/from16 v46, v2

    move/from16 v2, v22

    .local v2, "k":I
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    :goto_22
    if-ge v2, v0, :cond_35

    .line 549
    mul-int/lit8 v22, v2, 0x3

    aget-char v23, v1, v2

    move-object/from16 v29, v3

    const/16 v24, 0x8

    .end local v3    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .local v29, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    shr-int/lit8 v3, v23, 0x8

    int-to-byte v3, v3

    aput-byte v3, v11, v22

    .line 550
    mul-int/lit8 v3, v2, 0x3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int v22, v2, v0

    aget-char v22, v1, v22

    move/from16 v30, v5

    const/16 v23, 0x8

    .end local v5    # "rowsStrip":I
    .local v30, "rowsStrip":I
    shr-int/lit8 v5, v22, 0x8

    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 551
    mul-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    add-int/2addr v3, v5

    add-int v5, v2, v21

    aget-char v5, v1, v5

    const/16 v22, 0x8

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 547
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v29

    move/from16 v5, v30

    goto :goto_22

    .end local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v30    # "rowsStrip":I
    .restart local v3    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v5    # "rowsStrip":I
    :cond_35
    move-object/from16 v29, v3

    move/from16 v30, v5

    .line 556
    .end local v2    # "k":I
    .end local v3    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v5    # "rowsStrip":I
    .restart local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v30    # "rowsStrip":I
    const/4 v2, 0x1

    .line 557
    .local v2, "colormapBroken":Z
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_23
    array-length v5, v11

    if-ge v3, v5, :cond_37

    .line 558
    aget-byte v5, v11, v3

    if-eqz v5, :cond_36

    .line 559
    const/4 v2, 0x0

    .line 560
    goto :goto_24

    .line 557
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 563
    .end local v3    # "k":I
    :cond_37
    :goto_24
    if-eqz v2, :cond_39

    .line 564
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_25
    if-ge v3, v0, :cond_38

    .line 565
    mul-int/lit8 v5, v3, 0x3

    move/from16 v22, v2

    .end local v2    # "colormapBroken":Z
    .local v22, "colormapBroken":Z
    aget-char v2, v1, v3

    int-to-byte v2, v2

    aput-byte v2, v11, v5

    .line 566
    mul-int/lit8 v2, v3, 0x3

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int v5, v3, v0

    aget-char v5, v1, v5

    int-to-byte v5, v5

    aput-byte v5, v11, v2

    .line 567
    mul-int/lit8 v2, v3, 0x3

    const/4 v5, 0x2

    add-int/2addr v2, v5

    add-int v5, v3, v21

    aget-char v5, v1, v5

    int-to-byte v5, v5

    aput-byte v5, v11, v2

    .line 564
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v22

    goto :goto_25

    .end local v22    # "colormapBroken":Z
    .restart local v2    # "colormapBroken":Z
    :cond_38
    move/from16 v22, v2

    .end local v2    # "colormapBroken":Z
    .restart local v22    # "colormapBroken":Z
    goto :goto_26

    .line 563
    .end local v3    # "k":I
    .end local v22    # "colormapBroken":Z
    .restart local v2    # "colormapBroken":Z
    :cond_39
    move/from16 v22, v2

    .line 570
    .end local v2    # "colormapBroken":Z
    .restart local v22    # "colormapBroken":Z
    :goto_26
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 571
    .local v2, "indexed":[Ljava/lang/Object;
    const-string v3, "/Indexed"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 572
    const-string v3, "/DeviceRGB"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 573
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 574
    const/4 v3, 0x0

    invoke-static {v11, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 575
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->additional:Ljava/util/Map;

    .line 576
    iget-object v3, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->additional:Ljava/util/Map;

    const-string v5, "ColorSpace"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 541
    .end local v0    # "gColor":I
    .end local v1    # "rgb":[C
    .end local v11    # "palette":[B
    .end local v20    # "fd":Lcom/itextpdf/io/codec/TIFFField;
    .end local v21    # "bColor":I
    .end local v22    # "colormapBroken":Z
    .end local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v30    # "rowsStrip":I
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v2, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v3, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v5    # "rowsStrip":I
    :cond_3a
    move-object/from16 v46, v2

    move-object/from16 v29, v3

    move/from16 v30, v5

    .end local v2    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v3    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v5    # "rowsStrip":I
    .restart local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v30    # "rowsStrip":I
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    goto :goto_27

    .line 529
    .end local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v30    # "rowsStrip":I
    .end local v45    # "dpiX":I
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .local v1, "dpiX":I
    .restart local v2    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .restart local v3    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v5    # "rowsStrip":I
    :cond_3b
    move-object/from16 v10, p0

    move/from16 v45, v1

    move-object/from16 v46, v2

    move-object/from16 v29, v3

    move/from16 v30, v5

    .line 579
    .end local v1    # "dpiX":I
    .end local v2    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v3    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v5    # "rowsStrip":I
    .restart local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v30    # "rowsStrip":I
    .restart local v45    # "dpiX":I
    .restart local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    :goto_27
    if-nez v8, :cond_3c

    .line 580
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/TiffImageData;->setInverted(Z)V

    .line 581
    :cond_3c
    const/4 v0, 0x0

    cmpl-float v0, v19, v0

    if-eqz v0, :cond_3d

    .line 582
    iget-object v0, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v11, v19

    .end local v19    # "rotation":F
    .local v11, "rotation":F
    invoke-virtual {v0, v11}, Lcom/itextpdf/io/image/TiffImageData;->setRotation(F)V

    goto :goto_28

    .line 581
    .end local v11    # "rotation":F
    .restart local v19    # "rotation":F
    :cond_3d
    move/from16 v11, v19

    .line 583
    .end local v19    # "rotation":F
    .restart local v11    # "rotation":F
    :goto_28
    if-lez v49, :cond_3e

    .line 584
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/io/source/DeflaterOutputStream;->close()V

    .line 585
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createRawImage([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/image/RawImageData;

    .line 586
    .local v0, "mimg":Lcom/itextpdf/io/image/RawImageData;
    const/16 v24, 0x1

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    move-object/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v47

    move/from16 v25, v15

    invoke-static/range {v21 .. v26}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 587
    invoke-virtual {v0}, Lcom/itextpdf/io/image/RawImageData;->makeMask()V

    .line 588
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/RawImageData;->setDeflated(Z)V

    .line 589
    iget-object v1, v9, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/image/TiffImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    .line 593
    .end local v0    # "mimg":Lcom/itextpdf/io/image/RawImageData;
    .end local v4    # "compression":I
    .end local v6    # "dpiY":I
    .end local v8    # "photometric":I
    .end local v11    # "rotation":F
    .end local v12    # "offset":[J
    .end local v13    # "samplePerPixel":I
    .end local v14    # "w":I
    .end local v15    # "bitsPerSample":I
    .end local v27    # "predictor":I
    .end local v28    # "rowsLeft":I
    .end local v29    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v30    # "rowsStrip":I
    .end local v36    # "fillOrderField":Lcom/itextpdf/io/codec/TIFFField;
    .end local v37    # "reverse":Z
    .end local v38    # "resolutionUnit":I
    .end local v39    # "fillOrder":I
    .end local v40    # "mzip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v41    # "mstream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v43    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v45    # "dpiX":I
    .end local v46    # "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    .end local v47    # "h":I
    .end local v48    # "size":[J
    .end local v49    # "extraSamples":I
    .end local v50    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    :cond_3e
    nop

    .line 594
    return-void

    .line 356
    .restart local v4    # "compression":I
    .restart local v8    # "photometric":I
    .restart local v11    # "rotation":F
    .restart local v13    # "samplePerPixel":I
    .restart local v15    # "bitsPerSample":I
    .local v24, "predictor":I
    .local v25, "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local v49    # "extraSamples":I
    :goto_29
    const-string v1, "Bits per sample {0} is not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v0

    .line 311
    .end local v8    # "photometric":I
    .end local v11    # "rotation":F
    .end local v13    # "samplePerPixel":I
    .end local v15    # "bitsPerSample":I
    .end local v49    # "extraSamples":I
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :goto_2a
    const-string v1, "Compression {0} is not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    .end local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .end local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 591
    .end local v4    # "compression":I
    .end local v24    # "predictor":I
    .end local v25    # "lzwDecoder":Lcom/itextpdf/io/codec/TIFFLZWDecoder;
    .restart local p0    # "dir":Lcom/itextpdf/io/codec/TIFFDirectory;
    .restart local p1    # "s":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local p2    # "tiff":Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    :catch_6
    move-exception v0

    goto :goto_2b

    :catch_7
    move-exception v0

    move-object v10, v1

    move-object v7, v2

    move-object v9, v3

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    :goto_2b
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot get TIFF image color."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x8005 -> :sswitch_0
        0x80b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x8005 -> :sswitch_2
        0x80b2 -> :sswitch_3
    .end sparse-switch
.end method
