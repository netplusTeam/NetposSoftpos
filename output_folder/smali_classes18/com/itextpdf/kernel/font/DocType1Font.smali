.class Lcom/itextpdf/kernel/font/DocType1Font;
.super Lcom/itextpdf/io/font/Type1Font;
.source "DocType1Font.java"

# interfaces
.implements Lcom/itextpdf/kernel/font/IDocFontProgram;


# static fields
.field private static final serialVersionUID:J = 0x56e0fc010b130428L


# instance fields
.field private fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

.field private fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

.field private missingWidth:I

.field private subtype:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->missingWidth:I

    .line 72
    return-void
.end method

.method static createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/Type1Font;
    .locals 12
    .param p0, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "fontEncoding"    # Lcom/itextpdf/io/font/FontEncoding;
    .param p2, "toUnicode"    # Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    .line 75
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 77
    .local v0, "baseFontName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "baseFont":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v1    # "baseFont":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/itextpdf/kernel/font/FontUtil;->createRandomFontName()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "baseFont":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/Type1Font;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v2, "type1StdFont":Lcom/itextpdf/io/font/Type1Font;
    goto :goto_1

    .line 88
    .end local v2    # "type1StdFont":Lcom/itextpdf/io/font/Type1Font;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 91
    .local v2, "type1StdFont":Lcom/itextpdf/io/font/Type1Font;
    :goto_1
    if-eqz v2, :cond_1

    .line 92
    return-object v2

    .line 95
    .end local v2    # "type1StdFont":Lcom/itextpdf/io/font/Type1Font;
    :cond_1
    new-instance v2, Lcom/itextpdf/kernel/font/DocType1Font;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/font/DocType1Font;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "fontProgram":Lcom/itextpdf/kernel/font/DocType1Font;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 97
    .local v3, "fontDesc":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_2

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-object v4, v2, Lcom/itextpdf/kernel/font/DocType1Font;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 98
    invoke-static {v2, v3}, Lcom/itextpdf/kernel/font/DocType1Font;->fillFontDescriptor(Lcom/itextpdf/kernel/font/DocType1Font;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 100
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    .line 101
    .local v4, "firstCharNumber":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_3

    :cond_3
    move v6, v5

    .line 102
    .local v6, "firstChar":I
    :goto_3
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v7

    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/DocType1Font;->getMissingWidth()I

    move-result v8

    invoke-static {v7, v6, v8}, Lcom/itextpdf/kernel/font/FontUtil;->convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I

    move-result-object v7

    .line 103
    .local v7, "widths":[I
    iput v5, v2, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, "glyphsWithWidths":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    const/16 v9, 0x100

    if-ge v8, v9, :cond_7

    .line 106
    new-instance v9, Lcom/itextpdf/io/font/otf/Glyph;

    aget v10, v7, v8

    invoke-virtual {p1, v8}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v11

    invoke-direct {v9, v8, v10, v11}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 107
    .local v9, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v10, v2, Lcom/itextpdf/kernel/font/DocType1Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v9}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 110
    invoke-virtual {v9}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 111
    iget-object v10, v2, Lcom/itextpdf/kernel/font/DocType1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 113
    :cond_4
    if-eqz p2, :cond_5

    .line 114
    invoke-virtual {p2, v8}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 116
    :cond_5
    :goto_5
    aget v10, v7, v8

    if-lez v10, :cond_6

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    iget v10, v2, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    aget v11, v7, v8

    add-int/2addr v10, v11

    iput v10, v2, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    .line 105
    .end local v9    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 121
    .end local v8    # "i":I
    :cond_7
    if-eqz v5, :cond_8

    .line 122
    iget v8, v2, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    div-int/2addr v8, v5

    iput v8, v2, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    .line 124
    :cond_8
    return-object v2
.end method

.method static fillFontDescriptor(Lcom/itextpdf/kernel/font/DocType1Font;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 13
    .param p0, "font"    # Lcom/itextpdf/kernel/font/DocType1Font;
    .param p1, "fontDesc"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 158
    if-nez p1, :cond_0

    .line 159
    const-class v0, Lcom/itextpdf/kernel/font/FontUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 160
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Font dictionary does not contain required /FontDescriptor entry."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 161
    return-void

    .line 163
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 164
    .local v0, "v":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoAscender(I)V

    .line 167
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoDescender(I)V

    .line 171
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setCapHeight(I)V

    .line 175
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setXHeight(I)V

    .line 179
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setItalicAngle(I)V

    .line 183
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setStemV(I)V

    .line 187
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StemH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setStemH(I)V

    .line 191
    :cond_7
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_8

    .line 193
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/DocType1Font;->setFontWeight(I)V

    .line 195
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MissingWidth:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_9

    .line 197
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/font/DocType1Font;->missingWidth:I

    .line 200
    :cond_9
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontStretch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 201
    .local v1, "fontStretch":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v1, :cond_a

    .line 202
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/DocType1Font;->setFontStretch(Ljava/lang/String;)V

    .line 205
    :cond_a
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 207
    .local v2, "bboxValue":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    .line 208
    const/4 v7, 0x4

    new-array v7, v7, [I

    .line 210
    .local v7, "bbox":[I
    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v5

    .line 212
    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v6

    .line 214
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v3

    .line 216
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    aput v8, v7, v4

    .line 218
    aget v8, v7, v5

    aget v9, v7, v3

    if-le v8, v9, :cond_b

    .line 219
    aget v8, v7, v5

    .line 220
    .local v8, "t":I
    aget v9, v7, v3

    aput v9, v7, v5

    .line 221
    aput v8, v7, v3

    .line 223
    .end local v8    # "t":I
    :cond_b
    aget v8, v7, v6

    aget v9, v7, v4

    if-le v8, v9, :cond_c

    .line 224
    aget v8, v7, v6

    .line 225
    .restart local v8    # "t":I
    aget v9, v7, v4

    aput v9, v7, v6

    .line 226
    aput v8, v7, v4

    .line 228
    .end local v8    # "t":I
    :cond_c
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/font/DocType1Font;->setBbox([I)V

    .line 232
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v8

    if-nez v8, :cond_d

    .line 233
    aget v8, v7, v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    .line 234
    .local v8, "maxAscent":F
    aget v9, v7, v6

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    .line 235
    .local v9, "minDescent":F
    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float v11, v8, v10

    sub-float v12, v8, v9

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {p0, v11}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoAscender(I)V

    .line 236
    mul-float/2addr v10, v9

    sub-float v11, v8, v9

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p0, v10}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoDescender(I)V

    .line 240
    .end local v7    # "bbox":[I
    .end local v8    # "maxAscent":F
    .end local v9    # "minDescent":F
    :cond_d
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v7

    .line 241
    .local v7, "fontFamily":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v7, :cond_e

    .line 242
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/kernel/font/DocType1Font;->setFontFamily(Ljava/lang/String;)V

    .line 245
    :cond_e
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    .line 246
    .local v8, "flagsValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v8, :cond_10

    .line 247
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v9

    .line 248
    .local v9, "flags":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_f

    .line 249
    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/font/DocType1Font;->setFixedPitch(Z)V

    .line 251
    :cond_f
    const/high16 v10, 0x40000

    and-int/2addr v10, v9

    if-eqz v10, :cond_10

    .line 252
    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/font/DocType1Font;->setBold(Z)V

    .line 256
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

    .line 257
    .local v3, "fontFileNames":[Lcom/itextpdf/kernel/pdf/PdfName;
    array-length v4, v3

    :goto_0
    if-ge v5, v4, :cond_12

    aget-object v6, v3, v5

    .line 258
    .local v6, "fontFile":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 259
    iput-object v6, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 260
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 261
    goto :goto_1

    .line 257
    .end local v6    # "fontFile":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 264
    :cond_12
    :goto_1
    return-void
.end method


# virtual methods
.method public getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMissingWidth()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->missingWidth:I

    return v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    return v0
.end method
