.class public Lcom/itextpdf/barcodes/BarcodeEAN;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeEAN.java"


# static fields
.field private static final BARS:[[B

.field public static final EAN13:I = 0x1

.field public static final EAN8:I = 0x2

.field private static final EVEN:I = 0x1

.field private static final GUARD_EAN13:[I

.field private static final GUARD_EAN8:[I

.field private static final GUARD_EMPTY:[I

.field private static final GUARD_UPCA:[I

.field private static final GUARD_UPCE:[I

.field private static final ODD:I = 0x0

.field private static final PARITY13:[[B

.field private static final PARITY2:[[B

.field private static final PARITY5:[[B

.field private static final PARITYE:[[B

.field public static final SUPP2:I = 0x5

.field public static final SUPP5:I = 0x6

.field private static final TEXTPOS_EAN13:[F

.field private static final TEXTPOS_EAN8:[F

.field private static final TOTALBARS_EAN13:I = 0x3b

.field private static final TOTALBARS_EAN8:I = 0x2b

.field private static final TOTALBARS_SUPP2:I = 0xd

.field private static final TOTALBARS_SUPP5:I = 0x1f

.field private static final TOTALBARS_UPCE:I = 0x21

.field public static final UPCA:I = 0x3

.field public static final UPCE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 73
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EMPTY:[I

    .line 77
    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCA:[I

    .line 81
    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    sput-object v3, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN13:[I

    .line 85
    new-array v3, v2, [I

    fill-array-data v3, :array_2

    sput-object v3, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN8:[I

    .line 89
    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    sput-object v4, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCE:[I

    .line 93
    const/16 v4, 0xc

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    sput-object v4, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    .line 97
    const/16 v4, 0x8

    new-array v5, v4, [F

    fill-array-data v5, :array_5

    sput-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN8:[F

    .line 101
    new-array v5, v1, [[B

    const/4 v6, 0x4

    new-array v7, v6, [B

    fill-array-data v7, :array_6

    aput-object v7, v5, v0

    new-array v7, v6, [B

    fill-array-data v7, :array_7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-array v7, v6, [B

    fill-array-data v7, :array_8

    const/4 v9, 0x2

    aput-object v7, v5, v9

    new-array v7, v6, [B

    fill-array-data v7, :array_9

    const/4 v10, 0x3

    aput-object v7, v5, v10

    new-array v7, v6, [B

    fill-array-data v7, :array_a

    aput-object v7, v5, v6

    new-array v7, v6, [B

    fill-array-data v7, :array_b

    aput-object v7, v5, v3

    new-array v7, v6, [B

    fill-array-data v7, :array_c

    aput-object v7, v5, v2

    new-array v7, v6, [B

    fill-array-data v7, :array_d

    const/4 v11, 0x7

    aput-object v7, v5, v11

    new-array v7, v6, [B

    fill-array-data v7, :array_e

    aput-object v7, v5, v4

    new-array v7, v6, [B

    fill-array-data v7, :array_f

    const/16 v12, 0x9

    aput-object v7, v5, v12

    sput-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    .line 166
    new-array v5, v1, [[B

    new-array v7, v2, [B

    fill-array-data v7, :array_10

    aput-object v7, v5, v0

    new-array v7, v2, [B

    fill-array-data v7, :array_11

    aput-object v7, v5, v8

    new-array v7, v2, [B

    fill-array-data v7, :array_12

    aput-object v7, v5, v9

    new-array v7, v2, [B

    fill-array-data v7, :array_13

    aput-object v7, v5, v10

    new-array v7, v2, [B

    fill-array-data v7, :array_14

    aput-object v7, v5, v6

    new-array v7, v2, [B

    fill-array-data v7, :array_15

    aput-object v7, v5, v3

    new-array v7, v2, [B

    fill-array-data v7, :array_16

    aput-object v7, v5, v2

    new-array v7, v2, [B

    fill-array-data v7, :array_17

    aput-object v7, v5, v11

    new-array v7, v2, [B

    fill-array-data v7, :array_18

    aput-object v7, v5, v4

    new-array v7, v2, [B

    fill-array-data v7, :array_19

    aput-object v7, v5, v12

    sput-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY13:[[B

    .line 203
    new-array v5, v6, [[B

    new-array v7, v9, [B

    fill-array-data v7, :array_1a

    aput-object v7, v5, v0

    new-array v7, v9, [B

    fill-array-data v7, :array_1b

    aput-object v7, v5, v8

    new-array v7, v9, [B

    fill-array-data v7, :array_1c

    aput-object v7, v5, v9

    new-array v7, v9, [B

    fill-array-data v7, :array_1d

    aput-object v7, v5, v10

    sput-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY2:[[B

    .line 222
    new-array v5, v1, [[B

    new-array v7, v3, [B

    fill-array-data v7, :array_1e

    aput-object v7, v5, v0

    new-array v7, v3, [B

    fill-array-data v7, :array_1f

    aput-object v7, v5, v8

    new-array v7, v3, [B

    fill-array-data v7, :array_20

    aput-object v7, v5, v9

    new-array v7, v3, [B

    fill-array-data v7, :array_21

    aput-object v7, v5, v10

    new-array v7, v3, [B

    fill-array-data v7, :array_22

    aput-object v7, v5, v6

    new-array v7, v3, [B

    fill-array-data v7, :array_23

    aput-object v7, v5, v3

    new-array v7, v3, [B

    fill-array-data v7, :array_24

    aput-object v7, v5, v2

    new-array v7, v3, [B

    fill-array-data v7, :array_25

    aput-object v7, v5, v11

    new-array v7, v3, [B

    fill-array-data v7, :array_26

    aput-object v7, v5, v4

    new-array v7, v3, [B

    fill-array-data v7, :array_27

    aput-object v7, v5, v12

    sput-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY5:[[B

    .line 259
    new-array v1, v1, [[B

    new-array v5, v2, [B

    fill-array-data v5, :array_28

    aput-object v5, v1, v0

    new-array v0, v2, [B

    fill-array-data v0, :array_29

    aput-object v0, v1, v8

    new-array v0, v2, [B

    fill-array-data v0, :array_2a

    aput-object v0, v1, v9

    new-array v0, v2, [B

    fill-array-data v0, :array_2b

    aput-object v0, v1, v10

    new-array v0, v2, [B

    fill-array-data v0, :array_2c

    aput-object v0, v1, v6

    new-array v0, v2, [B

    fill-array-data v0, :array_2d

    aput-object v0, v1, v3

    new-array v0, v2, [B

    fill-array-data v0, :array_2e

    aput-object v0, v1, v2

    new-array v0, v2, [B

    fill-array-data v0, :array_2f

    aput-object v0, v1, v11

    new-array v0, v2, [B

    fill-array-data v0, :array_30

    aput-object v0, v1, v4

    new-array v0, v2, [B

    fill-array-data v0, :array_31

    aput-object v0, v1, v12

    sput-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITYE:[[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x1c
        0x1e
        0x34
        0x36
        0x38
        0x3a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1c
        0x1e
        0x38
        0x3a
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x14
        0x16
        0x28
        0x2a
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2
        0x1c
        0x1e
        0x20
    .end array-data

    :array_4
    .array-data 4
        0x40d00000    # 6.5f
        0x41580000    # 13.5f
        0x41a40000    # 20.5f
        0x41dc0000    # 27.5f
        0x420a0000    # 34.5f
        0x42260000    # 41.5f
        0x42560000    # 53.5f
        0x42720000    # 60.5f
        0x42870000    # 67.5f
        0x42950000    # 74.5f
        0x42a30000    # 81.5f
        0x42b10000    # 88.5f
    .end array-data

    :array_5
    .array-data 4
        0x40d00000    # 6.5f
        0x41580000    # 13.5f
        0x41a40000    # 20.5f
        0x41dc0000    # 27.5f
        0x421e0000    # 39.5f
        0x423a0000    # 46.5f
        0x42560000    # 53.5f
        0x42720000    # 60.5f
    .end array-data

    :array_6
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x2t
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x4t
        0x1t
        0x1t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x1t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x4t
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x3t
    .end array-data

    :array_f
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x2t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 301
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeEAN;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 311
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 312
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    .line 313
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 314
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    .line 315
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    .line 316
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->guardBars:Z

    .line 318
    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public static calculateEANParity(Ljava/lang/String;)I
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x3

    .line 330
    .local v0, "mul":I
    const/4 v1, 0x0

    .line 331
    .local v1, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_0

    .line 332
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 333
    .local v3, "n":I
    mul-int v4, v0, v3

    add-int/2addr v1, v4

    .line 334
    xor-int/lit8 v0, v0, 0x2

    .line 331
    .end local v3    # "n":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 336
    .end local v2    # "k":I
    :cond_0
    rem-int/lit8 v2, v1, 0xa

    rsub-int/lit8 v2, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    return v2
.end method

.method public static convertUPCAtoUPCE(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 350
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "00"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x1

    if-nez v4, :cond_4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v11, "100"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 351
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v11, "200"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const/16 v0, 0x9

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "0000"

    const/16 v5, 0xa

    if-eqz v0, :cond_3

    .line 360
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x35

    if-lt v0, v2, :cond_5

    .line 364
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :cond_4
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 368
    :cond_5
    return-object v1

    .line 349
    :cond_6
    :goto_1
    return-object v1
.end method

.method public static getBarsEAN13(Ljava/lang/String;)[B
    .locals 13
    .param p0, "_code"    # Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 379
    .local v0, "code":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 380
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput v2, v0, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "k":I
    :cond_0
    const/16 v1, 0x3b

    new-array v1, v1, [B

    .line 383
    .local v1, "bars":[B
    const/4 v2, 0x0

    .line 384
    .local v2, "pb":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .local v3, "pb":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 385
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v3

    .line 386
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v2

    .line 387
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY13:[[B

    const/4 v5, 0x0

    aget v6, v0, v5

    aget-object v2, v2, v6

    .line 388
    .local v2, "sequence":[B
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    array-length v7, v2

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-ge v6, v7, :cond_2

    .line 389
    add-int/lit8 v7, v6, 0x1

    aget v7, v0, v7

    .line 390
    .local v7, "c":I
    sget-object v10, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v10, v10, v7

    .line 391
    .local v10, "stripes":[B
    aget-byte v11, v2, v6

    if-nez v11, :cond_1

    .line 392
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "pb":I
    .local v11, "pb":I
    aget-byte v12, v10, v5

    aput-byte v12, v1, v3

    .line 393
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v12, v10, v4

    aput-byte v12, v1, v11

    .line 394
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v8, v10, v8

    aput-byte v8, v1, v3

    .line 395
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v8, v10, v9

    aput-byte v8, v1, v11

    goto :goto_2

    .line 397
    :cond_1
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v9, v10, v9

    aput-byte v9, v1, v3

    .line 398
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v8, v10, v8

    aput-byte v8, v1, v11

    .line 399
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pb":I
    .local v8, "pb":I
    aget-byte v9, v10, v4

    aput-byte v9, v1, v3

    .line 400
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v9, v10, v5

    aput-byte v9, v1, v8

    .line 388
    .end local v7    # "c":I
    .end local v10    # "stripes":[B
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 403
    .end local v6    # "k":I
    :cond_2
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pb":I
    .local v6, "pb":I
    aput-byte v4, v1, v3

    .line 404
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v6

    .line 405
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pb":I
    .restart local v6    # "pb":I
    aput-byte v4, v1, v3

    .line 406
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v6

    .line 407
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pb":I
    .restart local v6    # "pb":I
    aput-byte v4, v1, v3

    .line 408
    const/4 v3, 0x7

    .local v3, "k":I
    :goto_3
    const/16 v7, 0xd

    if-ge v3, v7, :cond_3

    .line 409
    aget v7, v0, v3

    .line 410
    .restart local v7    # "c":I
    sget-object v10, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v10, v10, v7

    .line 411
    .restart local v10    # "stripes":[B
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v12, v10, v5

    aput-byte v12, v1, v6

    .line 412
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "pb":I
    .restart local v6    # "pb":I
    aget-byte v12, v10, v4

    aput-byte v12, v1, v11

    .line 413
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v12, v10, v8

    aput-byte v12, v1, v6

    .line 414
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "pb":I
    .restart local v6    # "pb":I
    aget-byte v12, v10, v9

    aput-byte v12, v1, v11

    .line 408
    .end local v7    # "c":I
    .end local v10    # "stripes":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 416
    .end local v3    # "k":I
    :cond_3
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pb":I
    .local v3, "pb":I
    aput-byte v4, v1, v6

    .line 417
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "pb":I
    .local v5, "pb":I
    aput-byte v4, v1, v3

    .line 418
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v5

    .line 419
    return-object v1
.end method

.method public static getBarsEAN8(Ljava/lang/String;)[B
    .locals 12
    .param p0, "_code"    # Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 430
    .local v0, "code":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 431
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput v2, v0, v1

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "k":I
    :cond_0
    const/16 v1, 0x2b

    new-array v1, v1, [B

    .line 434
    .local v1, "bars":[B
    const/4 v2, 0x0

    .line 435
    .local v2, "pb":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .local v3, "pb":I
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    .line 436
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v3

    .line 437
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v2

    .line 438
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ge v2, v5, :cond_1

    .line 439
    aget v5, v0, v2

    .line 440
    .local v5, "c":I
    sget-object v9, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v9, v9, v5

    .line 441
    .local v9, "stripes":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "pb":I
    .local v10, "pb":I
    aget-byte v8, v9, v8

    aput-byte v8, v1, v3

    .line 442
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v8, v9, v4

    aput-byte v8, v1, v10

    .line 443
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pb":I
    .local v8, "pb":I
    aget-byte v7, v9, v7

    aput-byte v7, v1, v3

    .line 444
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pb":I
    .restart local v3    # "pb":I
    aget-byte v6, v9, v6

    aput-byte v6, v1, v8

    .line 438
    .end local v5    # "c":I
    .end local v9    # "stripes":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    .end local v2    # "k":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .local v2, "pb":I
    aput-byte v4, v1, v3

    .line 447
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v2

    .line 448
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v3

    .line 449
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v2

    .line 450
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v3

    .line 451
    const/4 v3, 0x4

    .local v3, "k":I
    :goto_2
    const/16 v5, 0x8

    if-ge v3, v5, :cond_2

    .line 452
    aget v5, v0, v3

    .line 453
    .restart local v5    # "c":I
    sget-object v9, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v9, v9, v5

    .line 454
    .restart local v9    # "stripes":[B
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "pb":I
    .restart local v10    # "pb":I
    aget-byte v11, v9, v8

    aput-byte v11, v1, v2

    .line 455
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "pb":I
    .restart local v2    # "pb":I
    aget-byte v11, v9, v4

    aput-byte v11, v1, v10

    .line 456
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "pb":I
    .restart local v10    # "pb":I
    aget-byte v11, v9, v7

    aput-byte v11, v1, v2

    .line 457
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "pb":I
    .restart local v2    # "pb":I
    aget-byte v11, v9, v6

    aput-byte v11, v1, v10

    .line 451
    .end local v5    # "c":I
    .end local v9    # "stripes":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 459
    .end local v3    # "k":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .local v3, "pb":I
    aput-byte v4, v1, v2

    .line 460
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v3

    .line 461
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v4, v1, v2

    .line 462
    return-object v1
.end method

.method public static getBarsSupplemental2(Ljava/lang/String;)[B
    .locals 14
    .param p0, "_code"    # Ljava/lang/String;

    .line 514
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 515
    .local v1, "code":[I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 516
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aput v3, v1, v2

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    .end local v2    # "k":I
    :cond_0
    const/16 v2, 0xd

    new-array v2, v2, [B

    .line 519
    .local v2, "bars":[B
    const/4 v3, 0x0

    .line 520
    .local v3, "pb":I
    const/4 v4, 0x0

    aget v5, v1, v4

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x1

    aget v7, v1, v6

    add-int/2addr v5, v7

    rem-int/lit8 v5, v5, 0x4

    .line 521
    .local v5, "parity":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "pb":I
    .local v7, "pb":I
    aput-byte v6, v2, v3

    .line 522
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "pb":I
    .restart local v3    # "pb":I
    aput-byte v6, v2, v7

    .line 523
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "pb":I
    .restart local v7    # "pb":I
    aput-byte v0, v2, v3

    .line 524
    sget-object v3, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY2:[[B

    aget-object v3, v3, v5

    .line 525
    .local v3, "sequence":[B
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    array-length v9, v3

    if-ge v8, v9, :cond_3

    .line 526
    if-ne v8, v6, :cond_1

    .line 527
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "pb":I
    .local v9, "pb":I
    aput-byte v6, v2, v7

    .line 528
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "pb":I
    .restart local v7    # "pb":I
    aput-byte v6, v2, v9

    .line 530
    :cond_1
    aget v9, v1, v8

    .line 531
    .local v9, "c":I
    sget-object v10, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v10, v10, v9

    .line 532
    .local v10, "stripes":[B
    aget-byte v11, v3, v8

    const/4 v12, 0x3

    if-nez v11, :cond_2

    .line 533
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "pb":I
    .local v11, "pb":I
    aget-byte v13, v10, v4

    aput-byte v13, v2, v7

    .line 534
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "pb":I
    .restart local v7    # "pb":I
    aget-byte v13, v10, v6

    aput-byte v13, v2, v11

    .line 535
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v13, v10, v0

    aput-byte v13, v2, v7

    .line 536
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "pb":I
    .restart local v7    # "pb":I
    aget-byte v12, v10, v12

    aput-byte v12, v2, v11

    goto :goto_2

    .line 538
    :cond_2
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v12, v10, v12

    aput-byte v12, v2, v7

    .line 539
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "pb":I
    .restart local v7    # "pb":I
    aget-byte v12, v10, v0

    aput-byte v12, v2, v11

    .line 540
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "pb":I
    .restart local v11    # "pb":I
    aget-byte v12, v10, v6

    aput-byte v12, v2, v7

    .line 541
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "pb":I
    .restart local v7    # "pb":I
    aget-byte v12, v10, v4

    aput-byte v12, v2, v11

    .line 525
    .end local v9    # "c":I
    .end local v10    # "stripes":[B
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 544
    .end local v8    # "k":I
    :cond_3
    return-object v2
.end method

.method public static getBarsSupplemental5(Ljava/lang/String;)[B
    .locals 14
    .param p0, "_code"    # Ljava/lang/String;

    .line 554
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 555
    .local v0, "code":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 556
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput v2, v0, v1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v1    # "k":I
    :cond_0
    const/16 v1, 0x1f

    new-array v1, v1, [B

    .line 559
    .local v1, "bars":[B
    const/4 v2, 0x0

    .line 560
    .local v2, "pb":I
    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v0, v6

    add-int/2addr v4, v6

    const/4 v6, 0x3

    mul-int/2addr v4, v6

    const/4 v7, 0x1

    aget v8, v0, v7

    aget v9, v0, v6

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x9

    add-int/2addr v4, v8

    rem-int/lit8 v4, v4, 0xa

    .line 561
    .local v4, "parity":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "pb":I
    .local v8, "pb":I
    aput-byte v7, v1, v2

    .line 562
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v7, v1, v8

    .line 563
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "pb":I
    .restart local v8    # "pb":I
    aput-byte v5, v1, v2

    .line 564
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY5:[[B

    aget-object v2, v2, v4

    .line 565
    .local v2, "sequence":[B
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    array-length v10, v2

    if-ge v9, v10, :cond_3

    .line 566
    if-eqz v9, :cond_1

    .line 567
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "pb":I
    .local v10, "pb":I
    aput-byte v7, v1, v8

    .line 568
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "pb":I
    .restart local v8    # "pb":I
    aput-byte v7, v1, v10

    .line 570
    :cond_1
    aget v10, v0, v9

    .line 571
    .local v10, "c":I
    sget-object v11, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v11, v11, v10

    .line 572
    .local v11, "stripes":[B
    aget-byte v12, v2, v9

    if-nez v12, :cond_2

    .line 573
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "pb":I
    .local v12, "pb":I
    aget-byte v13, v11, v3

    aput-byte v13, v1, v8

    .line 574
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "pb":I
    .restart local v8    # "pb":I
    aget-byte v13, v11, v7

    aput-byte v13, v1, v12

    .line 575
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "pb":I
    .restart local v12    # "pb":I
    aget-byte v13, v11, v5

    aput-byte v13, v1, v8

    .line 576
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "pb":I
    .restart local v8    # "pb":I
    aget-byte v13, v11, v6

    aput-byte v13, v1, v12

    goto :goto_2

    .line 578
    :cond_2
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "pb":I
    .restart local v12    # "pb":I
    aget-byte v13, v11, v6

    aput-byte v13, v1, v8

    .line 579
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "pb":I
    .restart local v8    # "pb":I
    aget-byte v13, v11, v5

    aput-byte v13, v1, v12

    .line 580
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "pb":I
    .restart local v12    # "pb":I
    aget-byte v13, v11, v7

    aput-byte v13, v1, v8

    .line 581
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "pb":I
    .restart local v8    # "pb":I
    aget-byte v13, v11, v3

    aput-byte v13, v1, v12

    .line 565
    .end local v10    # "c":I
    .end local v11    # "stripes":[B
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 584
    .end local v9    # "k":I
    :cond_3
    return-object v1
.end method

.method public static getBarsUPCE(Ljava/lang/String;)[B
    .locals 14
    .param p0, "_code"    # Ljava/lang/String;

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 473
    .local v0, "code":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput v2, v0, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "k":I
    :cond_0
    const/16 v1, 0x21

    new-array v1, v1, [B

    .line 477
    .local v1, "bars":[B
    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 478
    .local v3, "flip":Z
    :goto_1
    const/4 v5, 0x0

    .line 479
    .local v5, "pb":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pb":I
    .local v6, "pb":I
    aput-byte v4, v1, v5

    .line 480
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pb":I
    .restart local v5    # "pb":I
    aput-byte v4, v1, v6

    .line 481
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pb":I
    .restart local v6    # "pb":I
    aput-byte v4, v1, v5

    .line 482
    sget-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITYE:[[B

    array-length v7, v0

    sub-int/2addr v7, v4

    aget v7, v0, v7

    aget-object v5, v5, v7

    .line 483
    .local v5, "sequence":[B
    const/4 v7, 0x1

    .local v7, "k":I
    :goto_2
    array-length v8, v0

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_4

    .line 484
    aget v8, v0, v7

    .line 485
    .local v8, "c":I
    sget-object v9, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v9, v9, v8

    .line 486
    .local v9, "stripes":[B
    add-int/lit8 v10, v7, -0x1

    aget-byte v10, v5, v10

    if-eqz v3, :cond_2

    move v11, v4

    goto :goto_3

    :cond_2
    move v11, v2

    :goto_3
    const/4 v12, 0x2

    const/4 v13, 0x3

    if-ne v10, v11, :cond_3

    .line 487
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "pb":I
    .local v10, "pb":I
    aget-byte v11, v9, v2

    aput-byte v11, v1, v6

    .line 488
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "pb":I
    .restart local v6    # "pb":I
    aget-byte v11, v9, v4

    aput-byte v11, v1, v10

    .line 489
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "pb":I
    .restart local v10    # "pb":I
    aget-byte v11, v9, v12

    aput-byte v11, v1, v6

    .line 490
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "pb":I
    .restart local v6    # "pb":I
    aget-byte v11, v9, v13

    aput-byte v11, v1, v10

    goto :goto_4

    .line 492
    :cond_3
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "pb":I
    .restart local v10    # "pb":I
    aget-byte v11, v9, v13

    aput-byte v11, v1, v6

    .line 493
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "pb":I
    .restart local v6    # "pb":I
    aget-byte v11, v9, v12

    aput-byte v11, v1, v10

    .line 494
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "pb":I
    .restart local v10    # "pb":I
    aget-byte v11, v9, v4

    aput-byte v11, v1, v6

    .line 495
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "pb":I
    .restart local v6    # "pb":I
    aget-byte v11, v9, v2

    aput-byte v11, v1, v10

    .line 483
    .end local v8    # "c":I
    .end local v9    # "stripes":[B
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 498
    .end local v7    # "k":I
    :cond_4
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "pb":I
    .local v2, "pb":I
    aput-byte v4, v1, v6

    .line 499
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pb":I
    .restart local v6    # "pb":I
    aput-byte v4, v1, v2

    .line 500
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v6

    .line 501
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pb":I
    .restart local v6    # "pb":I
    aput-byte v4, v1, v2

    .line 502
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "pb":I
    .restart local v2    # "pb":I
    aput-byte v4, v1, v6

    .line 503
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pb":I
    .restart local v6    # "pb":I
    aput-byte v4, v1, v2

    .line 504
    return-object v1
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 16
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 831
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 832
    .local v1, "f":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 833
    .local v2, "g":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 837
    .local v3, "canvas":Ljava/awt/Canvas;
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    packed-switch v4, :pswitch_data_0

    .line 863
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Invalid code type"

    invoke-direct {v0, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :pswitch_0
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental5(Ljava/lang/String;)[B

    move-result-object v4

    .line 860
    .local v4, "bars":[B
    const/16 v5, 0x2f

    .line 861
    .local v5, "width":I
    move v11, v5

    goto :goto_2

    .line 855
    .end local v4    # "bars":[B
    .end local v5    # "width":I
    :pswitch_1
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental2(Ljava/lang/String;)[B

    move-result-object v4

    .line 856
    .restart local v4    # "bars":[B
    const/16 v5, 0x14

    .line 857
    .restart local v5    # "width":I
    move v11, v5

    goto :goto_2

    .line 851
    .end local v4    # "bars":[B
    .end local v5    # "width":I
    :pswitch_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsUPCE(Ljava/lang/String;)[B

    move-result-object v4

    .line 852
    .restart local v4    # "bars":[B
    const/16 v5, 0x33

    .line 853
    .restart local v5    # "width":I
    move v11, v5

    goto :goto_2

    .line 847
    .end local v4    # "bars":[B
    .end local v5    # "width":I
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v4

    .line 848
    .restart local v4    # "bars":[B
    const/16 v5, 0x5f

    .line 849
    .restart local v5    # "width":I
    move v11, v5

    goto :goto_2

    .line 843
    .end local v4    # "bars":[B
    .end local v5    # "width":I
    :pswitch_4
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN8(Ljava/lang/String;)[B

    move-result-object v4

    .line 844
    .restart local v4    # "bars":[B
    const/16 v5, 0x43

    .line 845
    .restart local v5    # "width":I
    move v11, v5

    goto :goto_2

    .line 839
    .end local v4    # "bars":[B
    .end local v5    # "width":I
    :pswitch_5
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v4

    .line 840
    .restart local v4    # "bars":[B
    const/16 v5, 0x5f

    .line 841
    .restart local v5    # "width":I
    move v11, v5

    .line 866
    .end local v5    # "width":I
    .local v11, "width":I
    :goto_2
    const/4 v5, 0x1

    .line 867
    .local v5, "print":Z
    const/4 v6, 0x0

    .line 868
    .local v6, "ptr":I
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    float-to-int v12, v7

    .line 869
    .local v12, "height":I
    mul-int v7, v11, v12

    new-array v13, v7, [I

    .line 870
    .local v13, "pix":[I
    const/4 v7, 0x0

    move v14, v5

    move v15, v6

    .end local v5    # "print":Z
    .end local v6    # "ptr":I
    .local v7, "k":I
    .local v14, "print":Z
    .local v15, "ptr":I
    :goto_3
    array-length v5, v4

    const/4 v6, 0x0

    if-ge v7, v5, :cond_5

    .line 871
    aget-byte v5, v4, v7

    .line 872
    .local v5, "w":I
    move v8, v2

    .line 873
    .local v8, "c":I
    if-eqz v14, :cond_2

    .line 874
    move v8, v1

    .line 876
    :cond_2
    if-nez v14, :cond_3

    const/4 v6, 0x1

    :cond_3
    move v14, v6

    .line 877
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v5, :cond_4

    .line 878
    add-int/lit8 v9, v15, 0x1

    .end local v15    # "ptr":I
    .local v9, "ptr":I
    aput v8, v13, v15

    .line 877
    add-int/lit8 v6, v6, 0x1

    move v15, v9

    goto :goto_4

    .line 870
    .end local v5    # "w":I
    .end local v6    # "j":I
    .end local v8    # "c":I
    .end local v9    # "ptr":I
    .restart local v15    # "ptr":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 881
    .end local v7    # "k":I
    :cond_5
    move v5, v11

    .local v5, "k":I
    :goto_5
    array-length v7, v13

    if-ge v5, v7, :cond_6

    .line 882
    invoke-static {v13, v6, v13, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    add-int/2addr v5, v11

    goto :goto_5

    .line 884
    .end local v5    # "k":I
    :cond_6
    new-instance v10, Ljava/awt/image/MemoryImageSource;

    const/4 v9, 0x0

    move-object v5, v10

    move v6, v11

    move v7, v12

    move-object v8, v13

    move-object v0, v10

    move v10, v11

    invoke-direct/range {v5 .. v10}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v0}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6

    .line 596
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    .line 597
    .local v0, "height":F
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_1

    .line 598
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 599
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    neg-float v1, v1

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 601
    :cond_0
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeEAN;->getDescender()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 604
    :cond_1
    :goto_0
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/high16 v2, 0x42be0000    # 95.0f

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 633
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Invalid code type"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :pswitch_0
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x423c0000    # 47.0f

    mul-float/2addr v1, v2

    .line 631
    .local v1, "width":F
    goto/16 :goto_1

    .line 627
    .end local v1    # "width":F
    :pswitch_1
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    .line 628
    .restart local v1    # "width":F
    goto :goto_1

    .line 621
    .end local v1    # "width":F
    :pswitch_2
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float/2addr v1, v2

    .line 622
    .restart local v1    # "width":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 623
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1

    .line 615
    .end local v1    # "width":F
    :pswitch_3
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v1, v2

    .line 616
    .restart local v1    # "width":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 617
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1

    .line 612
    .end local v1    # "width":F
    :pswitch_4
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x42860000    # 67.0f

    mul-float/2addr v1, v2

    .line 613
    .restart local v1    # "width":F
    goto :goto_1

    .line 606
    .end local v1    # "width":F
    :pswitch_5
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v1, v2

    .line 607
    .restart local v1    # "width":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    add-float/2addr v1, v2

    .line 635
    :cond_2
    :goto_1
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 27
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 679
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .line 680
    .local v12, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v1, 0x0

    .line 681
    .local v1, "barStartX":F
    const/4 v2, 0x0

    .line 682
    .local v2, "barStartY":F
    const/4 v3, 0x0

    .line 683
    .local v3, "textStartY":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v13, 0x0

    if-eqz v4, :cond_1

    .line 684
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    cmpg-float v4, v4, v13

    if-gtz v4, :cond_0

    .line 685
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    sub-float v3, v4, v5

    move v14, v2

    move v15, v3

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeEAN;->getDescender()F

    move-result v4

    neg-float v3, v4

    .line 688
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    add-float v2, v3, v4

    move v14, v2

    move v15, v3

    goto :goto_0

    .line 683
    :cond_1
    move v14, v2

    move v15, v3

    .line 691
    .end local v2    # "barStartY":F
    .end local v3    # "textStartY":F
    .local v14, "barStartY":F
    .local v15, "textStartY":F
    :goto_0
    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 695
    :pswitch_1
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 696
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    add-float/2addr v1, v2

    .line 701
    :cond_2
    :goto_1
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EMPTY:[I

    .line 702
    .local v2, "guard":[I
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    packed-switch v3, :pswitch_data_1

    .line 726
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Invalid code type"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 723
    :pswitch_2
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental5(Ljava/lang/String;)[B

    move-result-object v3

    .line 724
    .local v3, "bars":[B
    move-object v9, v2

    move-object v6, v3

    goto :goto_2

    .line 720
    .end local v3    # "bars":[B
    :pswitch_3
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental2(Ljava/lang/String;)[B

    move-result-object v3

    .line 721
    .restart local v3    # "bars":[B
    move-object v9, v2

    move-object v6, v3

    goto :goto_2

    .line 716
    .end local v3    # "bars":[B
    :pswitch_4
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsUPCE(Ljava/lang/String;)[B

    move-result-object v3

    .line 717
    .restart local v3    # "bars":[B
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCE:[I

    .line 718
    move-object v9, v2

    move-object v6, v3

    goto :goto_2

    .line 712
    .end local v3    # "bars":[B
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v3

    .line 713
    .restart local v3    # "bars":[B
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCA:[I

    .line 714
    move-object v9, v2

    move-object v6, v3

    goto :goto_2

    .line 708
    .end local v3    # "bars":[B
    :pswitch_6
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN8(Ljava/lang/String;)[B

    move-result-object v3

    .line 709
    .restart local v3    # "bars":[B
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN8:[I

    .line 710
    move-object v9, v2

    move-object v6, v3

    goto :goto_2

    .line 704
    .end local v3    # "bars":[B
    :pswitch_7
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v3

    .line 705
    .restart local v3    # "bars":[B
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN13:[I

    .line 706
    move-object v9, v2

    move-object v6, v3

    .line 728
    .end local v2    # "guard":[I
    .end local v3    # "bars":[B
    .local v6, "bars":[B
    .local v9, "guard":[I
    :goto_2
    move/from16 v16, v1

    .line 729
    .local v16, "keepBarX":F
    const/4 v2, 0x1

    .line 730
    .local v2, "print":Z
    const/4 v3, 0x0

    .line 731
    .local v3, "gd":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_3

    iget-boolean v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->guardBars:Z

    if-eqz v4, :cond_3

    .line 732
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    div-float v3, v4, v17

    move/from16 v18, v3

    goto :goto_3

    .line 734
    :cond_3
    move/from16 v18, v3

    .end local v3    # "gd":F
    .local v18, "gd":F
    :goto_3
    if-eqz p2, :cond_4

    .line 735
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 737
    :cond_4
    const/4 v3, 0x0

    move v7, v1

    move/from16 v19, v2

    move v4, v3

    .end local v1    # "barStartX":F
    .end local v2    # "print":Z
    .local v4, "k":I
    .local v7, "barStartX":F
    .local v19, "print":Z
    :goto_4
    array-length v1, v6

    if-ge v4, v1, :cond_8

    .line 738
    aget-byte v1, v6, v4

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float v20, v1, v2

    .line 739
    .local v20, "w":F
    if-eqz v19, :cond_6

    .line 740
    invoke-static {v9, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_5

    .line 741
    float-to-double v2, v7

    sub-float v1, v14, v18

    move-object/from16 v21, v6

    .end local v6    # "bars":[B
    .local v21, "bars":[B
    float-to-double v5, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->inkSpreading:F

    sub-float v1, v20, v1

    move-object/from16 v24, v9

    .end local v9    # "guard":[I
    .local v24, "guard":[I
    float-to-double v8, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    add-float v1, v1, v18

    move/from16 v25, v14

    .end local v14    # "barStartY":F
    .local v25, "barStartY":F
    float-to-double v13, v1

    move-object/from16 v1, p1

    move/from16 v22, v4

    move-object/from16 v26, v12

    const/4 v12, 0x1

    .end local v4    # "k":I
    .end local v12    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v22, "k":I
    .local v26, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    move-wide v4, v5

    move v12, v7

    .end local v7    # "barStartX":F
    .local v12, "barStartX":F
    move-wide v6, v8

    move-object/from16 v23, v24

    .end local v24    # "guard":[I
    .local v23, "guard":[I
    move-wide v8, v13

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move/from16 v13, v25

    goto :goto_5

    .line 743
    .end local v21    # "bars":[B
    .end local v22    # "k":I
    .end local v23    # "guard":[I
    .end local v25    # "barStartY":F
    .end local v26    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v4    # "k":I
    .restart local v6    # "bars":[B
    .restart local v7    # "barStartX":F
    .restart local v9    # "guard":[I
    .local v12, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v14    # "barStartY":F
    :cond_5
    move/from16 v22, v4

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    move-object/from16 v26, v12

    move/from16 v25, v14

    move v12, v7

    .end local v4    # "k":I
    .end local v6    # "bars":[B
    .end local v7    # "barStartX":F
    .end local v9    # "guard":[I
    .end local v14    # "barStartY":F
    .local v12, "barStartX":F
    .restart local v21    # "bars":[B
    .restart local v22    # "k":I
    .restart local v23    # "guard":[I
    .restart local v25    # "barStartY":F
    .restart local v26    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    float-to-double v2, v12

    move/from16 v13, v25

    .end local v25    # "barStartY":F
    .local v13, "barStartY":F
    float-to-double v4, v13

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->inkSpreading:F

    sub-float v1, v20, v1

    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    float-to-double v8, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_5

    .line 739
    .end local v13    # "barStartY":F
    .end local v21    # "bars":[B
    .end local v22    # "k":I
    .end local v23    # "guard":[I
    .end local v26    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v4    # "k":I
    .restart local v6    # "bars":[B
    .restart local v7    # "barStartX":F
    .restart local v9    # "guard":[I
    .local v12, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v14    # "barStartY":F
    :cond_6
    move/from16 v22, v4

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    move-object/from16 v26, v12

    move v13, v14

    move v12, v7

    .line 746
    .end local v4    # "k":I
    .end local v6    # "bars":[B
    .end local v7    # "barStartX":F
    .end local v9    # "guard":[I
    .end local v14    # "barStartY":F
    .local v12, "barStartX":F
    .restart local v13    # "barStartY":F
    .restart local v21    # "bars":[B
    .restart local v22    # "k":I
    .restart local v23    # "guard":[I
    .restart local v26    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_5
    if-nez v19, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    move/from16 v19, v8

    .line 747
    add-float v7, v12, v20

    .line 737
    .end local v12    # "barStartX":F
    .end local v20    # "w":F
    .restart local v7    # "barStartX":F
    add-int/lit8 v4, v22, 0x1

    move v14, v13

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    move-object/from16 v12, v26

    const/4 v8, 0x0

    const/4 v13, 0x0

    .end local v22    # "k":I
    .restart local v4    # "k":I
    goto :goto_4

    .end local v13    # "barStartY":F
    .end local v21    # "bars":[B
    .end local v23    # "guard":[I
    .end local v26    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v6    # "bars":[B
    .restart local v9    # "guard":[I
    .local v12, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local v14    # "barStartY":F
    :cond_8
    move/from16 v22, v4

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    move-object/from16 v26, v12

    move v13, v14

    move v12, v7

    .line 749
    .end local v4    # "k":I
    .end local v6    # "bars":[B
    .end local v7    # "barStartX":F
    .end local v9    # "guard":[I
    .end local v14    # "barStartY":F
    .local v12, "barStartX":F
    .restart local v13    # "barStartY":F
    .restart local v21    # "bars":[B
    .restart local v23    # "guard":[I
    .restart local v26    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 750
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_f

    .line 751
    if-eqz v11, :cond_9

    .line 752
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 754
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 755
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 756
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_c

    .line 805
    :pswitch_8
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_7
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 806
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "c":Ljava/lang/String;
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v3

    .line 808
    .local v3, "len":F
    const/high16 v4, 0x40f00000    # 7.5f

    mul-int/lit8 v5, v1, 0x9

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v5, v4

    div-float v4, v3, v17

    sub-float/2addr v5, v4

    .line 809
    .local v5, "pX":F
    invoke-virtual {v10, v5, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 810
    invoke-virtual {v10, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 805
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "len":F
    .end local v5    # "pX":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 791
    .end local v1    # "k":I
    :pswitch_9
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 792
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 793
    const/4 v1, 0x1

    .restart local v1    # "k":I
    :goto_8
    const/4 v3, 0x7

    if-ge v1, v3, :cond_a

    .line 794
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "c":Ljava/lang/String;
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v4

    .line 796
    .local v4, "len":F
    sget-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v5, v6

    add-float v5, v16, v5

    div-float v6, v4, v17

    sub-float/2addr v5, v6

    .line 797
    .restart local v5    # "pX":F
    invoke-virtual {v10, v5, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 798
    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 793
    .end local v3    # "c":Ljava/lang/String;
    .end local v4    # "len":F
    .end local v5    # "pX":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 800
    .end local v1    # "k":I
    :cond_a
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v4, 0x424c0000    # 51.0f

    mul-float/2addr v1, v4

    add-float v1, v16, v1

    invoke-virtual {v10, v1, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 801
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 802
    goto/16 :goto_c

    .line 778
    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 779
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 780
    const/4 v1, 0x1

    .restart local v1    # "k":I
    :goto_9
    const/16 v2, 0xb

    if-ge v1, v2, :cond_b

    .line 781
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 782
    .restart local v2    # "c":Ljava/lang/String;
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v3

    .line 783
    .local v3, "len":F
    sget-object v4, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    aget v4, v4, v1

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v4, v5

    add-float v4, v16, v4

    div-float v5, v3, v17

    sub-float/2addr v4, v5

    .line 784
    .local v4, "pX":F
    invoke-virtual {v10, v4, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 785
    invoke-virtual {v10, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 780
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "len":F
    .end local v4    # "pX":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 787
    .end local v1    # "k":I
    :cond_b
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v3, 0x42be0000    # 95.0f

    mul-float/2addr v1, v3

    add-float v1, v16, v1

    invoke-virtual {v10, v1, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 788
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 789
    goto :goto_c

    .line 769
    :pswitch_b
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_a
    if-ge v1, v2, :cond_c

    .line 770
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "c":Ljava/lang/String;
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v4

    .line 772
    .local v4, "len":F
    sget-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN8:[F

    aget v5, v5, v1

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v5, v6

    div-float v6, v4, v17

    sub-float/2addr v5, v6

    .line 773
    .restart local v5    # "pX":F
    invoke-virtual {v10, v5, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 774
    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 769
    .end local v3    # "c":Ljava/lang/String;
    .end local v4    # "len":F
    .end local v5    # "pX":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 776
    .end local v1    # "k":I
    :cond_c
    goto :goto_c

    .line 758
    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 759
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 760
    const/4 v1, 0x1

    .restart local v1    # "k":I
    :goto_b
    const/16 v2, 0xd

    if-ge v1, v2, :cond_d

    .line 761
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 762
    .restart local v2    # "c":Ljava/lang/String;
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v3

    .line 763
    .local v3, "len":F
    sget-object v4, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v4, v5

    add-float v4, v16, v4

    div-float v5, v3, v17

    sub-float/2addr v4, v5

    .line 764
    .local v4, "pX":F
    invoke-virtual {v10, v4, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 765
    invoke-virtual {v10, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 760
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "len":F
    .end local v4    # "pX":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 767
    .end local v1    # "k":I
    :cond_d
    nop

    .line 814
    :cond_e
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 816
    :cond_f
    return-object v26

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
