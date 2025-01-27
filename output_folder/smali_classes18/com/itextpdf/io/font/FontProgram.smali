.class public abstract Lcom/itextpdf/io/font/FontProgram;
.super Ljava/lang/Object;
.source "FontProgram.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_WIDTH:I = 0x3e8

.field public static final UNITS_NORMALIZATION:I = 0x3e8

.field private static final serialVersionUID:J = -0x306b1962f10d565bL


# instance fields
.field protected avgWidth:I

.field protected codeToGlyph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field protected encodingScheme:Ljava/lang/String;

.field protected fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

.field protected fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

.field protected fontNames:Lcom/itextpdf/io/font/FontNames;

.field protected isFontSpecific:Z

.field protected registry:Ljava/lang/String;

.field protected unicodeToGlyph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/itextpdf/io/font/FontMetrics;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    .line 70
    new-instance v0, Lcom/itextpdf/io/font/FontIdentification;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontIdentification;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    .line 78
    const-string v0, "FontSpecific"

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->encodingScheme:Ljava/lang/String;

    return-void
.end method

.method static trimFontStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_0
    const-string v0, ",Bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_1
    const-string v0, ",Italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_2
    const-string v0, ",BoldItalic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_3
    return-object p0
.end method


# virtual methods
.method public countOfGlyphs()I
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected fixSpaceIssue()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    .line 297
    .local v0, "space":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    return-void
.end method

.method public getAvgWidth()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/itextpdf/io/font/FontProgram;->avgWidth:I

    return v0
.end method

.method public getCharBBox(I)[I
    .locals 2
    .param p1, "unicode"    # I

    .line 130
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 131
    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFontIdentification()Lcom/itextpdf/io/font/FontIdentification;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    return-object v0
.end method

.method public getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    return-object v0
.end method

.method public getFontNames()Lcom/itextpdf/io/font/FontNames;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    return-object v0
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 2
    .param p1, "unicode"    # I

    .line 135
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    return-object v0
.end method

.method public getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 2
    .param p1, "charCode"    # I

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    return-object v0
.end method

.method public getKerning(II)I
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 155
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    iget-object v1, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I

    move-result v0

    return v0
.end method

.method public abstract getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
.end method

.method public abstract getPdfFontFlags()I
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 2
    .param p1, "unicode"    # I

    .line 115
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 116
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

.method public hasKernPairs()Z
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isFontSpecific()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific:Z

    return v0
.end method

.method protected setBbox([I)V
    .locals 5
    .param p1, "bbox"    # [I

    .line 269
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    .line 270
    return-void
.end method

.method protected setBold(Z)V
    .locals 2
    .param p1, "isBold"    # Z

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getMacStyle()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setMacStyle(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getMacStyle()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setMacStyle(I)V

    .line 266
    :goto_0
    return-void
.end method

.method protected setCapHeight(I)V
    .locals 1
    .param p1, "capHeight"    # I

    .line 212
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    .line 213
    return-void
.end method

.method protected setFixedPitch(Z)V
    .locals 1
    .param p1, "isFixedPitch"    # Z

    .line 257
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setIsFixedPitch(Z)V

    .line 258
    return-void
.end method

.method protected setFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFamilyName(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFullName()[[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFullName(Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected setFontStretch(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontWidth"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontStretch(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method protected setFontWeight(I)V
    .locals 1
    .param p1, "fontWeight"    # I

    .line 244
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontWeight(I)V

    .line 245
    return-void
.end method

.method protected setItalicAngle(I)V
    .locals 2
    .param p1, "italicAngle"    # I

    .line 227
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    .line 228
    return-void
.end method

.method protected setRegistry(Ljava/lang/String;)V
    .locals 0
    .param p1, "registry"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/itextpdf/io/font/FontProgram;->registry:Ljava/lang/String;

    .line 180
    return-void
.end method

.method protected setStemH(I)V
    .locals 1
    .param p1, "stemH"    # I

    .line 235
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setStemH(I)V

    .line 236
    return-void
.end method

.method protected setStemV(I)V
    .locals 1
    .param p1, "stemV"    # I

    .line 231
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setStemV(I)V

    .line 232
    return-void
.end method

.method protected setTypoAscender(I)V
    .locals 1
    .param p1, "ascender"    # I

    .line 204
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    .line 205
    return-void
.end method

.method protected setTypoDescender(I)V
    .locals 1
    .param p1, "descender"    # I

    .line 208
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    .line 209
    return-void
.end method

.method protected setXHeight(I)V
    .locals 1
    .param p1, "xHeight"    # I

    .line 216
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setXHeight(I)V

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
