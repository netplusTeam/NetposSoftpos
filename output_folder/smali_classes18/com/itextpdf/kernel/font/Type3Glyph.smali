.class public final Lcom/itextpdf/kernel/font/Type3Glyph;
.super Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
.source "Type3Glyph.java"


# static fields
.field private static final D_0_STR:Ljava/lang/String; = "d0\n"

.field private static final D_1_STR:Ljava/lang/String; = "d1\n"

.field private static final d0:[B

.field private static final d1:[B

.field private static final serialVersionUID:J = 0x50a6f71cb2cf2fa8L


# instance fields
.field private isColor:Z

.field private llx:F

.field private lly:F

.field private urx:F

.field private ury:F

.field private wx:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "d0\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/font/Type3Glyph;->d0:[B

    .line 64
    const-string v0, "d1\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/font/Type3Glyph;->d1:[B

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;FFFFFZ)V
    .locals 7
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "wx"    # F
    .param p3, "llx"    # F
    .param p4, "lly"    # F
    .param p5, "urx"    # F
    .param p6, "ury"    # F
    .param p7, "isColor"    # Z

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 81
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/font/Type3Glyph;->writeMetrics(FFFFFZ)V

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/Type3Glyph;->fillBBFromBytes([B)V

    .line 95
    :cond_0
    return-void
.end method

.method private fillBBFromBytes([B)V
    .locals 8
    .param p1, "bytes"    # [B

    .line 200
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 201
    .local v0, "str":Ljava/lang/String;
    const-string v1, "d0\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "d0Pos":I
    const-string v2, "d1\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 203
    .local v2, "d1Pos":I
    const/4 v3, 0x2

    const-string v4, " "

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v1, v5, :cond_0

    .line 204
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 205
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "bbArray":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v3, :cond_1

    .line 207
    aget-object v3, v4, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    goto :goto_0

    .line 208
    .end local v4    # "bbArray":[Ljava/lang/String;
    :cond_0
    if-eq v2, v5, :cond_1

    .line 209
    iput-boolean v6, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 210
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4    # "bbArray":[Ljava/lang/String;
    array-length v5, v4

    const/4 v7, 0x6

    if-ne v5, v7, :cond_2

    .line 212
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    .line 213
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->llx:F

    .line 214
    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->lly:F

    .line 215
    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->urx:F

    .line 216
    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->ury:F

    goto :goto_1

    .line 208
    .end local v4    # "bbArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    nop

    .line 219
    :cond_2
    :goto_1
    return-void
.end method

.method private writeMetrics(FFFFFZ)V
    .locals 2
    .param p1, "wx"    # F
    .param p2, "llx"    # F
    .param p3, "lly"    # F
    .param p4, "urx"    # F
    .param p5, "ury"    # F
    .param p6, "isColor"    # Z

    .line 142
    iput-boolean p6, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 143
    iput p1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    .line 145
    iput p2, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->llx:F

    .line 146
    iput p3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->lly:F

    .line 147
    iput p4, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->urx:F

    .line 148
    iput p5, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->ury:F

    .line 150
    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 151
    iget-object v1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    .line 152
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 153
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 155
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 156
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/font/Type3Glyph;->d0:[B

    .line 157
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    .line 160
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 161
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 163
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 164
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 165
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 166
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 167
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 168
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 169
    invoke-virtual {v0, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 170
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 171
    invoke-virtual {v0, p5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 172
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/font/Type3Glyph;->d1:[B

    .line 173
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 175
    :goto_0
    return-void
.end method


# virtual methods
.method public addImage(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 2
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "e"    # F
    .param p7, "f"    # F
    .param p8, "inlineImage"    # Z

    .line 193
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Not colorized type3 fonts accept only mask images."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImage(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public getLlx()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->llx:F

    return v0
.end method

.method public getLly()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->lly:F

    return v0
.end method

.method public getUrx()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->urx:F

    return v0
.end method

.method public getUry()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->ury:F

    return v0
.end method

.method public getWx()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    return v0
.end method

.method public isColor()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    return v0
.end method
