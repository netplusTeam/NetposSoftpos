.class public Lcom/itextpdf/io/font/FontMetrics;
.super Ljava/lang/Object;
.source "FontMetrics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x62b6ee4acbda8d54L


# instance fields
.field private advanceWidthMax:I

.field private ascender:I

.field private bbox:[I

.field private capHeight:I

.field private descender:I

.field private glyphWidths:[I

.field private isFixedPitch:Z

.field private italicAngle:F

.field private lineGap:I

.field protected normalizationCoef:F

.field private numOfGlyphs:I

.field private stemH:I

.field private stemV:I

.field private strikeoutPosition:I

.field private strikeoutSize:I

.field private subscriptOffset:I

.field private subscriptSize:I

.field private superscriptOffset:I

.field private superscriptSize:I

.field private typoAscender:I

.field private typoDescender:I

.field private underlinePosition:I

.field private underlineThickness:I

.field private unitsPerEm:I

.field private winAscender:I

.field private winDescender:I

.field private xHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    .line 55
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->unitsPerEm:I

    .line 61
    const/16 v0, 0x320

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoAscender:I

    .line 63
    const/16 v0, -0xc8

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoDescender:I

    .line 65
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->capHeight:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->xHeight:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->italicAngle:F

    .line 72
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    .line 86
    const/16 v1, -0x64

    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlinePosition:I

    .line 88
    const/16 v1, 0x32

    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    .line 102
    const/16 v1, 0x50

    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->stemV:I

    .line 104
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->stemH:I

    return-void

    :array_0
    .array-data 4
        -0x32
        -0xc8
        0x3e8
        0x384
    .end array-data
.end method


# virtual methods
.method public getAdvanceWidthMax()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->advanceWidthMax:I

    return v0
.end method

.method public getAscender()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->ascender:I

    return v0
.end method

.method public getBbox()[I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    return-object v0
.end method

.method public getCapHeight()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->capHeight:I

    return v0
.end method

.method public getDescender()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->descender:I

    return v0
.end method

.method public getGlyphWidths()[I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->glyphWidths:[I

    return-object v0
.end method

.method public getItalicAngle()F
    .locals 1

    .line 138
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->italicAngle:F

    return v0
.end method

.method public getLineGap()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->lineGap:I

    return v0
.end method

.method public getNumberOfGlyphs()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->numOfGlyphs:I

    return v0
.end method

.method public getStemH()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->stemH:I

    return v0
.end method

.method public getStemV()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->stemV:I

    return v0
.end method

.method public getStrikeoutPosition()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutPosition:I

    return v0
.end method

.method public getStrikeoutSize()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutSize:I

    return v0
.end method

.method public getSubscriptOffset()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptOffset:I

    return v0
.end method

.method public getSubscriptSize()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptSize:I

    return v0
.end method

.method public getSuperscriptOffset()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptOffset:I

    return v0
.end method

.method public getSuperscriptSize()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptSize:I

    return v0
.end method

.method public getTypoAscender()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoAscender:I

    return v0
.end method

.method public getTypoDescender()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoDescender:I

    return v0
.end method

.method public getUnderlinePosition()I
    .locals 2

    .line 177
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlinePosition:I

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUnderlineThickness()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    return v0
.end method

.method public getUnitsPerEm()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->unitsPerEm:I

    return v0
.end method

.method public getWinAscender()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->winAscender:I

    return v0
.end method

.method public getWinDescender()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->winDescender:I

    return v0
.end method

.method public getXHeight()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->xHeight:I

    return v0
.end method

.method public isFixedPitch()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch:Z

    return v0
.end method

.method protected setAdvanceWidthMax(I)V
    .locals 2
    .param p1, "advanceWidthMax"    # I

    .line 281
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->advanceWidthMax:I

    .line 282
    return-void
.end method

.method protected setAscender(I)V
    .locals 2
    .param p1, "ascender"    # I

    .line 261
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->ascender:I

    .line 262
    return-void
.end method

.method public setBbox(IIII)V
    .locals 2
    .param p1, "llx"    # I
    .param p2, "lly"    # I
    .param p3, "urx"    # I
    .param p4, "ury"    # I

    .line 146
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 147
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 148
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 149
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 150
    return-void
.end method

.method protected setCapHeight(I)V
    .locals 2
    .param p1, "capHeight"    # I

    .line 249
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->capHeight:I

    .line 250
    return-void
.end method

.method protected setDescender(I)V
    .locals 2
    .param p1, "descender"    # I

    .line 265
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->descender:I

    .line 266
    return-void
.end method

.method protected setGlyphWidths([I)V
    .locals 0
    .param p1, "glyphWidths"    # [I

    .line 237
    iput-object p1, p0, Lcom/itextpdf/io/font/FontMetrics;->glyphWidths:[I

    .line 238
    return-void
.end method

.method protected setIsFixedPitch(Z)V
    .locals 0
    .param p1, "isFixedPitch"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch:Z

    .line 327
    return-void
.end method

.method protected setItalicAngle(F)V
    .locals 0
    .param p1, "italicAngle"    # F

    .line 257
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->italicAngle:F

    .line 258
    return-void
.end method

.method protected setLineGap(I)V
    .locals 2
    .param p1, "lineGap"    # I

    .line 269
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->lineGap:I

    .line 270
    return-void
.end method

.method protected setNumberOfGlyphs(I)V
    .locals 0
    .param p1, "numOfGlyphs"    # I

    .line 233
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->numOfGlyphs:I

    .line 234
    return-void
.end method

.method protected setStemH(I)V
    .locals 0
    .param p1, "stemH"    # I

    .line 322
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->stemH:I

    .line 323
    return-void
.end method

.method public setStemV(I)V
    .locals 0
    .param p1, "stemV"    # I

    .line 318
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->stemV:I

    .line 319
    return-void
.end method

.method protected setStrikeoutPosition(I)V
    .locals 2
    .param p1, "strikeoutPosition"    # I

    .line 293
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutPosition:I

    .line 294
    return-void
.end method

.method protected setStrikeoutSize(I)V
    .locals 2
    .param p1, "strikeoutSize"    # I

    .line 297
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutSize:I

    .line 298
    return-void
.end method

.method protected setSubscriptOffset(I)V
    .locals 2
    .param p1, "subscriptOffset"    # I

    .line 305
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptOffset:I

    .line 306
    return-void
.end method

.method protected setSubscriptSize(I)V
    .locals 2
    .param p1, "subscriptSize"    # I

    .line 301
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptSize:I

    .line 302
    return-void
.end method

.method protected setSuperscriptOffset(I)V
    .locals 2
    .param p1, "superscriptOffset"    # I

    .line 313
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptOffset:I

    .line 314
    return-void
.end method

.method protected setSuperscriptSize(I)V
    .locals 0
    .param p1, "superscriptSize"    # I

    .line 309
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptSize:I

    .line 310
    return-void
.end method

.method protected setTypoAscender(I)V
    .locals 2
    .param p1, "typoAscender"    # I

    .line 241
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoAscender:I

    .line 242
    return-void
.end method

.method protected setTypoDescender(I)V
    .locals 2
    .param p1, "typoDesctender"    # I

    .line 245
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoDescender:I

    .line 246
    return-void
.end method

.method protected setUnderlinePosition(I)V
    .locals 2
    .param p1, "underlinePosition"    # I

    .line 285
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlinePosition:I

    .line 286
    return-void
.end method

.method protected setUnderlineThickness(I)V
    .locals 0
    .param p1, "underineThickness"    # I

    .line 289
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    .line 290
    return-void
.end method

.method protected setUnitsPerEm(I)V
    .locals 2
    .param p1, "unitsPerEm"    # I

    .line 221
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->unitsPerEm:I

    .line 222
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    .line 223
    return-void
.end method

.method protected setWinAscender(I)V
    .locals 2
    .param p1, "winAscender"    # I

    .line 273
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->winAscender:I

    .line 274
    return-void
.end method

.method protected setWinDescender(I)V
    .locals 2
    .param p1, "winDescender"    # I

    .line 277
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->winDescender:I

    .line 278
    return-void
.end method

.method protected setXHeight(I)V
    .locals 2
    .param p1, "xHeight"    # I

    .line 253
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->xHeight:I

    .line 254
    return-void
.end method

.method protected updateBbox(FFFF)V
    .locals 4
    .param p1, "llx"    # F
    .param p2, "lly"    # F
    .param p3, "urx"    # F
    .param p4, "ury"    # F

    .line 226
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float v2, p1, v1

    float-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 227
    mul-float v2, p2, v1

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 228
    mul-float v2, p3, v1

    float-to-int v2, v2

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 229
    mul-float/2addr v1, p4

    float-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 230
    return-void
.end method
