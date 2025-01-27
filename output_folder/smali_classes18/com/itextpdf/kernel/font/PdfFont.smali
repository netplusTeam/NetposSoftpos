.class public abstract Lcom/itextpdf/kernel/font/PdfFont;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FONT_MATRIX:[D

.field protected static final EMPTY_BYTES:[B

.field public static final SIMPLE_FONT_MAX_CHAR_CODE_VALUE:I = 0xff

.field private static final serialVersionUID:J = -0x6a51e7ef2f7b1701L


# instance fields
.field protected embedded:Z

.field protected fontProgram:Lcom/itextpdf/io/font/FontProgram;

.field protected newFont:Z

.field protected notdefGlyphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field protected subset:Z

.field protected subsetRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/itextpdf/kernel/font/PdfFont;->EMPTY_BYTES:[B

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/font/PdfFont;->DEFAULT_FONT_MATRIX:[D

    return-void

    :array_0
    .array-data 8
        0x3f50624dd2f1a9fcL    # 0.001
        0x0
        0x0
        0x3f50624dd2f1a9fcL    # 0.001
        0x0
        0x0
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 3

    .line 105
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->notdefGlyphs:Ljava/util/Map;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->newFont:Z

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfFont;->embedded:Z

    .line 96
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    .line 106
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 107
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 100
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->notdefGlyphs:Ljava/util/Map;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->newFont:Z

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfFont;->embedded:Z

    .line 96
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 102
    return-void
.end method

.method protected static compactRanges(Ljava/util/List;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    .local p0, "ranges":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v0, "simp":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 550
    .local v2, "range":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_0

    .line 551
    new-array v7, v3, [I

    aget v8, v2, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v4

    const v8, 0xffff

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v7, v5

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 553
    .end local v2    # "range":[I
    .end local v6    # "j":I
    :cond_0
    goto :goto_0

    .line 554
    :cond_1
    const/4 v1, 0x0

    .local v1, "k1":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_6

    .line 555
    add-int/lit8 v2, v1, 0x1

    .local v2, "k2":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 556
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 557
    .local v6, "r1":[I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 558
    .local v7, "r2":[I
    aget v8, v6, v4

    aget v9, v7, v4

    if-lt v8, v9, :cond_2

    aget v8, v6, v4

    aget v9, v7, v5

    if-le v8, v9, :cond_3

    :cond_2
    aget v8, v6, v5

    aget v9, v7, v4

    if-lt v8, v9, :cond_4

    aget v8, v6, v4

    aget v9, v7, v5

    if-gt v8, v9, :cond_4

    .line 559
    :cond_3
    aget v8, v6, v4

    aget v9, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v6, v4

    .line 560
    aget v8, v6, v5

    aget v9, v7, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v6, v5

    .line 561
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 562
    add-int/lit8 v2, v2, -0x1

    .line 555
    .end local v6    # "r1":[I
    .end local v7    # "r2":[I
    :cond_4
    add-int/2addr v2, v5

    goto :goto_3

    .line 554
    .end local v2    # "k2":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 566
    .end local v1    # "k1":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    .line 567
    .local v1, "s":[I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 568
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 569
    .local v3, "r":[I
    mul-int/lit8 v6, v2, 0x2

    aget v7, v3, v4

    aput v7, v1, v6

    .line 570
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    aget v7, v3, v5

    aput v7, v1, v6

    .line 567
    .end local v3    # "r":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 572
    .end local v2    # "k":I
    :cond_7
    return-object v1
.end method

.method protected static updateSubsetPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "isSubset"    # Z
    .param p2, "isEmbedded"    # Z

    .line 512
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 513
    invoke-static {p0}, Lcom/itextpdf/kernel/font/FontUtil;->addRandomSubsetPrefixForFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 515
    :cond_0
    return-object p0
.end method


# virtual methods
.method public addSubsetRange([I)V
    .locals 1
    .param p1, "range"    # [I

    .line 424
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subsetRanges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subsetRanges:Ljava/util/List;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subsetRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfFont;->setSubset(Z)V

    .line 429
    return-void
.end method

.method public abstract appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation
.end method

.method public appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 1
    .param p2, "characterCodes"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            ")Z"
        }
    .end annotation

    .line 200
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract appendGlyphs(Ljava/lang/String;IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation
.end method

.method public containsGlyph(I)Z
    .locals 5
    .param p1, "unicode"    # I

    .line 125
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 126
    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    move v1, v3

    :cond_0
    return v1

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    if-lez v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 134
    :cond_3
    return v1
.end method

.method public abstract convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B
.end method

.method public abstract convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B
.end method

.method public abstract convertToBytes(Ljava/lang/String;)[B
.end method

.method public abstract createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
.end method

.method public abstract decode(Lcom/itextpdf/kernel/pdf/PdfString;)Ljava/lang/String;
.end method

.method public abstract decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;
.end method

.method public flush()V
    .locals 0

    .line 492
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    .line 493
    return-void
.end method

.method public getAscent(IF)I
    .locals 5
    .param p1, "unicode"    # I
    .param p2, "fontSize"    # F

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "max":I
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 370
    .local v1, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-nez v1, :cond_0

    .line 371
    const/4 v2, 0x0

    return v2

    .line 373
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v2

    .line 374
    .local v2, "bbox":[I
    if-eqz v2, :cond_1

    const/4 v3, 0x3

    aget v4, v2, v3

    if-le v4, v0, :cond_1

    .line 375
    aget v0, v2, v3

    goto :goto_0

    .line 376
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v0

    .line 380
    :cond_2
    :goto_0
    int-to-float v3, v0

    mul-float/2addr v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public getAscent(Ljava/lang/String;F)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontSize"    # F

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 339
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    .line 341
    .local v2, "ch":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v2    # "ch":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 345
    .restart local v2    # "ch":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    .line 346
    .local v3, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v3, :cond_2

    .line 347
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v4

    .line 348
    .local v4, "bbox":[I
    if-eqz v4, :cond_1

    const/4 v5, 0x3

    aget v6, v4, v5

    if-le v6, v0, :cond_1

    .line 349
    aget v0, v4, v5

    goto :goto_2

    .line 350
    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v5

    if-le v5, v0, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v0

    .line 337
    .end local v2    # "ch":I
    .end local v3    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v4    # "bbox":[I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "k":I
    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public abstract getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F
.end method

.method public getDescent(IF)I
    .locals 5
    .param p1, "unicode"    # I
    .param p2, "fontSize"    # F

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "min":I
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 314
    .local v1, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-nez v1, :cond_0

    .line 315
    const/4 v2, 0x0

    return v2

    .line 317
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v2

    .line 318
    .local v2, "bbox":[I
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    aget v4, v2, v3

    if-ge v4, v0, :cond_1

    .line 319
    aget v0, v2, v3

    goto :goto_0

    .line 320
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v0

    .line 324
    :cond_2
    :goto_0
    int-to-float v3, v0

    mul-float/2addr v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public getDescent(Ljava/lang/String;F)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontSize"    # F

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "min":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 284
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    .line 286
    .local v2, "ch":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v2    # "ch":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 290
    .restart local v2    # "ch":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    .line 291
    .local v3, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v5

    .line 293
    .local v5, "bbox":[I
    if-eqz v5, :cond_1

    aget v6, v5, v4

    if-ge v6, v0, :cond_1

    .line 294
    aget v0, v5, v4

    goto :goto_2

    .line 295
    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v6

    if-ge v6, v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v0

    .line 282
    .end local v2    # "ch":I
    .end local v3    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v5    # "bbox":[I
    :cond_2
    :goto_2
    add-int/2addr v1, v4

    goto :goto_0

    .line 300
    .end local v1    # "k":I
    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected abstract getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
.end method

.method public getFontMatrix()[D
    .locals 1

    .line 212
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFont;->DEFAULT_FONT_MATRIX:[D

    return-object v0
.end method

.method public getFontProgram()Lcom/itextpdf/io/font/FontProgram;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    return-object v0
.end method

.method public abstract getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
.end method

.method protected getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 5
    .param p1, "fontStreamBytes"    # [B
    .param p2, "fontStreamLengths"    # [I

    .line 527
    if-eqz p1, :cond_1

    .line 530
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 531
    .local v0, "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfFont;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 532
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 533
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v4, p2, v1

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "k":I
    :cond_0
    return-object v0

    .line 528
    .end local v0    # "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Font embedding issue."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth(IF)F
    .locals 2
    .param p1, "unicode"    # I
    .param p2, "fontSize"    # F

    .line 234
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidth(Ljava/lang/String;F)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontSize"    # F

    .line 269
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidth(I)I
    .locals 2
    .param p1, "unicode"    # I

    .line 222
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 223
    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 247
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    .line 249
    .local v2, "ch":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    .end local v2    # "ch":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 253
    .restart local v2    # "ch":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    .line 254
    .local v3, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 245
    .end local v2    # "ch":I
    .end local v3    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontProgram"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->embedded:Z

    return v0
.end method

.method public isSubset()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 1
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 586
    const/4 v0, 0x1

    return v0

    .line 588
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFont;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public setSubset(Z)V
    .locals 0
    .param p1, "subset"    # Z

    .line 411
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    .line 412
    return-void
.end method

.method public splitString(Ljava/lang/String;FF)Ljava/util/List;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontSize"    # F
    .param p3, "maxWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "resultString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 434
    .local v1, "lastWhiteSpace":I
    const/4 v2, 0x0

    .line 436
    .local v2, "startPos":I
    const/4 v3, 0x0

    .line 437
    .local v3, "tokenLength":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 438
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 439
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    move v1, v4

    .line 442
    :cond_0
    invoke-virtual {p0, v5, p2}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v6

    .line 443
    .local v6, "currentCharWidth":F
    add-float v7, v3, v6

    cmpl-float v7, v7, p3

    if-gez v7, :cond_2

    const/16 v7, 0xa

    if-ne v5, v7, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    add-float/2addr v3, v6

    goto :goto_2

    .line 444
    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    .line 445
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v2, v1, 0x1

    .line 447
    const/4 v3, 0x0

    .line 448
    move v4, v1

    goto :goto_2

    .line 449
    :cond_3
    if-eq v2, v4, :cond_4

    .line 450
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    move v2, v4

    .line 452
    move v3, v6

    goto :goto_2

    .line 454
    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v2, v4, 0x1

    .line 456
    const/4 v3, 0x0

    .line 437
    .end local v5    # "ch":C
    .end local v6    # "currentCharWidth":F
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 463
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfFont{fontProgram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V
.end method

.method public abstract writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V
.end method
