.class final Lcom/itextpdf/io/image/BmpImageHelper;
.super Ljava/lang/Object;
.source "BmpImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    }
.end annotation


# static fields
.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final LCS_CALIBRATED_RGB:I = 0x0

.field private static final LCS_CMYK:I = 0x2

.field private static final LCS_SRGB:I = 0x1

.field private static final VERSION_2_1_BIT:I = 0x0

.field private static final VERSION_2_24_BIT:I = 0x3

.field private static final VERSION_2_4_BIT:I = 0x1

.field private static final VERSION_2_8_BIT:I = 0x2

.field private static final VERSION_3_1_BIT:I = 0x4

.field private static final VERSION_3_24_BIT:I = 0x7

.field private static final VERSION_3_4_BIT:I = 0x5

.field private static final VERSION_3_8_BIT:I = 0x6

.field private static final VERSION_3_NT_16_BIT:I = 0x8

.field private static final VERSION_3_NT_32_BIT:I = 0x9

.field private static final VERSION_4_16_BIT:I = 0xd

.field private static final VERSION_4_1_BIT:I = 0xa

.field private static final VERSION_4_24_BIT:I = 0xe

.field private static final VERSION_4_32_BIT:I = 0xf

.field private static final VERSION_4_4_BIT:I = 0xb

