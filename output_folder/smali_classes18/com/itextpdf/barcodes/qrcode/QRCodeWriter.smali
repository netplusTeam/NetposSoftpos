.class public final Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/itextpdf/barcodes/qrcode/QRCode;II)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 22
    .param p0, "code"    # Lcom/itextpdf/barcodes/qrcode/QRCode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMatrix()Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object v0

    .line 113
    .local v0, "input":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    .line 114
    .local v1, "inputWidth":I
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    .line 115
    .local v2, "inputHeight":I
    add-int/lit8 v3, v1, 0x8

    .line 116
    .local v3, "qrWidth":I
    add-int/lit8 v4, v2, 0x8

    .line 117
    .local v4, "qrHeight":I
    move/from16 v5, p1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 118
    .local v6, "outputWidth":I
    move/from16 v7, p2

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 120
    .local v8, "outputHeight":I
    div-int v9, v6, v3

    div-int v10, v8, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 125
    .local v9, "multiple":I
    mul-int v10, v1, v9

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    .line 126
    .local v10, "leftPadding":I
    mul-int v11, v2, v9

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    .line 128
    .local v11, "topPadding":I
    new-instance v12, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-direct {v12, v6, v8}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;-><init>(II)V

    .line 129
    .local v12, "output":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    invoke-virtual {v12}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v13

    .line 133
    .local v13, "outputArray":[[B
    new-array v14, v6, [B

    .line 136
    .local v14, "row":[B
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_0
    move/from16 v16, v3

    .end local v3    # "qrWidth":I
    .local v16, "qrWidth":I
    const/4 v3, -0x1

    if-ge v15, v11, :cond_0

    .line 137
    move/from16 v17, v4

    .end local v4    # "qrHeight":I
    .local v17, "qrHeight":I
    aget-object v4, v13, v15

    invoke-static {v4, v3}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->setRowColor([BB)V

    .line 136
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_0

    .end local v17    # "qrHeight":I
    .restart local v4    # "qrHeight":I
    :cond_0
    move/from16 v17, v4

    .line 141
    .end local v4    # "qrHeight":I
    .end local v15    # "y":I
    .restart local v17    # "qrHeight":I
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v4

    .line 142
    .local v4, "inputArray":[[B
    const/4 v15, 0x0

    .restart local v15    # "y":I
    :goto_1
    if-ge v15, v2, :cond_7

    .line 144
    const/16 v18, 0x0

    move/from16 v3, v18

    .local v3, "x":I
    :goto_2
    if-ge v3, v10, :cond_1

    .line 145
    const/16 v18, -0x1

    aput-byte v18, v14, v3

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 149
    .end local v3    # "x":I
    :cond_1
    move v3, v10

    .line 150
    .local v3, "offset":I
    const/16 v18, 0x0

    move/from16 v21, v18

    move-object/from16 v18, v0

    move/from16 v0, v21

    .local v0, "x":I
    .local v18, "input":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    :goto_3
    if-ge v0, v1, :cond_4

    .line 151
    aget-object v19, v4, v15

    aget-byte v5, v19, v0

    move-object/from16 v19, v4

    .end local v4    # "inputArray":[[B
    .local v19, "inputArray":[[B
    const/4 v4, 0x1

    if-ne v5, v4, :cond_2

    const/16 v20, 0x0

    goto :goto_4

    :cond_2
    const/16 v20, -0x1

    :goto_4
    move/from16 v4, v20

    .line 152
    .local v4, "value":B
    const/4 v5, 0x0

    .local v5, "z":I
    :goto_5
    if-ge v5, v9, :cond_3

    .line 153
    add-int v20, v3, v5

    aput-byte v4, v14, v20

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 155
    .end local v5    # "z":I
    :cond_3
    add-int/2addr v3, v9

    .line 150
    .end local v4    # "value":B
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p1

    move-object/from16 v4, v19

    goto :goto_3

    .end local v19    # "inputArray":[[B
    .local v4, "inputArray":[[B
    :cond_4
    move-object/from16 v19, v4

    .line 159
    .end local v0    # "x":I
    .end local v4    # "inputArray":[[B
    .restart local v19    # "inputArray":[[B
    mul-int v0, v1, v9

    add-int/2addr v0, v10

    .line 160
    .end local v3    # "offset":I
    .local v0, "offset":I
    move v3, v0

    .local v3, "x":I
    :goto_6
    if-ge v3, v6, :cond_5

    .line 161
    const/4 v4, -0x1

    aput-byte v4, v14, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 165
    .end local v3    # "x":I
    :cond_5
    mul-int v3, v15, v9

    add-int/2addr v3, v11

    .line 166
    .end local v0    # "offset":I
    .local v3, "offset":I
    const/4 v0, 0x0

    .local v0, "z":I
    :goto_7
    if-ge v0, v9, :cond_6

    .line 167
    add-int v4, v3, v0

    aget-object v4, v13, v4

    const/4 v5, 0x0

    invoke-static {v14, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 142
    .end local v0    # "z":I
    .end local v3    # "offset":I
    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p1

    move-object/from16 v0, v18

    move-object/from16 v4, v19

    const/4 v3, -0x1

    goto :goto_1

    .end local v18    # "input":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .end local v19    # "inputArray":[[B
    .local v0, "input":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .restart local v4    # "inputArray":[[B
    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 172
    .end local v0    # "input":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .end local v4    # "inputArray":[[B
    .end local v15    # "y":I
    .restart local v18    # "input":Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .restart local v19    # "inputArray":[[B
    mul-int v0, v2, v9

    add-int/2addr v0, v11

    .line 173
    .local v0, "offset":I
    move v3, v0

    .local v3, "y":I
    :goto_8
    if-ge v3, v8, :cond_8

    .line 174
    aget-object v4, v13, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->setRowColor([BB)V

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 177
    .end local v3    # "y":I
    :cond_8
    return-object v12
.end method

.method private static setRowColor([BB)V
    .locals 2
    .param p0, "row"    # [B
    .param p1, "value"    # B

    .line 181
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 182
    aput-byte p1, p0, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "x":I
    :cond_0
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;II)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/itextpdf/barcodes/qrcode/ByteMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 84
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/barcodes/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 93
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 94
    .local v0, "errorCorrectionLevel":Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    if-eqz p4, :cond_0

    .line 95
    sget-object v1, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->ERROR_CORRECTION:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 98
    .local v1, "requestedECLevel":Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    if-eqz v1, :cond_0

    .line 99
    move-object v0, v1

    .line 103
    .end local v1    # "requestedECLevel":Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    :cond_0
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/QRCode;

    invoke-direct {v1}, Lcom/itextpdf/barcodes/qrcode/QRCode;-><init>()V

    .line 104
    .local v1, "code":Lcom/itextpdf/barcodes/qrcode/QRCode;
    invoke-static {p1, v0, p4, v1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/barcodes/qrcode/QRCode;)V

    .line 105
    invoke-static {v1, p2, p3}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->renderResult(Lcom/itextpdf/barcodes/qrcode/QRCode;II)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object v2

    return-object v2

    .line 89
    .end local v0    # "errorCorrectionLevel":Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .end local v1    # "code":Lcom/itextpdf/barcodes/qrcode/QRCode;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested dimensions are too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
