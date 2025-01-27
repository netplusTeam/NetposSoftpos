.class final Lcom/itextpdf/barcodes/qrcode/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static applyMaskPenaltyRule1(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 62
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;Z)I
    .locals 10
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "penalty":I
    const/4 v1, 0x0

    .line 235
    .local v1, "numSameBitCells":I
    const/4 v2, -0x1

    .line 244
    .local v2, "prevBit":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    .line 245
    .local v3, "iLimit":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v4

    .line 246
    .local v4, "jLimit":I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v5

    .line 247
    .local v5, "array":[[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_7

    .line 248
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v4, :cond_6

    .line 249
    if-eqz p1, :cond_2

    aget-object v8, v5, v6

    aget-byte v8, v8, v7

    goto :goto_4

    :cond_2
    aget-object v8, v5, v7

    aget-byte v8, v8, v6

    .line 250
    .local v8, "bit":I
    :goto_4
    if-ne v8, v2, :cond_4

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 254
    const/4 v9, 0x5

    if-ne v1, v9, :cond_3

    .line 255
    add-int/lit8 v0, v0, 0x3

    goto :goto_5

    .line 256
    :cond_3
    if-le v1, v9, :cond_5

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 264
    :cond_4
    const/4 v1, 0x1

    .line 265
    move v2, v8

    .line 248
    .end local v8    # "bit":I
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 270
    .end local v7    # "j":I
    :cond_6
    const/4 v1, 0x0

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 272
    .end local v6    # "i":I
    :cond_7
    return v0
.end method

.method public static applyMaskPenaltyRule2(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 9
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "penalty":I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 76
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    .line 77
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    .line 78
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_2

    .line 79
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_1

    .line 80
    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    .line 81
    .local v6, "value":I
    aget-object v7, v1, v4

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    aget-object v7, v1, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_0

    .line 82
    add-int/lit8 v0, v0, 0x3

    .line 79
    .end local v6    # "value":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 78
    .end local v5    # "x":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    .end local v4    # "y":I
    :cond_2
    return v0
.end method

.method public static applyMaskPenaltyRule3(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 9
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "penalty":I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 99
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    .line 100
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    .line 101
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, v3, :cond_7

    .line 102
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 104
    add-int/lit8 v6, v5, 0x6

    const/4 v7, 0x1

    if-ge v6, v2, :cond_2

    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x1

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x2

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x3

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x4

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x5

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x6

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v5, 0xa

    if-ge v6, v2, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x7

    aget-byte v6, v6, v8

    if-nez v6, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x8

    aget-byte v6, v6, v8

    if-nez v6, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x9

    aget-byte v6, v6, v8

    if-nez v6, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0xa

    aget-byte v6, v6, v8

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v6, v5, -0x4

    if-ltz v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x1

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x2

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x3

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x4

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x28

    .line 124
    :cond_2
    add-int/lit8 v6, v4, 0x6

    if-ge v6, v3, :cond_5

    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, 0x2

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x3

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x4

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x5

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, 0x6

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0xa

    if-ge v6, v3, :cond_3

    add-int/lit8 v6, v4, 0x7

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0x8

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0x9

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0xa

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v6, v4, -0x4

    if-ltz v6, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, -0x2

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, -0x3

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, -0x4

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    .line 142
    :cond_4
    add-int/lit8 v0, v0, 0x28

    .line 102
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 101
    .end local v5    # "x":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 146
    .end local v4    # "y":I
    :cond_7
    return v0
.end method

.method public static applyMaskPenaltyRule4(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 11
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "numDarkCells":I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 167
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    .line 168
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    .line 169
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 170
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 171
    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    .end local v5    # "x":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v4    # "y":I
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    .line 177
    .local v4, "numTotalCells":I
    int-to-double v5, v0

    int-to-double v7, v4

    div-double/2addr v5, v7

    .line 178
    .local v5, "darkRatio":D
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    sub-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    mul-int/lit8 v7, v7, 0xa

    return v7
.end method

.method public static getDataMaskBit(III)Z
    .locals 4
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 192
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_0
    mul-int v1, p2, p1

    .line 222
    .local v1, "temp":I
    rem-int/lit8 v2, v1, 0x3

    add-int v3, p2, p1

    and-int/2addr v3, v0

    add-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 223
    .local v2, "intermediate":I
    goto :goto_0

    .line 217
    .end local v1    # "temp":I
    .end local v2    # "intermediate":I
    :pswitch_1
    mul-int v1, p2, p1

    .line 218
    .restart local v1    # "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 219
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 213
    .end local v1    # "temp":I
    .end local v2    # "intermediate":I
    :pswitch_2
    mul-int v1, p2, p1

    .line 214
    .restart local v1    # "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    .line 215
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 210
    .end local v1    # "temp":I
    .end local v2    # "intermediate":I
    :pswitch_3
    ushr-int/lit8 v1, p2, 0x1

    div-int/lit8 v2, p1, 0x3

    add-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x1

    .line 211
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 207
    .end local v2    # "intermediate":I
    :pswitch_4
    add-int v1, p2, p1

    rem-int/lit8 v2, v1, 0x3

    .line 208
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 204
    .end local v2    # "intermediate":I
    :pswitch_5
    rem-int/lit8 v2, p1, 0x3

    .line 205
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 201
    .end local v2    # "intermediate":I
    :pswitch_6
    and-int/lit8 v2, p2, 0x1

    .line 202
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 198
    .end local v2    # "intermediate":I
    :pswitch_7
    add-int v1, p2, p1

    and-int/lit8 v2, v1, 0x1

    .line 199
    .restart local v2    # "intermediate":I
    nop

    .line 227
    :goto_0
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 193
    .end local v2    # "intermediate":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
