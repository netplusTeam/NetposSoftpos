.class public Lcom/itextpdf/kernel/font/DocTrueTypeFont;
.super Lcom/itextpdf/io/font/TrueTypeFont;
.source "DocTrueTypeFont.java"

# interfaces
.implements Lcom/itextpdf/kernel/font/IDocFontProgram;


# static fields
.field private static final serialVersionUID:J = 0x3fff775dbc027935L


# instance fields
.field private fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

.field private fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

.field private missingWidth:I

.field private subtype:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 71
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->missingWidth:I

    .line 72
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 73
    .local v0, "baseFontName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontName(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/itextpdf/kernel/font/FontUtil;->createRandomFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontName(Ljava/lang/String;)V

    .line 78
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 79
    return-void
.end method

.method static createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;
    .locals 9
    .param p0, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "fontEncoding"    # Lcom/itextpdf/io/font/FontEncoding;
    .param p2, "toUnicode"    # Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 83
    .local v0, "fontProgram":Lcom/itextpdf/kernel/font/DocTrueTypeFont;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fillFontDescriptor(Lcom/itextpdf/kernel/font/DocTrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 85
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 86
    .local v1, "firstCharNumber":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 87
    .local v3, "firstChar":I
    :goto_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 88
    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getMissingWidth()I

    move-result v5

    .line 87
    invoke-static {v4, v3, v5}, Lcom/itextpdf/kernel/font/FontUtil;->convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I

    move-result-object v4

    .line 89
    .local v4, "widths":[I
    iput v2, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "glyphsWithWidths":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x100

    if-ge v5, v6, :cond_4

    .line 92
    new-instance v6, Lcom/itextpdf/io/font/otf/Glyph;

    aget v7, v4, v5

    invoke-virtual {p1, v5}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v8

    invoke-direct {v6, v5, v7, v8}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 93
    .local v6, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v7, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 96
    iget-object v7, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 97
    :cond_1
    if-eqz p2, :cond_2

    .line 98
    invoke-virtual {p2, v5}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 100
    :cond_2
    :goto_2
    aget v7, v4, v5

    if-lez v7, :cond_3

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    iget v7, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    aget v8, v4, v5

    add-int/2addr v7, v8

    iput v7, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 91
    .end local v6    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 105
    .end local v5    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 106
    iget v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    div-int/2addr v5, v2

    iput v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 108
    :cond_5
    return-object v0
.end method

.method static createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;
    .locals 11
    .param p0, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "toUnicode"    # Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    .line 112
    new-instance v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 113
    .local v0, "fontProgram":Lcom/itextpdf/kernel/font/DocTrueTypeFont;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 114
    .local v1, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fillFontDescriptor(Lcom/itextpdf/kernel/font/DocTrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 116
    if-eqz v1, :cond_0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "dw":I
    goto :goto_0

    .line 118
    .end local v2    # "dw":I
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2    # "dw":I
    goto :goto_0

    .line 121
    .end local v2    # "dw":I
    :cond_1
    const/16 v2, 0x3e8

    .line 123
    .restart local v2    # "dw":I
    :goto_0
    const/4 v3, 0x0

    .line 124
    .local v3, "widths":Lcom/itextpdf/io/util/IntHashtable;
    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 125
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/kernel/font/FontUtil;->convertCompositeWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v3

    .line 126
    iput v4, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->getCodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 128
    .local v6, "cid":I
    invoke-virtual {v3, v6}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v6}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v7

    goto :goto_2

    :cond_2
    move v7, v2

    .line 129
    .local v7, "width":I
    :goto_2
    new-instance v8, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p1, v6}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v9

    invoke-direct {v8, v6, v7, v9}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(II[C)V

    .line 130
    .local v8, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 131
    iget-object v9, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3
    iget-object v9, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget v9, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    add-int/2addr v9, v7

    iput v9, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 135
    .end local v6    # "cid":I
    .end local v7    # "width":I
    .end local v8    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    goto :goto_1

    .line 136
    :cond_4
    iget-object v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    iget v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    iget-object v6, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    div-int/2addr v5, v6

    iput v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 141
    :cond_5
    iget-object v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 142
    iget-object v5, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v8

    goto :goto_3

    :cond_6
    move v8, v2

    :goto_3
    const/4 v9, -0x1

    invoke-direct {v7, v4, v8, v9}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_7
    return-object v0
.end method

.method static fillFontDescriptor(Lcom/itextpdf/kernel/font/DocTrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 13
    .param p0, "font"    # Lcom/itextpdf/kernel/font/DocTrueTypeFont;
    .param p1, "fontDesc"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 178
    if-nez p1, :cond_0

    .line 179
    const-class v0, Lcom/itextpdf/kernel/font/FontUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 180
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Font dictionary does not contain required /FontDescriptor entry."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 184
    .local v0, "v":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoAscender(I)V

    .line 187
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoDescender(I)V

    .line 191
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setCapHeight(I)V

    .line 195
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setXHeight(I)V

    .line 199
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setItalicAngle(I)V

    .line 203
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_6

    .line 205
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setStemV(I)V

    .line 207
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StemH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_7

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setStemH(I)V

    .line 211
    :cond_7
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_8

    .line 213
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontWeight(I)V

    .line 215
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MissingWidth:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->missingWidth:I

    .line 220
    :cond_9
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontStretch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 221
    .local v1, "fontStretch":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v1, :cond_a

    .line 222
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontStretch(Ljava/lang/String;)V

    .line 225
    :cond_a
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 226
    .local v2, "bboxValue":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    .line 227
    const/4 v7, 0x4

    new-array v7, v7, [I

    .line 229
    .local v7, "bbox":[I
    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v5

    .line 231
    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v6

    .line 233
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v3

    .line 235
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v4

    .line 236
    aget v8, v7, v5

    aget v9, v7, v3

    if-le v8, v9, :cond_b

    .line 237
    aget v8, v7, v5

    .line 238
    .local v8, "t":I
    aget v9, v7, v3

    aput v9, v7, v5

    .line 239
    aput v8, v7, v3

    .line 241
    .end local v8    # "t":I
    :cond_b
    aget v8, v7, v6

    aget v9, v7, v4

    if-le v8, v9, :cond_c

    .line 242
    aget v8, v7, v6

    .line 243
    .restart local v8    # "t":I
    aget v9, v7, v4

    aput v9, v7, v6

    .line 244
    aput v8, v7, v4

    .line 246
    .end local v8    # "t":I
    :cond_c
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setBbox([I)V

    .line 250
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v8

    if-nez v8, :cond_d

    .line 251
    aget v8, v7, v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    .line 252
    .local v8, "maxAscent":F
    aget v9, v7, v6

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    .line 253
    .local v9, "minDescent":F
    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float v11, v8, v10

    sub-float v12, v8, v9

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {p0, v11}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoAscender(I)V

    .line 254
    mul-float/2addr v10, v9

    sub-float v11, v8, v9

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p0, v10}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoDescender(I)V

    .line 258
    .end local v7    # "bbox":[I
    .end local v8    # "maxAscent":F
    .end local v9    # "minDescent":F
    :cond_d
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v7

    .line 259
    .local v7, "fontFamily":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v7, :cond_e

    .line 260
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontFamily(Ljava/lang/String;)V

    .line 263
    :cond_e
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    .line 264
    .local v8, "flagsValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v8, :cond_10

    .line 265
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v9

    .line 266
    .local v9, "flags":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_f

    .line 267
    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFixedPitch(Z)V

    .line 269
    :cond_f
    const/high16 v10, 0x40000

    and-int/2addr v10, v9

    if-eqz v10, :cond_10

    .line 270
    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setBold(Z)V

    .line 274
    .end local v9    # "flags":I
    :cond_10
    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v9, v4, v5

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile2:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v9, v4, v6

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile3:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v6, v4, v3

    move-object v3, v4

    .line 275
    .local v3, "fontFileNames":[Lcom/itextpdf/kernel/pdf/PdfName;
    array-length v4, v3

    :goto_0
    if-ge v5, v4, :cond_12

    aget-object v6, v3, v5

    .line 276
    .local v6, "fontFile":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 277
    iput-object v6, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 278
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 279
    goto :goto_1

    .line 275
    .end local v6    # "fontFile":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    :cond_12
    :goto_1
    return-void
.end method


# virtual methods
.method public getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMissingWidth()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->missingWidth:I

    return v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    return v0
.end method
