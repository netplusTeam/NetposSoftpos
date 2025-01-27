.class public Lcom/itextpdf/barcodes/BarcodeQRCode;
.super Lcom/itextpdf/barcodes/Barcode2D;
.source "BarcodeQRCode.java"


# instance fields
.field bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

.field code:Ljava/lang/String;

.field hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeQRCode;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/barcodes/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->regenerate()V

    .line 80
    return-void
.end method

.method private getBitMatrix()[B
    .locals 12

    .line 254
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    .line 255
    .local v0, "width":I
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    .line 256
    .local v1, "height":I
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 257
    .local v2, "stride":I
    mul-int v3, v2, v1

    new-array v3, v3, [B

    .line 258
    .local v3, "b":[B
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v4

    .line 259
    .local v4, "mt":[[B
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 260
    aget-object v6, v4, v5

    .line 261
    .local v6, "line":[B
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, v0, :cond_1

    .line 262
    aget-byte v8, v6, v7

    if-eqz v8, :cond_0

    .line 263
    mul-int v8, v2, v5

    div-int/lit8 v9, v7, 0x8

    add-int/2addr v8, v9

    .line 264
    .local v8, "offset":I
    aget-byte v9, v3, v8

    const/16 v10, 0x80

    rem-int/lit8 v11, v7, 0x8

    shr-int/2addr v10, v11

    int-to-byte v10, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 261
    .end local v8    # "offset":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 259
    .end local v6    # "line":[B
    .end local v7    # "x":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
    .end local v5    # "y":I
    :cond_2
    return-object v3
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 15
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 234
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 235
    .local v1, "f":I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 236
    .local v2, "g":I
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 238
    .local v3, "canvas":Ljava/awt/Canvas;
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v4

    .line 239
    .local v4, "width":I
    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v5}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v11

    .line 240
    .local v11, "height":I
    mul-int v5, v4, v11

    new-array v12, v5, [I

    .line 241
    .local v12, "pix":[I
    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v5}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v13

    .line 242
    .local v13, "mt":[[B
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-ge v5, v11, :cond_2

    .line 243
    aget-object v6, v13, v5

    .line 244
    .local v6, "line":[B
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 245
    mul-int v8, v5, v4

    add-int/2addr v8, v7

    aget-byte v9, v6, v7

    if-nez v9, :cond_0

    move v9, v1

    goto :goto_2

    :cond_0
    move v9, v2

    :goto_2
    aput v9, v12, v8

    .line 244
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 242
    .end local v6    # "line":[B
    .end local v7    # "x":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 249
    .end local v5    # "y":I
    :cond_2
    new-instance v14, Ljava/awt/image/MemoryImageSource;

    const/4 v9, 0x0

    move-object v5, v14

    move v6, v4

    move v7, v11

    move-object v8, v12

    move v10, v4

    invoke-direct/range {v5 .. v10}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v14}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v5

    .line 250
    .local v5, "img":Ljava/awt/Image;
    return-object v5
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3
    .param p1, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "moduleSize"    # F
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 219
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 220
    .local v0, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/barcodes/BarcodeQRCode;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 221
    .local v1, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 223
    return-object v0
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p1, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/barcodes/BarcodeQRCode;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 150
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getBarcodeSize(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4
    .param p1, "moduleSize"    # F

    .line 159
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getHints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "foreground"    # Lcom/itextpdf/kernel/colors/Color;

    .line 164
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 18
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "moduleSide"    # F

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    .line 179
    .local v2, "width":I
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    .line 180
    .local v3, "height":I
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v4

    .line 182
    .local v4, "mt":[[B
    if-eqz p2, :cond_0

    .line 183
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 186
    :cond_0
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 187
    aget-object v6, v4, v5

    .line 188
    .local v6, "line":[B
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 189
    aget-byte v8, v6, v7

    if-nez v8, :cond_1

    .line 190
    int-to-float v8, v7

    mul-float/2addr v8, v1

    float-to-double v10, v8

    sub-int v8, v3, v5

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-double v12, v8

    float-to-double v14, v1

    float-to-double v8, v1

    move-wide/from16 v16, v8

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 188
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 186
    .end local v6    # "line":[B
    .end local v7    # "x":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v5    # "y":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 196
    invoke-virtual {v0, v1}, Lcom/itextpdf/barcodes/BarcodeQRCode;->getBarcodeSize(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    return-object v5
.end method

.method public regenerate()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;-><init>()V

    .line 138
    .local v0, "qc":Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    :try_end_0
    .catch Lcom/itextpdf/barcodes/qrcode/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "qc":Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "ex":Lcom/itextpdf/barcodes/qrcode/WriterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/WriterException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v0    # "ex":Lcom/itextpdf/barcodes/qrcode/WriterException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->regenerate()V

    .line 110
    return-void
.end method

.method public setHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/barcodes/qrcode/EncodeHintType;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->regenerate()V

    .line 129
    return-void
.end method