.field private static final VERSION_4_8_BIT:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeRLE(Z[BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B
    .locals 11
    .param p0, "is8"    # Z
    .param p1, "values"    # [B
    .param p2, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;

    .line 1062
    iget v0, p2, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p2, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1064
    .local v0, "val":[B
    const/4 v1, 0x0

    .line 1065
    .local v1, "ptr":I
    const/4 v2, 0x0

    .line 1066
    .local v2, "x":I
    const/4 v3, 0x0

    .line 1067
    .local v3, "q":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    :try_start_0
    iget v5, p2, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v4, v5, :cond_e

    array-length v5, p1

    if-ge v1, v5, :cond_e

    .line 1068
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "ptr":I
    .local v5, "ptr":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 1069
    .local v1, "count":I
    const/4 v6, 0x1

    if-eqz v1, :cond_4

    .line 1071
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ptr":I
    .local v7, "ptr":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 1072
    .local v5, "bt":I
    if-eqz p0, :cond_1

    .line 1073
    move v6, v1

    .local v6, "i":I
    :goto_1
    if-eqz v6, :cond_0

    .line 1074
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "q":I
    .local v8, "q":I
    int-to-byte v9, v5

    aput-byte v9, v0, v3

    .line 1073
    add-int/lit8 v6, v6, -0x1

    move v3, v8

    goto :goto_1

    .end local v6    # "i":I
    .end local v8    # "q":I
    .restart local v3    # "q":I
    :cond_0
    goto :goto_4

    .line 1077
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v1, :cond_3

    .line 1078
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "q":I
    .local v9, "q":I
    and-int/lit8 v10, v8, 0x1

    if-ne v10, v6, :cond_2

    and-int/lit8 v10, v5, 0xf

    goto :goto_3

    :cond_2
    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    :goto_3
    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 1077
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_2

    .line 1081
    .end local v8    # "i":I
    .end local v9    # "q":I
    .restart local v3    # "q":I
    :cond_3
    :goto_4
    add-int/2addr v2, v1

    .line 1082
    .end local v5    # "bt":I
    move v1, v7

    goto/16 :goto_a

    .line 1084
    .end local v7    # "ptr":I
    .local v5, "ptr":I
    :cond_4
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v5, p1, v5

    and-int/lit16 v1, v5, 0xff

    .line 1085
    if-ne v1, v6, :cond_5

    .line 1086
    goto/16 :goto_b

    .line 1087
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 1101
    :pswitch_0
    if-eqz p0, :cond_7

    .line 1102
    move v5, v1

    .local v5, "i":I
    goto :goto_5

    .line 1095
    .end local v5    # "i":I
    :pswitch_1
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "ptr":I
    .local v5, "ptr":I
    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v2, v6

    .line 1096
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .local v6, "ptr":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 1097
    iget v5, p2, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 1098
    .end local v3    # "q":I
    .local v5, "q":I
    move v3, v5

    move v1, v6

    goto/16 :goto_a

    .line 1089
    .end local v5    # "q":I
    .end local v6    # "ptr":I
    .restart local v3    # "q":I
    .restart local v7    # "ptr":I
    :pswitch_2
    const/4 v2, 0x0

    .line 1090
    add-int/lit8 v4, v4, 0x1

    .line 1091
    iget v5, p2, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v5, v4

    .line 1092
    .end local v3    # "q":I
    .restart local v5    # "q":I
    move v3, v5

    move v1, v7

    goto :goto_a

    .line 1102
    .restart local v3    # "q":I
    .local v5, "i":I
    :goto_5
    if-eqz v5, :cond_6

    .line 1103
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "q":I
    .local v8, "q":I
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ptr":I
    .local v9, "ptr":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 1102
    add-int/lit8 v5, v5, -0x1

    move v3, v8

    move v7, v9

    goto :goto_5

    .end local v5    # "i":I
    .end local v8    # "q":I
    .end local v9    # "ptr":I
    .restart local v3    # "q":I
    .restart local v7    # "ptr":I
    :cond_6
    goto :goto_8

    .line 1105
    :cond_7
    const/4 v5, 0x0

    .line 1106
    .local v5, "bt":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v1, :cond_a

    .line 1107
    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_8

    .line 1108
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v9    # "ptr":I
    aget-byte v7, p1, v7

    and-int/lit16 v5, v7, 0xff

    move v7, v9

    .line 1109
    .end local v9    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_8
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "q":I
    .local v9, "q":I
    and-int/lit8 v10, v8, 0x1

    if-ne v10, v6, :cond_9

    and-int/lit8 v10, v5, 0xf

    goto :goto_7

    :cond_9
    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    :goto_7
    int-to-byte v10, v10

    aput-byte v10, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_6

    .line 1112
    .end local v5    # "bt":I
    .end local v8    # "i":I
    .end local v9    # "q":I
    .restart local v3    # "q":I
    :cond_a
    :goto_8
    add-int/2addr v2, v1

    .line 1114
    if-eqz p0, :cond_b

    .line 1115
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v6, :cond_c

    .line 1116
    add-int/lit8 v7, v7, 0x1

    move v1, v7

    goto :goto_a

    .line 1118
    :cond_b
    and-int/lit8 v5, v1, 0x3

    if-eq v5, v6, :cond_d

    and-int/lit8 v5, v1, 0x3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    goto :goto_9

    .line 1124
    .end local v1    # "count":I
    :cond_c
    move v1, v7

    goto :goto_a

    .line 1119
    .restart local v1    # "count":I
    :cond_d
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move v1, v7

    .line 1124
    .end local v7    # "ptr":I
    .local v1, "ptr":I
    :goto_a
    goto/16 :goto_0

    .line 1127
    .end local v1    # "ptr":I
    .end local v2    # "x":I
    .end local v3    # "q":I
    .end local v4    # "y":I
    :cond_e
    :goto_b
    goto :goto_c

    .line 1125
    :catch_0
    move-exception v1

    .line 1129
    :goto_c
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static findMask(I)I
    .locals 3
    .param p0, "mask"    # I

    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "k":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 890
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 891
    goto :goto_1

    .line 892
    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_1
    :goto_1
    return p0
.end method

.method private static findShift(I)I
    .locals 3
    .param p0, "mask"    # I

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "k":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 900
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 901
    goto :goto_1

    .line 902
    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    :cond_1
    :goto_1
    return v0
.end method

.method private static getImage(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)Z
    .locals 12
    .param p0, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/4 v1, 0x0

    const-string v2, "Invalid BMP file compression."

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 663
    return v1

    .line 660
    :pswitch_0
    invoke-static {v5, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 661
    return v5

    .line 655
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    new-array v0, v0, [B

    .line 656
    .local v0, "bdata":[B
    invoke-static {v0, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 657
    iget-object v6, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v9, 0x3

    const/16 v10, 0x8

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 658
    return v5

    .line 652
    .end local v0    # "bdata":[B
    :pswitch_2
    invoke-static {v1, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 653
    return v5

    .line 640
    :pswitch_3
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    .line 648
    new-instance v0, Lcom/itextpdf/io/IOException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :pswitch_4
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE8(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 646
    goto :goto_0

    .line 642
    :pswitch_5
    invoke-static {v3, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 643
    nop

    .line 650
    :goto_0
    return v5

    .line 628
    :pswitch_6
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_2

    .line 636
    :pswitch_7
    new-instance v0, Lcom/itextpdf/io/IOException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :pswitch_8
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE4(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 634
    goto :goto_1

    .line 630
    :pswitch_9
    invoke-static {v3, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 631
    nop

    .line 638
    :goto_1
    return v5

    .line 625
    :pswitch_a
    invoke-static {v3, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 626
    return v5

    .line 622
    :pswitch_b
    invoke-static {v5, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 623
    return v5

    .line 619
    :pswitch_c
    invoke-static {v1, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 620
    return v5

    .line 614
    :pswitch_d
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    new-array v0, v0, [B

    .line 615
    .restart local v0    # "bdata":[B
    invoke-static {v0, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 616
    iget-object v6, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v9, 0x3

    const/16 v10, 0x8

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 617
    return v5

    .line 601
    .end local v0    # "bdata":[B
    :pswitch_e
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_3

    .line 609
    new-instance v0, Lcom/itextpdf/io/IOException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :pswitch_f
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE8(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 607
    goto :goto_2

    .line 603
    :pswitch_10
    invoke-static {v3, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 604
    nop

    .line 611
    :goto_2
    return v5

    .line 589
    :pswitch_11
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_4

    .line 597
    :pswitch_12
    new-instance v0, Lcom/itextpdf/io/IOException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :pswitch_13
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE4(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 595
    goto :goto_3

    .line 591
    :pswitch_14
    invoke-static {v3, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 592
    nop

    .line 599
    :goto_3
    return v5

    .line 586
    :pswitch_15
    invoke-static {v3, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 587
    return v5

    .line 580
    :pswitch_16
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    new-array v0, v0, [B

    .line 581
    .restart local v0    # "bdata":[B
    invoke-static {v0, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 582
    iget-object v6, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v9, 0x3

    const/16 v10, 0x8

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 583
    return v5

    .line 576
    .end local v0    # "bdata":[B
    :pswitch_17
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 577
    return v5

    .line 572
    :pswitch_18
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 573
    return v5

    .line 568
    :pswitch_19
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 569
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static getPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B
    .locals 8
    .param p0, "group"    # I
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;

    .line 540
    iget-object v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x0

    return-object v0

    .line 542
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v0, v0

    div-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 543
    .local v0, "np":[B
    iget-object v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v1, v1

    div-int/2addr v1, p0

    .line 544
    .local v1, "e":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 545
    mul-int v3, v2, p0

    .line 546
    .local v3, "src":I
    mul-int/lit8 v4, v2, 0x3

    .line 547
    .local v4, "dest":I
    add-int/lit8 v5, v4, 0x2

    iget-object v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "src":I
    .local v7, "src":I
    aget-byte v3, v6, v3

    aput-byte v3, v0, v5

    .line 548
    add-int/lit8 v3, v4, 0x1

    iget-object v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "src":I
    .local v6, "src":I
    aget-byte v5, v5, v7

    aput-byte v5, v0, v3

    .line 549
    iget-object v3, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    aget-byte v3, v3, v6

    aput-byte v3, v0, v4

    .line 544
    .end local v4    # "dest":I
    .end local v6    # "src":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "k":I
    :cond_1
    return-object v0
.end method

.method private static indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 6
    .param p0, "bdata"    # [B
    .param p1, "bpc"    # I
    .param p2, "paletteEntries"    # I
    .param p3, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;

    .line 667
    iget-object v0, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v1, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v2, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v3, 0x1

    move v4, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 669
    .local v0, "colorSpace":[Ljava/lang/Object;
    const/4 v1, 0x0

    const-string v2, "/Indexed"

    aput-object v2, v0, v1

    .line 670
    const-string v1, "/DeviceRGB"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 671
    invoke-static {p2, p3}, Lcom/itextpdf/io/image/BmpImageHelper;->getPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B

    move-result-object v1

    .line 672
    .local v1, "np":[B
    array-length v3, v1

    .line 673
    .local v3, "len":I
    div-int/lit8 v4, v3, 0x3

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 674
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 675
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->additional:Ljava/util/Map;

    .line 676
    iget-object v2, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->additional:Ljava/util/Map;

    const-string v4, "ColorSpace"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-void
.end method

.method private static process(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;Ljava/io/InputStream;)V
    .locals 34
    .param p0, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    .line 146
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    invoke-virtual {v2}, Lcom/itextpdf/io/image/BmpImageData;->isNoHeader()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    .line 149
    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_0

    .line 154
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    .line 157
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    .line 158
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    .line 161
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    goto :goto_0

    .line 150
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Invalid magic value for bmp file. Must be \'BM\'"

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 168
    .local v2, "size":J
    const-wide/16 v4, 0xc

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 169
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v6

    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    .line 170
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v6

    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    goto :goto_1

    .line 172
    :cond_2
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v6

    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    .line 173
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v6

    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    .line 176
    :goto_1
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v6

    .line 177
    .local v6, "planes":I
    iget-object v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v7}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v7

    iput v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    .line 179
    iget-object v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "color_planes"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "bits_per_pixel"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v7, 0x3

    iput v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    .line 185
    iget-wide v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 186
    iput-wide v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 187
    :cond_3
    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/16 v8, 0x18

    const/4 v14, 0x2

    const-string v10, "bmp_version"

    const/16 v11, 0x8

    const/4 v9, 0x1

    const/4 v15, 0x4

    if-nez v4, :cond_9

    .line 189
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v12, "BMP v. 2.x"

    invoke-interface {v4, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v4, v9, :cond_4

    .line 193
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_2

    .line 194
    :cond_4
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v4, v15, :cond_5

    .line 195
    iput v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_2

    .line 196
    :cond_5
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v4, v11, :cond_6

    .line 197
    iput v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_2

    .line 198
    :cond_6
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v4, v8, :cond_7

    .line 199
    iput v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 203
    :cond_7
    :goto_2
    iget-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v16, 0xe

    sub-long v12, v12, v16

    sub-long/2addr v12, v2

    const-wide/16 v16, 0x3

    div-long v12, v12, v16

    long-to-int v4, v12

    .line 204
    .local v4, "numberOfEntries":I
    mul-int/lit8 v8, v4, 0x3

    .line 205
    .local v8, "sizeOfPalette":I
    iget-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    cmp-long v10, v12, v2

    if-nez v10, :cond_8

    .line 206
    iget v10, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    .line 217
    :pswitch_0
    const/4 v8, 0x0

    goto :goto_3

    .line 214
    :pswitch_1
    const/16 v8, 0x300

    .line 215
    goto :goto_3

    .line 211
    :pswitch_2
    const/16 v8, 0x30

    .line 212
    goto :goto_3

    .line 208
    :pswitch_3
    const/4 v8, 0x6

    .line 209
    nop

    .line 220
    :goto_3
    int-to-long v12, v8

    add-long/2addr v12, v2

    iput-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 222
    :cond_8
    invoke-static {v8, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 223
    .end local v4    # "numberOfEntries":I
    .end local v8    # "sizeOfPalette":I
    move/from16 v22, v6

    goto/16 :goto_12

    .line 224
    :cond_9
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    .line 225
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    .line 226
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v12, v4

    iput-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->xPelsPerMeter:J

    .line 227
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v12, v4

    iput-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->yPelsPerMeter:J

    .line 228
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v12

    .line 229
    .local v12, "colorsUsed":J
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v18

    .line 231
    .local v18, "colorsImportant":J
    move v4, v6

    .end local v6    # "planes":I
    .local v4, "planes":I
    iget-wide v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v5, v5

    const-string v6, "compression"

    packed-switch v5, :pswitch_data_1

    goto :goto_4

    .line 245
    :pswitch_4
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v14, "BI_BITFIELDS"

    invoke-interface {v5, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 241
    :pswitch_5
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v14, "BI_RLE4"

    invoke-interface {v5, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    goto :goto_4

    .line 237
    :pswitch_6
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v14, "BI_RLE8"

    invoke-interface {v5, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    goto :goto_4

    .line 233
    :pswitch_7
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v14, "BI_RGB"

    invoke-interface {v5, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    nop

    .line 249
    :goto_4
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget-wide v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->xPelsPerMeter:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string/jumbo v8, "x_pixels_per_meter"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget-wide v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->yPelsPerMeter:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string/jumbo v8, "y_pixels_per_meter"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "colors_used"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "colors_important"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-wide/16 v7, 0x28

    cmp-long v5, v2, v7

    const-wide/16 v7, 0x34

    const-string v6, "alpha_mask"

    const-wide/16 v20, 0x38

    const-string v14, "blue_mask"

    const-string v11, "green_mask"

    const-string/jumbo v15, "red_mask"

    if-eqz v5, :cond_16

    cmp-long v5, v2, v7

    if-eqz v5, :cond_16

    cmp-long v5, v2, v20

    if-nez v5, :cond_a

    move/from16 v22, v4

    goto/16 :goto_b

    .line 364
    :cond_a
    const-wide/16 v7, 0x6c

    cmp-long v5, v2, v7

    const-string v7, "Not implemented yet."

    if-nez v5, :cond_15

    .line 367
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v8, "BMP v. 4.x"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v9

    long-to-int v5, v9

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 371
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v8

    long-to-int v5, v8

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 372
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v8

    long-to-int v5, v8

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 374
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v8

    long-to-int v5, v8

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    .line 375
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v8

    .line 376
    .local v8, "csType":J
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v5

    .line 377
    .local v5, "redX":I
    iget-object v10, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v10}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v10

    .line 378
    .local v10, "redY":I
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v1

    .line 379
    .local v1, "redZ":I
    move/from16 v22, v4

    .end local v4    # "planes":I
    .local v22, "planes":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 380
    .local v4, "greenX":I
    move/from16 v20, v4

    .end local v4    # "greenX":I
    .local v20, "greenX":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 381
    .local v4, "greenY":I
    move/from16 v21, v4

    .end local v4    # "greenY":I
    .local v21, "greenY":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 382
    .local v4, "greenZ":I
    move/from16 v23, v4

    .end local v4    # "greenZ":I
    .local v23, "greenZ":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 383
    .local v4, "blueX":I
    move/from16 v24, v4

    .end local v4    # "blueX":I
    .local v24, "blueX":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 384
    .local v4, "blueY":I
    move/from16 v25, v4

    .end local v4    # "blueY":I
    .local v25, "blueY":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    .line 385
    .local v4, "blueZ":I
    move/from16 v26, v4

    .end local v4    # "blueZ":I
    .local v26, "blueZ":I
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v27

    .line 386
    .local v27, "gammaRed":J
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v29

    .line 387
    .local v29, "gammaGreen":J
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v31

    .line 389
    .local v31, "gammaBlue":J
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    move/from16 v33, v1

    const/4 v1, 0x1

    .end local v1    # "redZ":I
    .local v33, "redZ":I
    if-ne v4, v1, :cond_b

    .line 390
    const/16 v1, 0xa

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    move v1, v5

    goto :goto_5

    .line 391
    :cond_b
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_c

    .line 392
    const/16 v1, 0xb

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    move v1, v5

    goto :goto_5

    .line 393
    :cond_c
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_d

    .line 394
    const/16 v1, 0xc

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    move v1, v5

    goto :goto_5

    .line 395
    :cond_d
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_e

    .line 396
    const/16 v1, 0xd

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 397
    move v1, v5

    .end local v5    # "redX":I
    .local v1, "redX":I
    iget-wide v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v4, v4

    if-nez v4, :cond_10

    .line 398
    const/16 v4, 0x7c00

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 399
    const/16 v4, 0x3e0

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 400
    const/16 v4, 0x1f

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    goto :goto_5

    .line 402
    .end local v1    # "redX":I
    .restart local v5    # "redX":I
    :cond_e
    move v1, v5

    .end local v5    # "redX":I
    .restart local v1    # "redX":I
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v5, 0x18

    if-ne v4, v5, :cond_f

    .line 403
    const/16 v4, 0xe

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_5

    .line 404
    :cond_f
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_10

    .line 405
    const/16 v4, 0xf

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 406
    iget-wide v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v4, v4

    if-nez v4, :cond_10

    .line 407
    const/high16 v4, 0xff0000

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 408
    const v4, 0xff00

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 409
    const/16 v4, 0xff

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 413
    :cond_10
    :goto_5
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-wide v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v14, 0xe

    sub-long/2addr v4, v14

    sub-long/2addr v4, v2

    const-wide/16 v14, 0x4

    div-long/2addr v4, v14

    long-to-int v4, v4

    .line 420
    .local v4, "numberOfEntries":I
    mul-int/lit8 v5, v4, 0x4

    .line 421
    .local v5, "sizeOfPalette":I
    iget-wide v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    cmp-long v6, v14, v2

    if-nez v6, :cond_14

    .line 422
    iget v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    packed-switch v6, :pswitch_data_2

    .line 433
    const/4 v5, 0x0

    goto :goto_9

    .line 430
    :pswitch_8
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-nez v6, :cond_11

    const-wide/16 v14, 0x100

    goto :goto_6

    :cond_11
    move-wide v14, v12

    :goto_6
    long-to-int v6, v14

    const/4 v11, 0x4

    mul-int/2addr v6, v11

    .line 431
    .end local v5    # "sizeOfPalette":I
    .local v6, "sizeOfPalette":I
    move v5, v6

    goto :goto_9

    .line 427
    .end local v6    # "sizeOfPalette":I
    .restart local v5    # "sizeOfPalette":I
    :pswitch_9
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-nez v6, :cond_12

    const-wide/16 v14, 0x10

    goto :goto_7

    :cond_12
    move-wide v14, v12

    :goto_7
    long-to-int v6, v14

    const/4 v11, 0x4

    mul-int/2addr v6, v11

    .line 428
    .end local v5    # "sizeOfPalette":I
    .restart local v6    # "sizeOfPalette":I
    move v5, v6

    goto :goto_9

    .line 424
    .end local v6    # "sizeOfPalette":I
    .restart local v5    # "sizeOfPalette":I
    :pswitch_a
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-nez v6, :cond_13

    const-wide/16 v14, 0x2

    goto :goto_8

    :cond_13
    move-wide v14, v12

    :goto_8
    long-to-int v6, v14

    const/4 v11, 0x4

    mul-int/2addr v6, v11

    .line 425
    .end local v5    # "sizeOfPalette":I
    .restart local v6    # "sizeOfPalette":I
    move v5, v6

    .line 436
    .end local v6    # "sizeOfPalette":I
    .restart local v5    # "sizeOfPalette":I
    :goto_9
    int-to-long v14, v5

    add-long/2addr v14, v2

    iput-wide v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 438
    :cond_14
    invoke-static {v5, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 440
    long-to-int v6, v8

    const-string v11, "color_space"

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_a

    .line 464
    :pswitch_b
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v14, "LCS_CMYK"

    invoke-interface {v6, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 460
    :pswitch_c
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v7, "LCS_sRGB"

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    goto/16 :goto_a

    .line 443
    :pswitch_d
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v14, "LCS_CALIBRATED_RGB"

    invoke-interface {v6, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v14, "redX"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v14, "redY"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v14, "redZ"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "greenX"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "greenY"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "greenZ"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "blueX"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "blueY"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "blueZ"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v14, "gamma_red"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v14, "gamma_green"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v14, "gamma_blue"

    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 468
    .end local v1    # "redX":I
    .end local v4    # "numberOfEntries":I
    .end local v5    # "sizeOfPalette":I
    .end local v8    # "csType":J
    .end local v10    # "redY":I
    .end local v20    # "greenX":I
    .end local v21    # "greenY":I
    .end local v23    # "greenZ":I
    .end local v24    # "blueX":I
    .end local v25    # "blueY":I
    .end local v26    # "blueZ":I
    .end local v27    # "gammaRed":J
    .end local v29    # "gammaGreen":J
    .end local v31    # "gammaBlue":J
    .end local v33    # "redZ":I
    :goto_a
    goto/16 :goto_12

    .line 469
    .end local v22    # "planes":I
    .local v4, "planes":I
    :cond_15
    move/from16 v22, v4

    .end local v4    # "planes":I
    .restart local v22    # "planes":I
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v4, "BMP v. 5.x"

    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    .end local v22    # "planes":I
    .restart local v4    # "planes":I
    :cond_16
    move/from16 v22, v4

    .line 257
    .end local v4    # "planes":I
    .restart local v22    # "planes":I
    :goto_b
    iget-wide v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v4, v4

    packed-switch v4, :pswitch_data_4

    .line 362
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v4, "Invalid BMP file compression."

    invoke-direct {v1, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :pswitch_e
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_17

    .line 332
    const/16 v1, 0x8

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_c

    .line 333
    :cond_17
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x20

    if-ne v1, v4, :cond_18

    .line 334
    const/16 v1, 0x9

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 338
    :cond_18
    :goto_c
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 339
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 340
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 343
    cmp-long v1, v2, v20

    if-nez v1, :cond_19

    .line 344
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    .line 345
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_19
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-wide/16 v4, 0x0

    cmp-long v1, v12, v4

    if-eqz v1, :cond_1a

    .line 354
    long-to-int v1, v12

    const/4 v4, 0x4

    mul-int/2addr v1, v4

    .line 355
    .local v1, "sizeOfPalette":I
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 358
    .end local v1    # "sizeOfPalette":I
    :cond_1a
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v4, "BMP v. 3.x NT"

    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    goto/16 :goto_12

    .line 263
    :pswitch_f
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 264
    const/4 v4, 0x4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto/16 :goto_d

    .line 265
    :cond_1b
    const/4 v4, 0x4

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v5, v4, :cond_1c

    .line 266
    const/4 v1, 0x5

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto/16 :goto_d

    .line 267
    :cond_1c
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1d

    .line 268
    const/4 v1, 0x6

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto/16 :goto_d

    .line 269
    :cond_1d
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v1, 0x18

    if-ne v4, v1, :cond_1e

    .line 270
    const/4 v1, 0x7

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_d

    .line 271
    :cond_1e
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_1f

    .line 272
    const/16 v1, 0x8

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 273
    const/16 v1, 0x7c00

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 274
    const/16 v1, 0x3e0

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 275
    const/16 v1, 0x1f

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 276
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 279
    :cond_1f
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x20

    if-ne v1, v4, :cond_20

    .line 280
    const/16 v1, 0x9

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 281
    const/high16 v1, 0xff0000

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 282
    const v1, 0xff00

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 283
    const/16 v1, 0xff

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 284
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_20
    :goto_d
    cmp-long v1, v2, v7

    if-ltz v1, :cond_21

    .line 291
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 292
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 293
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 294
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_21
    cmp-long v1, v2, v20

    if-nez v1, :cond_22

    .line 300
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    .line 301
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_22
    iget-wide v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v6, 0xe

    sub-long/2addr v4, v6

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 306
    .local v1, "numberOfEntries":I
    mul-int/lit8 v4, v1, 0x4

    .line 307
    .local v4, "sizeOfPalette":I
    iget-wide v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_26

    .line 308
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    packed-switch v5, :pswitch_data_5

    .line 319
    const/4 v4, 0x0

    goto :goto_11

    .line 316
    :pswitch_10
    const-wide/16 v5, 0x0

    cmp-long v5, v12, v5

    if-nez v5, :cond_23

    const-wide/16 v5, 0x100

    goto :goto_e

    :cond_23
    move-wide v5, v12

    :goto_e
    long-to-int v5, v5

    const/4 v6, 0x4

    mul-int/2addr v5, v6

    .line 317
    .end local v4    # "sizeOfPalette":I
    .restart local v5    # "sizeOfPalette":I
    move v4, v5

    goto :goto_11

    .line 313
    .end local v5    # "sizeOfPalette":I
    .restart local v4    # "sizeOfPalette":I
    :pswitch_11
    const-wide/16 v5, 0x0

    cmp-long v5, v12, v5

    if-nez v5, :cond_24

    const-wide/16 v5, 0x10

    goto :goto_f

    :cond_24
    move-wide v5, v12

    :goto_f
    long-to-int v5, v5

    const/4 v6, 0x4

    mul-int/2addr v5, v6

    .line 314
    .end local v4    # "sizeOfPalette":I
    .restart local v5    # "sizeOfPalette":I
    move v4, v5

    goto :goto_11

    .line 310
    .end local v5    # "sizeOfPalette":I
    .restart local v4    # "sizeOfPalette":I
    :pswitch_12
    const-wide/16 v5, 0x0

    cmp-long v5, v12, v5

    if-nez v5, :cond_25

    const-wide/16 v5, 0x2

    goto :goto_10

    :cond_25
    move-wide v5, v12

    :goto_10
    long-to-int v5, v5

    const/4 v6, 0x4

    mul-int/2addr v5, v6

    .line 311
    .end local v4    # "sizeOfPalette":I
    .restart local v5    # "sizeOfPalette":I
    move v4, v5

    .line 322
    .end local v5    # "sizeOfPalette":I
    .restart local v4    # "sizeOfPalette":I
    :goto_11
    int-to-long v5, v4

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 324
    :cond_26
    invoke-static {v4, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 326
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v6, "BMP v. 3.x"

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    nop

    .line 474
    .end local v1    # "numberOfEntries":I
    .end local v4    # "sizeOfPalette":I
    .end local v12    # "colorsUsed":J
    .end local v18    # "colorsImportant":J
    :goto_12
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-lez v1, :cond_27

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    goto :goto_13

    .line 479
    :cond_27
    const/4 v1, 0x1

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    .line 480
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    .line 483
    :goto_13
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-eq v4, v1, :cond_2c

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2c

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_28

    goto :goto_15

    .line 527
    :cond_28
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_29

    .line 528
    const/4 v1, 0x3

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    goto/16 :goto_19

    .line 529
    :cond_29
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x20

    if-ne v1, v4, :cond_2b

    .line 530
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    if-nez v1, :cond_2a

    const/4 v7, 0x3

    goto :goto_14

    :cond_2a
    const/4 v7, 0x4

    :goto_14
    iput v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    goto/16 :goto_19

    .line 535
    :cond_2b
    const/4 v1, 0x3

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    goto/16 :goto_19

    .line 484
    :cond_2c
    :goto_15
    const/4 v1, 0x1

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    .line 488
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    if-eqz v4, :cond_2f

    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    if-eq v4, v1, :cond_2f

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2d

    goto :goto_17

    .line 509
    :cond_2d
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v1, v1

    const/4 v4, 0x4

    div-int/2addr v1, v4

    .line 511
    .local v1, "sizep":I
    const/16 v4, 0x100

    if-le v1, v4, :cond_2e

    .line 512
    const/16 v1, 0x100

    .line 516
    :cond_2e
    new-array v4, v1, [B

    .line 517
    .local v4, "r":[B
    new-array v5, v1, [B

    .line 518
    .local v5, "g":[B
    new-array v6, v1, [B

    .line 519
    .local v6, "b":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_16
    if-ge v7, v1, :cond_31

    .line 520
    mul-int/lit8 v8, v7, 0x4

    .line 521
    .local v8, "off":I
    iget-object v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    aget-byte v9, v9, v8

    aput-byte v9, v6, v7

    .line 522
    iget-object v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 523
    iget-object v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v10, v8, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v4, v7

    .line 519
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 492
    .end local v1    # "sizep":I
    .end local v4    # "r":[B
    .end local v5    # "g":[B
    .end local v6    # "b":[B
    .end local v7    # "i":I
    .end local v8    # "off":I
    :cond_2f
    :goto_17
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v1, v1

    const/4 v4, 0x3

    div-int/2addr v1, v4

    .line 494
    .restart local v1    # "sizep":I
    const/16 v4, 0x100

    if-le v1, v4, :cond_30

    .line 495
    const/16 v1, 0x100

    .line 499
    :cond_30
    new-array v4, v1, [B

    .line 500
    .restart local v4    # "r":[B
    new-array v5, v1, [B

    .line 501
    .restart local v5    # "g":[B
    new-array v6, v1, [B

    .line 502
    .restart local v6    # "b":[B
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_18
    if-ge v7, v1, :cond_31

    .line 503
    mul-int/lit8 v8, v7, 0x3

    .line 504
    .restart local v8    # "off":I
    iget-object v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    aget-byte v9, v9, v8

    aput-byte v9, v6, v7

    .line 505
    iget-object v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v5, v7

    .line 506
    iget-object v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v10, v8, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v4, v7

    .line 502
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 527
    .end local v1    # "sizep":I
    .end local v4    # "r":[B
    .end local v5    # "g":[B
    .end local v6    # "b":[B
    .end local v7    # "i":I
    .end local v8    # "off":I
    :cond_31
    nop

    .line 537
    :goto_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 10
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 121
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 129
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 130
    .local v0, "bmpStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    .line 131
    new-instance v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;

    move-object v2, p0

    check-cast v2, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;-><init>(Lcom/itextpdf/io/image/BmpImageData;)V

    .line 132
    .local v1, "bmp":Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->process(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;Ljava/io/InputStream;)V

    .line 133
    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->getImage(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/ImageData;->setWidth(F)V

    .line 135
    iget v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/ImageData;->setHeight(F)V

    .line 136
    iget-wide v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->xPelsPerMeter:J

    long-to-double v2, v2

    const-wide v4, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v8, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->yPelsPerMeter:J

    long-to-double v8, v8

    mul-double/2addr v8, v4

    add-double/2addr v8, v6

    double-to-int v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    nop

    .line 141
    iget-object v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget-object v3, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->additional:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    .line 142
    return-void

    .line 138
    .end local v0    # "bmpStream":Ljava/io/InputStream;
    .end local v1    # "bmp":Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Bmp image exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BMP image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 20
    .param p0, "is32"    # Z
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    move-object/from16 v0, p1

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->findMask(I)I

    move-result v1

    .line 909
    .local v1, "red_mask":I
    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->findShift(I)I

    move-result v2

    .line 910
    .local v2, "red_shift":I
    add-int/lit8 v3, v1, 0x1

    .line 911
    .local v3, "red_factor":I
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->findMask(I)I

    move-result v4

    .line 912
    .local v4, "green_mask":I
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->findShift(I)I

    move-result v5

    .line 913
    .local v5, "green_shift":I
    add-int/lit8 v6, v4, 0x1

    .line 914
    .local v6, "green_factor":I
    iget v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v7}, Lcom/itextpdf/io/image/BmpImageHelper;->findMask(I)I

    move-result v7

    .line 915
    .local v7, "blue_mask":I
    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v8}, Lcom/itextpdf/io/image/BmpImageHelper;->findShift(I)I

    move-result v8

    .line 916
    .local v8, "blue_shift":I
    add-int/lit8 v9, v7, 0x1

    .line 917
    .local v9, "blue_factor":I
    iget v10, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3

    new-array v10, v10, [B

    .line 919
    .local v10, "bdata":[B
    const/4 v11, 0x0

    .line 921
    .local v11, "padding":I
    if-nez p0, :cond_0

    .line 923
    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v12, v12, 0x10

    .line 924
    .local v12, "bitsPerScanline":I
    rem-int/lit8 v13, v12, 0x20

    if-eqz v13, :cond_0

    .line 925
    div-int/lit8 v13, v12, 0x20

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x20

    sub-int/2addr v13, v12

    .line 926
    .end local v11    # "padding":I
    .local v13, "padding":I
    int-to-double v14, v13

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    move v15, v11

    .end local v13    # "padding":I
    .restart local v11    # "padding":I
    goto :goto_0

    .line 930
    .end local v12    # "bitsPerScanline":I
    :cond_0
    move v15, v11

    .end local v11    # "padding":I
    .local v15, "padding":I
    :goto_0
    iget-wide v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    long-to-int v11, v11

    .line 931
    .local v11, "imSize":I
    if-nez v11, :cond_1

    .line 932
    iget-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    move/from16 v16, v15

    .end local v15    # "padding":I
    .local v16, "padding":I
    iget-wide v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    sub-long/2addr v12, v14

    long-to-int v11, v12

    move/from16 v17, v11

    goto :goto_1

    .line 931
    .end local v16    # "padding":I
    .restart local v15    # "padding":I
    :cond_1
    move/from16 v16, v15

    .end local v15    # "padding":I
    .restart local v16    # "padding":I
    move/from16 v17, v11

    .line 935
    .end local v11    # "imSize":I
    .local v17, "imSize":I
    :goto_1
    const/4 v11, 0x0

    .line 937
    .local v11, "l":I
    iget-boolean v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v12, :cond_6

    .line 938
    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    add-int/lit8 v12, v12, -0x1

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_5

    .line 939
    iget v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v13, v13, 0x3

    mul-int/2addr v13, v12

    .line 940
    .end local v11    # "l":I
    .local v13, "l":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    iget v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v11, v14, :cond_3

    .line 941
    if-eqz p0, :cond_2

    .line 942
    iget-object v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v14}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v14, v14

    .local v14, "v":I
    goto :goto_4

    .line 944
    .end local v14    # "v":I
    :cond_2
    iget-object v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v14}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v14

    .line 945
    .restart local v14    # "v":I
    :goto_4
    add-int/lit8 v15, v13, 0x1

    .end local v13    # "l":I
    .local v15, "l":I
    ushr-int v18, v14, v2

    move/from16 v19, v2

    .end local v2    # "red_shift":I
    .local v19, "red_shift":I
    and-int v2, v18, v1

    mul-int/lit16 v2, v2, 0x100

    div-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v10, v13

    .line 946
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "l":I
    .local v2, "l":I
    ushr-int v13, v14, v5

    and-int/2addr v13, v4

    mul-int/lit16 v13, v13, 0x100

    div-int/2addr v13, v6

    int-to-byte v13, v13

    aput-byte v13, v10, v15

    .line 947
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "l":I
    .restart local v13    # "l":I
    ushr-int v15, v14, v8

    and-int/2addr v15, v7

    mul-int/lit16 v15, v15, 0x100

    div-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v10, v2

    .line 940
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    goto :goto_3

    .end local v14    # "v":I
    .end local v19    # "red_shift":I
    .local v2, "red_shift":I
    :cond_3
    move/from16 v19, v2

    .line 949
    .end local v2    # "red_shift":I
    .end local v11    # "j":I
    .restart local v19    # "red_shift":I
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_5
    move/from16 v15, v16

    .end local v16    # "padding":I
    .local v15, "padding":I
    if-ge v2, v15, :cond_4

    .line 950
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    .line 949
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v15

    goto :goto_5

    .line 938
    .end local v2    # "m":I
    :cond_4
    add-int/lit8 v12, v12, -0x1

    move v11, v13

    move/from16 v16, v15

    move/from16 v2, v19

    goto :goto_2

    .end local v13    # "l":I
    .end local v15    # "padding":I
    .end local v19    # "red_shift":I
    .local v2, "red_shift":I
    .local v11, "l":I
    .restart local v16    # "padding":I
    :cond_5
    move/from16 v19, v2

    move/from16 v15, v16

    .end local v2    # "red_shift":I
    .end local v16    # "padding":I
    .restart local v15    # "padding":I
    .restart local v19    # "red_shift":I
    move v2, v11

    .end local v12    # "i":I
    goto :goto_a

    .line 954
    .end local v15    # "padding":I
    .end local v19    # "red_shift":I
    .restart local v2    # "red_shift":I
    .restart local v16    # "padding":I
    :cond_6
    move/from16 v19, v2

    move/from16 v15, v16

    .end local v2    # "red_shift":I
    .end local v16    # "padding":I
    .restart local v15    # "padding":I
    .restart local v19    # "red_shift":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v2, v12, :cond_a

    .line 955
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    iget v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v12, v13, :cond_8

    .line 956
    if-eqz p0, :cond_7

    .line 957
    iget-object v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v13}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v13

    long-to-int v13, v13

    .local v13, "v":I
    goto :goto_8

    .line 959
    .end local v13    # "v":I
    :cond_7
    iget-object v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v13}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v13

    .line 960
    .restart local v13    # "v":I
    :goto_8
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "l":I
    .local v14, "l":I
    ushr-int v16, v13, v19

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    and-int v2, v16, v1

    mul-int/lit16 v2, v2, 0x100

    div-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v10, v11

    .line 961
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "l":I
    .local v2, "l":I
    ushr-int v11, v13, v5

    and-int/2addr v11, v4

    mul-int/lit16 v11, v11, 0x100

    div-int/2addr v11, v6

    int-to-byte v11, v11

    aput-byte v11, v10, v14

    .line 962
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "l":I
    .restart local v11    # "l":I
    ushr-int v14, v13, v8

    and-int/2addr v14, v7

    mul-int/lit16 v14, v14, 0x100

    div-int/2addr v14, v9

    int-to-byte v14, v14

    aput-byte v14, v10, v2

    .line 955
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    goto :goto_7

    .end local v13    # "v":I
    .end local v18    # "i":I
    .local v2, "i":I
    :cond_8
    move/from16 v18, v2

    .line 964
    .end local v2    # "i":I
    .end local v12    # "j":I
    .restart local v18    # "i":I
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_9
    if-ge v2, v15, :cond_9

    .line 965
    iget-object v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 954
    .end local v2    # "m":I
    :cond_9
    add-int/lit8 v2, v18, 0x1

    .end local v18    # "i":I
    .local v2, "i":I
    goto :goto_6

    :cond_a
    move/from16 v18, v2

    .end local v2    # "i":I
    .restart local v18    # "i":I
    move v2, v11

    .line 969
    .end local v11    # "l":I
    .end local v18    # "i":I
    .local v2, "l":I
    :goto_a
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v14, 0x3

    const/16 v16, 0x8

    move/from16 v18, v15

    .end local v15    # "padding":I
    .local v18, "padding":I
    move/from16 v15, v16

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 970
    return-void
.end method

.method private static read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 10
    .param p0, "paletteEntries"    # I
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 699
    .local v0, "bdata":[B
    const/4 v1, 0x0

    .line 700
    .local v1, "padding":I
    iget v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 702
    .local v2, "bytesPerScanline":I
    rem-int/lit8 v3, v2, 0x4

    .line 703
    .local v3, "remainder":I
    if-eqz v3, :cond_0

    .line 704
    rsub-int/lit8 v1, v3, 0x4

    .line 707
    :cond_0
    add-int v4, v2, v1

    iget v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v4, v5

    .line 710
    .local v4, "imSize":I
    new-array v5, v4, [B

    .line 711
    .local v5, "values":[B
    const/4 v6, 0x0

    .line 712
    .local v6, "bytesRead":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 713
    iget-object v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v8, v4, v6

    invoke-virtual {v7, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    .line 717
    :cond_1
    iget-boolean v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v7, :cond_3

    .line 722
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_2

    .line 723
    add-int/lit8 v8, v7, 0x1

    add-int v9, v2, v1

    mul-int/2addr v8, v9

    sub-int v8, v4, v8

    mul-int v9, v7, v2

    invoke-static {v5, v8, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_2
    goto :goto_3

    .line 730
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_4

    .line 731
    add-int v8, v2, v1

    mul-int/2addr v8, v7

    mul-int v9, v7, v2

    invoke-static {v5, v8, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 730
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 738
    .end local v7    # "i":I
    :cond_4
    :goto_3
    const/4 v7, 0x1

    invoke-static {v0, v7, p0, p1}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 739
    return-void
.end method

.method private static read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 12
    .param p0, "bdata"    # [B
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    const/4 v0, 0x0

    .line 838
    .local v0, "padding":I
    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v1, v1, 0x18

    .line 839
    .local v1, "bitsPerScanline":I
    rem-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    .line 840
    div-int/lit8 v2, v1, 0x20

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x20

    sub-int/2addr v2, v1

    .line 841
    .end local v0    # "padding":I
    .local v2, "padding":I
    int-to-double v3, v2

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 845
    .end local v2    # "padding":I
    .restart local v0    # "padding":I
    :cond_0
    iget v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x4

    iget v3, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v2, v3

    .line 847
    .local v2, "imSize":I
    new-array v3, v2, [B

    .line 848
    .local v3, "values":[B
    const/4 v4, 0x0

    .line 849
    .local v4, "bytesRead":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 850
    iget-object v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v6, v2, v4

    invoke-virtual {v5, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 852
    .local v5, "r":I
    if-gez v5, :cond_1

    .line 853
    goto :goto_1

    .line 854
    :cond_1
    add-int/2addr v4, v5

    .line 855
    .end local v5    # "r":I
    goto :goto_0

    .line 857
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 859
    .local v5, "l":I
    iget-boolean v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v6, :cond_5

    .line 860
    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, -0x1

    .line 862
    .local v6, "max":I
    neg-int v7, v0

    .line 863
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget v9, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v8, v9, :cond_4

    .line 864
    add-int/lit8 v9, v8, 0x1

    iget v10, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    sub-int v9, v6, v9

    add-int/lit8 v9, v9, 0x1

    .line 865
    .end local v5    # "l":I
    .local v9, "l":I
    add-int/2addr v7, v0

    .line 866
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    iget v10, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v5, v10, :cond_3

    .line 867
    add-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v7, 0x1

    .end local v7    # "count":I
    .local v11, "count":I
    aget-byte v7, v3, v7

    aput-byte v7, p0, v10

    .line 868
    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "count":I
    .local v10, "count":I
    aget-byte v11, v3, v11

    aput-byte v11, p0, v7

    .line 869
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "count":I
    .restart local v7    # "count":I
    aget-byte v10, v3, v10

    aput-byte v10, p0, v9

    .line 870
    add-int/lit8 v9, v9, 0x3

    .line 866
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 863
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    .line 873
    .end local v6    # "max":I
    .end local v8    # "i":I
    .end local v9    # "l":I
    .local v5, "l":I
    :cond_4
    goto :goto_6

    .line 874
    .end local v7    # "count":I
    :cond_5
    neg-int v6, v0

    .line 875
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_7

    .line 876
    add-int/2addr v6, v0

    .line 877
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    iget v9, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v8, v9, :cond_6

    .line 878
    add-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "count":I
    .restart local v10    # "count":I
    aget-byte v6, v3, v6

    aput-byte v6, p0, v9

    .line 879
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "count":I
    .local v9, "count":I
    aget-byte v10, v3, v10

    aput-byte v10, p0, v6

    .line 880
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "count":I
    .restart local v6    # "count":I
    aget-byte v9, v3, v9

    aput-byte v9, p0, v5

    .line 881
    add-int/lit8 v5, v5, 0x3

    .line 877
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 875
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    move v7, v6

    .line 885
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_6
    return-void
.end method

.method private static read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 10
    .param p0, "paletteEntries"    # I
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 746
    .local v0, "bdata":[B
    const/4 v1, 0x0

    .line 748
    .local v1, "padding":I
    iget v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 749
    .local v2, "bytesPerScanline":I
    rem-int/lit8 v3, v2, 0x4

    .line 750
    .local v3, "remainder":I
    if-eqz v3, :cond_0

    .line 751
    rsub-int/lit8 v1, v3, 0x4

    .line 754
    :cond_0
    add-int v4, v2, v1

    iget v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v4, v5

    .line 757
    .local v4, "imSize":I
    new-array v5, v4, [B

    .line 758
    .local v5, "values":[B
    const/4 v6, 0x0

    .line 759
    .local v6, "bytesRead":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 760
    iget-object v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v8, v4, v6

    invoke-virtual {v7, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    .line 764
    :cond_1
    iget-boolean v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v7, :cond_3

    .line 768
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_2

    .line 769
    add-int/lit8 v8, v7, 0x1

    add-int v9, v2, v1

    mul-int/2addr v8, v9

    sub-int v8, v4, v8

    mul-int v9, v7, v2

    invoke-static {v5, v8, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_2
    goto :goto_3

    .line 776
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_4

    .line 777
    add-int v8, v2, v1

    mul-int/2addr v8, v7

    mul-int v9, v7, v2

    invoke-static {v5, v8, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 784
    .end local v7    # "i":I
    :cond_4
    :goto_3
    const/4 v7, 0x4

    invoke-static {v0, v7, p0, p1}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 785
    return-void
.end method

.method private static read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 11
    .param p0, "paletteEntries"    # I
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 791
    .local v0, "bdata":[B
    const/4 v1, 0x0

    .line 794
    .local v1, "padding":I
    iget v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    .line 795
    .local v2, "bitsPerScanline":I
    rem-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_0

    .line 796
    div-int/lit8 v4, v2, 0x20

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x20

    sub-int/2addr v4, v2

    .line 797
    .end local v1    # "padding":I
    .local v4, "padding":I
    int-to-double v5, v4

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 800
    .end local v4    # "padding":I
    .restart local v1    # "padding":I
    :cond_0
    iget v4, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v4, v1

    iget v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v4, v5

    .line 803
    .local v4, "imSize":I
    new-array v5, v4, [B

    .line 804
    .local v5, "values":[B
    const/4 v6, 0x0

    .line 805
    .local v6, "bytesRead":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 806
    iget-object v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v8, v4, v6

    invoke-virtual {v7, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    .line 809
    :cond_1
    iget-boolean v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v7, :cond_3

    .line 813
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_2

    .line 814
    add-int/lit8 v8, v7, 0x1

    iget v9, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v9, v1

    mul-int/2addr v8, v9

    sub-int v8, v4, v8

    iget v9, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v9, v7

    iget v10, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    invoke-static {v5, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_2
    goto :goto_3

    .line 821
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v7, v8, :cond_4

    .line 822
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v8, v1

    mul-int/2addr v8, v7

    iget v9, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v9, v7

    iget v10, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    invoke-static {v5, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 829
    .end local v7    # "i":I
    :cond_4
    :goto_3
    invoke-static {v0, v3, p0, p1}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 830
    return-void
.end method

.method private static readDWord(Ljava/io/InputStream;)J
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedInt(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1171
    .local v0, "b1":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1172
    .local v1, "b2":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    .line 1173
    .local v2, "b3":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v3

    .line 1174
    .local v3, "b4":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4
.end method

.method private static readLong(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private static readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 4
    .param p0, "sizeOfPalette"    # I
    .param p1, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    if-nez p0, :cond_0

    .line 681
    return-void

    .line 684
    :cond_0
    new-array v0, p0, [B

    iput-object v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "bytesRead":I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 687
    iget-object v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    iget-object v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    sub-int v3, p0, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 688
    .local v1, "r":I
    if-ltz v1, :cond_1

    .line 691
    add-int/2addr v0, v1

    .line 692
    .end local v1    # "r":I
    goto :goto_0

    .line 689
    .restart local v1    # "r":I
    :cond_1
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Incomplete palette."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 693
    .end local v1    # "r":I
    :cond_2
    iget-object v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget-object v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    const-string v3, "palette"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method

.method private static readRLE4(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 14
    .param p0, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    long-to-int v0, v0

    .line 1015
    .local v0, "imSize":I
    if-nez v0, :cond_0

    .line 1016
    iget-wide v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    iget-wide v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 1020
    :cond_0
    new-array v1, v0, [B

    .line 1021
    .local v1, "values":[B
    const/4 v2, 0x0

    .line 1022
    .local v2, "bytesRead":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1023
    iget-object v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v4, v0, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1028
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v1, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->decodeRLE(Z[BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B

    move-result-object v3

    .line 1031
    .local v3, "val":[B
    iget-boolean v4, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v4, :cond_3

    .line 1033
    move-object v4, v3

    .line 1034
    .local v4, "inverted":[B
    iget v5, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v6, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v5, v6

    new-array v3, v5, [B

    .line 1035
    const/4 v5, 0x0

    .line 1037
    .local v5, "l":I
    iget v6, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_3

    .line 1038
    iget v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v7, v6

    .line 1039
    .local v7, "index":I
    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v8, v5

    .line 1040
    .local v8, "lineEnd":I
    :goto_2
    if-eq v5, v8, :cond_2

    .line 1041
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "l":I
    .local v9, "l":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index":I
    .local v10, "index":I
    aget-byte v7, v4, v7

    aput-byte v7, v3, v5

    move v5, v9

    move v7, v10

    goto :goto_2

    .line 1037
    .end local v9    # "l":I
    .end local v10    # "index":I
    .restart local v5    # "l":I
    .restart local v7    # "index":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1045
    .end local v4    # "inverted":[B
    .end local v5    # "l":I
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "lineEnd":I
    :cond_3
    iget v4, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 1046
    .local v4, "stride":I
    iget v5, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v5, v4

    new-array v5, v5, [B

    .line 1047
    .local v5, "bdata":[B
    const/4 v6, 0x0

    .line 1048
    .local v6, "ptr":I
    const/4 v7, 0x0

    .line 1049
    .local v7, "sh":I
    const/4 v8, 0x0

    .local v8, "h":I
    :goto_3
    iget v9, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v10, 0x4

    if-ge v8, v9, :cond_6

    .line 1050
    const/4 v9, 0x0

    .local v9, "w":I
    :goto_4
    iget v11, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v9, v11, :cond_5

    .line 1051
    and-int/lit8 v11, v9, 0x1

    if-nez v11, :cond_4

    .line 1052
    div-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v7

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "ptr":I
    .local v12, "ptr":I
    aget-byte v6, v3, v6

    shl-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    move v6, v12

    goto :goto_5

    .line 1054
    .end local v12    # "ptr":I
    .restart local v6    # "ptr":I
    :cond_4
    div-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v7

    aget-byte v12, v5, v11

    add-int/lit8 v13, v6, 0x1

    .end local v6    # "ptr":I
    .local v13, "ptr":I
    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    or-int/2addr v6, v12

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    move v6, v13

    .line 1050
    .end local v13    # "ptr":I
    .restart local v6    # "ptr":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1056
    .end local v9    # "w":I
    :cond_5
    add-int/2addr v7, v4

    .line 1049
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1058
    .end local v8    # "h":I
    :cond_6
    invoke-static {v5, v10, v10, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 1059
    return-void
.end method

.method private static readRLE8(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 9
    .param p0, "bmp"    # Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    long-to-int v0, v0

    .line 976
    .local v0, "imSize":I
    if-nez v0, :cond_0

    .line 977
    iget-wide v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    iget-wide v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 981
    :cond_0
    new-array v1, v0, [B

    .line 982
    .local v1, "values":[B
    const/4 v2, 0x0

    .line 983
    .local v2, "bytesRead":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 984
    iget-object v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v4, v0, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 989
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3, v1, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->decodeRLE(Z[BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B

    move-result-object v3

    .line 992
    .local v3, "val":[B
    iget v4, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v5, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v4, v5

    .line 994
    .end local v0    # "imSize":I
    .local v4, "imSize":I
    iget-boolean v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v0, :cond_3

    .line 999
    array-length v0, v3

    new-array v0, v0, [B

    .line 1000
    .local v0, "temp":[B
    iget v5, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    .line 1001
    .local v5, "bytesPerScanline":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v6, v7, :cond_2

    .line 1002
    add-int/lit8 v7, v6, 0x1

    mul-int/2addr v7, v5

    sub-int v7, v4, v7

    mul-int v8, v6, v5

    invoke-static {v3, v7, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1001
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1007
    .end local v6    # "i":I
    :cond_2
    move-object v3, v0

    .line 1009
    .end local v0    # "temp":[B
    .end local v5    # "bytesPerScanline":I
    :cond_3
    const/16 v0, 0x8

    const/4 v5, 0x4

    invoke-static {v3, v0, v5, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 1010
    return-void
.end method

.method private static readShort(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1149
    .local v0, "b1":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1150
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2
.end method

.method private static readUnsignedByte(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static readUnsignedInt(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1161
    .local v0, "b1":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1162
    .local v1, "b2":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    .line 1163
    .local v2, "b3":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v3

    .line 1164
    .local v3, "b4":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    int-to-long v4, v4

    .line 1165
    .local v4, "l":J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    return-wide v6
.end method

.method private static readUnsignedShort(Ljava/io/InputStream;)I
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1142
    .local v0, "b1":I
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1143
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    const v3, 0xffff

    and-int/2addr v2, v3

    return v2
.end method

.method private static readWord(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method
