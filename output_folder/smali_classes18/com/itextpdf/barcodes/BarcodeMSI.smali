.class public Lcom/itextpdf/barcodes/BarcodeMSI;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeMSI.java"


# static fields
.field private static final BARS:[[B

.field private static final BARS_END:[B

.field private static final BARS_FOR_START:I = 0x3

.field private static final BARS_FOR_STOP:I = 0x4

.field private static final BARS_PER_CHARACTER:I = 0xc

.field private static final BARS_START:[B

.field private static final CHARS:Ljava/lang/String; = "0123456789"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_START:[B

    .line 72
    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_END:[B

    .line 77
    const/16 v2, 0xa

    new-array v2, v2, [[B

    const/16 v3, 0xc

    new-array v4, v3, [B

    fill-array-data v4, :array_2

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [B

    fill-array-data v4, :array_3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [B

    fill-array-data v4, :array_4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v3, [B

    fill-array-data v4, :array_5

    aput-object v4, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_6

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_7

    const/4 v1, 0x5

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_8

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_9

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_a

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_b

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 133
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeMSI;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 143
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 144
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    .line 145
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->n:F

    .line 146
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 147
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    .line 148
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    .line 149
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    .line 151
    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->checksumText:Z

    .line 152
    return-void
.end method

.method public static getBarsMSI(Ljava/lang/String;)[B
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .line 340
    if-eqz p0, :cond_2

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    new-array v0, v0, [B

    .line 344
    .local v0, "bars":[B
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_START:[B

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 346
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 347
    .local v5, "ch":C
    const-string v6, "0123456789"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 348
    .local v6, "idx":I
    if-ltz v6, :cond_0

    .line 351
    sget-object v7, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS:[[B

    aget-object v7, v7, v6

    mul-int/lit8 v8, v2, 0xc

    add-int/2addr v8, v4

    invoke-static {v7, v3, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    .end local v5    # "ch":C
    .end local v6    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .restart local v5    # "ch":C
    .restart local v6    # "idx":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is illegal in MSI bar codes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .end local v2    # "x":I
    .end local v5    # "ch":C
    .end local v6    # "idx":I
    :cond_1
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_END:[B

    array-length v2, v0

    const/4 v4, 0x4

    sub-int/2addr v2, v4

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return-object v0

    .line 341
    .end local v0    # "bars":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid code required to generate MSI barcode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChecksum(Ljava/lang/String;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .line 364
    if-eqz p0, :cond_5

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 368
    .local v0, "digits":[I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ge v1, v2, :cond_1

    .line 369
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput v2, v0, v1

    .line 370
    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v2, v0, v1

    if-gt v2, v3, :cond_0

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is illegal in MSI bar codes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v1    # "x":I
    :cond_1
    const/4 v1, 0x0

    .line 375
    .local v1, "sum":I
    array-length v2, v0

    .line 376
    .local v2, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 377
    sub-int v5, v2, v4

    add-int/lit8 v5, v5, -0x1

    aget v5, v0, v5

    .line 378
    .local v5, "digit":I
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_2

    .line 379
    mul-int/lit8 v5, v5, 0x2

    .line 381
    :cond_2
    if-le v5, v3, :cond_3

    add-int/lit8 v6, v5, -0x9

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    add-int/2addr v1, v6

    .line 376
    .end local v5    # "digit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    .end local v4    # "i":I
    :cond_4
    mul-int/lit8 v3, v1, 0x9

    rem-int/lit8 v3, v3, 0xa

    return v3

    .line 365
    .end local v0    # "digits":[I
    .end local v1    # "sum":I
    .end local v2    # "length":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid code required to generate checksum for MSI barcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 16
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 310
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 311
    .local v1, "foregroundColor":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 312
    .local v2, "backgroundColor":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 313
    .local v3, "canvas":Ljava/awt/Canvas;
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 314
    .local v4, "bCode":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    if-eqz v5, :cond_2

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/barcodes/BarcodeMSI;->getChecksum(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    :cond_2
    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeMSI;->getBarsMSI(Ljava/lang/String;)[B

    move-result-object v5

    .line 319
    .local v5, "bars":[B
    array-length v12, v5

    .line 320
    .local v12, "fullWidth":I
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    float-to-int v13, v6

    .line 321
    .local v13, "fullHeight":I
    mul-int v6, v12, v13

    new-array v14, v6, [I

    .line 323
    .local v14, "pix":[I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_5

    .line 324
    aget-byte v7, v5, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v2

    .line 325
    .local v7, "color":I
    :goto_3
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_4
    if-ge v8, v13, :cond_4

    .line 326
    mul-int v9, v8, v12

    add-int/2addr v9, v6

    .line 327
    .local v9, "currentPixel":I
    aput v7, v14, v9

    .line 325
    .end local v9    # "currentPixel":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 323
    .end local v7    # "color":I
    .end local v8    # "y":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 330
    .end local v6    # "x":I
    :cond_5
    new-instance v15, Ljava/awt/image/MemoryImageSource;

    const/4 v10, 0x0

    move-object v6, v15

    move v7, v12

    move v8, v13

    move-object v9, v14

    move v11, v12

    invoke-direct/range {v6 .. v11}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v15}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v6

    return-object v6
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "fontX":F
    const/4 v1, 0x0

    .line 164
    .local v1, "fontY":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 165
    .local v2, "fCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_2

    .line 166
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 167
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeMSI;->getDescender()F

    move-result v4

    sub-float/2addr v3, v4

    move v1, v3

    .end local v1    # "fontY":F
    .local v3, "fontY":F
    goto :goto_0

    .line 169
    .end local v3    # "fontY":F
    .restart local v1    # "fontY":F
    :cond_0
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    neg-float v3, v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    add-float/2addr v3, v4

    move v1, v3

    .line 171
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 172
    .local v3, "fullCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    iget v6, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    .line 175
    .end local v3    # "fullCode":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 176
    .local v3, "len":I
    iget-boolean v4, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    if-eqz v4, :cond_3

    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 180
    :cond_3
    mul-int/lit8 v4, v3, 0xc

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    mul-float/2addr v4, v5

    .line 181
    .local v4, "fullWidth":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 182
    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    add-float/2addr v5, v1

    .line 183
    .local v5, "fullHeight":F
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v6, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v6
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 25
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 229
    .local v1, "fullCode":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->checksumText:Z

    if-eqz v2, :cond_0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeMSI;->getChecksum(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_0
    const/4 v2, 0x0

    .line 233
    .local v2, "fontX":F
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 235
    .local v3, "var10001":Ljava/lang/String;
    :goto_0
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    move-object v1, v4

    .line 236
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    move-object v12, v1

    move v13, v2

    goto :goto_2

    .line 233
    .end local v3    # "var10001":Ljava/lang/String;
    :cond_3
    move-object v12, v1

    move v13, v2

    .line 239
    .end local v1    # "fullCode":Ljava/lang/String;
    .end local v2    # "fontX":F
    .local v12, "fullCode":Ljava/lang/String;
    .local v13, "fontX":F
    :goto_2
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 240
    .local v1, "bCode":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    if-eqz v2, :cond_4

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeMSI;->getChecksum(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_3

    .line 240
    :cond_4
    move-object v14, v1

    .line 244
    .end local v1    # "bCode":Ljava/lang/String;
    .local v14, "bCode":Ljava/lang/String;
    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 245
    .local v15, "idx":I
    mul-int/lit8 v1, v15, 0xc

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    mul-float v16, v1, v2

    .line 246
    .local v16, "fullWidth":F
    const/4 v1, 0x0

    .line 247
    .local v1, "barStartX":F
    const/4 v2, 0x0

    .line 248
    .local v2, "textStartX":F
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->textAlignment:I

    packed-switch v3, :pswitch_data_0

    .line 259
    cmpl-float v3, v13, v16

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v3, :cond_6

    .line 260
    sub-float v3, v13, v16

    div-float v1, v3, v4

    move v8, v2

    goto :goto_4

    .line 252
    :pswitch_0
    cmpl-float v3, v13, v16

    if-lez v3, :cond_5

    .line 253
    sub-float v1, v13, v16

    move v8, v2

    goto :goto_4

    .line 255
    :cond_5
    sub-float v2, v16, v13

    .line 257
    move v8, v2

    goto :goto_4

    .line 250
    :pswitch_1
    move v8, v2

    goto :goto_4

    .line 262
    :cond_6
    sub-float v3, v16, v13

    div-float v2, v3, v4

    move v8, v2

    .line 266
    .end local v2    # "textStartX":F
    .local v8, "textStartX":F
    :goto_4
    const/4 v2, 0x0

    .line 267
    .local v2, "barStartY":F
    const/4 v3, 0x0

    .line 268
    .local v3, "textStartY":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v4, :cond_8

    .line 269
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    .line 270
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    sub-float v3, v4, v5

    move v9, v2

    move v6, v3

    goto :goto_5

    .line 272
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeMSI;->getDescender()F

    move-result v4

    neg-float v3, v4

    .line 273
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    add-float v2, v3, v4

    move v9, v2

    move v6, v3

    goto :goto_5

    .line 268
    :cond_8
    move v9, v2

    move v6, v3

    .line 276
    .end local v2    # "barStartY":F
    .end local v3    # "textStartY":F
    .local v6, "textStartY":F
    .local v9, "barStartY":F
    :goto_5
    invoke-static {v14}, Lcom/itextpdf/barcodes/BarcodeMSI;->getBarsMSI(Ljava/lang/String;)[B

    move-result-object v7

    .line 277
    .local v7, "bars":[B
    if-eqz p2, :cond_9

    .line 278
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 280
    :cond_9
    const/4 v2, 0x0

    move v4, v1

    move v5, v2

    .end local v1    # "barStartX":F
    .local v4, "barStartX":F
    .local v5, "k":I
    :goto_6
    array-length v1, v7

    if-ge v5, v1, :cond_b

    .line 281
    aget-byte v1, v7, v5

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    mul-float v17, v1, v2

    .line 282
    .local v17, "w":F
    aget-byte v1, v7, v5

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 283
    float-to-double v2, v4

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .local v18, "barStartX":F
    .local v19, "k":I
    float-to-double v4, v9

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->inkSpreading:F

    sub-float v1, v17, v1

    move/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .local v20, "textStartY":F
    .local v21, "bars":[B
    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    move/from16 v22, v8

    move/from16 v23, v9

    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v22, "textStartX":F
    .local v23, "barStartY":F
    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v24, v19

    move/from16 v19, v18

    move/from16 v18, v24

    .local v18, "k":I
    .local v19, "barStartX":F
    move-object/from16 v24, v21

    move/from16 v21, v13

    move/from16 v13, v20

    move-object/from16 v20, v24

    .local v13, "textStartY":F
    .local v20, "bars":[B
    .local v21, "fontX":F
    move/from16 v24, v23

    move-object/from16 v23, v14

    move/from16 v14, v22

    move/from16 v22, v24

    .local v14, "textStartX":F
    .local v22, "barStartY":F
    .local v23, "bCode":Ljava/lang/String;
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_7

    .line 282
    .end local v18    # "k":I
    .end local v19    # "barStartX":F
    .end local v20    # "bars":[B
    .end local v21    # "fontX":F
    .end local v22    # "barStartY":F
    .end local v23    # "bCode":Ljava/lang/String;
    .restart local v4    # "barStartX":F
    .restart local v5    # "k":I
    .restart local v6    # "textStartY":F
    .restart local v7    # "bars":[B
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .local v13, "fontX":F
    .local v14, "bCode":Ljava/lang/String;
    :cond_a
    move/from16 v19, v4

    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v22, v9

    move/from16 v21, v13

    move-object/from16 v23, v14

    move v13, v6

    move v14, v8

    .line 284
    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v13, "textStartY":F
    .local v14, "textStartX":F
    .restart local v18    # "k":I
    .restart local v19    # "barStartX":F
    .restart local v20    # "bars":[B
    .restart local v21    # "fontX":F
    .restart local v22    # "barStartY":F
    .restart local v23    # "bCode":Ljava/lang/String;
    :goto_7
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    add-float v4, v19, v1

    .line 280
    .end local v17    # "w":F
    .end local v19    # "barStartX":F
    .restart local v4    # "barStartX":F
    add-int/lit8 v5, v18, 0x1

    move v6, v13

    move v8, v14

    move-object/from16 v7, v20

    move/from16 v13, v21

    move/from16 v9, v22

    move-object/from16 v14, v23

    .end local v18    # "k":I
    .restart local v5    # "k":I
    goto :goto_6

    .end local v20    # "bars":[B
    .end local v21    # "fontX":F
    .end local v22    # "barStartY":F
    .end local v23    # "bCode":Ljava/lang/String;
    .restart local v6    # "textStartY":F
    .restart local v7    # "bars":[B
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .local v13, "fontX":F
    .local v14, "bCode":Ljava/lang/String;
    :cond_b
    move/from16 v19, v4

    move/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v22, v9

    move/from16 v21, v13

    move-object/from16 v23, v14

    move v13, v6

    move v14, v8

    .line 286
    .end local v4    # "barStartX":F
    .end local v5    # "k":I
    .end local v6    # "textStartY":F
    .end local v7    # "bars":[B
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v13, "textStartY":F
    .local v14, "textStartX":F
    .restart local v19    # "barStartX":F
    .restart local v20    # "bars":[B
    .restart local v21    # "fontX":F
    .restart local v22    # "barStartY":F
    .restart local v23    # "bCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 287
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_d

    .line 288
    if-eqz v11, :cond_c

    .line 289
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 291
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 292
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 293
    invoke-virtual {v10, v14, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 294
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 297
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeMSI;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
