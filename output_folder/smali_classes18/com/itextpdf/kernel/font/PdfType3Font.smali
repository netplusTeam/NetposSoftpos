.class public Lcom/itextpdf/kernel/font/PdfType3Font;
.super Lcom/itextpdf/kernel/font/PdfSimpleFont;
.source "PdfType3Font.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/font/PdfSimpleFont<",
        "Lcom/itextpdf/kernel/font/Type3Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x448ed439919a9f6bL


# instance fields
.field private dimensionsMultiplier:D

.field private fontMatrix:[D


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 132
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 83
    sget-object v0, Lcom/itextpdf/kernel/font/PdfType3Font;->DEFAULT_FONT_MATRIX:[D

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->subset:Z

    .line 134
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->embedded:Z

    .line 135
    new-instance v0, Lcom/itextpdf/kernel/font/Type3Font;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/font/Type3Font;-><init>(Z)V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 136
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/DocFontEncoding;->createDocFontEncoding(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 137
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CharProcs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 138
    .local v0, "charProcsDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 139
    .local v1, "encoding":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Differences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 140
    .local v2, "differences":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    .line 141
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "Type 3 font issue. Font cannot be initialized correctly."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->calculateAndSetFontMatrix()V

    .line 145
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->calculateAndSetBBox()V

    .line 147
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->calculateShortTag(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v3

    .line 148
    .local v3, "firstChar":I
    invoke-direct {p0, p1, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->calculateWidth(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)[I

    move-result-object v4

    .line 149
    .local v4, "widths":[I
    invoke-direct {p0, v2, v0, v4}, Lcom/itextpdf/kernel/font/PdfType3Font;->addGlyphsFromDifferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V

    .line 150
    invoke-direct {p0, v0, v4}, Lcom/itextpdf/kernel/font/PdfType3Font;->addGlyphsFromCharProcs(Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V

    .line 152
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/font/PdfType3Font;->fillFontDescriptor(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 153
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "fontFamily"    # Ljava/lang/String;
    .param p4, "colorized"    # Z

    .line 120
    invoke-direct {p0, p1, p4}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/font/Type3Font;->setFontName(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/font/Type3Font;->setFontFamily(Ljava/lang/String;)V

    .line 123
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->dimensionsMultiplier:D

    .line 124
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "colorized"    # Z

    .line 102
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>()V

    .line 83
    sget-object v0, Lcom/itextpdf/kernel/font/PdfType3Font;->DEFAULT_FONT_MATRIX:[D

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    .line 103
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->subset:Z

    .line 105
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->embedded:Z

    .line 106
    new-instance v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/font/Type3Font;-><init>(Z)V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 107
    invoke-static {}, Lcom/itextpdf/io/font/FontEncoding;->createEmptyFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 108
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->dimensionsMultiplier:D

    .line 109
    return-void
.end method

.method private addGlyphsFromCharProcs(Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V
    .locals 11
    .param p1, "charProcsDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "widths"    # [I

    .line 421
    if-nez p1, :cond_0

    .line 422
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 425
    .local v0, "unicodeToCode":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createReverseMapping()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 429
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 430
    .local v2, "glyphName":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v3

    .line 431
    .local v3, "unicode":I
    const/4 v4, -0x1

    .line 432
    .local v4, "code":I
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v3}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v3}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    move v10, v4

    goto :goto_2

    .line 434
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 435
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v10, v4

    goto :goto_2

    .line 437
    :cond_3
    move v10, v4

    .end local v4    # "code":I
    .local v10, "code":I
    :goto_2
    const/4 v4, -0x1

    if-eq v10, v4, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    if-nez v4, :cond_4

    .line 438
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/font/Type3Font;

    aget v7, p2, v10

    const/4 v8, 0x0

    new-instance v9, Lcom/itextpdf/kernel/font/Type3Glyph;

    .line 439
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-direct {v9, v5, v6}, Lcom/itextpdf/kernel/font/Type3Glyph;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 438
    move v5, v10

    move v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/kernel/font/Type3Font;->addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V

    .line 441
    .end local v2    # "glyphName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "unicode":I
    .end local v10    # "code":I
    :cond_4
    goto :goto_1

    .line 442
    :cond_5
    return-void
.end method

.method private addGlyphsFromDifferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V
    .locals 11
    .param p1, "differences"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "charProcsDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "widths"    # [I

    .line 382
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 386
    :cond_0
    const/4 v0, 0x0

    .line 387
    .local v0, "currentNumber":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 388
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 389
    .local v8, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    move-object v2, v8

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    goto :goto_1

    .line 392
    :cond_1
    move-object v2, v8

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "glyphName":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v10

    .line 394
    .local v10, "unicode":I
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, v9}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2, v0, v9}, Lcom/itextpdf/io/font/FontEncoding;->setDifference(ILjava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/font/Type3Font;

    aget v5, p3, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/itextpdf/kernel/font/Type3Glyph;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Lcom/itextpdf/kernel/font/Type3Glyph;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 397
    move v3, v0

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/kernel/font/Type3Font;->addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V

    .line 400
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 387
    .end local v8    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v9    # "glyphName":Ljava/lang/String;
    .end local v10    # "unicode":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "k":I
    :cond_3
    return-void

    .line 383
    .end local v0    # "currentNumber":I
    :cond_4
    :goto_2
    return-void
.end method

.method private calculateAndSetBBox()V
    .locals 9

    .line 501
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 503
    .local v0, "fontBBox":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v1, v3

    const/4 v3, 0x1

    .line 504
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/4 v4, 0x2

    .line 505
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x3

    .line 506
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 503
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    .line 507
    .end local v0    # "fontBBox":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    .line 510
    :goto_0
    return-void
.end method

.method private calculateAndSetFontMatrix()V
    .locals 8

    .line 513
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontMatrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 514
    .local v0, "fontMatrixArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 518
    const/4 v2, 0x6

    new-array v3, v2, [D

    .line 519
    .local v3, "fontMatrix":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 520
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 519
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    .end local v4    # "i":I
    :cond_0
    aget-wide v4, v3, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/kernel/font/PdfType3Font;->setDimensionsMultiplier(D)V

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 524
    aget-wide v4, v3, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v6

    div-double/2addr v4, v6

    aput-wide v4, v3, v1

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontMatrix([D)V

    .line 527
    return-void

    .line 515
    .end local v3    # "fontMatrix":[D
    :cond_2
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Missing required field {0} in font dictionary."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FontMatrix:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v1

    .line 516
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method private calculateShortTag(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 5
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 491
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeFirstLastChar(Lcom/itextpdf/kernel/pdf/PdfNumber;I)I

    move-result v0

    .line 492
    .local v0, "firstChar":I
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LastChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    const/16 v2, 0xff

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeFirstLastChar(Lcom/itextpdf/kernel/pdf/PdfNumber;I)I

    move-result v1

    .line 494
    .local v1, "lastChar":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 495
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->shortTag:[B

    const/4 v4, 0x1

    aput-byte v4, v3, v2

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private calculateWidth(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)[I
    .locals 8
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "firstChar"    # I

    .line 476
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 477
    .local v0, "pdfWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 482
    .local v2, "multipliedWidths":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 483
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    .line 487
    .local v3, "multipliedPdfWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-static {v3, p2, v1}, Lcom/itextpdf/kernel/font/FontUtil;->convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I

    move-result-object v1

    return-object v1

    .line 478
    .end local v2    # "multipliedWidths":[D
    .end local v3    # "multipliedPdfWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Missing required field {0} in font dictionary."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method private fillFontDescriptor(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5
    .param p1, "fontDesc"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 530
    if-nez p1, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 534
    .local v0, "v":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->setItalicAngle(I)V

    .line 537
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_2

    .line 539
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontWeight(I)V

    .line 542
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontStretch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 543
    .local v1, "fontStretch":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v1, :cond_3

    .line 544
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontStretch(Ljava/lang/String;)V

    .line 547
    :cond_3
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 548
    .local v2, "fontName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v2, :cond_4

    .line 549
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontName(Ljava/lang/String;)V

    .line 552
    :cond_4
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    .line 553
    .local v3, "fontFamily":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v3, :cond_5

    .line 554
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontFamily(Ljava/lang/String;)V

    .line 556
    :cond_5
    return-void
.end method

.method private flushFontData()V
    .locals 7

    .line 445
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/Type3Font;->getNumberOfGlyphs()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 448
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 449
    .local v0, "charProcs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    if-gt v1, v2, :cond_3

    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, "glyph":Lcom/itextpdf/kernel/font/Type3Glyph;
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v2

    .line 454
    :cond_0
    if-nez v2, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/font/Type3Font;->getType3GlyphByCode(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v2

    .line 457
    :cond_1
    if-eqz v2, :cond_2

    .line 458
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4, v1}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/Type3Glyph;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 459
    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/Type3Glyph;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 449
    .end local v2    # "glyph":Lcom/itextpdf/kernel/font/Type3Glyph;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CharProcs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 463
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 464
    aget-wide v3, v2, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontMatrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontMatrix()[D

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 467
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeBBox([I)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 468
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "fontName":Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-super {p0, v1, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 470
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 472
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 473
    return-void

    .line 446
    .end local v0    # "charProcs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "fontName":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "No glyphs defined for type3 font."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFirstEmptyCode()I
    .locals 3

    .line 411
    const/4 v0, 0x1

    .line 412
    .local v0, "startFrom":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-nez v2, :cond_0

    .line 414
    return v1

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private normalizeBBox([I)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 7
    .param p1, "bBox"    # [I

    .line 565
    const/4 v0, 0x4

    new-array v1, v0, [D

    .line 566
    .local v1, "normalizedBBox":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 567
    aget v3, p1, v2

    int-to-double v3, v3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v5

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    return-object v0
.end method

.method private normalizeFirstLastChar(Lcom/itextpdf/kernel/pdf/PdfNumber;I)I
    .locals 2
    .param p1, "firstLast"    # Lcom/itextpdf/kernel/pdf/PdfNumber;
    .param p2, "defaultValue"    # I

    .line 559
    if-nez p1, :cond_0

    return p2

    .line 560
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 561
    .local v0, "result":I
    if-ltz v0, :cond_2

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method


# virtual methods
.method protected addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "fontDescriptor"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 358
    return-void
.end method

.method public addGlyph(CIIIII)Lcom/itextpdf/kernel/font/Type3Glyph;
    .locals 21
    .param p1, "c"    # C
    .param p2, "wx"    # I
    .param p3, "llx"    # I
    .param p4, "lly"    # I
    .param p5, "urx"    # I
    .param p6, "ury"    # I

    .line 268
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v5

    .line 269
    .local v5, "glyph":Lcom/itextpdf/kernel/font/Type3Glyph;
    if-eqz v5, :cond_0

    .line 270
    return-object v5

    .line 272
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFirstEmptyCode()I

    move-result v12

    .line 273
    .local v12, "code":I
    new-instance v6, Lcom/itextpdf/kernel/font/Type3Glyph;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v14

    move/from16 v11, p2

    int-to-float v15, v11

    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v3

    int-to-float v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/font/Type3Font;->isColorized()Z

    move-result v20

    move-object v13, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v13 .. v20}, Lcom/itextpdf/kernel/font/Type3Glyph;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;FFFFFZ)V

    move-object v5, v6

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/font/Type3Font;

    const/4 v7, 0x4

    new-array v10, v7, [I

    const/4 v13, 0x0

    aput v1, v10, v13

    const/4 v14, 0x1

    aput v2, v10, v14

    const/4 v15, 0x2

    aput v3, v10, v15

    const/16 v16, 0x3

    aput v4, v10, v16

    move v7, v12

    move/from16 v8, p1

    move/from16 v9, p2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/kernel/font/Type3Font;->addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V

    .line 275
    iget-object v6, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    move/from16 v7, p1

    invoke-virtual {v6, v12, v7}, Lcom/itextpdf/io/font/FontEncoding;->addSymbol(II)Z

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/font/Type3Font;->isColorized()Z

    move-result v6

    if-nez v6, :cond_2

    .line 278
    iget-object v6, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontProgram;->countOfGlyphs()I

    move-result v6

    if-nez v6, :cond_1

    .line 279
    iget-object v6, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v6, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v6

    .line 282
    .local v6, "bbox":[I
    aget v8, v6, v13

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 283
    .local v8, "newLlx":I
    aget v9, v6, v14

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 284
    .local v9, "newLly":I
    aget v10, v6, v15

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 285
    .local v10, "newUrx":I
    aget v11, v6, v16

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 286
    .local v11, "newUry":I
    iget-object v13, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v13}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v13

    invoke-virtual {v13, v8, v9, v10, v11}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    .line 289
    .end local v6    # "bbox":[I
    .end local v8    # "newLlx":I
    .end local v9    # "newLly":I
    .end local v10    # "newUrx":I
    .end local v11    # "newUry":I
    :cond_2
    :goto_0
    return-object v5
.end method

.method public containsGlyph(I)Z
    .locals 2
    .param p1, "unicode"    # I

    .line 309
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x21

    if-ge p1, v0, :cond_1

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0
.end method

.method public flush()V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->ensureUnderlyingObjectHasIndirectReference()V

    .line 317
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->flushFontData()V

    .line 318
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flush()V

    .line 319
    return-void
.end method

.method getDimensionsMultiplier()D
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->dimensionsMultiplier:D

    return-wide v0
.end method

.method protected getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method protected getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 7
    .param p1, "fontName"    # Ljava/lang/String;

    .line 323
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 324
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 325
    .local v0, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 326
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 328
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    .line 329
    .local v1, "fontMetrics":Lcom/itextpdf/io/font/FontMetrics;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 330
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 332
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v2

    .line 333
    .local v2, "fontNames":Lcom/itextpdf/io/font/FontNames;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 334
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 335
    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_0

    .line 336
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getPdfFontFlags()I

    move-result v3

    .line 341
    .local v3, "flags":I
    sget v4, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    sget v5, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    or-int/2addr v4, v5

    not-int v4, v4

    and-int/2addr v3, v4

    .line 343
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    :goto_0
    or-int/2addr v3, v4

    .line 346
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 347
    return-object v0

    .line 348
    .end local v0    # "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "fontMetrics":Lcom/itextpdf/io/font/FontMetrics;
    .end local v2    # "fontNames":Lcom/itextpdf/io/font/FontNames;
    .end local v3    # "flags":I
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const-class v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 351
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Type 3 font issue. Font Descriptor is required for tagged PDF. FontName shall be specified."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 353
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontMatrix()[D
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    return-object v0
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 4
    .param p1, "unicode"    # I

    .line 294
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 296
    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/Glyph;

    move-object v0, v1

    if-nez v1, :cond_2

    .line 299
    new-instance v1, Lcom/itextpdf/io/font/otf/Glyph;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    move-object v0, v1

    .line 300
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_2
    return-object v0
.end method

.method protected getGlyphWidth(Lcom/itextpdf/io/font/otf/Glyph;)D
    .locals 4
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 366
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDimensionsMultiplier()D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNumberOfGlyphs()I
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/Type3Font;->getNumberOfGlyphs()I

    move-result v0

    return v0
.end method

.method public getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;
    .locals 1
    .param p1, "unicode"    # I

    .line 220
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v0

    return-object v0
.end method

.method public isEmbedded()Z
    .locals 1

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public isSubset()Z
    .locals 1

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method setDimensionsMultiplier(D)V
    .locals 0
    .param p1, "dimensionsMultiplier"    # D

    .line 378
    iput-wide p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->dimensionsMultiplier:D

    .line 379
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontFamily(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setFontMatrix([D)V
    .locals 0
    .param p1, "fontMatrix"    # [D

    .line 239
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    .line 240
    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontName(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setFontStretch(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontWidth"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontStretch(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setFontWeight(I)V
    .locals 1
    .param p1, "fontWeight"    # I

    .line 179
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontWeight(I)V

    .line 180
    return-void
.end method

.method public setItalicAngle(I)V
    .locals 1
    .param p1, "italicAngle"    # I

    .line 190
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setItalicAngle(I)V

    .line 191
    return-void
.end method

.method public setPdfFontFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 209
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setPdfFontFlags(I)V

    .line 210
    return-void
.end method
