.class public Lcom/itextpdf/kernel/pdf/PdfNumber;
.super Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.source "PdfNumber.java"


# static fields
.field private static final serialVersionUID:J = -0x37b0503e75f6636L


# instance fields
.field private isDouble:Z

.field private value:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .line 58
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "content"    # [B

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>([B)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    .line 70
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    .line 71
    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 189
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 190
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 191
    .local v0, "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    iget-wide v1, v0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    .line 192
    iget-boolean v1, v0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    .line 193
    return-void
.end method

.method public decrement()V
    .locals 4

    .line 121
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    .line 122
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 138
    return v0

    .line 140
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 141
    :cond_3
    :goto_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected generateContent()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    if-eqz v0, :cond_0

    .line 172
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-static {v0, v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(D)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    goto :goto_0

    .line 174
    :cond_0
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    double-to-int v0, v0

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    .line 176
    :goto_0
    return-void
.end method

.method protected generateValue()V
    .locals 3

    .line 180
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    .line 184
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    .line 185
    return-void
.end method

.method public getType()B
    .locals 1

    .line 79
    const/16 v0, 0x8

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->generateValue()V

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    return-wide v0
.end method

.method public hasDecimalPoint()Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 156
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 157
    .local v0, "hash":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public increment()V
    .locals 4

    .line 117
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    .line 118
    return-void
.end method

.method public intValue()I
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected isDoubleNumber()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 162
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>()V

    return-object v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .line 111
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    .line 114
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 105
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(D)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
