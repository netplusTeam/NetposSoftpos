.class public Lcom/itextpdf/kernel/font/PdfType1Font;
.super Lcom/itextpdf/kernel/font/PdfSimpleFont;
.source "PdfType1Font.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/font/PdfSimpleFont<",
        "Lcom/itextpdf/io/font/Type1Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61483d0cd308aa91L


# direct methods
.method constructor <init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;)V
    .locals 1
    .param p1, "type1Font"    # Lcom/itextpdf/io/font/Type1Font;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type1Font"    # Lcom/itextpdf/io/font/Type1Font;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "embedded"    # Z

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType1Font;->setFontProgram(Lcom/itextpdf/io/font/FontProgram;)V

    .line 61
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->embedded:Z

    .line 62
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/io/font/Type1Font;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string p2, "FontSpecific"

    .line 65
    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "FontSpecific"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-static {}, Lcom/itextpdf/io/font/FontEncoding;->createFontSpecificEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p2}, Lcom/itextpdf/io/font/FontEncoding;->createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 70
    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->newFont:Z

    .line 82
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/font/DocFontEncoding;->createDocFontEncoding(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 83
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/font/DocType1Font;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/Type1Font;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 85
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of v1, v1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {v1}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->embedded:Z

    .line 88
    :cond_1
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->subset:Z

    .line 89
    return-void
.end method


# virtual methods
.method protected addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7
    .param p1, "fontDescriptor"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 158
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->embedded:Z

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of v0, v0, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/IDocFontProgram;

    .line 161
    .local v0, "docType1Font":Lcom/itextpdf/kernel/font/IDocFontProgram;
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 162
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    .line 161
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 163
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 164
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 167
    .end local v0    # "docType1Font":Lcom/itextpdf/kernel/font/IDocFontProgram;
    :cond_0
    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->getFontStreamBytes()[B

    move-result-object v0

    .line 169
    .local v0, "fontStreamBytes":[B
    if-eqz v0, :cond_3

    .line 170
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 171
    .local v1, "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/Type1Font;->getFontStreamLengths()[I

    move-result-object v2

    .line 172
    .local v2, "fontStreamLengths":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 173
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "k":I
    :cond_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 176
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType1Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 182
    .end local v0    # "fontStreamBytes":[B
    .end local v1    # "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v2    # "fontStreamLengths":[I
    :cond_3
    :goto_1
    return-void
.end method

.method public containsGlyph(I)Z
    .locals 4
    .param p1, "unicode"    # I

    .line 133
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 140
    :cond_3
    return v1
.end method

.method public flush()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->ensureUnderlyingObjectHasIndirectReference()V

    .line 105
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->newFont:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType1Font;->flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 108
    :cond_1
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flush()V

    .line 109
    return-void
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 4
    .param p1, "unicode"    # I

    .line 113
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    goto :goto_0

    .line 118
    .end local v0    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 119
    .restart local v0    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/Glyph;

    move-object v0, v1

    if-nez v1, :cond_1

    .line 122
    new-instance v1, Lcom/itextpdf/io/font/otf/Glyph;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    move-object v0, v1

    .line 123
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    :goto_0
    return-object v0

    .line 128
    .end local v0    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isBuiltInFont()Z
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result v0

    return v0
.end method

.method public isSubset()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->subset:Z

    return v0
.end method

.method public setSubset(Z)V
    .locals 0
    .param p1, "subset"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->subset:Z

    .line 99
    return-void
.end method
