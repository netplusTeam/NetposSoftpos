.class public Lcom/itextpdf/barcodes/BarcodeInter25;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeInter25.java"


# static fields
.field private static final BARS:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    const/16 v0, 0xa

    new-array v0, v0, [[B

    const/4 v1, 0x5

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeInter25;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeInter25;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 111
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 112
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    .line 113
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    .line 114
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 115
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    .line 116
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    .line 117
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->textAlignment:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    .line 120
    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->checksumText:Z

    .line 121
    return-void
.end method

.method public static getBarsInter25(Ljava/lang/String;)[B
    .locals 14
    .param p0, "text"    # Ljava/lang/String;

    .line 164
    invoke-static {p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    new-array v0, v0, [B

    .line 169
    .local v0, "bars":[B
    const/4 v3, 0x0

    .line 170
    .local v3, "pb":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pb":I
    .local v4, "pb":I
    const/4 v5, 0x0

    aput-byte v5, v0, v3

    .line 171
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v5, v0, v4

    .line 172
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pb":I
    .restart local v4    # "pb":I
    aput-byte v5, v0, v3

    .line 173
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v5, v0, v4

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 175
    .local v4, "len":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 176
    mul-int/lit8 v7, v6, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    .line 177
    .local v7, "c1":I
    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 178
    .local v8, "c2":I
    sget-object v9, Lcom/itextpdf/barcodes/BarcodeInter25;->BARS:[[B

    aget-object v10, v9, v7

    .line 179
    .local v10, "b1":[B
    aget-object v9, v9, v8

    .line 180
    .local v9, "b2":[B
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_0

    .line 181
    add-int/lit8 v12, v3, 0x1

    .end local v3    # "pb":I
    .local v12, "pb":I
    aget-byte v13, v10, v11

    aput-byte v13, v0, v3

    .line 182
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v13, v9, v11

    aput-byte v13, v0, v12

    .line 180
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 175
    .end local v7    # "c1":I
    .end local v8    # "c2":I
    .end local v9    # "b2":[B
    .end local v10    # "b1":[B
    .end local v11    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    .end local v6    # "k":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .local v2, "pb":I
    aput-byte v1, v0, v3

    .line 186
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pb":I
    .local v1, "pb":I
    aput-byte v5, v0, v2

    .line 187
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v5, v0, v1

    .line 188
    return-object v0

    .line 166
    .end local v0    # "bars":[B
    .end local v2    # "pb":I
    .end local v4    # "len":I
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The text length must be even."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChecksum(Ljava/lang/String;)C
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x3

    .line 148
    .local v0, "mul":I
    const/4 v1, 0x0

    .line 149
    .local v1, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 151
    .local v3, "n":I
    mul-int v4, v0, v3

    add-int/2addr v1, v4

    .line 152
    xor-int/lit8 v0, v0, 0x2

    .line 149
    .end local v3    # "n":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 154
    .end local v2    # "k":I
    :cond_0
    rem-int/lit8 v2, v1, 0xa

    rsub-int/lit8 v2, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    return v2
.end method

.method public static keepNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 133
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "k":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 19
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 345
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 346
    .local v1, "f":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 347
    .local v2, "g":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 348
    .local v3, "canvas":Ljava/awt/Canvas;
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "bCode":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v5, :cond_2

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 353
    .local v5, "len":I
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    float-to-int v6, v6

    .line 354
    .local v6, "nn":I
    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x3

    mul-int/2addr v7, v5

    add-int/lit8 v8, v6, 0x6

    add-int/2addr v7, v8

    .line 355
    .local v7, "fullWidth":I
    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeInter25;->getBarsInter25(Ljava/lang/String;)[B

    move-result-object v8

    .line 356
    .local v8, "bars":[B
    const/4 v9, 0x1

    .line 357
    .local v9, "print":Z
    const/4 v10, 0x0

    .line 358
    .local v10, "ptr":I
    iget v11, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    float-to-int v15, v11

    .line 359
    .local v15, "height":I
    mul-int v11, v7, v15

    new-array v14, v11, [I

    .line 360
    .local v14, "pix":[I
    const/4 v11, 0x0

    move/from16 v16, v9

    move/from16 v17, v10

    .end local v9    # "print":Z
    .end local v10    # "ptr":I
    .local v11, "k":I
    .local v16, "print":Z
    .local v17, "ptr":I
    :goto_2
    array-length v9, v8

    const/4 v10, 0x0

    if-ge v11, v9, :cond_7

    .line 361
    aget-byte v9, v8, v11

    const/4 v12, 0x1

    if-nez v9, :cond_3

    move v9, v12

    goto :goto_3

    :cond_3
    move v9, v6

    .line 362
    .local v9, "w":I
    :goto_3
    move v13, v2

    .line 363
    .local v13, "c":I
    if-eqz v16, :cond_4

    .line 364
    move v13, v1

    .line 366
    :cond_4
    if-nez v16, :cond_5

    move v10, v12

    :cond_5
    move/from16 v16, v10

    .line 367
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v9, :cond_6

    .line 368
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "ptr":I
    .local v12, "ptr":I
    aput v13, v14, v17

    .line 367
    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v12

    goto :goto_4

    .line 360
    .end local v9    # "w":I
    .end local v10    # "j":I
    .end local v12    # "ptr":I
    .end local v13    # "c":I
    .restart local v17    # "ptr":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 371
    .end local v11    # "k":I
    :cond_7
    move v9, v7

    .local v9, "k":I
    :goto_5
    array-length v11, v14

    if-ge v9, v11, :cond_8

    .line 372
    invoke-static {v14, v10, v14, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    add-int/2addr v9, v7

    goto :goto_5

    .line 374
    .end local v9    # "k":I
    :cond_8
    new-instance v13, Ljava/awt/image/MemoryImageSource;

    const/16 v18, 0x0

    move-object v9, v13

    move v10, v7

    move v11, v15

    move-object v12, v14

    move-object v0, v13

    move/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "pix":[I
    .local v18, "pix":[I
    move v14, v7

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v0}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v0

    return-object v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "fontX":F
    const/4 v1, 0x0

    .line 201
    .local v1, "fontY":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_3

    .line 202
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 203
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getDescender()F

    move-result v3

    sub-float/2addr v2, v3

    move v1, v2

    .end local v1    # "fontY":F
    .local v2, "fontY":F
    goto :goto_0

    .line 205
    .end local v2    # "fontY":F
    .restart local v1    # "fontY":F
    :cond_0
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    neg-float v2, v2

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    add-float/2addr v2, v3

    move v1, v2

    .line 207
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    .line 208
    .local v2, "fullCode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->checksumText:Z

    if-eqz v3, :cond_1

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    .line 213
    .end local v2    # "fullCode":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2    # "fullCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    .local v3, "len":I
    iget-boolean v4, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v4, :cond_4

    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 218
    :cond_4
    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    iget v6, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v7, v5

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    mul-float/2addr v4, v6

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    add-float/2addr v6, v5

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 219
    .local v4, "fullWidth":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 220
    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    add-float/2addr v5, v1

    .line 221
    .local v5, "fullHeight":F
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v6, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v6
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 27
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    .line 266
    .local v1, "fullCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 267
    .local v2, "fontX":F
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_2

    .line 268
    iget-boolean v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->checksumText:Z

    if-eqz v3, :cond_0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_0
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    move-object v1, v4

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    move-object v12, v1

    move v13, v2

    goto :goto_1

    .line 267
    :cond_2
    move-object v12, v1

    move v13, v2

    .line 272
    .end local v1    # "fullCode":Ljava/lang/String;
    .end local v2    # "fontX":F
    .local v12, "fullCode":Ljava/lang/String;
    .local v13, "fontX":F
    :goto_1
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "bCode":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v2, :cond_3

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    .line 273
    :cond_3
    move-object v14, v1

    .line 275
    .end local v1    # "bCode":Ljava/lang/String;
    .local v14, "bCode":Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 276
    .local v15, "len":I
    int-to-float v1, v15

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v3, v2

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/high16 v2, 0x40c00000    # 6.0f

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    add-float/2addr v3, v2

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v3, v2

    add-float v16, v1, v3

    .line 277
    .local v16, "fullWidth":F
    const/4 v1, 0x0

    .line 278
    .local v1, "barStartX":F
    const/4 v2, 0x0

    .line 279
    .local v2, "textStartX":F
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->textAlignment:I

    packed-switch v3, :pswitch_data_0

    .line 290
    cmpl-float v3, v13, v16

    if-lez v3, :cond_5

    .line 291
    sub-float v3, v13, v16

    div-float v1, v3, v4

    move v8, v2

    goto :goto_3

    .line 283
    :pswitch_0
    cmpl-float v3, v13, v16

    if-lez v3, :cond_4

    .line 284
    sub-float v1, v13, v16

    move v8, v2

    goto :goto_3

    .line 286
    :cond_4
    sub-float v2, v16, v13

    .line 288
    move v8, v2

    goto :goto_3

    .line 281
    :pswitch_1
    move v8, v2

    goto :goto_3

    .line 293
    :cond_5
    sub-float v3, v16, v13

    div-float v2, v3, v4

    move v8, v2

    .line 297
    .end local v2    # "textStartX":F
    .local v8, "textStartX":F
    :goto_3
    const/4 v2, 0x0

    .line 298
    .local v2, "barStartY":F
    const/4 v3, 0x0

    .line 299
    .local v3, "textStartY":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v4, :cond_7

    .line 300
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    .line 301
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    sub-float v3, v4, v5

    move v9, v2

    move v6, v3

    goto :goto_4

    .line 303
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getDescender()F

    move-result v4

    neg-float v3, v4

    .line 304
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    add-float v2, v3, v4

    move v9, v2

    move v6, v3

    goto :goto_4

    .line 299
    :cond_7
    move v9, v2

    move v6, v3

    .line 307
    .end local v2    # "barStartY":F
    .end local v3    # "textStartY":F
    .local v6, "textStartY":F
    .local v9, "barStartY":F
    :goto_4
    invoke-static {v14}, Lcom/itextpdf/barcodes/BarcodeInter25;->getBarsInter25(Ljava/lang/String;)[B

    move-result-object v7

    .line 308
    .local v7, "bars":[B
    const/4 v2, 0x1

    .line 309
    .local v2, "print":Z
    if-eqz p2, :cond_8

    .line 310
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 311
    :cond_8
    const/4 v3, 0x0

    move v4, v1

    move/from16 v17, v2

    move v5, v3

    .end local v1    # "barStartX":F
    .end local v2    # "print":Z
    .local v4, "barStartX":F
    .local v5, "k":I
    .local v17, "print":Z
    :goto_5
    array-length v1, v7

    if-ge v5, v1, :cond_c

    .line 312
    aget-byte v1, v7, v5

    if-nez v1, :cond_9

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    goto :goto_6

    :cond_9
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    mul-float/2addr v1, v2

    :goto_6
    move/from16 v18, v1

    .line 313
    .local v18, "w":F
    if-eqz v17, :cond_a

    .line 314
    float-to-double v2, v4

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .local v19, "barStartX":F
    .local v20, "k":I
    float-to-double v4, v9

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->inkSpreading:F

    sub-float v1, v18, v1

    move/from16 v21, v6

    move-object/from16 v22, v7

    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .local v21, "textStartY":F
    .local v22, "bars":[B
    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    move/from16 v23, v8

    move/from16 v24, v9

    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v23, "textStartX":F
    .local v24, "barStartY":F
    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v26, v20

    move/from16 v20, v19

    move/from16 v19, v26

    .local v19, "k":I
    .local v20, "barStartX":F
    move-object/from16 v26, v22

    move/from16 v22, v13

    move/from16 v13, v21

    move-object/from16 v21, v26

    .local v13, "textStartY":F
    .local v21, "bars":[B
    .local v22, "fontX":F
    move-object/from16 v25, v14

    move/from16 v14, v23

    move/from16 v23, v24

    .end local v24    # "barStartY":F
    .local v14, "textStartX":F
    .local v23, "barStartY":F
    .local v25, "bCode":Ljava/lang/String;
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_7

    .line 313
    .end local v19    # "k":I
    .end local v20    # "barStartX":F
    .end local v21    # "bars":[B
    .end local v22    # "fontX":F
    .end local v23    # "barStartY":F
    .end local v25    # "bCode":Ljava/lang/String;
    .restart local v4    # "barStartX":F
    .restart local v5    # "k":I
    .restart local v6    # "textStartY":F
    .restart local v7    # "bars":[B
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .local v13, "fontX":F
    .local v14, "bCode":Ljava/lang/String;
    :cond_a
    move/from16 v20, v4

    move/from16 v19, v5

    move-object/from16 v21, v7

    move/from16 v23, v9

    move/from16 v22, v13

    move-object/from16 v25, v14

    move v13, v6

    move v14, v8

    .line 316
    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v13, "textStartY":F
    .local v14, "textStartX":F
    .restart local v19    # "k":I
    .restart local v20    # "barStartX":F
    .restart local v21    # "bars":[B
    .restart local v22    # "fontX":F
    .restart local v23    # "barStartY":F
    .restart local v25    # "bCode":Ljava/lang/String;
    :goto_7
    if-nez v17, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    move/from16 v17, v1

    .line 317
    add-float v4, v20, v18

    .line 311
    .end local v18    # "w":F
    .end local v20    # "barStartX":F
    .restart local v4    # "barStartX":F
    add-int/lit8 v5, v19, 0x1

    move v6, v13

    move v8, v14

    move-object/from16 v7, v21

    move/from16 v13, v22

    move/from16 v9, v23

    move-object/from16 v14, v25

    .end local v19    # "k":I
    .restart local v5    # "k":I
    goto :goto_5

    .end local v21    # "bars":[B
    .end local v22    # "fontX":F
    .end local v23    # "barStartY":F
    .end local v25    # "bCode":Ljava/lang/String;
    .restart local v6    # "textStartY":F
    .restart local v7    # "bars":[B
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .local v13, "fontX":F
    .local v14, "bCode":Ljava/lang/String;
    :cond_c
    move/from16 v20, v4

    move/from16 v19, v5

    move-object/from16 v21, v7

    move/from16 v23, v9

    move/from16 v22, v13

    move-object/from16 v25, v14

    move v13, v6

    move v14, v8

    .line 319
    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v13, "textStartY":F
    .local v14, "textStartX":F
    .restart local v20    # "barStartX":F
    .restart local v21    # "bars":[B
    .restart local v22    # "fontX":F
    .restart local v23    # "barStartY":F
    .restart local v25    # "bCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 320
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_e

    .line 321
    if-eqz v11, :cond_d

    .line 322
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 324
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 325
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 326
    invoke-virtual {v10, v14, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 327
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 330
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
