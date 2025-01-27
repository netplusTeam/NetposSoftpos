.class public Lcom/itextpdf/barcodes/Barcode39;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "Barcode39.java"


# static fields
.field private static final BARS:[[B

.field private static final CHARS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

.field private static final EXTENDED:Ljava/lang/String; = "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    const/16 v0, 0x2c

    new-array v0, v0, [[B

    const/16 v1, 0x9

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

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

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

    new-array v2, v1, [B

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1d

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1f

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_21

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_22

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_23

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_24

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_25

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_26

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_27

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_28

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_29

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_2b

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/barcodes/Barcode39;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
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
        0x0t
        0x0t
        0x1t
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
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
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

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/Barcode39;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 145
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 146
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    .line 147
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    .line 148
    iput-object p2, p0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 149
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    .line 150
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    .line 151
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    .line 153
    iput-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode39;->checksumText:Z

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/barcodes/Barcode39;->startStopText:Z

    .line 155
    iput-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    .line 156
    return-void
.end method

.method public static getBarsCode39(Ljava/lang/String;)[B
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 167
    .local v0, "bars":[B
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 169
    .local v2, "ch":C
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 170
    .local v3, "idx":I
    const/16 v4, 0x2a

    const-string v5, " is illegal in code 39"

    const-string v6, "The character "

    if-ne v2, v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 176
    sget-object v4, Lcom/itextpdf/barcodes/Barcode39;->BARS:[[B

    aget-object v4, v4, v3

    const/4 v5, 0x0

    mul-int/lit8 v6, v1, 0xa

    const/16 v7, 0x9

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .end local v2    # "ch":C
    .end local v3    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .restart local v2    # "ch":C
    .restart local v3    # "idx":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    .end local v1    # "k":I
    .end local v2    # "ch":C
    .end local v3    # "idx":I
    :cond_3
    return-object v0
.end method

.method static getChecksum(Ljava/lang/String;)C
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "chk":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    if-ge v1, v2, :cond_3

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 215
    .local v2, "idx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 216
    .local v3, "ch":C
    const/16 v4, 0x2a

    const-string v5, " is illegal in code 39"

    const-string v6, "The character "

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 222
    add-int/2addr v0, v2

    .line 213
    .end local v2    # "idx":I
    .end local v3    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .restart local v2    # "idx":I
    .restart local v3    # "ch":C
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    .end local v1    # "k":I
    .end local v2    # "idx":I
    .end local v3    # "ch":C
    :cond_3
    rem-int/lit8 v1, v0, 0x2b

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method

.method public static getCode39Ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 192
    .local v2, "c":C
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1

    .line 195
    mul-int/lit8 v3, v2, 0x2

    const-string v4, "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 196
    .local v3, "c1":C
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 197
    .local v4, "c2":C
    const/16 v5, 0x20

    if-eq v3, v5, :cond_0

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .end local v2    # "c":C
    .end local v3    # "c1":C
    .end local v4    # "c2":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .restart local v2    # "c":C
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is illegal in code 39"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    .end local v1    # "k":I
    .end local v2    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 19
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 395
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode39;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 396
    .local v1, "f":I
    :goto_0
    if-nez p2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 397
    .local v2, "g":I
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 398
    .local v3, "canvas":Ljava/awt/Canvas;
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 399
    .local v4, "bCode":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    if-eqz v5, :cond_2

    .line 400
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/barcodes/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    :cond_2
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v5, :cond_3

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    .line 406
    .local v5, "len":I
    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    float-to-int v6, v6

    .line 407
    .local v6, "nn":I
    mul-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x6

    mul-int/2addr v7, v5

    add-int/lit8 v8, v5, -0x1

    add-int/2addr v7, v8

    .line 408
    .local v7, "fullWidth":I
    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getBarsCode39(Ljava/lang/String;)[B

    move-result-object v8

    .line 409
    .local v8, "bars":[B
    const/4 v9, 0x1

    .line 410
    .local v9, "print":Z
    const/4 v10, 0x0

    .line 411
    .local v10, "ptr":I
    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    float-to-int v15, v11

    .line 412
    .local v15, "height":I
    mul-int v11, v7, v15

    new-array v14, v11, [I

    .line 413
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

    if-ge v11, v9, :cond_8

    .line 414
    aget-byte v9, v8, v11

    const/4 v12, 0x1

    if-nez v9, :cond_4

    move v9, v12

    goto :goto_3

    :cond_4
    move v9, v6

    .line 415
    .local v9, "w":I
    :goto_3
    move v13, v2

    .line 416
    .local v13, "c":I
    if-eqz v16, :cond_5

    .line 417
    move v13, v1

    .line 419
    :cond_5
    if-nez v16, :cond_6

    move v10, v12

    :cond_6
    move/from16 v16, v10

    .line 420
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v9, :cond_7

    .line 421
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "ptr":I
    .local v12, "ptr":I
    aput v13, v14, v17

    .line 420
    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v12

    goto :goto_4

    .line 413
    .end local v9    # "w":I
    .end local v10    # "j":I
    .end local v12    # "ptr":I
    .end local v13    # "c":I
    .restart local v17    # "ptr":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 424
    .end local v11    # "k":I
    :cond_8
    move v9, v7

    .local v9, "k":I
    :goto_5
    array-length v11, v14

    if-ge v9, v11, :cond_9

    .line 425
    invoke-static {v14, v10, v14, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    add-int/2addr v9, v7

    goto :goto_5

    .line 427
    .end local v9    # "k":I
    :cond_9
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

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "fontX":F
    const/4 v1, 0x0

    .line 237
    .local v1, "fontY":F
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 238
    .local v2, "fCode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_5

    .line 242
    iget v3, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 243
    iget v3, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode39;->getDescender()F

    move-result v4

    sub-float/2addr v3, v4

    move v1, v3

    .end local v1    # "fontY":F
    .local v3, "fontY":F
    goto :goto_0

    .line 245
    .end local v3    # "fontY":F
    .restart local v1    # "fontY":F
    :cond_1
    iget v3, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    neg-float v3, v3

    iget v4, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    add-float/2addr v3, v4

    move v1, v3

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 248
    .local v3, "fullCode":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/itextpdf/barcodes/Barcode39;->checksumText:Z

    if-eqz v4, :cond_2

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    :cond_2
    iget-boolean v4, p0, Lcom/itextpdf/barcodes/Barcode39;->startStopText:Z

    if-eqz v4, :cond_3

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v5, p0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v5, v3

    :goto_1
    iget v6, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    .line 256
    .end local v3    # "fullCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 257
    .local v3, "len":I
    iget-boolean v4, p0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v4, :cond_6

    .line 258
    add-int/lit8 v3, v3, 0x1

    .line 260
    :cond_6
    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v6, v5

    const/high16 v5, 0x40400000    # 3.0f

    iget v7, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v7, v5

    iget v5, p0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    mul-float/2addr v4, v6

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 261
    .local v4, "fullWidth":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 262
    iget v5, p0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    add-float/2addr v5, v1

    .line 263
    .local v5, "fullHeight":F
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v6, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v6
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 32
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 308
    .local v2, "fullCode":Ljava/lang/String;
    const/4 v3, 0x0

    .line 309
    .local v3, "fontX":F
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 310
    .local v4, "bCode":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    if-eqz v5, :cond_0

    .line 311
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/barcodes/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    :cond_0
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v5, :cond_4

    .line 314
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->checksumText:Z

    if-eqz v5, :cond_1

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_1
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->startStopText:Z

    if-eqz v5, :cond_2

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    :cond_2
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v6, v2

    :goto_0
    move-object v2, v6

    iget v7, v0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v3

    .line 322
    :cond_4
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v5, :cond_5

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    .line 326
    .local v5, "len":I
    int-to-float v6, v5

    const/high16 v7, 0x40c00000    # 6.0f

    iget v8, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v8, v7

    const/high16 v7, 0x40400000    # 3.0f

    iget v9, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v9, v7

    iget v7, v0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    mul-float/2addr v6, v8

    add-int/lit8 v7, v5, -0x1

    int-to-float v7, v7

    iget v8, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 327
    .local v6, "fullWidth":F
    const/4 v7, 0x0

    .line 328
    .local v7, "barStartX":F
    const/4 v8, 0x0

    .line 329
    .local v8, "textStartX":F
    iget v9, v0, Lcom/itextpdf/barcodes/Barcode39;->textAlignment:I

    packed-switch v9, :pswitch_data_0

    .line 340
    cmpl-float v9, v3, v6

    const/high16 v10, 0x40000000    # 2.0f

    if-lez v9, :cond_7

    .line 341
    sub-float v9, v3, v6

    div-float v7, v9, v10

    goto :goto_1

    .line 333
    :pswitch_0
    cmpl-float v9, v3, v6

    if-lez v9, :cond_6

    .line 334
    sub-float v7, v3, v6

    goto :goto_1

    .line 336
    :cond_6
    sub-float v8, v6, v3

    .line 338
    goto :goto_1

    .line 331
    :pswitch_1
    goto :goto_1

    .line 343
    :cond_7
    sub-float v9, v6, v3

    div-float v8, v9, v10

    .line 347
    :goto_1
    const/4 v9, 0x0

    .line 348
    .local v9, "barStartY":F
    const/4 v10, 0x0

    .line 349
    .local v10, "textStartY":F
    iget-object v11, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v11, :cond_9

    .line 350
    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_8

    .line 351
    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    iget v12, v0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    sub-float v10, v11, v12

    goto :goto_2

    .line 353
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode39;->getDescender()F

    move-result v11

    neg-float v10, v11

    .line 354
    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    add-float v9, v10, v11

    .line 357
    :cond_9
    :goto_2
    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getBarsCode39(Ljava/lang/String;)[B

    move-result-object v11

    .line 358
    .local v11, "bars":[B
    const/4 v12, 0x1

    .line 359
    .local v12, "print":Z
    if-eqz p2, :cond_a

    .line 360
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 362
    :cond_a
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_3
    array-length v14, v11

    if-ge v13, v14, :cond_e

    .line 363
    aget-byte v14, v11, v13

    if-nez v14, :cond_b

    iget v14, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    goto :goto_4

    :cond_b
    iget v14, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    iget v15, v0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    mul-float/2addr v14, v15

    .line 364
    .local v14, "w":F
    :goto_4
    if-eqz v12, :cond_c

    .line 365
    move/from16 v24, v3

    move-object/from16 v25, v4

    .end local v3    # "fontX":F
    .end local v4    # "bCode":Ljava/lang/String;
    .local v24, "fontX":F
    .local v25, "bCode":Ljava/lang/String;
    float-to-double v3, v7

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "len":I
    .end local v6    # "fullWidth":F
    .local v26, "len":I
    .local v27, "fullWidth":F
    float-to-double v5, v9

    iget v15, v0, Lcom/itextpdf/barcodes/Barcode39;->inkSpreading:F

    sub-float v15, v14, v15

    move/from16 v28, v8

    move/from16 v29, v9

    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .local v28, "textStartX":F
    .local v29, "barStartY":F
    float-to-double v8, v15

    iget v15, v0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    move/from16 v30, v10

    move-object/from16 v31, v11

    .end local v10    # "textStartY":F
    .end local v11    # "bars":[B
    .local v30, "textStartY":F
    .local v31, "bars":[B
    float-to-double v10, v15

    move-object/from16 v15, p1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    invoke-virtual/range {v15 .. v23}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_5

    .line 364
    .end local v24    # "fontX":F
    .end local v25    # "bCode":Ljava/lang/String;
    .end local v26    # "len":I
    .end local v27    # "fullWidth":F
    .end local v28    # "textStartX":F
    .end local v29    # "barStartY":F
    .end local v30    # "textStartY":F
    .end local v31    # "bars":[B
    .restart local v3    # "fontX":F
    .restart local v4    # "bCode":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "fullWidth":F
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .restart local v10    # "textStartY":F
    .restart local v11    # "bars":[B
    :cond_c
    move/from16 v24, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move-object/from16 v31, v11

    .line 367
    .end local v3    # "fontX":F
    .end local v4    # "bCode":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "fullWidth":F
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .end local v10    # "textStartY":F
    .end local v11    # "bars":[B
    .restart local v24    # "fontX":F
    .restart local v25    # "bCode":Ljava/lang/String;
    .restart local v26    # "len":I
    .restart local v27    # "fullWidth":F
    .restart local v28    # "textStartX":F
    .restart local v29    # "barStartY":F
    .restart local v30    # "textStartY":F
    .restart local v31    # "bars":[B
    :goto_5
    if-nez v12, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    move v12, v3

    .line 368
    add-float/2addr v7, v14

    .line 362
    .end local v14    # "w":F
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v8, v28

    move/from16 v9, v29

    move/from16 v10, v30

    move-object/from16 v11, v31

    goto :goto_3

    .end local v24    # "fontX":F
    .end local v25    # "bCode":Ljava/lang/String;
    .end local v26    # "len":I
    .end local v27    # "fullWidth":F
    .end local v28    # "textStartX":F
    .end local v29    # "barStartY":F
    .end local v30    # "textStartY":F
    .end local v31    # "bars":[B
    .restart local v3    # "fontX":F
    .restart local v4    # "bCode":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "fullWidth":F
    .restart local v8    # "textStartX":F
    .restart local v9    # "barStartY":F
    .restart local v10    # "textStartY":F
    .restart local v11    # "bars":[B
    :cond_e
    move/from16 v24, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move-object/from16 v31, v11

    .line 370
    .end local v3    # "fontX":F
    .end local v4    # "bCode":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "fullWidth":F
    .end local v8    # "textStartX":F
    .end local v9    # "barStartY":F
    .end local v10    # "textStartY":F
    .end local v11    # "bars":[B
    .end local v13    # "k":I
    .restart local v24    # "fontX":F
    .restart local v25    # "bCode":Ljava/lang/String;
    .restart local v26    # "len":I
    .restart local v27    # "fullWidth":F
    .restart local v28    # "textStartX":F
    .restart local v29    # "barStartY":F
    .restart local v30    # "textStartY":F
    .restart local v31    # "bars":[B
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 371
    iget-object v3, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v3, :cond_10

    .line 372
    if-eqz v1, :cond_f

    .line 373
    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_7

    .line 372
    :cond_f
    move-object/from16 v3, p1

    .line 375
    :goto_7
    nop

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    .line 377
    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 378
    move/from16 v8, v28

    move/from16 v10, v30

    .end local v28    # "textStartX":F
    .end local v30    # "textStartY":F
    .restart local v8    # "textStartX":F
    .restart local v10    # "textStartY":F
    invoke-virtual {v4, v8, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 379
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_8

    .line 371
    .end local v8    # "textStartX":F
    .end local v10    # "textStartY":F
    .restart local v28    # "textStartX":F
    .restart local v30    # "textStartY":F
    :cond_10
    move-object/from16 v3, p1

    move/from16 v8, v28

    move/from16 v10, v30

    .line 382
    .end local v28    # "textStartX":F
    .end local v30    # "textStartY":F
    .restart local v8    # "textStartX":F
    .restart local v10    # "textStartY":F
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode39;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
