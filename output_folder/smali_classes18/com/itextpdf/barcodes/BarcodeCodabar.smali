.class public Lcom/itextpdf/barcodes/BarcodeCodabar;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeCodabar.java"


# static fields
.field private static final BARS:[[B

.field private static final CHARS:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field private static final START_STOP_IDX:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    const/16 v0, 0x14

    new-array v0, v0, [[B

    const/4 v1, 0x7

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

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_11
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeCodabar;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 147
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 148
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    .line 149
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    .line 150
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 151
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    .line 152
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    .line 153
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    .line 154
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->textAlignment:I

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    .line 156
    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->checksumText:Z

    .line 157
    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->startStopText:Z

    .line 158
    return-void
.end method

.method public static calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "code"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 191
    return-object p0

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 194
    .local v1, "sum":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 195
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const-string v4, "0123456789-$:/.+ABCD"

    if-ge v3, v2, :cond_1

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v3    # "k":I
    :cond_1
    add-int/lit8 v3, v1, 0xf

    div-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x10

    sub-int/2addr v3, v1

    .line 199
    .end local v1    # "sum":I
    .local v3, "sum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBarsCodabar(Ljava/lang/String;)[B
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, "len":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 172
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "0123456789-$:/.+ABCD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v4, 0x10

    if-lt v2, v4, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lt v2, v4, :cond_4

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    .line 176
    .local v2, "bars":[B
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 177
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 178
    .local v6, "idx":I
    if-lt v6, v4, :cond_1

    if-lez v5, :cond_1

    add-int/lit8 v7, v0, -0x1

    if-lt v5, v7, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "In Codabar, start/stop characters are only allowed at the extremes."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_1
    :goto_1
    if-ltz v6, :cond_2

    .line 184
    sget-object v7, Lcom/itextpdf/barcodes/BarcodeCodabar;->BARS:[[B

    aget-object v7, v7, v6

    mul-int/lit8 v8, v5, 0x8

    const/4 v9, 0x7

    invoke-static {v7, v1, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    .end local v6    # "idx":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    .restart local v6    # "idx":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal character in Codabar Barcode."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v5    # "k":I
    .end local v6    # "idx":I
    :cond_3
    return-object v2

    .line 173
    .end local v2    # "bars":[B
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Codabar must have one of \'ABCD\' as start/stop character."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Codabar must have at least start and stop character."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 18
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 367
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 368
    .local v1, "f":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 369
    .local v2, "g":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 371
    .local v3, "canvas":Ljava/awt/Canvas;
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    :goto_2
    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v4

    .line 372
    .local v4, "bars":[B
    const/4 v5, 0x0

    .line 373
    .local v5, "wide":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 374
    aget-byte v7, v4, v6

    add-int/2addr v5, v7

    .line 373
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 376
    .end local v6    # "k":I
    :cond_3
    array-length v6, v4

    sub-int/2addr v6, v5

    .line 377
    .local v6, "narrow":I
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    float-to-int v7, v7

    mul-int/2addr v7, v5

    add-int/2addr v7, v6

    .line 378
    .local v7, "fullWidth":I
    const/4 v8, 0x1

    .line 379
    .local v8, "print":Z
    const/4 v9, 0x0

    .line 380
    .local v9, "ptr":I
    iget v10, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    float-to-int v14, v10

    .line 381
    .local v14, "height":I
    mul-int v10, v7, v14

    new-array v15, v10, [I

    .line 382
    .local v15, "pix":[I
    const/4 v10, 0x0

    move/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "print":Z
    .end local v9    # "ptr":I
    .local v10, "k":I
    .local v16, "print":Z
    .local v17, "ptr":I
    :goto_4
    array-length v8, v4

    const/4 v9, 0x0

    if-ge v10, v8, :cond_8

    .line 383
    aget-byte v8, v4, v10

    const/4 v11, 0x1

    if-nez v8, :cond_4

    move v8, v11

    goto :goto_5

    :cond_4
    iget v8, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    float-to-int v8, v8

    .line 384
    .local v8, "w":I
    :goto_5
    move v12, v2

    .line 385
    .local v12, "c":I
    if-eqz v16, :cond_5

    .line 386
    move v12, v1

    .line 388
    :cond_5
    if-nez v16, :cond_6

    move v9, v11

    :cond_6
    move/from16 v16, v9

    .line 389
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    if-ge v9, v8, :cond_7

    .line 390
    add-int/lit8 v11, v17, 0x1

    .end local v17    # "ptr":I
    .local v11, "ptr":I
    aput v12, v15, v17

    .line 389
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v11

    goto :goto_6

    .line 382
    .end local v8    # "w":I
    .end local v9    # "j":I
    .end local v11    # "ptr":I
    .end local v12    # "c":I
    .restart local v17    # "ptr":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 393
    .end local v10    # "k":I
    :cond_8
    move v8, v7

    .local v8, "k":I
    :goto_7
    array-length v10, v15

    if-ge v8, v10, :cond_9

    .line 394
    invoke-static {v15, v9, v15, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    add-int/2addr v8, v7

    goto :goto_7

    .line 396
    .end local v8    # "k":I
    :cond_9
    new-instance v13, Ljava/awt/image/MemoryImageSource;

    const/4 v12, 0x0

    move-object v8, v13

    move v9, v7

    move v10, v14

    move-object v11, v15

    move-object v0, v13

    move v13, v7

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v0}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v0

    return-object v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 10

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "fontX":F
    const/4 v1, 0x0

    .line 211
    .local v1, "fontY":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    .line 212
    .local v2, "text":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->checksumText:Z

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    :cond_0
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->startStopText:Z

    if-nez v3, :cond_1

    .line 216
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_4

    .line 219
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 220
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getDescender()F

    move-result v4

    sub-float/2addr v3, v4

    move v1, v3

    .end local v1    # "fontY":F
    .local v3, "fontY":F
    goto :goto_0

    .line 222
    .end local v3    # "fontY":F
    .restart local v1    # "fontY":F
    :cond_2
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    neg-float v3, v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    add-float/2addr v3, v4

    move v1, v3

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    .line 226
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    .line 227
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v3, :cond_5

    .line 228
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    :cond_5
    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v3

    .line 231
    .local v3, "bars":[B
    const/4 v4, 0x0

    .line 232
    .local v4, "wide":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_6

    .line 233
    aget-byte v6, v3, v5

    add-int/2addr v4, v6

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 235
    .end local v5    # "k":I
    :cond_6
    array-length v5, v3

    sub-int/2addr v5, v4

    .line 236
    .local v5, "narrow":I
    iget v6, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    int-to-float v7, v5

    int-to-float v8, v4

    iget v9, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    .line 237
    .local v6, "fullWidth":F
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 238
    iget v7, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    add-float/2addr v7, v1

    .line 239
    .local v7, "fullHeight":F
    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v8, v6, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v8
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 27
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    .line 283
    .local v1, "fullCode":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->checksumText:Z

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_0
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->startStopText:Z

    const/4 v12, 0x1

    if-nez v2, :cond_1

    .line 287
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_1
    const/4 v2, 0x0

    .line 290
    .local v2, "fontX":F
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    move-object v1, v4

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    move-object v13, v1

    move v14, v2

    goto :goto_1

    .line 290
    :cond_3
    move-object v13, v1

    move v14, v2

    .line 293
    .end local v1    # "fullCode":Ljava/lang/String;
    .end local v2    # "fontX":F
    .local v13, "fullCode":Ljava/lang/String;
    .local v14, "fontX":F
    :goto_1
    iget-boolean v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    :goto_2
    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v15

    .line 294
    .local v15, "bars":[B
    const/4 v1, 0x0

    .line 295
    .local v1, "wide":I
    const/4 v2, 0x0

    move v8, v1

    .end local v1    # "wide":I
    .local v2, "k":I
    .local v8, "wide":I
    :goto_3
    array-length v1, v15

    if-ge v2, v1, :cond_5

    .line 296
    aget-byte v1, v15, v2

    add-int/2addr v8, v1

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 298
    .end local v2    # "k":I
    :cond_5
    array-length v1, v15

    sub-int v9, v1, v8

    .line 299
    .local v9, "narrow":I
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    int-to-float v2, v9

    int-to-float v3, v8

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v16, v1, v2

    .line 300
    .local v16, "fullWidth":F
    const/4 v1, 0x0

    .line 301
    .local v1, "barStartX":F
    const/4 v2, 0x0

    .line 302
    .local v2, "textStartX":F
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->textAlignment:I

    packed-switch v3, :pswitch_data_0

    .line 313
    cmpl-float v3, v14, v16

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v3, :cond_7

    .line 314
    sub-float v3, v14, v16

    div-float v1, v3, v4

    move v6, v2

    goto :goto_4

    .line 306
    :pswitch_0
    cmpl-float v3, v14, v16

    if-lez v3, :cond_6

    .line 307
    sub-float v1, v14, v16

    move v6, v2

    goto :goto_4

    .line 309
    :cond_6
    sub-float v2, v16, v14

    .line 311
    move v6, v2

    goto :goto_4

    .line 304
    :pswitch_1
    move v6, v2

    goto :goto_4

    .line 316
    :cond_7
    sub-float v3, v16, v14

    div-float v2, v3, v4

    move v6, v2

    .line 320
    .end local v2    # "textStartX":F
    .local v6, "textStartX":F
    :goto_4
    const/4 v2, 0x0

    .line 321
    .local v2, "barStartY":F
    const/4 v3, 0x0

    .line 322
    .local v3, "textStartY":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v4, :cond_9

    .line 323
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    .line 324
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    sub-float v3, v4, v5

    move v7, v2

    move v4, v3

    goto :goto_5

    .line 326
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getDescender()F

    move-result v4

    neg-float v3, v4

    .line 327
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    add-float v2, v3, v4

    move v7, v2

    move v4, v3

    goto :goto_5

    .line 322
    :cond_9
    move v7, v2

    move v4, v3

    .line 330
    .end local v2    # "barStartY":F
    .end local v3    # "textStartY":F
    .local v4, "textStartY":F
    .local v7, "barStartY":F
    :goto_5
    const/4 v2, 0x1

    .line 331
    .local v2, "print":Z
    if-eqz p2, :cond_a

    .line 332
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 334
    :cond_a
    const/4 v3, 0x0

    move v5, v1

    move/from16 v17, v2

    move v2, v3

    .end local v1    # "barStartX":F
    .local v2, "k":I
    .local v5, "barStartX":F
    .local v17, "print":Z
    :goto_6
    array-length v1, v15

    if-ge v2, v1, :cond_e

    .line 335
    aget-byte v1, v15, v2

    if-nez v1, :cond_b

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    goto :goto_7

    :cond_b
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    mul-float/2addr v1, v3

    :goto_7
    move/from16 v18, v1

    .line 336
    .local v18, "w":F
    if-eqz v17, :cond_c

    .line 337
    move-object/from16 v19, v13

    .end local v13    # "fullCode":Ljava/lang/String;
    .local v19, "fullCode":Ljava/lang/String;
    float-to-double v12, v5

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "textStartY":F
    .end local v5    # "barStartX":F
    .local v20, "textStartY":F
    .local v21, "barStartX":F
    float-to-double v4, v7

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->inkSpreading:F

    sub-float v1, v18, v1

    move/from16 v22, v6

    move/from16 v23, v7

    .end local v6    # "textStartX":F
    .end local v7    # "barStartY":F
    .local v22, "textStartX":F
    .local v23, "barStartY":F
    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    move/from16 v24, v8

    move/from16 v25, v9

    .end local v8    # "wide":I
    .end local v9    # "narrow":I
    .local v24, "wide":I
    .local v25, "narrow":I
    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v26, v2

    .end local v2    # "k":I
    .local v26, "k":I
    move-wide v2, v12

    move/from16 v13, v20

    move/from16 v12, v21

    .end local v20    # "textStartY":F
    .end local v21    # "barStartX":F
    .local v12, "barStartX":F
    .local v13, "textStartY":F
    move/from16 v20, v14

    move/from16 v14, v22

    move/from16 v21, v23

    .end local v22    # "textStartX":F
    .end local v23    # "barStartY":F
    .local v14, "textStartX":F
    .local v20, "fontX":F
    .local v21, "barStartY":F
    move/from16 v22, v24

    move/from16 v23, v25

    .end local v24    # "wide":I
    .end local v25    # "narrow":I
    .local v22, "wide":I
    .local v23, "narrow":I
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_8

    .line 336
    .end local v12    # "barStartX":F
    .end local v19    # "fullCode":Ljava/lang/String;
    .end local v20    # "fontX":F
    .end local v21    # "barStartY":F
    .end local v22    # "wide":I
    .end local v23    # "narrow":I
    .end local v26    # "k":I
    .restart local v2    # "k":I
    .restart local v4    # "textStartY":F
    .restart local v5    # "barStartX":F
    .restart local v6    # "textStartX":F
    .restart local v7    # "barStartY":F
    .restart local v8    # "wide":I
    .restart local v9    # "narrow":I
    .local v13, "fullCode":Ljava/lang/String;
    .local v14, "fontX":F
    :cond_c
    move/from16 v26, v2

    move v12, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v19, v13

    move/from16 v20, v14

    move v13, v4

    move v14, v6

    .line 339
    .end local v2    # "k":I
    .end local v4    # "textStartY":F
    .end local v5    # "barStartX":F
    .end local v6    # "textStartX":F
    .end local v7    # "barStartY":F
    .end local v8    # "wide":I
    .end local v9    # "narrow":I
    .restart local v12    # "barStartX":F
    .local v13, "textStartY":F
    .local v14, "textStartX":F
    .restart local v19    # "fullCode":Ljava/lang/String;
    .restart local v20    # "fontX":F
    .restart local v21    # "barStartY":F
    .restart local v22    # "wide":I
    .restart local v23    # "narrow":I
    .restart local v26    # "k":I
    :goto_8
    if-nez v17, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    move/from16 v17, v1

    .line 340
    add-float v5, v12, v18

    .line 334
    .end local v12    # "barStartX":F
    .end local v18    # "w":F
    .restart local v5    # "barStartX":F
    add-int/lit8 v2, v26, 0x1

    move v4, v13

    move v6, v14

    move-object/from16 v13, v19

    move/from16 v14, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    const/4 v12, 0x1

    .end local v26    # "k":I
    .restart local v2    # "k":I
    goto :goto_6

    .end local v19    # "fullCode":Ljava/lang/String;
    .end local v20    # "fontX":F
    .end local v21    # "barStartY":F
    .end local v22    # "wide":I
    .end local v23    # "narrow":I
    .restart local v4    # "textStartY":F
    .restart local v6    # "textStartX":F
    .restart local v7    # "barStartY":F
    .restart local v8    # "wide":I
    .restart local v9    # "narrow":I
    .local v13, "fullCode":Ljava/lang/String;
    .local v14, "fontX":F
    :cond_e
    move/from16 v26, v2

    move v12, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v19, v13

    move/from16 v20, v14

    move v13, v4

    move v14, v6

    .line 342
    .end local v2    # "k":I
    .end local v4    # "textStartY":F
    .end local v5    # "barStartX":F
    .end local v6    # "textStartX":F
    .end local v7    # "barStartY":F
    .end local v8    # "wide":I
    .end local v9    # "narrow":I
    .restart local v12    # "barStartX":F
    .local v13, "textStartY":F
    .local v14, "textStartX":F
    .restart local v19    # "fullCode":Ljava/lang/String;
    .restart local v20    # "fontX":F
    .restart local v21    # "barStartY":F
    .restart local v22    # "wide":I
    .restart local v23    # "narrow":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 343
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_10

    .line 344
    if-eqz v11, :cond_f

    .line 345
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 347
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 348
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 349
    invoke-virtual {v10, v14, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 350
    move-object/from16 v1, v19

    .end local v19    # "fullCode":Ljava/lang/String;
    .local v1, "fullCode":Ljava/lang/String;
    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_a

    .line 343
    .end local v1    # "fullCode":Ljava/lang/String;
    .restart local v19    # "fullCode":Ljava/lang/String;
    :cond_10
    move-object/from16 v1, v19

    .line 353
    .end local v19    # "fullCode":Ljava/lang/String;
    .restart local v1    # "fullCode":Ljava/lang/String;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
