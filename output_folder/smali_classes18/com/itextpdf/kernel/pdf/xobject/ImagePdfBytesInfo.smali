.class Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;
.super Ljava/lang/Object;
.source "ImagePdfBytesInfo.java"


# instance fields
.field private bpc:I

.field private colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private decode:Lcom/itextpdf/kernel/pdf/PdfArray;

.field private height:I

.field private icc:[B

.field private palette:[B

.field private pngBitDepth:I

.field private pngColorType:I

.field private stride:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 2
    .param p1, "imageXObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 70
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    .line 71
    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    .line 74
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    .line 77
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decode:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 80
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->findColorspace(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    .line 81
    return-void
.end method

.method private findColorspace(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 9
    .param p1, "csObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "allowIndexed"    # Z

    .line 172
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_b

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    if-ne v3, v0, :cond_0

    goto/16 :goto_2

    .line 176
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v3, :cond_2

    .line 177
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    if-eq v0, v2, :cond_1

    if-ne v0, v4, :cond_c

    .line 178
    :cond_1
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    mul-int/2addr v1, v0

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 179
    iput v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto/16 :goto_3

    .line 181
    :cond_2
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v3, :cond_c

    .line 182
    move-object v3, p1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 183
    .local v3, "ca":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 184
    .local v7, "tyca":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->CalGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 185
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 186
    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto/16 :goto_3

    .line 187
    :cond_3
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->CalRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 188
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_c

    .line 189
    :cond_4
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    mul-int/2addr v1, v0

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 190
    iput v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto/16 :goto_3

    .line 192
    :cond_5
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 193
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 194
    .local v4, "pr":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 195
    .local v8, "n":I
    if-ne v8, v0, :cond_6

    .line 196
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 197
    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 198
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    goto :goto_1

    .line 199
    :cond_6
    if-ne v8, v6, :cond_a

    .line 200
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 201
    iput v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 202
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    goto :goto_1

    .line 204
    .end local v4    # "pr":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v8    # "n":I
    :cond_7
    if-eqz p2, :cond_a

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 205
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->findColorspace(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    .line 206
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    if-ne v0, v5, :cond_c

    .line 207
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 208
    .local v0, "id2":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v1, :cond_8

    .line 209
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    goto :goto_0

    .line 210
    :cond_8
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_9

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    .line 213
    :cond_9
    :goto_0
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 214
    iput v6, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto :goto_3

    .line 204
    .end local v0    # "id2":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_a
    :goto_1
    goto :goto_3

    .line 174
    .end local v3    # "ca":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "tyca":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_b
    :goto_2
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 175
    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 218
    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method public decodeTiffAndPngBytes([B)[B
    .locals 11
    .param p1, "imageBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v0, "ms":Ljava/io/ByteArrayOutputStream;
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_6

    .line 90
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_5

    .line 93
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    instance-of v4, v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const-string v5, "The color space {0} is not supported."

    const/4 v6, 0x4

    if-eqz v4, :cond_2

    .line 94
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 95
    .local v1, "ca":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 96
    .local v4, "tyca":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 99
    .local v5, "pr":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 100
    .local v7, "n":I
    if-ne v7, v6, :cond_0

    .line 103
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    .end local v1    # "ca":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "tyca":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "pr":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v7    # "n":I
    goto :goto_0

    .line 101
    .restart local v1    # "ca":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v4    # "tyca":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v5    # "pr":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v7    # "n":I
    :cond_0
    new-instance v6, Lcom/itextpdf/io/IOException;

    const-string v8, "N value {1} is not supported."

    invoke-direct {v6, v8}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    invoke-virtual {v6, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 97
    .end local v5    # "pr":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v7    # "n":I
    :cond_1
    new-instance v6, Lcom/itextpdf/io/IOException;

    invoke-direct {v6, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v6, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 104
    .end local v1    # "ca":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "tyca":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    nop

    .line 107
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    mul-int/2addr v1, v6

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 108
    new-instance v1, Lcom/itextpdf/io/codec/TiffWriter;

    invoke-direct {v1}, Lcom/itextpdf/io/codec/TiffWriter;-><init>()V

    .line 109
    .local v1, "wr":Lcom/itextpdf/io/codec/TiffWriter;
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x115

    invoke-direct {v2, v3, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 110
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x102

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(I[I)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 111
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x106

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 112
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x100

    iget v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 113
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x101

    iget v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 114
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x103

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 115
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x13d

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 116
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x116

    iget v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 117
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;

    const/16 v3, 0x11a

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;-><init>(I[I)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 118
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;

    const/16 v3, 0x11b

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;-><init>(I[I)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 119
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x128

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 120
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;

    const/16 v3, 0x131

    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 121
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .local v5, "comp":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x2

    iget v8, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    const/4 v9, 0x4

    iget v10, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/itextpdf/io/codec/TiffWriter;->compressLZW(Ljava/io/OutputStream;I[BIII)V

    .line 123
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 124
    .local v2, "buf":[B
    new-instance v3, Lcom/itextpdf/io/codec/TiffWriter$FieldImage;

    invoke-direct {v3, v2}, Lcom/itextpdf/io/codec/TiffWriter$FieldImage;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 125
    new-instance v3, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v4, 0x117

    array-length v6, v2

    invoke-direct {v3, v4, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 126
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    if-eqz v3, :cond_3

    .line 127
    new-instance v3, Lcom/itextpdf/io/codec/TiffWriter$FieldUndefined;

    const v4, 0x8773

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    invoke-direct {v3, v4, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldUndefined;-><init>(I[B)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 129
    :cond_3
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TiffWriter;->writeFile(Ljava/io/OutputStream;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 132
    return-object p1

    .line 105
    .end local v1    # "wr":Lcom/itextpdf/io/codec/TiffWriter;
    .end local v2    # "buf":[B
    .end local v5    # "comp":Ljava/io/ByteArrayOutputStream;
    :cond_4
    new-instance v1, Lcom/itextpdf/io/IOException;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 91
    :cond_5
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v4, "The color depth {0} is not supported."

    invoke-direct {v1, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 134
    :cond_6
    new-instance v1, Lcom/itextpdf/io/codec/PngWriter;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/PngWriter;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v1, "png":Lcom/itextpdf/io/codec/PngWriter;
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decode:Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v4, :cond_7

    .line 136
    iget v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    if-ne v5, v3, :cond_7

    .line 138
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decode:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    .line 139
    array-length v2, p1

    .line 140
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 141
    aget-byte v4, p1, v3

    xor-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .end local v2    # "len":I
    .end local v3    # "t":I
    :cond_7
    iget v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    iget v4, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    iget v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/io/codec/PngWriter;->writeHeader(IIII)V

    .line 151
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    if-eqz v2, :cond_8

    .line 152
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/PngWriter;->writeIccProfile([B)V

    .line 154
    :cond_8
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    if-eqz v2, :cond_9

    .line 155
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/PngWriter;->writePalette([B)V

    .line 157
    :cond_9
    iget v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/io/codec/PngWriter;->writeData([BI)V

    .line 158
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/PngWriter;->writeEnd()V

    .line 159
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 160
    return-object p1

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x12c
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x12c
        0x1
    .end array-data
.end method

.method public getPngColorType()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    return v0
.end method
