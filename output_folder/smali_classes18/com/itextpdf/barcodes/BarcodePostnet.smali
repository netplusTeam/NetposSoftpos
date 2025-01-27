.class public Lcom/itextpdf/barcodes/BarcodePostnet;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodePostnet.java"


# static fields
.field private static final BARS:[[B

.field public static TYPE_PLANET:I

.field public static TYPE_POSTNET:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_POSTNET:I

    .line 57
    const/4 v1, 0x2

    sput v1, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_PLANET:I

    .line 62
    const/16 v2, 0xa

    new-array v2, v2, [[B

    const/4 v3, 0x5

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [B

    fill-array-data v4, :array_1

    aput-object v4, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_4

    const/4 v1, 0x4

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_5

    aput-object v0, v2, v3

    new-array v0, v3, [B

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/itextpdf/barcodes/BarcodePostnet;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
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
        0x1t
        0x0t
        0x0t
        0x0t
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
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 79
    const v0, 0x4051745d

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    .line 81
    const v0, 0x3fb851eb    # 1.4399999f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    .line 83
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    .line 85
    const v0, 0x40666667    # 3.6000001f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->size:F

    .line 87
    sget v0, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_POSTNET:I

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->codeType:I

    .line 88
    return-void
.end method

.method public static getBarsPostnet(Ljava/lang/String;)[B
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "k":I
    :goto_0
    if-ltz v1, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 98
    .local v3, "n":I
    add-int/2addr v0, v3

    .line 96
    .end local v3    # "n":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 100
    .end local v1    # "k":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v3, v0, 0xa

    rsub-int/lit8 v3, v3, 0xa

    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 102
    .local v1, "bars":[B
    const/4 v4, 0x0

    aput-byte v2, v1, v4

    .line 103
    array-length v5, v1

    sub-int/2addr v5, v2

    aput-byte v2, v1, v5

    .line 104
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 105
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 106
    .local v6, "c":I
    sget-object v7, Lcom/itextpdf/barcodes/BarcodePostnet;->BARS:[[B

    aget-object v7, v7, v6

    mul-int/lit8 v8, v5, 0x5

    add-int/2addr v8, v2

    invoke-static {v7, v4, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .end local v6    # "c":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    .end local v5    # "k":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 21
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 147
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 148
    .local v1, "f":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 149
    .local v2, "g":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 150
    .local v3, "canvas":Ljava/awt/Canvas;
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    float-to-int v4, v4

    .line 151
    .local v4, "barWidth":I
    if-gtz v4, :cond_2

    .line 152
    const/4 v4, 0x1

    .line 153
    :cond_2
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    float-to-int v5, v5

    .line 154
    .local v5, "barDistance":I
    if-gt v5, v4, :cond_3

    .line 155
    add-int/lit8 v5, v4, 0x1

    .line 156
    :cond_3
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->size:F

    float-to-int v6, v6

    .line 157
    .local v6, "barShort":I
    if-gtz v6, :cond_4

    .line 158
    const/4 v6, 0x1

    .line 159
    :cond_4
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    float-to-int v7, v7

    .line 160
    .local v7, "barTall":I
    if-gt v7, v6, :cond_5

    .line 161
    add-int/lit8 v7, v6, 0x1

    .line 162
    :cond_5
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v9

    mul-int/2addr v8, v5

    add-int v14, v8, v4

    .line 163
    .local v14, "width":I
    mul-int v8, v14, v7

    new-array v15, v8, [I

    .line 164
    .local v15, "pix":[I
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v13

    .line 165
    .local v13, "bars":[B
    const/4 v8, 0x1

    .line 166
    .local v8, "flip":B
    iget v10, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->codeType:I

    sget v11, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_PLANET:I

    const/4 v12, 0x0

    if-ne v10, v11, :cond_6

    .line 167
    const/4 v8, 0x0

    .line 168
    aput-byte v12, v13, v12

    .line 169
    array-length v10, v13

    sub-int/2addr v10, v9

    aput-byte v12, v13, v10

    move v11, v8

    goto :goto_2

    .line 166
    :cond_6
    move v11, v8

    .line 171
    .end local v8    # "flip":B
    .local v11, "flip":B
    :goto_2
    const/4 v8, 0x0

    .line 172
    .local v8, "idx":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    array-length v9, v13

    if-ge v10, v9, :cond_a

    .line 173
    aget-byte v9, v13, v10

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    move v9, v12

    .line 174
    .local v9, "dot":Z
    :goto_4
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "j":I
    :goto_5
    if-ge v12, v5, :cond_9

    .line 175
    add-int v17, v8, v12

    if-eqz v9, :cond_8

    if-ge v12, v4, :cond_8

    move/from16 v19, v1

    goto :goto_6

    :cond_8
    move/from16 v19, v2

    :goto_6
    aput v19, v15, v17

    .line 174
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 177
    .end local v12    # "j":I
    :cond_9
    add-int/2addr v8, v5

    .line 172
    .end local v9    # "dot":Z
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto :goto_3

    .line 179
    .end local v10    # "k":I
    :cond_a
    sub-int v9, v7, v6

    mul-int v12, v14, v9

    .line 180
    .local v12, "limit":I
    move v9, v14

    .local v9, "k":I
    :goto_7
    if-ge v9, v12, :cond_b

    .line 181
    const/4 v10, 0x0

    invoke-static {v15, v10, v15, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    add-int/2addr v9, v14

    goto :goto_7

    .line 182
    .end local v9    # "k":I
    :cond_b
    move v8, v12

    .line 183
    const/4 v9, 0x0

    move/from16 v16, v8

    .end local v8    # "idx":I
    .restart local v9    # "k":I
    .local v16, "idx":I
    :goto_8
    array-length v8, v13

    if-ge v9, v8, :cond_e

    .line 184
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_9
    if-ge v8, v5, :cond_d

    .line 185
    add-int v10, v16, v8

    if-ge v8, v4, :cond_c

    move/from16 v17, v1

    goto :goto_a

    :cond_c
    move/from16 v17, v2

    :goto_a
    aput v17, v15, v10

    .line 184
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 187
    .end local v8    # "j":I
    :cond_d
    add-int v16, v16, v5

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 189
    .end local v9    # "k":I
    :cond_e
    add-int v8, v12, v14

    .local v8, "k":I
    :goto_b
    array-length v9, v15

    if-ge v8, v9, :cond_f

    .line 190
    invoke-static {v15, v12, v15, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    add-int/2addr v8, v14

    goto :goto_b

    .line 191
    .end local v8    # "k":I
    :cond_f
    new-instance v10, Ljava/awt/image/MemoryImageSource;

    const/16 v17, 0x0

    move-object v8, v10

    move v9, v14

    move-object/from16 v20, v10

    move v10, v7

    move/from16 v18, v11

    .end local v11    # "flip":B
    .local v18, "flip":B
    move-object v11, v15

    move/from16 v19, v12

    .end local v12    # "limit":I
    .local v19, "limit":I
    move/from16 v12, v17

    move-object/from16 v17, v13

    .end local v13    # "bars":[B
    .local v17, "bars":[B
    move v13, v14

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    move-object/from16 v8, v20

    invoke-virtual {v3, v8}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v8

    .line 193
    .local v8, "img":Ljava/awt/Image;
    return-object v8
.end method

.method public fitWidth(F)V
    .locals 4
    .param p1, "width"    # F

    .line 119
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    .local v0, "bars":[B
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 121
    .local v1, "currentWidth":F
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    div-float v3, p1, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    .line 122
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    sub-float v2, p1, v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    .line 123
    return-void
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    add-float/2addr v0, v1

    .line 114
    .local v0, "width":F
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 15
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 127
    move-object v0, p0

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 129
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v1

    .line 130
    .local v1, "bars":[B
    const/4 v2, 0x1

    .line 131
    .local v2, "flip":B
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->codeType:I

    sget v4, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_PLANET:I

    if-ne v3, v4, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 133
    const/4 v3, 0x0

    aput-byte v3, v1, v3

    .line 134
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aput-byte v3, v1, v4

    .line 136
    :cond_1
    const/4 v3, 0x0

    .line 137
    .local v3, "startX":F
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 138
    float-to-double v7, v3

    const-wide/16 v9, 0x0

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->inkSpreading:F

    sub-float/2addr v5, v6

    float-to-double v11, v5

    aget-byte v5, v1, v4

    if-ne v5, v2, :cond_2

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    goto :goto_1

    :cond_2
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->size:F

    :goto_1
    float-to-double v5, v5

    move-wide v13, v5

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 139
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    add-float/2addr v3, v5

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v4    # "k":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    return-object v4
.end method
