.class public Lcom/itextpdf/layout/renderer/TextRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "TextRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/ILeafElementRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;,
        Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;
    }
.end annotation


# static fields
.field private static final BOLD_SIMULATION_STROKE_COEFF:F = 0.033333335f

.field private static final ITALIC_ANGLE:F = 0.21256f

.field protected static final TEXT_SPACE_COEFF:F = 1000.0f

.field static final TYPO_ASCENDER_SCALE_COEFF:F = 1.2f

.field static final UNDEFINED_FIRST_CHAR_TO_FORCE_OVERFLOW:I = 0x7fffffff


# instance fields
.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private indexOfFirstCharacterToBeForcedToOverflow:I

.field protected line:Lcom/itextpdf/io/font/otf/GlyphLine;

.field protected otfFeaturesApplied:Z

.field protected reversedRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field protected savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

.field private specialScriptFirstNotFittingIndex:I

.field private specialScriptsWordBreakPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected strToBeConverted:Ljava/lang/String;

.field protected tabAnchorCharacterPosition:F

.field protected text:Lcom/itextpdf/io/font/otf/GlyphLine;

.field protected yLineOffset:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Text;)V
    .locals 1
    .param p1, "textElement"    # Lcom/itextpdf/layout/element/Text;

    .line 146
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V
    .locals 1
    .param p1, "textElement"    # Lcom/itextpdf/layout/element/Text;
    .param p2, "text"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 125
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    .line 138
    const v0, 0x7fffffff

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    .line 158
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 162
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 125
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    .line 138
    const v0, 0x7fffffff

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    .line 163
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 164
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 165
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 166
    iget v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 167
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 168
    iget-boolean v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 169
    iget v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    .line 170
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    .line 171
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 107
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    return v0
.end method

.method public static calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;)[F
    .locals 1
    .param p0, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 1220
    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->DEFAULT_LAYOUT_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/property/RenderingMode;)[F

    move-result-object v0

    return-object v0
.end method

.method public static calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/property/RenderingMode;)[F
    .locals 6
    .param p0, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p1, "mode"    # Lcom/itextpdf/layout/property/RenderingMode;

    .line 1232
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    .line 1235
    .local v0, "fontMetrics":Lcom/itextpdf/io/font/FontMetrics;
    const v1, 0x3f99999a    # 1.2f

    .line 1236
    .local v1, "usedTypoAscenderScaleCoeff":F
    sget-object v2, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p0, Lcom/itextpdf/kernel/font/PdfType1Font;

    if-nez v2, :cond_0

    .line 1237
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1239
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinAscender()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinDescender()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1240
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinAscender()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1241
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinDescender()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1245
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinAscender()I

    move-result v2

    int-to-float v2, v2

    .line 1246
    .local v2, "ascender":F
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinDescender()I

    move-result v3

    int-to-float v3, v3

    .local v3, "descender":F
    goto :goto_1

    .line 1242
    .end local v2    # "ascender":F
    .end local v3    # "descender":F
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 1243
    .restart local v2    # "ascender":F
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 1248
    .restart local v3    # "descender":F
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4
.end method

.method static codePointIsOfSpecialScript(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .line 1622
    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    .line 1623
    .local v0, "glyphScript":Ljava/lang/Character$UnicodeScript;
    sget-object v1, Ljava/lang/Character$UnicodeScript;->THAI:Ljava/lang/Character$UnicodeScript;

    if-eq v1, v0, :cond_1

    sget-object v1, Ljava/lang/Character$UnicodeScript;->KHMER:Ljava/lang/Character$UnicodeScript;

    if-eq v1, v0, :cond_1

    sget-object v1, Ljava/lang/Character$UnicodeScript;->LAO:Ljava/lang/Character$UnicodeScript;

    if-eq v1, v0, :cond_1

    sget-object v1, Ljava/lang/Character$UnicodeScript;->MYANMAR:Ljava/lang/Character$UnicodeScript;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private convertToGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1276
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    return-object v0
.end method

.method static findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I
    .locals 5
    .param p1, "textStartBasedInitialOverflowTextPos"    # I
    .param p2, "amongPresentOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)I"
        }
    .end annotation

    .line 1602
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1603
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1605
    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 1606
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1607
    .local v2, "middle":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-gez v3, :cond_0

    .line 1608
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 1609
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-lez v3, :cond_1

    .line 1610
    add-int/lit8 v1, v2, -0x1

    .line 1614
    .end local v2    # "middle":I
    :goto_1
    goto :goto_0

    .line 1612
    .restart local v2    # "middle":I
    :cond_1
    return v2

    .line 1615
    .end local v2    # "middle":I
    :cond_2
    if-nez p2, :cond_3

    if-lez v0, :cond_3

    .line 1616
    add-int/lit8 v2, v0, -0x1

    return v2

    .line 1618
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method private getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F
    .locals 4
    .param p1, "g"    # Lcom/itextpdf/io/font/otf/Glyph;
    .param p2, "fontSize"    # F
    .param p3, "hScale"    # Ljava/lang/Float;
    .param p4, "characterSpacing"    # Ljava/lang/Float;
    .param p5, "wordSpacing"    # Ljava/lang/Float;

    .line 1677
    if-nez p3, :cond_0

    .line 1678
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 1680
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1681
    .local v0, "resultWidth":F
    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz p4, :cond_1

    .line 1682
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 1684
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 1685
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 1687
    :cond_2
    return v0
.end method

.method private getGlyphLineWidth(Lcom/itextpdf/io/font/otf/GlyphLine;FFLjava/lang/Float;Ljava/lang/Float;)F
    .locals 9
    .param p1, "glyphLine"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "fontSize"    # F
    .param p3, "hScale"    # F
    .param p4, "characterSpacing"    # Ljava/lang/Float;
    .param p5, "wordSpacing"    # Ljava/lang/Float;

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, "width":F
    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_2

    .line 1697
    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1698
    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v3, p0

    move v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v2

    .line 1699
    .local v2, "charWidth":F
    add-float/2addr v0, v2

    .line 1700
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v3

    int-to-float v3, v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->scaleXAdvance(FFLjava/lang/Float;)F

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1701
    .local v3, "xAdvance":F
    :goto_1
    add-float/2addr v0, v3

    .line 1696
    .end local v2    # "charWidth":F
    .end local v3    # "xAdvance":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1704
    .end local v1    # "i":I
    :cond_2
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, v0, v1

    return v1
.end method

.method private getWordBoundsForHyphenation(Lcom/itextpdf/io/font/otf/GlyphLine;III)[I
    .locals 5
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "leftTextPos"    # I
    .param p3, "rightTextPos"    # I
    .param p4, "wordMiddleCharPos"    # I

    .line 1708
    :goto_0
    if-lt p4, p2, :cond_0

    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1709
    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isUni0020(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 1712
    :cond_0
    if-lt p4, p2, :cond_3

    .line 1713
    move v0, p4

    .line 1714
    .local v0, "left":I
    :goto_1
    if-lt v0, p2, :cond_1

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1715
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1717
    :cond_1
    move v1, p4

    .line 1718
    .local v1, "right":I
    :goto_2
    if-ge v1, p3, :cond_2

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1719
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1721
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2

    .line 1723
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static glyphBelongsToNonBreakingHyphenRelatedChunk(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 2
    .param p0, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p1, "ind"    # I

    .line 1791
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasOtfFont()Z
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    instance-of v1, v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/io/font/TrueTypeFont;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private increaseYLineOffset([Lcom/itextpdf/layout/property/UnitValue;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 4
    .param p1, "paddings"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p2, "borders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p3, "margins"    # [Lcom/itextpdf/layout/property/UnitValue;

    .line 740
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-float/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 741
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-float/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 742
    aget-object v2, p3, v1

    if-eqz v2, :cond_2

    aget-object v1, p3, v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    :cond_2
    add-float/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 743
    return-void
.end method

.method private isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 2
    .param p1, "g"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 1728
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xad

    .line 1731
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1728
    :goto_1
    return v0
.end method

.method private static noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 2
    .param p0, "g"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 1783
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    const/4 v0, 0x0

    return v0

    .line 1786
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    .line 1787
    .local v0, "c":I
    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonPrintable(I)Z

    move-result v1

    return v1
.end method

.method private static numberOfElementsLessThan(Ljava/util/ArrayList;I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 1765
    .local p0, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1766
    .local v0, "x":I
    if-ltz v0, :cond_0

    .line 1767
    return v0

    .line 1769
    :cond_0
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static numberOfElementsLessThanOrEqual(Ljava/util/ArrayList;I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 1774
    .local p0, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1775
    .local v0, "x":I
    if-ltz v0, :cond_0

    .line 1776
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1778
    :cond_0
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private saveWordBreakIfNotYetSaved(Lcom/itextpdf/io/font/otf/Glyph;)V
    .locals 2
    .param p1, "wordBreak"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 1753
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-nez v0, :cond_1

    .line 1754
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    .line 1760
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1762
    :cond_1
    return-void
.end method

.method private scaleXAdvance(FFLjava/lang/Float;)F
    .locals 2
    .param p1, "xAdvance"    # F
    .param p2, "fontSize"    # F
    .param p3, "hScale"    # Ljava/lang/Float;

    .line 1691
    mul-float v0, p1, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private splitIgnoreFirstNewLine(I)[Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1
    .param p1, "currentTextPos"    # I

    .line 1268
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v0, p1}, Lcom/itextpdf/io/util/TextUtil;->isCarriageReturnFollowedByLineFeed(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    return-object v0

    .line 1271
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    return-object v0
.end method

.method private updateFontAndText()V
    .locals 4

    .line 1735
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1738
    const/16 v0, 0x14

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFont(I)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    .local v0, "newFont":Lcom/itextpdf/kernel/font/PdfFont;
    goto :goto_0

    .line 1739
    .end local v0    # "newFont":Lcom/itextpdf/kernel/font/PdfFont;
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    .line 1741
    .local v1, "newFont":Lcom/itextpdf/kernel/font/PdfFont;
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1742
    const-class v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1743
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "The \"Property.FONT\" property must be a PdfFont object in this context."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1746
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    move-object v0, v1

    .end local v1    # "newFont":Lcom/itextpdf/kernel/font/PdfFont;
    .local v0, "newFont":Lcom/itextpdf/kernel/font/PdfFont;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/font/PdfFont;->createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 1747
    .local v1, "newText":Lcom/itextpdf/io/font/otf/GlyphLine;
    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 1748
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1750
    .end local v0    # "newFont":Lcom/itextpdf/kernel/font/PdfFont;
    .end local v1    # "newText":Lcom/itextpdf/io/font/otf/GlyphLine;
    :cond_1
    return-void
.end method

.method static updateRangeBasedOnRemovedCharacters(Ljava/util/ArrayList;[I)V
    .locals 3
    .param p1, "range"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 1589
    .local p0, "removedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->numberOfElementsLessThan(Ljava/util/ArrayList;I)I

    move-result v1

    .line 1590
    .local v1, "shift":I
    aget v2, p1, v0

    sub-int/2addr v2, v1

    aput v2, p1, v0

    .line 1591
    const/4 v0, 0x1

    aget v2, p1, v0

    invoke-static {p0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->numberOfElementsLessThanOrEqual(Ljava/util/ArrayList;I)I

    move-result v1

    .line 1592
    aget v2, p1, v0

    sub-int/2addr v2, v1

    aput v2, p1, v0

    .line 1593
    return-void
.end method


# virtual methods
.method public applyOtf()V
    .locals 13

    .line 746
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 747
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character$UnicodeScript;

    .line 748
    .local v0, "script":Ljava/lang/Character$UnicodeScript;
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    if-nez v1, :cond_e

    invoke-static {}, Lcom/itextpdf/layout/renderer/TypographyUtils;->isPdfCalligraphAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_e

    .line 749
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->hasOtfFont()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 750
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 751
    .local v1, "typographyConfig":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 752
    .local v2, "supportedScripts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character$UnicodeScript;>;"
    if-eqz v1, :cond_0

    .line 753
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getSupportedScripts(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 755
    :cond_0
    if-nez v2, :cond_1

    .line 756
    invoke-static {}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getSupportedScripts()Ljava/util/Collection;

    move-result-object v2

    .line 758
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v3, "scriptsRanges":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;>;"
    if-eqz v0, :cond_2

    .line 760
    new-instance v4, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v4, v0, v5}, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;-><init>(Ljava/lang/Character$UnicodeScript;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 763
    :cond_2
    new-instance v4, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;-><init>(Ljava/lang/Character$UnicodeScript;I)V

    .line 764
    .local v4, "currRange":Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v5, v6, :cond_6

    .line 766
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v6

    .line 767
    .local v6, "unicode":I
    const/4 v7, -0x1

    if-le v6, v7, :cond_5

    .line 768
    invoke-static {v6}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v7

    .line 769
    .local v7, "glyphScript":Ljava/lang/Character$UnicodeScript;
    sget-object v8, Ljava/lang/Character$UnicodeScript;->COMMON:Ljava/lang/Character$UnicodeScript;

    invoke-virtual {v8, v7}, Ljava/lang/Character$UnicodeScript;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Ljava/lang/Character$UnicodeScript;->UNKNOWN:Ljava/lang/Character$UnicodeScript;

    invoke-virtual {v8, v7}, Ljava/lang/Character$UnicodeScript;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Ljava/lang/Character$UnicodeScript;->INHERITED:Ljava/lang/Character$UnicodeScript;

    .line 770
    invoke-virtual {v8, v7}, Ljava/lang/Character$UnicodeScript;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 771
    goto :goto_1

    .line 773
    :cond_3
    iget-object v8, v4, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    if-eq v7, v8, :cond_5

    .line 774
    iget-object v8, v4, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    if-nez v8, :cond_4

    .line 775
    iput-object v7, v4, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    goto :goto_1

    .line 777
    :cond_4
    iput v5, v4, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    .line 778
    new-instance v8, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v9, v9, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v8, v7, v9}, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;-><init>(Ljava/lang/Character$UnicodeScript;I)V

    move-object v4, v8

    .line 779
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v6    # "unicode":I
    .end local v7    # "glyphScript":Ljava/lang/Character$UnicodeScript;
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 786
    .end local v4    # "currRange":Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;
    .end local v5    # "i":I
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 787
    .local v4, "delta":I
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 788
    .local v5, "origTextStart":I
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 789
    .local v6, "origTextEnd":I
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v7, v7, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 790
    .local v7, "shapingRangeStart":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    .line 791
    .local v9, "scriptsRange":Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;
    iget-object v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    if-eqz v10, :cond_7

    iget-object v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    invoke-static {v10}, Lcom/itextpdf/io/util/EnumUtil;->throwIfNull(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 792
    goto :goto_3

    .line 794
    :cond_8
    iget v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    add-int/2addr v10, v4

    iput v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    .line 795
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v7, v10, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 796
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v11, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    iput v11, v10, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 798
    iget-object v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    sget-object v11, Ljava/lang/Character$UnicodeScript;->ARABIC:Ljava/lang/Character$UnicodeScript;

    if-eq v10, v11, :cond_9

    iget-object v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    sget-object v11, Ljava/lang/Character$UnicodeScript;->HEBREW:Ljava/lang/Character$UnicodeScript;

    if-ne v10, v11, :cond_a

    :cond_9
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v10, v10, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v10, :cond_a

    .line 804
    const/4 v10, 0x7

    sget-object v11, Lcom/itextpdf/layout/property/BaseDirection;->DEFAULT_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

    invoke-virtual {p0, v10, v11}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProperty(ILjava/lang/Object;)V

    .line 806
    :cond_a
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v10

    iget-object v11, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v12, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    invoke-static {v10, v11, v12, v1}, Lcom/itextpdf/layout/renderer/TypographyUtils;->applyOtfScript(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/lang/Character$UnicodeScript;Ljava/lang/Object;)V

    .line 808
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v10, v10, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v11, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    sub-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 809
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v10, v10, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move v7, v10

    iput v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    .line 810
    .end local v9    # "scriptsRange":Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;
    goto :goto_3

    .line 811
    :cond_b
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v5, v8, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 812
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int v9, v6, v4

    iput v9, v8, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 815
    .end local v1    # "typographyConfig":Ljava/lang/Object;
    .end local v2    # "supportedScripts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character$UnicodeScript;>;"
    .end local v3    # "scriptsRanges":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;>;"
    .end local v4    # "delta":I
    .end local v5    # "origTextStart":I
    .end local v6    # "origTextEnd":I
    .end local v7    # "shapingRangeStart":I
    :cond_c
    const/16 v1, 0x16

    sget-object v2, Lcom/itextpdf/layout/property/FontKerning;->NO:Lcom/itextpdf/layout/property/FontKerning;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/FontKerning;

    .line 816
    .local v1, "fontKerning":Lcom/itextpdf/layout/property/FontKerning;
    sget-object v2, Lcom/itextpdf/layout/property/FontKerning;->YES:Lcom/itextpdf/layout/property/FontKerning;

    if-ne v1, v2, :cond_d

    .line 817
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v2, v3}, Lcom/itextpdf/layout/renderer/TypographyUtils;->applyKerning(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 820
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 822
    .end local v1    # "fontKerning":Lcom/itextpdf/layout/property/FontKerning;
    :cond_e
    return-void
.end method

.method protected baseCharactersCount()I
    .locals 4

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "count":I
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_1

    .line 1388
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 1389
    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1390
    add-int/lit8 v0, v0, 0x1

    .line 1387
    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1393
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method protected calculateLineWidth()F
    .locals 9

    .line 1510
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    .line 1511
    .local v1, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1512
    const-class v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1513
    .local v2, "logger":Lorg/slf4j/Logger;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Property {0} in percents is not supported"

    invoke-static {v0, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1515
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v5

    const/16 v0, 0x1d

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1516
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/16 v0, 0xf

    .line 1517
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v7

    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v8

    .line 1515
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->getGlyphLineWidth(Lcom/itextpdf/io/font/otf/GlyphLine;FFLjava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public charAt(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 1200
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    return v0
.end method

.method protected createCopy(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1
    .param p1, "gl"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 1583
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V

    .line 1584
    .local v0, "copy":Lcom/itextpdf/layout/renderer/TextRenderer;
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1585
    return-object v0
.end method

.method protected createOverflowRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    .line 1420
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    return-object v0
.end method

.method protected createSplitRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    .line 1416
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    return-object v0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 33
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 826
    move-object/from16 v6, p0

    const-class v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 827
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 828
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Drawing won\'t be performed."

    aput-object v2, v1, v7

    const-string v2, "Occupied area has not been initialized. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 829
    return-void

    .line 833
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v8

    .line 834
    .local v8, "isTagged":Z
    const/4 v1, 0x0

    .line 835
    .local v1, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    const/4 v3, 0x0

    .line 836
    .local v3, "isArtifact":Z
    const/4 v4, 0x0

    .line 837
    .local v4, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    if-eqz v8, :cond_4

    .line 838
    const/16 v5, 0x6c

    invoke-virtual {v6, v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 839
    if-nez v1, :cond_1

    .line 840
    const/4 v3, 0x1

    move-object v9, v1

    move v10, v3

    move-object v11, v4

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z

    move-result v3

    .line 843
    if-nez v3, :cond_3

    .line 844
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v4

    .line 845
    invoke-virtual {v1, v6, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 846
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v5

    invoke-static {v6, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 852
    :cond_2
    move-object v9, v1

    move v10, v3

    move-object v11, v4

    goto :goto_0

    .line 843
    :cond_3
    move-object v9, v1

    move v10, v3

    move-object v11, v4

    goto :goto_0

    .line 837
    :cond_4
    move-object v9, v1

    move v10, v3

    move-object v11, v4

    .line 852
    .end local v1    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v3    # "isArtifact":Z
    .end local v4    # "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .local v9, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .local v10, "isArtifact":Z
    .local v11, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isRelativePosition()Z

    move-result v12

    .line 855
    .local v12, "isRelativePosition":Z
    if-eqz v12, :cond_5

    .line 856
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyRelativePositioningTranslation(Z)V

    .line 859
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    .line 861
    .local v5, "leftBBoxX":F
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-gt v1, v3, :cond_7

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v28, v5

    move v15, v8

    goto/16 :goto_12

    .line 862
    :cond_7
    :goto_1
    const/16 v1, 0x18

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v20

    .line 863
    .local v20, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_8

    .line 864
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 865
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 867
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_8
    const/16 v0, 0x15

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsTransparentColor(I)Lcom/itextpdf/layout/property/TransparentColor;

    move-result-object v4

    .line 868
    .local v4, "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    const/16 v0, 0x47

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 869
    .local v0, "textRenderingMode":Ljava/lang/Integer;
    const/16 v1, 0x48

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v21

    .line 870
    .local v21, "textRise":Ljava/lang/Float;
    const/16 v1, 0xf

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v22

    .line 871
    .local v22, "characterSpacing":Ljava/lang/Float;
    const/16 v1, 0x4e

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v23

    .line 872
    .local v23, "wordSpacing":Ljava/lang/Float;
    const/16 v1, 0x1d

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Ljava/lang/Float;

    .line 873
    .local v24, "horizontalScaling":Ljava/lang/Float;
    const/16 v1, 0x41

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [F

    .line 874
    .local v3, "skew":[F
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v13, 0x1f

    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 875
    .local v25, "italicSimulation":Z
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 876
    .local v26, "boldSimulation":Z
    const/4 v1, 0x0

    .line 878
    .local v1, "strokeWidth":Ljava/lang/Float;
    const/4 v15, 0x2

    if-eqz v26, :cond_9

    .line 879
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 880
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v13

    const/high16 v14, 0x41f00000    # 30.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v27, v0

    goto :goto_2

    .line 878
    :cond_9
    move-object/from16 v27, v0

    .line 883
    .end local v0    # "textRenderingMode":Ljava/lang/Integer;
    .local v27, "textRenderingMode":Ljava/lang/Integer;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 884
    .local v0, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    if-eqz v8, :cond_b

    .line 885
    if-eqz v10, :cond_a

    .line 886
    new-instance v13, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v13}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v0, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_3

    .line 888
    :cond_a
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 891
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 892
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v13

    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-virtual {v13, v14, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 894
    if-eqz v3, :cond_c

    array-length v2, v3

    if-ne v2, v15, :cond_c

    .line 895
    const/high16 v14, 0x3f800000    # 1.0f

    aget v2, v3, v7

    const/4 v13, 0x1

    aget v16, v3, v13

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v19

    move-object v13, v0

    move v7, v15

    move v15, v2

    move/from16 v18, v5

    invoke-virtual/range {v13 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v15, v8

    goto :goto_4

    .line 894
    :cond_c
    move v7, v15

    .line 896
    if-eqz v25, :cond_d

    .line 897
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const v16, 0x3e59a954    # 0.21256f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v19

    move-object v13, v0

    move/from16 v18, v5

    invoke-virtual/range {v13 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v15, v8

    goto :goto_4

    .line 899
    :cond_d
    float-to-double v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v2

    move v15, v8

    .end local v8    # "isTagged":Z
    .local v15, "isTagged":Z
    float-to-double v7, v2

    invoke-virtual {v0, v13, v14, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 902
    :goto_4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_e

    .line 903
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 905
    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-eq v2, v8, :cond_10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_f

    goto :goto_5

    :cond_f
    move-object v8, v1

    goto :goto_6

    .line 906
    :cond_10
    :goto_5
    if-nez v1, :cond_11

    .line 907
    const/16 v2, 0x40

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    .line 909
    :cond_11
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_12

    .line 910
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 912
    :cond_12
    const/16 v2, 0x3f

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsColor(I)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    .line 913
    .local v2, "strokeColor":Lcom/itextpdf/kernel/colors/Color;
    if-nez v2, :cond_13

    if-eqz v4, :cond_13

    .line 914
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    .line 916
    :cond_13
    if-eqz v2, :cond_14

    .line 917
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 920
    .end local v2    # "strokeColor":Lcom/itextpdf/kernel/colors/Color;
    :cond_14
    move-object v8, v1

    .end local v1    # "strokeWidth":Ljava/lang/Float;
    .local v8, "strokeWidth":Ljava/lang/Float;
    :goto_6
    if-eqz v4, :cond_15

    .line 921
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 922
    invoke-virtual {v4, v0}, Lcom/itextpdf/layout/property/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 924
    :cond_15
    const/4 v13, 0x0

    if-eqz v21, :cond_16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_16

    .line 925
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRise(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 927
    :cond_16
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_17

    .line 928
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setCharacterSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 930
    :cond_17
    if-eqz v23, :cond_1b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_1b

    .line 931
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    instance-of v1, v1, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-eqz v1, :cond_1a

    .line 937
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v1, "gInd":I
    :goto_7
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_19

    .line 938
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->isUni0020(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 939
    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v14, v2

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    div-float/2addr v14, v2

    float-to-int v2, v14

    int-to-short v2, v2

    .line 940
    .local v2, "advance":S
    new-instance v14, Lcom/itextpdf/io/font/otf/Glyph;

    iget-object v13, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v13, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;)V

    move-object v13, v14

    .line 941
    .local v13, "copy":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v13, v2}, Lcom/itextpdf/io/font/otf/Glyph;->setXAdvance(S)V

    .line 942
    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v14, v1, v13}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    .line 937
    .end local v2    # "advance":S
    .end local v13    # "copy":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x0

    goto :goto_7

    .end local v1    # "gInd":I
    :cond_19
    goto :goto_8

    .line 946
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setWordSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 949
    :cond_1b
    :goto_8
    if-eqz v24, :cond_1c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_1c

    .line 950
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setHorizontalScaling(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 953
    :cond_1c
    new-instance v1, Lcom/itextpdf/layout/renderer/TextRenderer$1;

    invoke-direct {v1, v6}, Lcom/itextpdf/layout/renderer/TextRenderer$1;-><init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V

    move-object v7, v1

    .line 960
    .local v7, "filter":Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x52

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 962
    .local v13, "appearanceStreamLayout":Z
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getReversedRanges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 963
    xor-int/lit8 v1, v13, 0x1

    .line 964
    .local v1, "writeReversedChars":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v2, "removedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v14, v14, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v14, "i":I
    :goto_9
    move-object/from16 v17, v3

    .end local v3    # "skew":[F
    .local v17, "skew":[F
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v14, v3, :cond_1e

    .line 966
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v14}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;->accept(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 967
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_1d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    goto :goto_9

    .line 970
    .end local v14    # "i":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getReversedRanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 971
    .local v14, "range":[I
    invoke-static {v2, v14}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateRangeBasedOnRemovedCharacters(Ljava/util/ArrayList;[I)V

    .line 972
    .end local v14    # "range":[I
    goto :goto_a

    .line 973
    :cond_1f
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v7}, Lcom/itextpdf/io/font/otf/GlyphLine;->filter(Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v3

    iput-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 974
    if-eqz v1, :cond_20

    .line 975
    new-instance v14, Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;

    move/from16 v18, v1

    .end local v1    # "writeReversedChars":Z
    .local v18, "writeReversedChars":Z
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    invoke-direct {v14, v1, v3}, Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;-><init>(Ljava/util/List;Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 976
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;->setUseReversed(Z)Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;

    move-result-object v1

    .line 975
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/Iterator;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_b

    .line 978
    .end local v18    # "writeReversedChars":Z
    .restart local v1    # "writeReversedChars":Z
    :cond_20
    move/from16 v18, v1

    .end local v1    # "writeReversedChars":Z
    .restart local v18    # "writeReversedChars":Z
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 980
    .end local v2    # "removedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "writeReversedChars":Z
    :goto_b
    goto :goto_c

    .line 981
    .end local v17    # "skew":[F
    .restart local v3    # "skew":[F
    :cond_21
    move-object/from16 v17, v3

    .end local v3    # "skew":[F
    .restart local v17    # "skew":[F
    if-eqz v13, :cond_22

    .line 982
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v3, v14}, Lcom/itextpdf/io/font/otf/GlyphLine;->setActualText(IILjava/lang/String;)V

    .line 984
    :cond_22
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v7}, Lcom/itextpdf/io/font/otf/GlyphLine;->filter(Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 986
    :goto_c
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-eqz v1, :cond_23

    .line 987
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 990
    :cond_23
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 991
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 993
    const/16 v1, 0x4a

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v14

    .line 994
    .local v14, "underlines":Ljava/lang/Object;
    instance-of v1, v14, Ljava/util/List;

    const v18, 0x3e59a954    # 0.21256f

    if-eqz v1, :cond_27

    .line 995
    move-object v1, v14

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 996
    .local v3, "underline":Ljava/lang/Object;
    instance-of v1, v3, Lcom/itextpdf/layout/property/Underline;

    if-eqz v1, :cond_25

    .line 997
    move-object v1, v3

    check-cast v1, Lcom/itextpdf/layout/property/Underline;

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v28

    if-eqz v25, :cond_24

    move/from16 v29, v18

    goto :goto_e

    :cond_24
    const/16 v29, 0x0

    :goto_e
    move-object/from16 v30, v0

    .end local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v30, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    move-object/from16 v0, p0

    move-object v2, v4

    move-object/from16 v31, v3

    .end local v3    # "underline":Ljava/lang/Object;
    .local v31, "underline":Ljava/lang/Object;
    move-object/from16 v3, v30

    move-object/from16 v32, v4

    .end local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .local v32, "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    move/from16 v4, v28

    move/from16 v28, v5

    .end local v5    # "leftBBoxX":F
    .local v28, "leftBBoxX":F
    move/from16 v5, v29

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->drawSingleUnderline(Lcom/itextpdf/layout/property/Underline;Lcom/itextpdf/layout/property/TransparentColor;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_f

    .line 996
    .end local v28    # "leftBBoxX":F
    .end local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v31    # "underline":Ljava/lang/Object;
    .end local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .restart local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v3    # "underline":Ljava/lang/Object;
    .restart local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .restart local v5    # "leftBBoxX":F
    :cond_25
    move-object/from16 v30, v0

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move/from16 v28, v5

    .line 999
    .end local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v3    # "underline":Ljava/lang/Object;
    .end local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .end local v5    # "leftBBoxX":F
    .restart local v28    # "leftBBoxX":F
    .restart local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    :goto_f
    move/from16 v5, v28

    move-object/from16 v0, v30

    move-object/from16 v4, v32

    goto :goto_d

    .end local v28    # "leftBBoxX":F
    .end local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .restart local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .restart local v5    # "leftBBoxX":F
    :cond_26
    move-object/from16 v30, v0

    move-object/from16 v32, v4

    move/from16 v28, v5

    .end local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .end local v5    # "leftBBoxX":F
    .restart local v28    # "leftBBoxX":F
    .restart local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    goto :goto_11

    .line 1000
    .end local v28    # "leftBBoxX":F
    .end local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .restart local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .restart local v5    # "leftBBoxX":F
    :cond_27
    move-object/from16 v30, v0

    move-object/from16 v32, v4

    move/from16 v28, v5

    .end local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v4    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    .end local v5    # "leftBBoxX":F
    .restart local v28    # "leftBBoxX":F
    .restart local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    instance-of v0, v14, Lcom/itextpdf/layout/property/Underline;

    if-eqz v0, :cond_29

    .line 1001
    move-object v1, v14

    check-cast v1, Lcom/itextpdf/layout/property/Underline;

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    if-eqz v25, :cond_28

    move/from16 v5, v18

    goto :goto_10

    :cond_28
    const/4 v5, 0x0

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v2, v32

    move-object/from16 v3, v30

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->drawSingleUnderline(Lcom/itextpdf/layout/property/Underline;Lcom/itextpdf/layout/property/TransparentColor;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 1004
    :cond_29
    :goto_11
    if-eqz v15, :cond_2a

    .line 1005
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1009
    .end local v7    # "filter":Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;
    .end local v8    # "strokeWidth":Ljava/lang/Float;
    .end local v13    # "appearanceStreamLayout":Z
    .end local v14    # "underlines":Ljava/lang/Object;
    .end local v17    # "skew":[F
    .end local v20    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .end local v21    # "textRise":Ljava/lang/Float;
    .end local v22    # "characterSpacing":Ljava/lang/Float;
    .end local v23    # "wordSpacing":Ljava/lang/Float;
    .end local v24    # "horizontalScaling":Ljava/lang/Float;
    .end local v25    # "italicSimulation":Z
    .end local v26    # "boldSimulation":Z
    .end local v27    # "textRenderingMode":Ljava/lang/Integer;
    .end local v30    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v32    # "fontColor":Lcom/itextpdf/layout/property/TransparentColor;
    :cond_2a
    :goto_12
    if-eqz v12, :cond_2b

    .line 1010
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1013
    :cond_2b
    if-eqz v15, :cond_2d

    if-nez v10, :cond_2d

    .line 1014
    iget-boolean v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->isLastRendererForModelElement:Z

    if-eqz v0, :cond_2c

    .line 1015
    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1017
    :cond_2c
    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1019
    :cond_2d
    return-void
.end method

.method protected drawSingleUnderline(Lcom/itextpdf/layout/property/Underline;Lcom/itextpdf/layout/property/TransparentColor;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 14
    .param p1, "underline"    # Lcom/itextpdf/layout/property/Underline;
    .param p2, "fontStrokeColor"    # Lcom/itextpdf/layout/property/TransparentColor;
    .param p3, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p4, "fontSize"    # F
    .param p5, "italicAngleTan"    # F

    .line 1486
    move-object v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Underline;->getOpacity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 1487
    .local v3, "underlineColor":Lcom/itextpdf/layout/property/TransparentColor;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1489
    if-eqz v3, :cond_1

    .line 1490
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1491
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 1493
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/Underline;->getLineCapStyle()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1494
    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/property/Underline;->getThickness(F)F

    move-result v4

    .line 1495
    .local v4, "underlineThickness":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    .line 1496
    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1497
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v5

    .line 1498
    .local v5, "yLine":F
    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/property/Underline;->getYPosition(F)F

    move-result v6

    add-float/2addr v6, v5

    .line 1499
    .local v6, "underlineYPosition":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v2

    mul-float v7, v7, p5

    .line 1500
    .local v7, "italicWidthSubstraction":F
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    .line 1501
    .local v8, "innerAreaBbox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v9

    float-to-double v9, v9

    float-to-double v11, v6

    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    .line 1502
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v10

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    add-float/2addr v10, v11

    sub-float/2addr v10, v7

    float-to-double v10, v10

    float-to-double v12, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    .line 1503
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1506
    .end local v5    # "yLine":F
    .end local v6    # "underlineYPosition":F
    .end local v7    # "italicWidthSubstraction":F
    .end local v8    # "innerAreaBbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1507
    return-void
.end method

.method public getAscent()F
    .locals 1

    .line 1097
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    return v0
.end method

.method protected getBackgroundArea(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2
    .param p1, "occupiedAreaWithMargins"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1362
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1363
    .local v0, "textRise":F
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public getDescent()F
    .locals 2

    .line 1107
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    sub-float/2addr v0, v1

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 1373
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 1398
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 1399
    .local v0, "result":Lcom/itextpdf/layout/layout/TextLayoutResult;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    return-object v1
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 1209
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-object v0
.end method

.method protected getNumberOfSpaces()I
    .locals 5

    .line 1403
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-gtz v0, :cond_0

    .line 1404
    const/4 v0, 0x0

    return v0

    .line 1405
    :cond_0
    const/4 v0, 0x0

    .line 1406
    .local v0, "spaces":I
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_2

    .line 1407
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 1408
    .local v2, "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 1409
    add-int/lit8 v0, v0, 0x1

    .line 1406
    .end local v2    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method getReversedRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    return-object v0
.end method

.method getSpecialScriptFirstNotFittingIndex()I
    .locals 1

    .line 1353
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    return v0
.end method

.method getSpecialScriptsWordBreakPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1345
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    return-object v0
.end method

.method public getTabAnchorCharacterPosition()F
    .locals 1

    .line 1204
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    return v0
.end method

.method public getText()Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 1

    .line 1175
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 1176
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    return-object v0
.end method

.method public getYLine()F
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    sub-float/2addr v0, v1

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method initReversedRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    return-object v0
.end method

.method isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z
    .locals 7
    .param p1, "splitCharacters"    # Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 1661
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1662
    invoke-interface {p1, v0, v1}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1663
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1664
    .local v0, "startsWithBreak":Z
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr v4, v3

    .line 1665
    invoke-interface {p1, v1, v4}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1666
    .local v1, "endsWithBreak":Z
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1669
    :cond_2
    if-nez v1, :cond_3

    .line 1670
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1672
    :cond_3
    new-array v4, v5, [Z

    aput-boolean v0, v4, v2

    aput-boolean v1, v4, v3

    return-object v4

    .line 1667
    :cond_4
    :goto_2
    new-array v4, v5, [Z

    aput-boolean v0, v4, v2

    aput-boolean v1, v4, v3

    return-object v4
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 99
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 176
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    .line 179
    .local v7, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    .line 181
    .local v8, "layoutBox":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 183
    .local v9, "noSoftWrap":Z
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v10, 0x67

    invoke-interface {v0, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 185
    .local v0, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/16 v1, 0x7f

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    .line 186
    .local v11, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    sget-object v1, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    const/4 v12, 0x0

    if-eq v11, v1, :cond_1

    sget-object v1, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->BREAK_WORD:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    if-ne v11, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v12

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v14, v1

    .line 188
    .local v14, "overflowWrapNotNormal":Z
    if-eqz v14, :cond_2

    .line 189
    sget-object v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    move-object v15, v0

    goto :goto_2

    .line 188
    :cond_2
    move-object v15, v0

    .line 192
    .end local v0    # "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v15, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v5

    .line 193
    .local v5, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    const/16 v0, 0x63

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/property/FloatPropertyValue;

    .line 195
    .local v4, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-static {v6, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v3, v5

    move-object/from16 v16, v4

    .end local v4    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v16, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    move-object/from16 v17, v5

    .end local v5    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v17, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/property/FloatPropertyValue;Lcom/itextpdf/layout/property/OverflowPropertyValue;)Ljava/lang/Float;

    goto :goto_3

    .line 195
    .end local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v4    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v5    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_3
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 199
    .end local v4    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v5    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getMargins()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v5

    .line 200
    .local v5, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v8, v5, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    .line 202
    .local v4, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v6, v8, v4, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPaddings()[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    .line 205
    .local v3, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v8, v3, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 207
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    move-object v2, v0

    .line 209
    .local v2, "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    if-eqz v9, :cond_4

    .line 210
    new-instance v0, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;

    invoke-direct {v0, v2}, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    move-object v1, v0

    .local v0, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    goto :goto_4

    .line 212
    .end local v0    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_4
    new-instance v0, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;

    invoke-direct {v0, v2}, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    move-object v1, v0

    .line 215
    .local v1, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :goto_4
    const/high16 v0, -0x40800000    # -1.0f

    .line 216
    .local v0, "leftMinWidth":F
    const/4 v10, 0x3

    new-array v13, v10, [F

    aget-object v20, v5, v10

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v20

    aput v20, v13, v12

    aget-object v20, v4, v10

    if-nez v20, :cond_5

    const/16 v20, 0x0

    goto :goto_5

    :cond_5
    aget-object v20, v4, v10

    .line 217
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v20

    :goto_5
    const/16 v19, 0x1

    aput v20, v13, v19

    aget-object v20, v3, v10

    .line 218
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v20

    const/4 v12, 0x2

    aput v20, v13, v12

    .line 219
    .local v13, "leftMarginBorderPadding":[F
    const/high16 v20, -0x40800000    # -1.0f

    .line 220
    .local v20, "rightMinWidth":F
    new-array v10, v10, [F

    aget-object v23, v5, v19

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v23

    const/16 v21, 0x0

    aput v23, v10, v21

    aget-object v23, v4, v19

    if-nez v23, :cond_6

    const/16 v23, 0x0

    goto :goto_6

    :cond_6
    aget-object v23, v4, v19

    .line 221
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v23

    :goto_6
    aput v23, v10, v19

    aget-object v23, v3, v19

    .line 222
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v23

    aput v23, v10, v12

    .line 224
    .local v10, "rightMarginBorderPadding":[F
    new-instance v12, Lcom/itextpdf/layout/layout/LayoutArea;

    move/from16 v24, v0

    .end local v0    # "leftMinWidth":F
    .local v24, "leftMinWidth":F
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v0

    move-object/from16 v25, v1

    .end local v1    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v25, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v26, v2

    .end local v2    # "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v26, "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v27

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v28

    move-object/from16 v29, v3

    .end local v3    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v29, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    add-float v3, v27, v28

    move-object/from16 v27, v4

    const/4 v4, 0x0

    .end local v4    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v27, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-direct {v1, v2, v3, v4, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v12, v0, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 226
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "anythingPlaced":Z
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 231
    .local v1, "currentTextPos":I
    const/16 v2, 0x18

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v12

    .line 232
    .local v12, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 233
    const-class v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 234
    .local v3, "logger":Lorg/slf4j/Logger;
    move/from16 v28, v0

    const/4 v4, 0x1

    .end local v0    # "anythingPlaced":Z
    .local v28, "anythingPlaced":Z
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string v2, "Property {0} in percents is not supported"

    invoke-static {v2, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_7

    .line 232
    .end local v3    # "logger":Lorg/slf4j/Logger;
    .end local v28    # "anythingPlaced":Z
    .restart local v0    # "anythingPlaced":Z
    :cond_7
    move/from16 v28, v0

    .line 236
    .end local v0    # "anythingPlaced":Z
    .restart local v28    # "anythingPlaced":Z
    :goto_7
    const/16 v0, 0x48

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v30

    .line 237
    .local v30, "textRise":F
    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v31

    .line 238
    .local v31, "characterSpacing":Ljava/lang/Float;
    const/16 v0, 0x4e

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v32

    .line 239
    .local v32, "wordSpacing":Ljava/lang/Float;
    const/16 v0, 0x1d

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v33

    .line 240
    .local v33, "hScale":F
    const/16 v0, 0x3e

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 241
    .local v4, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1f

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x3e59a954    # 0.21256f

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    mul-float/2addr v0, v2

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    move v3, v0

    .line 242
    .local v3, "italicSkewAddition":F
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3d088889

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    mul-float/2addr v0, v2

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    move v2, v0

    .line 244
    .local v2, "boldSimulationAddition":F
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    move/from16 v34, v2

    .end local v2    # "boldSimulationAddition":F
    .local v34, "boldSimulationAddition":F
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    iput-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 245
    const/4 v2, -0x1

    iput v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "ascender":F
    const/16 v35, 0x0

    .line 250
    .local v35, "descender":F
    const/16 v36, 0x0

    .line 251
    .local v36, "currentLineAscender":F
    const/16 v37, 0x0

    .line 252
    .local v37, "currentLineDescender":F
    const/16 v38, 0x0

    .line 253
    .local v38, "currentLineHeight":F
    move/from16 v39, v1

    .line 254
    .local v39, "initialLineTextPos":I
    const/16 v40, 0x0

    .line 255
    .local v40, "currentLineWidth":F
    const/16 v41, -0x1

    .line 257
    .local v41, "previousCharPos":I
    const/16 v2, 0x7b

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/RenderingMode;

    .line 258
    .local v2, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    move/from16 v43, v0

    .end local v0    # "ascender":F
    .local v43, "ascender":F
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-static {v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/property/RenderingMode;)[F

    move-result-object v44

    .line 259
    .local v44, "ascenderDescender":[F
    move-object/from16 v45, v10

    const/4 v0, 0x0

    .end local v10    # "rightMarginBorderPadding":[F
    .local v45, "rightMarginBorderPadding":[F
    aget v10, v44, v0

    .line 260
    .end local v43    # "ascender":F
    .local v10, "ascender":F
    const/16 v19, 0x1

    aget v0, v44, v19

    .line 261
    .end local v35    # "descender":F
    .local v0, "descender":F
    move/from16 v35, v0

    .end local v0    # "descender":F
    .restart local v35    # "descender":F
    sget-object v0, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/property/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v43, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_a

    .line 262
    const/4 v0, 0x0

    aget v36, v44, v0

    .line 263
    aget v37, v44, v19

    .line 264
    sub-float v0, v36, v37

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v46

    mul-float v0, v0, v46

    div-float v0, v0, v43

    add-float v38, v0, v30

    .line 267
    :cond_a
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 268
    const/16 v46, 0x0

    .line 270
    .local v46, "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    const/16 v0, 0x42

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 272
    .local v0, "tabAnchorCharacter":Ljava/lang/Character;
    const/16 v48, 0x0

    .line 274
    .local v48, "result":Lcom/itextpdf/layout/layout/TextLayoutResult;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v49

    if-nez v49, :cond_b

    sget-object v49, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    move-object/from16 v50, v2

    move-object/from16 v96, v49

    move-object/from16 v49, v0

    move-object/from16 v0, v96

    goto :goto_a

    :cond_b
    move-object/from16 v49, v0

    .end local v0    # "tabAnchorCharacter":Ljava/lang/Character;
    .local v49, "tabAnchorCharacter":Ljava/lang/Character;
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    move-object/from16 v50, v2

    .end local v2    # "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v50, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    const/16 v2, 0x68

    .line 276
    invoke-interface {v0, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    :goto_a
    move-object/from16 v51, v0

    .line 279
    .local v51, "overflowY":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    const/4 v0, 0x0

    .line 281
    .local v0, "isSplitForcedByNewLine":Z
    const/4 v2, 0x0

    .line 283
    .local v2, "forcePartialSplitOnFirstChar":Z
    const/16 v52, 0x0

    .line 285
    .local v52, "ignoreNewLineSymbol":Z
    const/16 v53, 0x0

    .line 287
    .local v53, "crlf":Z
    const/16 v54, 0x0

    .line 289
    .local v54, "containsPossibleBreak":Z
    move/from16 v55, v0

    .end local v0    # "isSplitForcedByNewLine":Z
    .local v55, "isSplitForcedByNewLine":Z
    const/16 v0, 0x1e

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;

    .line 292
    .local v0, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    move/from16 v56, v1

    move-object/from16 v57, v13

    move/from16 v13, v56

    .line 293
    .local v13, "firstPrintPos":I
    .local v57, "leftMarginBorderPadding":[F
    :goto_b
    move-object/from16 v56, v0

    .end local v0    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v56, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v13, v0, :cond_c

    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v0, v13}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v56

    goto :goto_b

    .line 297
    :cond_c
    move/from16 v58, v37

    move/from16 v59, v38

    move-object/from16 v0, v49

    move/from16 v96, v2

    move v2, v1

    move/from16 v1, v20

    move/from16 v20, v96

    move/from16 v97, v36

    move-object/from16 v36, v7

    move/from16 v7, v97

    .end local v37    # "currentLineDescender":F
    .end local v38    # "currentLineHeight":F
    .end local v49    # "tabAnchorCharacter":Ljava/lang/Character;
    .local v0, "tabAnchorCharacter":Ljava/lang/Character;
    .local v1, "rightMinWidth":F
    .local v2, "currentTextPos":I
    .local v7, "currentLineAscender":F
    .local v20, "forcePartialSplitOnFirstChar":Z
    .local v36, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    .local v58, "currentLineDescender":F
    .local v59, "currentLineHeight":F
    :goto_c
    move-object/from16 v37, v0

    .end local v0    # "tabAnchorCharacter":Ljava/lang/Character;
    .local v37, "tabAnchorCharacter":Ljava/lang/Character;
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v38, v7

    .end local v7    # "currentLineAscender":F
    .local v38, "currentLineAscender":F
    if-ge v2, v0, :cond_55

    .line 298
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 299
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_d

    .line 300
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 302
    :cond_d
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v7, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v49, v1

    .end local v1    # "rightMinWidth":F
    .local v49, "rightMinWidth":F
    add-int/lit8 v1, v2, 0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 303
    add-int/lit8 v2, v2, 0x1

    .line 304
    move-object/from16 v0, v37

    move/from16 v7, v38

    move/from16 v1, v49

    goto :goto_c

    .line 307
    .end local v49    # "rightMinWidth":F
    .restart local v1    # "rightMinWidth":F
    :cond_e
    move/from16 v49, v1

    .end local v1    # "rightMinWidth":F
    .restart local v49    # "rightMinWidth":F
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v1, 0x1

    add-int/lit8 v60, v0, -0x1

    .line 308
    .local v60, "nonBreakablePartEnd":I
    const/4 v0, 0x0

    .line 309
    .local v0, "nonBreakablePartFullWidth":F
    const/4 v1, 0x0

    .line 310
    .local v1, "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    const/16 v61, 0x0

    .line 311
    .local v61, "nonBreakablePartMaxAscender":F
    const/16 v62, 0x0

    .line 312
    .local v62, "nonBreakablePartMaxDescender":F
    const/16 v63, 0x0

    .line 313
    .local v63, "nonBreakablePartMaxHeight":F
    const/16 v64, -0x1

    .line 314
    .local v64, "firstCharacterWhichExceedsAllowedWidth":I
    const/16 v65, 0x0

    .line 315
    .local v65, "nonBreakingHyphenRelatedChunkWidth":F
    const/16 v66, -0x1

    .line 316
    .local v66, "nonBreakingHyphenRelatedChunkStart":I
    const/16 v67, 0x0

    .line 317
    .local v67, "beforeNonBreakingHyphenRelatedChunkMaxAscender":F
    const/16 v68, 0x0

    .line 319
    .local v68, "beforeNonBreakingHyphenRelatedChunkMaxDescender":F
    move/from16 v69, v2

    move/from16 v7, v64

    move/from16 v96, v24

    move/from16 v24, v0

    move-object/from16 v0, v37

    move/from16 v37, v1

    move/from16 v1, v41

    move/from16 v41, v96

    move/from16 v97, v69

    move/from16 v69, v10

    move/from16 v10, v97

    move/from16 v98, v66

    move-object/from16 v66, v11

    move/from16 v11, v98

    .end local v64    # "firstCharacterWhichExceedsAllowedWidth":I
    .local v0, "tabAnchorCharacter":Ljava/lang/Character;
    .local v1, "previousCharPos":I
    .local v7, "firstCharacterWhichExceedsAllowedWidth":I
    .local v10, "ind":I
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v24, "nonBreakablePartFullWidth":F
    .local v37, "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .local v41, "leftMinWidth":F
    .local v66, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v69, "ascender":F
    :goto_d
    move/from16 v70, v1

    .end local v1    # "previousCharPos":I
    .local v70, "previousCharPos":I
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v10, v1, :cond_37

    .line 320
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 321
    const/4 v1, 0x1

    .line 322
    .end local v54    # "containsPossibleBreak":Z
    .local v1, "containsPossibleBreak":Z
    move/from16 v54, v1

    .end local v1    # "containsPossibleBreak":Z
    .restart local v54    # "containsPossibleBreak":Z
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 323
    .end local v46    # "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    .local v1, "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    const/16 v46, 0x1

    .line 324
    .end local v55    # "isSplitForcedByNewLine":Z
    .local v46, "isSplitForcedByNewLine":Z
    add-int/lit8 v7, v10, 0x1

    .line 325
    if-eq v10, v13, :cond_f

    .line 326
    const/16 v52, 0x1

    goto :goto_e

    .line 329
    :cond_f
    const/16 v20, 0x1

    .line 332
    :goto_e
    move-object/from16 v71, v1

    .end local v1    # "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    .local v71, "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    move/from16 v72, v3

    const/4 v3, -0x1

    .end local v3    # "italicSkewAddition":F
    .local v72, "italicSkewAddition":F
    if-ne v1, v3, :cond_10

    .line 333
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 336
    :cond_10
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/TextUtil;->isCarriageReturnFollowedByLineFeed(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v1

    .line 338
    .end local v53    # "crlf":Z
    .local v1, "crlf":Z
    if-eqz v1, :cond_11

    .line 339
    add-int/lit8 v2, v2, 0x1

    .line 342
    :cond_11
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    move/from16 v53, v1

    .end local v1    # "crlf":Z
    .restart local v53    # "crlf":Z
    iget v1, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v55, v2

    .end local v2    # "currentTextPos":I
    .local v55, "currentTextPos":I
    add-int/lit8 v2, v7, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 343
    move-object/from16 v74, v0

    move-object/from16 v82, v5

    move v10, v7

    move/from16 v47, v14

    move-object/from16 v77, v26

    move-object/from16 v80, v27

    move-object/from16 v78, v29

    move/from16 v75, v35

    move-object/from16 v26, v50

    move/from16 v3, v54

    move/from16 v7, v55

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v0, v63

    move/from16 v5, v72

    move v14, v11

    move-object/from16 v50, v12

    move-object/from16 v35, v15

    move/from16 v15, v34

    move/from16 v55, v46

    move-object/from16 v12, v66

    move-object/from16 v46, v71

    move-object v11, v4

    move/from16 v34, v13

    move-object/from16 v13, v25

    move/from16 v4, v37

    goto/16 :goto_20

    .line 346
    .end local v71    # "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v72    # "italicSkewAddition":F
    .restart local v2    # "currentTextPos":I
    .restart local v3    # "italicSkewAddition":F
    .local v46, "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    .local v55, "isSplitForcedByNewLine":Z
    :cond_12
    move/from16 v72, v3

    .end local v3    # "italicSkewAddition":F
    .restart local v72    # "italicSkewAddition":F
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v71

    .line 347
    .local v71, "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-static/range {v71 .. v71}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 348
    add-int/lit8 v1, v10, 0x1

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v3, :cond_13

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v3, v10, 0x1

    .line 349
    invoke-interface {v4, v1, v3}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v3, v10, 0x1

    .line 350
    invoke-virtual {v1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_f

    :cond_13
    const/4 v1, 0x0

    .line 351
    .local v1, "nextGlyphIsSpaceOrWhiteSpace":Z
    :goto_f
    if-eqz v1, :cond_14

    const/4 v3, -0x1

    if-ne v7, v3, :cond_15

    .line 352
    const/16 v54, 0x1

    goto :goto_10

    .line 351
    :cond_14
    const/4 v3, -0x1

    .line 354
    :cond_15
    :goto_10
    add-int/lit8 v3, v10, 0x1

    move-object/from16 v73, v4

    .end local v4    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v73, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v3, v4, :cond_17

    if-nez v1, :cond_17

    add-int/lit8 v3, v10, 0x1

    iget v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v3, v4, :cond_16

    goto :goto_11

    :cond_16
    move-object/from16 v82, v5

    move/from16 v47, v14

    move-object/from16 v77, v26

    move-object/from16 v80, v27

    move-object/from16 v78, v29

    move/from16 v75, v35

    move-object/from16 v26, v50

    move/from16 v1, v70

    move/from16 v5, v72

    move/from16 v29, v11

    move-object/from16 v50, v12

    move-object/from16 v35, v15

    move/from16 v15, v34

    move-object/from16 v11, v73

    move/from16 v34, v13

    move-object/from16 v13, v25

    move/from16 v25, v2

    goto/16 :goto_1e

    .line 356
    :cond_17
    :goto_11
    add-int/lit8 v3, v10, 0x1

    iget v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v3, v4, :cond_18

    .line 357
    move v7, v2

    .line 358
    move-object/from16 v74, v0

    move-object/from16 v82, v5

    move v10, v7

    move/from16 v47, v14

    move-object/from16 v77, v26

    move-object/from16 v80, v27

    move-object/from16 v78, v29

    move/from16 v75, v35

    move/from16 v4, v37

    move-object/from16 v26, v50

    move/from16 v3, v54

    move/from16 v1, v62

    move/from16 v0, v63

    move/from16 v5, v72

    move v14, v11

    move-object/from16 v50, v12

    move-object/from16 v35, v15

    move/from16 v15, v34

    move/from16 v2, v61

    move-object/from16 v12, v66

    move-object/from16 v11, v73

    move/from16 v34, v13

    move-object/from16 v13, v25

    goto/16 :goto_20

    .line 360
    :cond_18
    move/from16 v60, v10

    .line 361
    move-object/from16 v74, v0

    move-object/from16 v82, v5

    move v10, v7

    move/from16 v47, v14

    move-object/from16 v77, v26

    move-object/from16 v80, v27

    move-object/from16 v78, v29

    move/from16 v75, v35

    move/from16 v4, v37

    move-object/from16 v26, v50

    move/from16 v3, v54

    move/from16 v1, v62

    move/from16 v0, v63

    move/from16 v5, v72

    move v7, v2

    move v14, v11

    move-object/from16 v50, v12

    move-object/from16 v35, v15

    move/from16 v15, v34

    move/from16 v2, v61

    move-object/from16 v12, v66

    move-object/from16 v11, v73

    move/from16 v34, v13

    move-object/from16 v13, v25

    goto/16 :goto_20

    .line 366
    .end local v1    # "nextGlyphIsSpaceOrWhiteSpace":Z
    .end local v73    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v4    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    :cond_19
    move-object/from16 v73, v4

    .end local v4    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v73    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v3

    if-ne v1, v3, :cond_1a

    .line 367
    add-float v1, v40, v24

    iput v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    .line 368
    const/4 v0, 0x0

    move-object/from16 v74, v0

    goto :goto_12

    .line 371
    :cond_1a
    move-object/from16 v74, v0

    .end local v0    # "tabAnchorCharacter":Ljava/lang/Character;
    .local v74, "tabAnchorCharacter":Ljava/lang/Character;
    :goto_12
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move/from16 v75, v35

    const/4 v1, 0x0

    move-object/from16 v35, v15

    move-object/from16 v15, v56

    .end local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v15, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v35, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v75, "descender":F
    move-object/from16 v0, p0

    move/from16 v47, v11

    move-object/from16 v76, v25

    move/from16 v11, v70

    .end local v25    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v70    # "previousCharPos":I
    .local v11, "previousCharPos":I
    .local v47, "nonBreakingHyphenRelatedChunkStart":I
    .local v76, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move-object/from16 v1, v71

    move/from16 v25, v2

    move-object/from16 v77, v26

    move/from16 v15, v34

    move-object/from16 v26, v50

    move/from16 v34, v13

    const/4 v13, -0x1

    .end local v2    # "currentTextPos":I
    .end local v13    # "firstPrintPos":I
    .end local v50    # "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v15, "boldSimulationAddition":F
    .local v25, "currentTextPos":I
    .local v26, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v34, "firstPrintPos":I
    .restart local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v77, "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    move v2, v3

    move-object/from16 v78, v29

    move/from16 v79, v72

    .end local v29    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v72    # "italicSkewAddition":F
    .local v78, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v79, "italicSkewAddition":F
    move-object v3, v4

    move-object/from16 v80, v27

    move-object/from16 v81, v73

    .end local v27    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v73    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v80, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v81, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    move-object/from16 v4, v31

    move-object/from16 v82, v5

    .end local v5    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v82, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    div-float v0, v0, v43

    .line 372
    .local v0, "glyphWidth":F
    if-eq v11, v13, :cond_1b

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v1

    int-to-float v1, v1

    goto :goto_13

    :cond_1b
    const/4 v1, 0x0

    .line 373
    .local v1, "xAdvance":F
    :goto_13
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1c

    .line 374
    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v6, v1, v2, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->scaleXAdvance(FFLjava/lang/Float;)F

    move-result v2

    div-float v1, v2, v43

    .line 377
    :cond_1c
    add-float v2, v24, v0

    add-float/2addr v2, v1

    move/from16 v5, v79

    .end local v79    # "italicSkewAddition":F
    .local v5, "italicSkewAddition":F
    add-float/2addr v2, v5

    add-float/2addr v2, v15

    .line 379
    .local v2, "potentialWidth":F
    if-nez v9, :cond_1d

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float v3, v3, v40

    const v4, 0x38d1b717    # 1.0E-4f

    add-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1d

    if-eq v7, v13, :cond_1e

    :cond_1d
    iget v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    if-ne v10, v3, :cond_22

    .line 382
    :cond_1e
    move v7, v10

    .line 383
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    .line 384
    .local v3, "spaceOrWhitespace":Z
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v13, 0x67

    invoke-interface {v4, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/property/OverflowPropertyValue;

    .line 385
    .local v4, "parentOverflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    if-nez v3, :cond_20

    if-eqz v14, :cond_1f

    invoke-static {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v18

    if-nez v18, :cond_1f

    goto :goto_14

    .line 398
    .end local v3    # "spaceOrWhitespace":Z
    .end local v4    # "parentOverflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_1f
    move/from16 v13, v34

    goto :goto_15

    .line 386
    .restart local v3    # "spaceOrWhitespace":Z
    .restart local v4    # "parentOverflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    :cond_20
    :goto_14
    if-eqz v3, :cond_21

    .line 387
    move-object/from16 v46, v71

    .line 389
    :cond_21
    move/from16 v13, v34

    .end local v34    # "firstPrintPos":I
    .restart local v13    # "firstPrintPos":I
    if-ne v10, v13, :cond_23

    .line 390
    const/16 v27, 0x1

    .line 391
    .end local v54    # "containsPossibleBreak":Z
    .local v27, "containsPossibleBreak":Z
    const/16 v20, 0x1

    .line 392
    add-int/lit8 v7, v10, 0x1

    .line 393
    move v10, v7

    move/from16 v70, v11

    move-object/from16 v50, v12

    move/from16 v34, v13

    move/from16 v7, v25

    move/from16 v3, v27

    move/from16 v4, v37

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v0, v63

    move-object/from16 v12, v66

    move-object/from16 v13, v76

    move-object/from16 v11, v81

    move/from16 v96, v47

    move/from16 v47, v14

    move/from16 v14, v96

    goto/16 :goto_20

    .line 379
    .end local v3    # "spaceOrWhitespace":Z
    .end local v4    # "parentOverflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .end local v13    # "firstPrintPos":I
    .end local v27    # "containsPossibleBreak":Z
    .restart local v34    # "firstPrintPos":I
    .restart local v54    # "containsPossibleBreak":Z
    :cond_22
    move/from16 v13, v34

    .line 398
    .end local v34    # "firstPrintPos":I
    .restart local v13    # "firstPrintPos":I
    :cond_23
    :goto_15
    if-eqz v56, :cond_26

    .line 399
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v3, v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->glyphBelongsToNonBreakingHyphenRelatedChunk(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 400
    move/from16 v3, v47

    const/4 v4, -0x1

    .end local v47    # "nonBreakingHyphenRelatedChunkStart":I
    .local v3, "nonBreakingHyphenRelatedChunkStart":I
    if-ne v4, v3, :cond_24

    .line 401
    move/from16 v67, v61

    .line 402
    move/from16 v68, v62

    .line 403
    move v3, v10

    .line 405
    :cond_24
    add-float v4, v0, v1

    add-float v65, v65, v4

    goto :goto_16

    .line 407
    .end local v3    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v47    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_25
    move/from16 v3, v47

    .end local v47    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v3    # "nonBreakingHyphenRelatedChunkStart":I
    const/4 v3, -0x1

    .line 408
    const/16 v65, 0x0

    goto :goto_16

    .line 398
    .end local v3    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v47    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_26
    move/from16 v3, v47

    .line 411
    .end local v47    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v3    # "nonBreakingHyphenRelatedChunkStart":I
    :goto_16
    const/4 v4, -0x1

    if-eq v7, v4, :cond_27

    invoke-static/range {v35 .. v35}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 412
    :cond_27
    add-float v4, v0, v1

    add-float v37, v37, v4

    .line 414
    :cond_28
    add-float v4, v0, v1

    add-float v24, v24, v4

    .line 416
    move/from16 v70, v11

    move/from16 v4, v61

    move/from16 v11, v69

    .end local v61    # "nonBreakablePartMaxAscender":F
    .end local v69    # "ascender":F
    .local v4, "nonBreakablePartMaxAscender":F
    .local v11, "ascender":F
    .restart local v70    # "previousCharPos":I
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v61

    .line 417
    .end local v4    # "nonBreakablePartMaxAscender":F
    .restart local v61    # "nonBreakablePartMaxAscender":F
    move/from16 v34, v13

    move/from16 v4, v62

    move/from16 v13, v75

    .end local v62    # "nonBreakablePartMaxDescender":F
    .end local v75    # "descender":F
    .local v4, "nonBreakablePartMaxDescender":F
    .local v13, "descender":F
    .restart local v34    # "firstPrintPos":I
    invoke-static {v4, v13}, Ljava/lang/Math;->min(FF)F

    move-result v62

    .line 418
    .end local v4    # "nonBreakablePartMaxDescender":F
    .restart local v62    # "nonBreakablePartMaxDescender":F
    sub-float v4, v61, v62

    invoke-virtual {v12}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v27

    mul-float v4, v4, v27

    div-float v4, v4, v43

    add-float v63, v4, v30

    .line 420
    move v4, v10

    .line 422
    .end local v70    # "previousCharPos":I
    .local v4, "previousCharPos":I
    if-nez v9, :cond_2c

    add-float v27, v24, v5

    add-float v27, v27, v15

    .line 423
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v29

    cmpl-float v27, v27, v29

    if-lez v27, :cond_2b

    const/16 v22, 0x0

    cmpl-float v27, v22, v65

    if-eqz v27, :cond_29

    move/from16 v27, v2

    .end local v2    # "potentialWidth":F
    .local v27, "potentialWidth":F
    add-int/lit8 v2, v10, 0x1

    move/from16 v29, v3

    .end local v3    # "nonBreakingHyphenRelatedChunkStart":I
    .local v29, "nonBreakingHyphenRelatedChunkStart":I
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v2, v3, :cond_2a

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v3, v10, 0x1

    .line 424
    invoke-static {v2, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->glyphBelongsToNonBreakingHyphenRelatedChunk(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_17

    .line 423
    .end local v27    # "potentialWidth":F
    .end local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v2    # "potentialWidth":F
    .restart local v3    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_29
    move/from16 v27, v2

    move/from16 v29, v3

    .line 425
    .end local v2    # "potentialWidth":F
    .end local v3    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v27    # "potentialWidth":F
    .restart local v29    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_2a
    :goto_17
    invoke-static/range {v35 .. v35}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 428
    move/from16 v70, v4

    move v10, v7

    move/from16 v69, v11

    move-object/from16 v50, v12

    move/from16 v75, v13

    move/from16 v47, v14

    move/from16 v7, v25

    move/from16 v14, v29

    move/from16 v4, v37

    move/from16 v3, v54

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v0, v63

    move-object/from16 v12, v66

    move-object/from16 v13, v76

    move-object/from16 v11, v81

    goto/16 :goto_20

    .line 423
    .end local v27    # "potentialWidth":F
    .end local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v2    # "potentialWidth":F
    .restart local v3    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_2b
    move/from16 v27, v2

    move/from16 v29, v3

    .end local v2    # "potentialWidth":F
    .end local v3    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v27    # "potentialWidth":F
    .restart local v29    # "nonBreakingHyphenRelatedChunkStart":I
    goto :goto_18

    .line 422
    .end local v27    # "potentialWidth":F
    .end local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v2    # "potentialWidth":F
    .restart local v3    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_2c
    move/from16 v27, v2

    move/from16 v29, v3

    .line 432
    .end local v2    # "potentialWidth":F
    .end local v3    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v27    # "potentialWidth":F
    .restart local v29    # "nonBreakingHyphenRelatedChunkStart":I
    :cond_2d
    :goto_18
    sget-object v2, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    move-object/from16 v3, v66

    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v3, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    if-ne v2, v3, :cond_2f

    .line 433
    move-object/from16 v66, v3

    .end local v3    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    float-to-double v2, v0

    move/from16 v75, v13

    move/from16 v47, v14

    .end local v13    # "descender":F
    .end local v14    # "overflowWrapNotNormal":Z
    .local v47, "overflowWrapNotNormal":Z
    .restart local v75    # "descender":F
    float-to-double v13, v1

    add-double/2addr v2, v13

    float-to-double v13, v5

    add-double/2addr v2, v13

    float-to-double v13, v15

    add-double/2addr v2, v13

    double-to-float v2, v2

    .line 435
    .local v2, "childMinWidth":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v13, v41, v3

    if-nez v13, :cond_2e

    .line 436
    move/from16 v41, v2

    goto :goto_19

    .line 438
    :cond_2e
    move/from16 v49, v2

    .line 440
    :goto_19
    move-object/from16 v13, v76

    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v13, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 441
    move v14, v2

    .end local v2    # "childMinWidth":F
    .local v14, "childMinWidth":F
    float-to-double v2, v0

    move/from16 v69, v11

    move-object/from16 v50, v12

    .end local v11    # "ascender":F
    .end local v12    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .local v50, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v69    # "ascender":F
    float-to-double v11, v1

    add-double/2addr v2, v11

    double-to-float v2, v2

    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_1a

    .line 432
    .end local v47    # "overflowWrapNotNormal":Z
    .end local v50    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v69    # "ascender":F
    .end local v75    # "descender":F
    .restart local v3    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v11    # "ascender":F
    .restart local v12    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .local v13, "descender":F
    .local v14, "overflowWrapNotNormal":Z
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_2f
    move-object/from16 v66, v3

    move/from16 v69, v11

    move-object/from16 v50, v12

    move/from16 v75, v13

    move/from16 v47, v14

    move-object/from16 v13, v76

    .line 444
    .end local v3    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v11    # "ascender":F
    .end local v12    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .end local v14    # "overflowWrapNotNormal":Z
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v13, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v47    # "overflowWrapNotNormal":Z
    .restart local v50    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v69    # "ascender":F
    .restart local v75    # "descender":F
    :goto_1a
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    add-int/lit8 v11, v10, 0x1

    .line 445
    invoke-static {v3, v11, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I

    move-result v3

    if-ltz v3, :cond_30

    const/4 v2, 0x1

    goto :goto_1b

    :cond_30
    const/4 v2, 0x0

    .line 447
    .local v2, "endOfWordBelongingToSpecialScripts":Z
    :goto_1b
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    move-object/from16 v11, v81

    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v11, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    invoke-interface {v11, v3, v10}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v3

    if-nez v3, :cond_32

    add-int/lit8 v3, v10, 0x1

    iget-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v12, v12, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v3, v12, :cond_31

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v12, v10, 0x1

    .line 449
    invoke-interface {v11, v3, v12}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v12, v10, 0x1

    .line 450
    invoke-virtual {v3, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_1c

    :cond_31
    const/4 v3, 0x0

    goto :goto_1d

    :cond_32
    :goto_1c
    const/4 v3, 0x1

    .line 451
    .local v3, "endOfNonBreakablePartCausedBySplitCharacter":Z
    :goto_1d
    if-eqz v3, :cond_33

    const/4 v12, -0x1

    if-ne v7, v12, :cond_33

    .line 452
    const/16 v54, 0x1

    .line 454
    :cond_33
    add-int/lit8 v12, v10, 0x1

    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v14, v14, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v12, v14, :cond_35

    if-nez v3, :cond_35

    if-nez v2, :cond_35

    add-int/lit8 v12, v10, 0x1

    iget v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v12, v14, :cond_34

    goto :goto_1f

    :cond_34
    move v1, v4

    move-object/from16 v0, v74

    .line 319
    .end local v2    # "endOfWordBelongingToSpecialScripts":Z
    .end local v3    # "endOfNonBreakablePartCausedBySplitCharacter":Z
    .end local v4    # "previousCharPos":I
    .end local v27    # "potentialWidth":F
    .end local v71    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v74    # "tabAnchorCharacter":Ljava/lang/Character;
    .local v0, "tabAnchorCharacter":Ljava/lang/Character;
    .local v1, "previousCharPos":I
    :goto_1e
    add-int/lit8 v10, v10, 0x1

    move v3, v5

    move-object v4, v11

    move/from16 v2, v25

    move/from16 v11, v29

    move/from16 v14, v47

    move-object/from16 v12, v50

    move-object/from16 v29, v78

    move-object/from16 v27, v80

    move-object/from16 v5, v82

    move-object/from16 v25, v13

    move-object/from16 v50, v26

    move/from16 v13, v34

    move-object/from16 v26, v77

    move/from16 v34, v15

    move-object/from16 v15, v35

    move/from16 v35, v75

    goto/16 :goto_d

    .line 458
    .local v0, "glyphWidth":F
    .local v1, "xAdvance":F
    .restart local v2    # "endOfWordBelongingToSpecialScripts":Z
    .restart local v3    # "endOfNonBreakablePartCausedBySplitCharacter":Z
    .restart local v4    # "previousCharPos":I
    .restart local v27    # "potentialWidth":F
    .restart local v71    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .restart local v74    # "tabAnchorCharacter":Ljava/lang/Character;
    :cond_35
    :goto_1f
    add-int/lit8 v12, v10, 0x1

    iget v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v12, v14, :cond_36

    if-nez v3, :cond_36

    .line 460
    move/from16 v7, v25

    .line 462
    :cond_36
    move/from16 v60, v10

    .line 463
    move/from16 v70, v4

    move v10, v7

    move/from16 v7, v25

    move/from16 v14, v29

    move/from16 v4, v37

    move/from16 v3, v54

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v0, v63

    move-object/from16 v12, v66

    goto :goto_20

    .line 319
    .end local v1    # "xAdvance":F
    .end local v47    # "overflowWrapNotNormal":Z
    .end local v71    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v74    # "tabAnchorCharacter":Ljava/lang/Character;
    .end local v75    # "descender":F
    .end local v77    # "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v0, "tabAnchorCharacter":Ljava/lang/Character;
    .local v2, "currentTextPos":I
    .local v3, "italicSkewAddition":F
    .local v4, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v5, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v12    # "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .local v13, "firstPrintPos":I
    .restart local v14    # "overflowWrapNotNormal":Z
    .local v15, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v25, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v26, "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v27, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v29, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v34, "boldSimulationAddition":F
    .local v35, "descender":F
    .local v50, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .restart local v70    # "previousCharPos":I
    :cond_37
    move-object/from16 v82, v5

    move/from16 v47, v14

    move-object/from16 v77, v26

    move-object/from16 v80, v27

    move-object/from16 v78, v29

    move/from16 v75, v35

    move-object/from16 v26, v50

    move v5, v3

    move v3, v11

    move-object/from16 v50, v12

    move-object/from16 v35, v15

    move/from16 v15, v34

    move-object/from16 v12, v66

    move-object v11, v4

    move/from16 v34, v13

    move-object/from16 v13, v25

    move/from16 v4, v61

    move/from16 v25, v2

    .end local v2    # "currentTextPos":I
    .end local v14    # "overflowWrapNotNormal":Z
    .end local v27    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v29    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v61    # "nonBreakablePartMaxAscender":F
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v3, "nonBreakingHyphenRelatedChunkStart":I
    .local v4, "nonBreakablePartMaxAscender":F
    .local v5, "italicSkewAddition":F
    .local v11, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v12, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v13, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v15, "boldSimulationAddition":F
    .local v25, "currentTextPos":I
    .local v26, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v34, "firstPrintPos":I
    .local v35, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .restart local v47    # "overflowWrapNotNormal":Z
    .local v50, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v75    # "descender":F
    .restart local v77    # "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v74, v0

    move v14, v3

    move v2, v4

    move v10, v7

    move/from16 v7, v25

    move/from16 v4, v37

    move/from16 v3, v54

    move/from16 v1, v62

    move/from16 v0, v63

    .line 467
    .end local v25    # "currentTextPos":I
    .end local v37    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .end local v54    # "containsPossibleBreak":Z
    .end local v62    # "nonBreakablePartMaxDescender":F
    .end local v63    # "nonBreakablePartMaxHeight":F
    .local v0, "nonBreakablePartMaxHeight":F
    .local v1, "nonBreakablePartMaxDescender":F
    .local v2, "nonBreakablePartMaxAscender":F
    .local v3, "containsPossibleBreak":Z
    .local v4, "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .local v7, "currentTextPos":I
    .local v10, "firstCharacterWhichExceedsAllowedWidth":I
    .local v14, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v74    # "tabAnchorCharacter":Ljava/lang/Character;
    :goto_20
    move/from16 v25, v3

    const/4 v3, -0x1

    .end local v3    # "containsPossibleBreak":Z
    .local v25, "containsPossibleBreak":Z
    if-ne v10, v3, :cond_3b

    .line 469
    move/from16 v27, v9

    .end local v9    # "noSoftWrap":Z
    .local v27, "noSoftWrap":Z
    iget-object v9, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v9, v9, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ne v9, v3, :cond_38

    .line 470
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v7, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 472
    :cond_38
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v9, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v29, v14

    .end local v14    # "nonBreakingHyphenRelatedChunkStart":I
    .local v29, "nonBreakingHyphenRelatedChunkStart":I
    add-int/lit8 v14, v60, 0x1

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 473
    move/from16 v9, v38

    .end local v38    # "currentLineAscender":F
    .local v9, "currentLineAscender":F
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 474
    .end local v9    # "currentLineAscender":F
    .local v3, "currentLineAscender":F
    move/from16 v14, v58

    .end local v58    # "currentLineDescender":F
    .local v14, "currentLineDescender":F
    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v58

    .line 475
    .end local v14    # "currentLineDescender":F
    .restart local v58    # "currentLineDescender":F
    move/from16 v9, v59

    .end local v59    # "currentLineHeight":F
    .local v9, "currentLineHeight":F
    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v59

    .line 476
    .end local v9    # "currentLineHeight":F
    .restart local v59    # "currentLineHeight":F
    add-int/lit8 v7, v60, 0x1

    .line 477
    add-float v40, v40, v24

    .line 478
    sget-object v9, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    if-ne v9, v12, :cond_39

    .line 479
    move/from16 v38, v1

    move/from16 v37, v2

    .end local v1    # "nonBreakablePartMaxDescender":F
    .end local v2    # "nonBreakablePartMaxAscender":F
    .local v37, "nonBreakablePartMaxAscender":F
    .local v38, "nonBreakablePartMaxDescender":F
    float-to-double v1, v5

    move-object/from16 v81, v11

    move-object/from16 v66, v12

    .end local v11    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v12    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    float-to-double v11, v15

    add-double/2addr v1, v11

    double-to-float v1, v1

    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move/from16 v1, v49

    goto :goto_22

    .line 482
    .end local v37    # "nonBreakablePartMaxAscender":F
    .end local v38    # "nonBreakablePartMaxDescender":F
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v1    # "nonBreakablePartMaxDescender":F
    .restart local v2    # "nonBreakablePartMaxAscender":F
    .restart local v11    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v12    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    :cond_39
    move/from16 v38, v1

    move/from16 v37, v2

    move-object/from16 v81, v11

    move-object/from16 v66, v12

    .end local v1    # "nonBreakablePartMaxDescender":F
    .end local v2    # "nonBreakablePartMaxAscender":F
    .end local v11    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v12    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v37    # "nonBreakablePartMaxAscender":F
    .restart local v38    # "nonBreakablePartMaxDescender":F
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    float-to-double v1, v4

    float-to-double v11, v5

    add-double/2addr v1, v11

    float-to-double v11, v15

    add-double/2addr v1, v11

    double-to-float v1, v1

    .line 484
    .local v1, "childMinWidth":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v41, v2

    if-nez v2, :cond_3a

    .line 485
    move/from16 v41, v1

    goto :goto_21

    .line 487
    :cond_3a
    move/from16 v49, v1

    .line 489
    :goto_21
    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 490
    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move/from16 v1, v49

    .line 492
    .end local v49    # "rightMinWidth":F
    .local v1, "rightMinWidth":F
    :goto_22
    const/16 v28, 0x1

    .line 643
    .end local v0    # "nonBreakablePartMaxHeight":F
    .end local v4    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v24    # "nonBreakablePartFullWidth":F
    .end local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .end local v37    # "nonBreakablePartMaxAscender":F
    .end local v38    # "nonBreakablePartMaxDescender":F
    .end local v60    # "nonBreakablePartEnd":I
    .end local v65    # "nonBreakingHyphenRelatedChunkWidth":F
    .end local v67    # "beforeNonBreakingHyphenRelatedChunkMaxAscender":F
    .end local v68    # "beforeNonBreakingHyphenRelatedChunkMaxDescender":F
    move v2, v7

    move/from16 v54, v25

    move/from16 v9, v27

    move/from16 v24, v41

    move/from16 v14, v47

    move-object/from16 v12, v50

    move-object/from16 v11, v66

    move/from16 v10, v69

    move/from16 v41, v70

    move-object/from16 v0, v74

    move-object/from16 v29, v78

    move-object/from16 v27, v80

    move-object/from16 v4, v81

    move v7, v3

    move v3, v5

    move-object/from16 v25, v13

    move-object/from16 v50, v26

    move/from16 v13, v34

    move-object/from16 v26, v77

    move-object/from16 v5, v82

    move/from16 v34, v15

    move-object/from16 v15, v35

    move/from16 v35, v75

    goto/16 :goto_c

    .line 495
    .end local v3    # "currentLineAscender":F
    .end local v27    # "noSoftWrap":Z
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v0    # "nonBreakablePartMaxHeight":F
    .local v1, "nonBreakablePartMaxDescender":F
    .restart local v2    # "nonBreakablePartMaxAscender":F
    .restart local v4    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .local v9, "noSoftWrap":Z
    .restart local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v11    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v12    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v14, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v24    # "nonBreakablePartFullWidth":F
    .local v38, "currentLineAscender":F
    .restart local v49    # "rightMinWidth":F
    .restart local v60    # "nonBreakablePartEnd":I
    .restart local v65    # "nonBreakingHyphenRelatedChunkWidth":F
    .restart local v67    # "beforeNonBreakingHyphenRelatedChunkMaxAscender":F
    .restart local v68    # "beforeNonBreakingHyphenRelatedChunkMaxDescender":F
    :cond_3b
    move/from16 v37, v2

    move/from16 v27, v9

    move-object/from16 v81, v11

    move-object/from16 v66, v12

    move/from16 v29, v14

    move/from16 v9, v38

    move/from16 v14, v58

    move/from16 v11, v59

    move/from16 v38, v1

    .end local v1    # "nonBreakablePartMaxDescender":F
    .end local v2    # "nonBreakablePartMaxAscender":F
    .end local v12    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v58    # "currentLineDescender":F
    .end local v59    # "currentLineHeight":F
    .local v9, "currentLineAscender":F
    .local v11, "currentLineHeight":F
    .local v14, "currentLineDescender":F
    .restart local v27    # "noSoftWrap":Z
    .restart local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v37    # "nonBreakablePartMaxAscender":F
    .local v38, "nonBreakablePartMaxDescender":F
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3d

    invoke-static/range {v51 .. v51}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 496
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v12, v78

    const/4 v2, 0x1

    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v12, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v1, v12, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 497
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v3, v80

    .end local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v3, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v6, v1, v3, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 498
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v12, v82

    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v12, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v1, v12, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 500
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    .line 501
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v7, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 503
    :cond_3c
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 505
    move/from16 v2, v39

    .end local v39    # "initialLineTextPos":I
    .local v2, "initialLineTextPos":I
    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v18

    .line 507
    .local v18, "splitResult":[Lcom/itextpdf/layout/renderer/TextRenderer;
    move-object/from16 v1, v81

    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v1, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v22

    .line 508
    .local v22, "startsEnds":[Z
    nop

    .end local v1    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    new-instance v1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    const/16 v23, 0x3

    .end local v2    # "initialLineTextPos":I
    .restart local v39    # "initialLineTextPos":I
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/16 v21, 0x0

    aget-object v42, v18, v21

    const/16 v19, 0x1

    aget-object v43, v18, v19

    move-object/from16 v82, v12

    move v12, v0

    .end local v0    # "nonBreakablePartMaxHeight":F
    .local v12, "nonBreakablePartMaxHeight":F
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    move-object v0, v1

    move-object/from16 v76, v13

    move/from16 v13, v38

    move-object/from16 v83, v81

    move/from16 v38, v11

    move-object v11, v1

    .end local v11    # "currentLineHeight":F
    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v13, "nonBreakablePartMaxDescender":F
    .local v38, "currentLineHeight":F
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v83, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    move/from16 v1, v23

    move/from16 v84, v37

    .end local v37    # "nonBreakablePartMaxAscender":F
    .local v84, "nonBreakablePartMaxAscender":F
    move-object/from16 v85, v3

    move/from16 v86, v25

    .end local v3    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v25    # "containsPossibleBreak":Z
    .local v85, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v86, "containsPossibleBreak":Z
    move-object/from16 v3, v42

    move/from16 v87, v4

    .end local v4    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .local v87, "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    move-object/from16 v4, v43

    move/from16 v25, v12

    move v12, v5

    .end local v5    # "italicSkewAddition":F
    .local v12, "italicSkewAddition":F
    .local v25, "nonBreakablePartMaxHeight":F
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 510
    move/from16 v5, v86

    .end local v86    # "containsPossibleBreak":Z
    .local v5, "containsPossibleBreak":Z
    invoke-virtual {v11, v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    aget-boolean v1, v22, v21

    .line 511
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, v22, v1

    .line 512
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    .line 508
    return-object v0

    .line 495
    .end local v12    # "italicSkewAddition":F
    .end local v18    # "splitResult":[Lcom/itextpdf/layout/renderer/TextRenderer;
    .end local v22    # "startsEnds":[Z
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v83    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v84    # "nonBreakablePartMaxAscender":F
    .end local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v87    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .restart local v0    # "nonBreakablePartMaxHeight":F
    .restart local v4    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .local v5, "italicSkewAddition":F
    .restart local v11    # "currentLineHeight":F
    .local v13, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v25, "containsPossibleBreak":Z
    .restart local v37    # "nonBreakablePartMaxAscender":F
    .local v38, "nonBreakablePartMaxDescender":F
    .restart local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    :cond_3d
    move/from16 v87, v4

    move v12, v5

    move-object/from16 v76, v13

    move/from16 v5, v25

    move/from16 v84, v37

    move/from16 v13, v38

    move-object/from16 v85, v80

    move-object/from16 v83, v81

    move/from16 v25, v0

    move/from16 v38, v11

    .line 516
    .end local v0    # "nonBreakablePartMaxHeight":F
    .end local v4    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .end local v11    # "currentLineHeight":F
    .end local v37    # "nonBreakablePartMaxAscender":F
    .end local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v5, "containsPossibleBreak":Z
    .restart local v12    # "italicSkewAddition":F
    .local v13, "nonBreakablePartMaxDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .local v38, "currentLineHeight":F
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v83    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v84    # "nonBreakablePartMaxAscender":F
    .restart local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v87    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    const/4 v11, 0x0

    .line 517
    .local v11, "wordSplit":Z
    const/16 v18, 0x0

    .line 519
    .local v18, "hyphenationApplied":Z
    if-eqz v56, :cond_46

    iget v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_46

    .line 520
    move/from16 v4, v29

    const/4 v0, -0x1

    .end local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .local v4, "nonBreakingHyphenRelatedChunkStart":I
    if-ne v0, v4, :cond_44

    .line 521
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/lit8 v2, v10, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getWordBoundsForHyphenation(Lcom/itextpdf/io/font/otf/GlyphLine;III)[I

    move-result-object v29

    .line 522
    .local v29, "wordBounds":[I
    if-eqz v29, :cond_43

    .line 523
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v1, 0x0

    aget v2, v29, v1

    const/4 v1, 0x1

    aget v3, v29, v1

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "word":Ljava/lang/String;
    move-object/from16 v2, v56

    .end local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v2, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;->hyphenate(Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object v0

    .line 525
    .local v0, "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    if-eqz v0, :cond_42

    .line 526
    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->length()I

    move-result v19

    add-int/lit8 v37, v19, -0x1

    move/from16 v1, v37

    .local v1, "i":I
    :goto_23
    if-ltz v1, :cond_41

    .line 527
    move/from16 v37, v10

    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .local v37, "firstCharacterWhichExceedsAllowedWidth":I
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getPreHyphenText(I)Ljava/lang/String;

    move-result-object v10

    .line 528
    .local v10, "pre":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getPostHyphenText(I)Ljava/lang/String;

    move-result-object v54

    .line 529
    .local v54, "pos":Ljava/lang/String;
    move-object/from16 v56, v0

    .end local v0    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .local v56, "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v58, v1

    .end local v1    # "i":I
    .local v58, "i":I
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    move-object/from16 v59, v3

    const/16 v21, 0x0

    .end local v3    # "word":Ljava/lang/String;
    .local v59, "word":Ljava/lang/String;
    aget v3, v29, v21

    .line 530
    invoke-virtual {v1, v7, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;->getHyphenSymbol()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->convertToGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    invoke-virtual/range {v50 .. v50}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v61, v2

    .end local v2    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v61, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    move v2, v3

    move/from16 v3, v33

    move/from16 v62, v11

    move v11, v4

    .end local v4    # "nonBreakingHyphenRelatedChunkStart":I
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v62, "wordSplit":Z
    move-object/from16 v4, v31

    move/from16 v88, v5

    .end local v5    # "containsPossibleBreak":Z
    .local v88, "containsPossibleBreak":Z
    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getGlyphLineWidth(Lcom/itextpdf/io/font/otf/GlyphLine;FFLjava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    .line 531
    .local v0, "currentHyphenationChoicePreTextWidth":F
    add-float v1, v40, v0

    add-float/2addr v1, v12

    add-float/2addr v1, v15

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_40

    .line 532
    const/4 v1, 0x1

    .line 534
    .end local v18    # "hyphenationApplied":Z
    .local v1, "hyphenationApplied":Z
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3e

    .line 535
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v7, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 537
    :cond_3e
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v4, 0x0

    aget v5, v29, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 538
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->copy(II)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v2

    .line 539
    .local v2, "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual/range {v61 .. v61}, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;->getHyphenSymbol()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->add(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 540
    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 541
    iput-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 544
    move/from16 v4, v84

    .end local v84    # "nonBreakablePartMaxAscender":F
    .local v4, "nonBreakablePartMaxAscender":F
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 545
    .end local v9    # "currentLineAscender":F
    .local v3, "currentLineAscender":F
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 546
    .end local v14    # "currentLineDescender":F
    .local v5, "currentLineDescender":F
    move/from16 v9, v25

    move/from16 v14, v38

    .end local v25    # "nonBreakablePartMaxHeight":F
    .end local v38    # "currentLineHeight":F
    .local v9, "nonBreakablePartMaxHeight":F
    .local v14, "currentLineHeight":F
    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 548
    add-float v40, v40, v0

    .line 549
    move/from16 v18, v1

    .end local v1    # "hyphenationApplied":Z
    .restart local v18    # "hyphenationApplied":Z
    sget-object v1, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    move/from16 v25, v7

    move-object/from16 v7, v66

    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v25, "currentTextPos":I
    if-ne v1, v7, :cond_3f

    .line 550
    move-object/from16 v38, v2

    .end local v2    # "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    .local v38, "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    float-to-double v1, v12

    move/from16 v63, v3

    move/from16 v84, v4

    .end local v3    # "currentLineAscender":F
    .end local v4    # "nonBreakablePartMaxAscender":F
    .local v63, "currentLineAscender":F
    .restart local v84    # "nonBreakablePartMaxAscender":F
    float-to-double v3, v15

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v4, v76

    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v4, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    invoke-virtual {v4, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move v3, v13

    move/from16 v66, v14

    goto :goto_24

    .line 553
    .end local v38    # "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    .end local v63    # "currentLineAscender":F
    .end local v84    # "nonBreakablePartMaxAscender":F
    .restart local v2    # "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    .restart local v3    # "currentLineAscender":F
    .local v4, "nonBreakablePartMaxAscender":F
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_3f
    move-object/from16 v38, v2

    move/from16 v63, v3

    move/from16 v84, v4

    move-object/from16 v4, v76

    .end local v2    # "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    .end local v3    # "currentLineAscender":F
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v4, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v38    # "lineCopy":Lcom/itextpdf/io/font/otf/GlyphLine;
    .restart local v63    # "currentLineAscender":F
    .restart local v84    # "nonBreakablePartMaxAscender":F
    float-to-double v1, v0

    move v3, v13

    move/from16 v66, v14

    .end local v13    # "nonBreakablePartMaxDescender":F
    .end local v14    # "currentLineHeight":F
    .local v3, "nonBreakablePartMaxDescender":F
    .local v66, "currentLineHeight":F
    float-to-double v13, v12

    add-double/2addr v1, v13

    float-to-double v13, v15

    add-double/2addr v1, v13

    double-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 557
    float-to-double v1, v0

    float-to-double v13, v12

    add-double/2addr v1, v13

    float-to-double v13, v15

    add-double/2addr v1, v13

    double-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 562
    :goto_24
    const/4 v1, 0x0

    aget v2, v29, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 563
    .end local v25    # "currentTextPos":I
    .local v2, "currentTextPos":I
    move/from16 v58, v5

    move v13, v9

    move/from16 v59, v66

    goto/16 :goto_26

    .line 531
    .end local v2    # "currentTextPos":I
    .end local v3    # "nonBreakablePartMaxDescender":F
    .end local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v5    # "currentLineDescender":F
    .end local v63    # "currentLineAscender":F
    .local v7, "currentTextPos":I
    .local v9, "currentLineAscender":F
    .restart local v13    # "nonBreakablePartMaxDescender":F
    .local v14, "currentLineDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .local v38, "currentLineHeight":F
    .local v66, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_40
    move v3, v13

    move/from16 v13, v25

    move-object/from16 v4, v76

    move/from16 v25, v7

    move-object/from16 v7, v66

    .line 526
    .end local v0    # "currentHyphenationChoicePreTextWidth":F
    .end local v10    # "pre":Ljava/lang/String;
    .end local v54    # "pos":Ljava/lang/String;
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v3    # "nonBreakablePartMaxDescender":F
    .restart local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v13, "nonBreakablePartMaxHeight":F
    .local v25, "currentTextPos":I
    add-int/lit8 v1, v58, -0x1

    move v4, v11

    move/from16 v7, v25

    move/from16 v10, v37

    move-object/from16 v0, v56

    move-object/from16 v2, v61

    move/from16 v11, v62

    move/from16 v5, v88

    move/from16 v25, v13

    move v13, v3

    move-object/from16 v3, v59

    .end local v58    # "i":I
    .local v1, "i":I
    goto/16 :goto_23

    .end local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v56    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .end local v59    # "word":Ljava/lang/String;
    .end local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v62    # "wordSplit":Z
    .end local v88    # "containsPossibleBreak":Z
    .local v0, "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .local v2, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v3, "word":Ljava/lang/String;
    .local v4, "nonBreakingHyphenRelatedChunkStart":I
    .local v5, "containsPossibleBreak":Z
    .local v7, "currentTextPos":I
    .local v10, "firstCharacterWhichExceedsAllowedWidth":I
    .local v11, "wordSplit":Z
    .local v13, "nonBreakablePartMaxDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_41
    move-object/from16 v56, v0

    move/from16 v58, v1

    move-object/from16 v61, v2

    move-object/from16 v59, v3

    move/from16 v88, v5

    move/from16 v37, v10

    move/from16 v62, v11

    move v3, v13

    move/from16 v13, v25

    move v11, v4

    move/from16 v25, v7

    move-object/from16 v7, v66

    move-object/from16 v4, v76

    .end local v0    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .end local v1    # "i":I
    .end local v2    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v5    # "containsPossibleBreak":Z
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v3, "nonBreakablePartMaxDescender":F
    .local v4, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v13, "nonBreakablePartMaxHeight":F
    .local v25, "currentTextPos":I
    .restart local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v56    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .restart local v58    # "i":I
    .restart local v59    # "word":Ljava/lang/String;
    .restart local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v62    # "wordSplit":Z
    .restart local v88    # "containsPossibleBreak":Z
    goto :goto_25

    .line 525
    .end local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v56    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .end local v58    # "i":I
    .end local v59    # "word":Ljava/lang/String;
    .end local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v62    # "wordSplit":Z
    .end local v88    # "containsPossibleBreak":Z
    .restart local v0    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .restart local v2    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .local v3, "word":Ljava/lang/String;
    .local v4, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v5    # "containsPossibleBreak":Z
    .local v7, "currentTextPos":I
    .restart local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .local v11, "wordSplit":Z
    .local v13, "nonBreakablePartMaxDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_42
    move-object/from16 v56, v0

    move-object/from16 v61, v2

    move-object/from16 v59, v3

    move/from16 v88, v5

    move/from16 v37, v10

    move/from16 v62, v11

    move v3, v13

    move/from16 v13, v25

    move v11, v4

    move/from16 v25, v7

    move-object/from16 v7, v66

    move-object/from16 v4, v76

    .end local v0    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .end local v2    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v5    # "containsPossibleBreak":Z
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v3, "nonBreakablePartMaxDescender":F
    .local v4, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v13, "nonBreakablePartMaxHeight":F
    .local v25, "currentTextPos":I
    .restart local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v56    # "hyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .restart local v59    # "word":Ljava/lang/String;
    .restart local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v62    # "wordSplit":Z
    .restart local v88    # "containsPossibleBreak":Z
    goto :goto_25

    .line 522
    .end local v3    # "nonBreakablePartMaxDescender":F
    .end local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v59    # "word":Ljava/lang/String;
    .end local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v62    # "wordSplit":Z
    .end local v88    # "containsPossibleBreak":Z
    .local v4, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v5    # "containsPossibleBreak":Z
    .local v7, "currentTextPos":I
    .restart local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .local v11, "wordSplit":Z
    .local v13, "nonBreakablePartMaxDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .local v56, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_43
    move/from16 v88, v5

    move/from16 v37, v10

    move/from16 v62, v11

    move v3, v13

    move/from16 v13, v25

    move-object/from16 v61, v56

    move v11, v4

    move/from16 v25, v7

    move-object/from16 v7, v66

    move-object/from16 v4, v76

    .line 568
    .end local v5    # "containsPossibleBreak":Z
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v29    # "wordBounds":[I
    .end local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v3    # "nonBreakablePartMaxDescender":F
    .local v4, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v13, "nonBreakablePartMaxHeight":F
    .local v25, "currentTextPos":I
    .restart local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v62    # "wordSplit":Z
    .restart local v88    # "containsPossibleBreak":Z
    :goto_25
    move/from16 v63, v9

    move/from16 v58, v14

    move/from16 v2, v25

    move/from16 v59, v38

    .end local v9    # "currentLineAscender":F
    .end local v14    # "currentLineDescender":F
    .end local v25    # "currentTextPos":I
    .end local v38    # "currentLineHeight":F
    .local v2, "currentTextPos":I
    .local v58, "currentLineDescender":F
    .local v59, "currentLineHeight":F
    .restart local v63    # "currentLineAscender":F
    :goto_26
    move v9, v3

    move/from16 v14, v58

    move/from16 v1, v59

    move/from16 v0, v63

    move/from16 v10, v84

    goto/16 :goto_27

    .line 569
    .end local v2    # "currentTextPos":I
    .end local v3    # "nonBreakablePartMaxDescender":F
    .end local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v58    # "currentLineDescender":F
    .end local v59    # "currentLineHeight":F
    .end local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v62    # "wordSplit":Z
    .end local v63    # "currentLineAscender":F
    .end local v88    # "containsPossibleBreak":Z
    .local v4, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v5    # "containsPossibleBreak":Z
    .local v7, "currentTextPos":I
    .restart local v9    # "currentLineAscender":F
    .restart local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .local v11, "wordSplit":Z
    .local v13, "nonBreakablePartMaxDescender":F
    .restart local v14    # "currentLineDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .restart local v38    # "currentLineHeight":F
    .restart local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    :cond_44
    move/from16 v88, v5

    move/from16 v37, v10

    move/from16 v62, v11

    move v3, v13

    move/from16 v13, v25

    move-object/from16 v61, v56

    move v11, v4

    move/from16 v25, v7

    move-object/from16 v7, v66

    move-object/from16 v4, v76

    .end local v5    # "containsPossibleBreak":Z
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v3    # "nonBreakablePartMaxDescender":F
    .local v4, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v13, "nonBreakablePartMaxHeight":F
    .local v25, "currentTextPos":I
    .restart local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v62    # "wordSplit":Z
    .restart local v88    # "containsPossibleBreak":Z
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ne v0, v11, :cond_45

    .line 570
    const/16 v65, 0x0

    .line 571
    add-int/lit8 v10, v70, 0x1

    move v0, v9

    move/from16 v37, v10

    move/from16 v2, v25

    move/from16 v1, v38

    move/from16 v10, v84

    move v9, v3

    .end local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    goto :goto_27

    .line 573
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    :cond_45
    move v10, v11

    .line 574
    .end local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    sub-float v24, v24, v65

    .line 575
    move/from16 v2, v67

    .line 576
    .end local v84    # "nonBreakablePartMaxAscender":F
    .local v2, "nonBreakablePartMaxAscender":F
    move/from16 v1, v68

    move v0, v9

    move/from16 v37, v10

    move v9, v1

    move v10, v2

    move/from16 v2, v25

    move/from16 v1, v38

    .end local v3    # "nonBreakablePartMaxDescender":F
    .local v1, "nonBreakablePartMaxDescender":F
    goto :goto_27

    .line 519
    .end local v1    # "nonBreakablePartMaxDescender":F
    .end local v2    # "nonBreakablePartMaxAscender":F
    .end local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v62    # "wordSplit":Z
    .end local v88    # "containsPossibleBreak":Z
    .restart local v5    # "containsPossibleBreak":Z
    .local v7, "currentTextPos":I
    .local v11, "wordSplit":Z
    .local v13, "nonBreakablePartMaxDescender":F
    .local v25, "nonBreakablePartMaxHeight":F
    .local v29, "nonBreakingHyphenRelatedChunkStart":I
    .restart local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v84    # "nonBreakablePartMaxAscender":F
    :cond_46
    move/from16 v88, v5

    move/from16 v37, v10

    move/from16 v62, v11

    move v3, v13

    move/from16 v13, v25

    move/from16 v11, v29

    move-object/from16 v61, v56

    move-object/from16 v4, v76

    move/from16 v25, v7

    move-object/from16 v7, v66

    .line 581
    .end local v5    # "containsPossibleBreak":Z
    .end local v10    # "firstCharacterWhichExceedsAllowedWidth":I
    .end local v29    # "nonBreakingHyphenRelatedChunkStart":I
    .end local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v3    # "nonBreakablePartMaxDescender":F
    .restart local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    .local v13, "nonBreakablePartMaxHeight":F
    .local v25, "currentTextPos":I
    .restart local v37    # "firstCharacterWhichExceedsAllowedWidth":I
    .restart local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v62    # "wordSplit":Z
    .restart local v88    # "containsPossibleBreak":Z
    move v0, v9

    move/from16 v2, v25

    move/from16 v1, v38

    move/from16 v10, v84

    move v9, v3

    .end local v3    # "nonBreakablePartMaxDescender":F
    .end local v25    # "currentTextPos":I
    .end local v38    # "currentLineHeight":F
    .end local v84    # "nonBreakablePartMaxAscender":F
    .local v0, "currentLineAscender":F
    .local v1, "currentLineHeight":F
    .local v2, "currentTextPos":I
    .local v9, "nonBreakablePartMaxDescender":F
    .local v10, "nonBreakablePartMaxAscender":F
    :goto_27
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v5

    if-eqz v5, :cond_47

    if-nez v55, :cond_47

    .line 582
    invoke-static/range {v35 .. v35}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x1

    goto :goto_28

    :cond_47
    const/4 v3, 0x0

    :goto_28
    move/from16 v25, v3

    .line 583
    .local v25, "specialScriptWordSplit":Z
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    cmpl-float v3, v24, v3

    if-lez v3, :cond_48

    if-nez v28, :cond_48

    if-eqz v18, :cond_4a

    :cond_48
    if-nez v20, :cond_4a

    const/4 v3, -0x1

    if-ne v3, v11, :cond_4a

    if-eqz v25, :cond_49

    goto :goto_29

    :cond_49
    move/from16 v38, v0

    move/from16 v59, v1

    move/from16 v56, v2

    move/from16 v54, v11

    move/from16 v58, v14

    move/from16 v5, v62

    move/from16 v14, v87

    move-object v11, v4

    goto/16 :goto_30

    .line 590
    :cond_4a
    :goto_29
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4b

    .line 591
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v2, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 593
    :cond_4b
    if-nez v53, :cond_4e

    .line 594
    if-nez v20, :cond_4d

    invoke-static/range {v35 .. v35}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v3

    if-nez v3, :cond_4d

    if-eqz v25, :cond_4c

    goto :goto_2a

    :cond_4c
    add-int/lit8 v3, v60, 0x1

    goto :goto_2b

    :cond_4d
    :goto_2a
    move/from16 v3, v37

    :goto_2b
    move v2, v3

    move v5, v2

    goto :goto_2c

    .line 593
    :cond_4e
    move v5, v2

    .line 596
    .end local v2    # "currentTextPos":I
    .local v5, "currentTextPos":I
    :goto_2c
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 597
    if-nez v20, :cond_4f

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v2, v5, :cond_4f

    const/4 v2, 0x1

    goto :goto_2d

    :cond_4f
    const/4 v2, 0x0

    :goto_2d
    move/from16 v29, v2

    .line 598
    .end local v62    # "wordSplit":Z
    .local v29, "wordSplit":Z
    if-nez v29, :cond_51

    if-nez v20, :cond_50

    invoke-static/range {v35 .. v35}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v2

    if-nez v2, :cond_50

    move/from16 v56, v5

    move/from16 v54, v11

    move-object v11, v4

    goto :goto_2e

    .line 620
    :cond_50
    move/from16 v38, v69

    .line 621
    .end local v0    # "currentLineAscender":F
    .local v38, "currentLineAscender":F
    move/from16 v14, v75

    .line 622
    sub-float v0, v38, v14

    invoke-virtual/range {v50 .. v50}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    mul-float/2addr v0, v2

    div-float v0, v0, v43

    add-float v42, v0, v30

    .line 623
    .end local v1    # "currentLineHeight":F
    .local v42, "currentLineHeight":F
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual/range {v50 .. v50}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v54, v11

    move-object v11, v4

    .end local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v11, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v54, "nonBreakingHyphenRelatedChunkStart":I
    move-object/from16 v4, v31

    move/from16 v56, v5

    .end local v5    # "currentTextPos":I
    .local v56, "currentTextPos":I
    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    div-float v0, v0, v43

    add-float v40, v40, v0

    move/from16 v58, v14

    move/from16 v5, v29

    move/from16 v59, v42

    move/from16 v14, v87

    goto :goto_30

    .line 598
    .end local v38    # "currentLineAscender":F
    .end local v42    # "currentLineHeight":F
    .end local v54    # "nonBreakingHyphenRelatedChunkStart":I
    .end local v56    # "currentTextPos":I
    .restart local v0    # "currentLineAscender":F
    .restart local v1    # "currentLineHeight":F
    .restart local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v5    # "currentTextPos":I
    .local v11, "nonBreakingHyphenRelatedChunkStart":I
    :cond_51
    move/from16 v56, v5

    move/from16 v54, v11

    move-object v11, v4

    .line 599
    .end local v4    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v5    # "currentTextPos":I
    .local v11, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v54    # "nonBreakingHyphenRelatedChunkStart":I
    .restart local v56    # "currentTextPos":I
    :goto_2e
    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 600
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 601
    .end local v14    # "currentLineDescender":F
    .local v2, "currentLineDescender":F
    invoke-static {v1, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 602
    move/from16 v14, v87

    .end local v87    # "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    .local v14, "nonBreakablePartWidthWhichDoesNotExceedAllowedWidth":F
    add-float v40, v40, v14

    .line 603
    sget-object v3, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    if-ne v3, v7, :cond_52

    .line 604
    float-to-double v3, v12

    move v5, v0

    move/from16 v38, v1

    .end local v0    # "currentLineAscender":F
    .end local v1    # "currentLineHeight":F
    .local v5, "currentLineAscender":F
    .local v38, "currentLineHeight":F
    float-to-double v0, v15

    add-double/2addr v3, v0

    double-to-float v0, v3

    invoke-virtual {v11, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move/from16 v58, v2

    move/from16 v59, v38

    move/from16 v38, v5

    move/from16 v5, v29

    goto :goto_30

    .line 607
    .end local v5    # "currentLineAscender":F
    .end local v38    # "currentLineHeight":F
    .restart local v0    # "currentLineAscender":F
    .restart local v1    # "currentLineHeight":F
    :cond_52
    move v5, v0

    move/from16 v38, v1

    .end local v0    # "currentLineAscender":F
    .end local v1    # "currentLineHeight":F
    .restart local v5    # "currentLineAscender":F
    .restart local v38    # "currentLineHeight":F
    float-to-double v0, v14

    float-to-double v3, v12

    add-double/2addr v0, v3

    float-to-double v3, v15

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 610
    .local v0, "childMinWidth":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, v41, v1

    if-nez v3, :cond_53

    .line 611
    move/from16 v41, v0

    goto :goto_2f

    .line 613
    :cond_53
    move/from16 v49, v0

    .line 615
    :goto_2f
    invoke-virtual {v11, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 616
    invoke-virtual {v11, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 617
    .end local v0    # "childMinWidth":F
    move/from16 v58, v2

    move/from16 v59, v38

    move/from16 v38, v5

    move/from16 v5, v29

    .line 626
    .end local v2    # "currentLineDescender":F
    .end local v29    # "wordSplit":Z
    .local v5, "wordSplit":Z
    .local v38, "currentLineAscender":F
    .restart local v58    # "currentLineDescender":F
    .restart local v59    # "currentLineHeight":F
    :goto_30
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-gt v0, v1, :cond_54

    .line 627
    move-object/from16 v4, v83

    .end local v83    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v4, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v22

    .line 628
    .restart local v22    # "startsEnds":[Z
    new-instance v3, Lcom/itextpdf/layout/layout/TextLayoutResult;

    const/4 v1, 0x3

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/16 v23, 0x0

    move-object v0, v3

    move-object/from16 v89, v3

    move-object/from16 v3, v23

    move-object/from16 v90, v4

    .end local v4    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v90, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    move-object/from16 v4, p0

    move-object/from16 v66, v7

    move v7, v5

    .end local v5    # "wordSplit":Z
    .local v7, "wordSplit":Z
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 630
    move/from16 v0, v88

    move-object/from16 v1, v89

    .end local v88    # "containsPossibleBreak":Z
    .local v0, "containsPossibleBreak":Z
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v2, v22, v2

    .line 631
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v2, v22, v2

    .line 632
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v1

    .line 628
    return-object v1

    .line 634
    .end local v0    # "containsPossibleBreak":Z
    .end local v22    # "startsEnds":[Z
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v5    # "wordSplit":Z
    .local v7, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v83    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v88    # "containsPossibleBreak":Z
    :cond_54
    move-object/from16 v66, v7

    move-object/from16 v90, v83

    move/from16 v0, v88

    move v7, v5

    .end local v5    # "wordSplit":Z
    .end local v83    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v88    # "containsPossibleBreak":Z
    .restart local v0    # "containsPossibleBreak":Z
    .local v7, "wordSplit":Z
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    new-instance v1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3, v3}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 636
    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setWordHasBeenSplit(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v1

    .line 637
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v48

    .line 640
    move v14, v0

    move/from16 v9, v40

    move/from16 v24, v41

    move-object/from16 v10, v46

    move-object/from16 v13, v48

    move/from16 v5, v55

    move/from16 v7, v56

    move/from16 v4, v59

    move/from16 v41, v70

    move-object/from16 v37, v74

    goto :goto_31

    .line 297
    .end local v0    # "containsPossibleBreak":Z
    .end local v7    # "wordSplit":Z
    .end local v18    # "hyphenationApplied":Z
    .end local v47    # "overflowWrapNotNormal":Z
    .end local v49    # "rightMinWidth":F
    .end local v60    # "nonBreakablePartEnd":I
    .end local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v65    # "nonBreakingHyphenRelatedChunkWidth":F
    .end local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .end local v67    # "beforeNonBreakingHyphenRelatedChunkMaxAscender":F
    .end local v68    # "beforeNonBreakingHyphenRelatedChunkMaxDescender":F
    .end local v69    # "ascender":F
    .end local v70    # "previousCharPos":I
    .end local v74    # "tabAnchorCharacter":Ljava/lang/Character;
    .end local v75    # "descender":F
    .end local v77    # "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v1, "rightMinWidth":F
    .local v2, "currentTextPos":I
    .local v3, "italicSkewAddition":F
    .restart local v4    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v5, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v9, "noSoftWrap":Z
    .local v10, "ascender":F
    .local v11, "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .local v12, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .local v13, "firstPrintPos":I
    .local v14, "overflowWrapNotNormal":Z
    .local v15, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v24, "leftMinWidth":F
    .local v25, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v26, "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v27, "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v29, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v34, "boldSimulationAddition":F
    .local v35, "descender":F
    .local v37, "tabAnchorCharacter":Ljava/lang/Character;
    .local v41, "previousCharPos":I
    .local v50, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v54, "containsPossibleBreak":Z
    .local v56, "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    :cond_55
    move/from16 v49, v1

    move-object/from16 v90, v4

    move-object/from16 v82, v5

    move/from16 v69, v10

    move-object/from16 v66, v11

    move/from16 v47, v14

    move-object/from16 v11, v25

    move-object/from16 v77, v26

    move-object/from16 v85, v27

    move-object/from16 v78, v29

    move/from16 v75, v35

    move-object/from16 v26, v50

    move-object/from16 v61, v56

    move/from16 v14, v58

    move/from16 v25, v2

    move/from16 v27, v9

    move-object/from16 v50, v12

    move-object/from16 v35, v15

    move/from16 v15, v34

    move/from16 v9, v38

    move/from16 v38, v59

    move v12, v3

    move/from16 v34, v13

    const/4 v3, 0x0

    .end local v1    # "rightMinWidth":F
    .end local v2    # "currentTextPos":I
    .end local v3    # "italicSkewAddition":F
    .end local v4    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v5    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v10    # "ascender":F
    .end local v13    # "firstPrintPos":I
    .end local v29    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v56    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .end local v58    # "currentLineDescender":F
    .end local v59    # "currentLineHeight":F
    .local v9, "currentLineAscender":F
    .local v11, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .local v12, "italicSkewAddition":F
    .local v14, "currentLineDescender":F
    .local v15, "boldSimulationAddition":F
    .local v25, "currentTextPos":I
    .local v26, "mode":Lcom/itextpdf/layout/property/RenderingMode;
    .local v27, "noSoftWrap":Z
    .local v34, "firstPrintPos":I
    .local v35, "overflowX":Lcom/itextpdf/layout/property/OverflowPropertyValue;
    .local v38, "currentLineHeight":F
    .restart local v47    # "overflowWrapNotNormal":Z
    .restart local v49    # "rightMinWidth":F
    .local v50, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    .restart local v61    # "hyphenationConfig":Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .restart local v66    # "overflowWrap":Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .restart local v69    # "ascender":F
    .restart local v75    # "descender":F
    .restart local v77    # "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    move/from16 v7, v25

    move/from16 v4, v38

    move-object/from16 v10, v46

    move-object/from16 v13, v48

    move/from16 v14, v54

    move/from16 v5, v55

    move/from16 v38, v9

    move/from16 v9, v40

    .line 645
    .end local v25    # "currentTextPos":I
    .end local v40    # "currentLineWidth":F
    .end local v46    # "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v48    # "result":Lcom/itextpdf/layout/layout/TextLayoutResult;
    .end local v54    # "containsPossibleBreak":Z
    .end local v55    # "isSplitForcedByNewLine":Z
    .local v4, "currentLineHeight":F
    .local v5, "isSplitForcedByNewLine":Z
    .local v7, "currentTextPos":I
    .local v9, "currentLineWidth":F
    .local v10, "wordBreakGlyphAtLineEnding":Lcom/itextpdf/io/font/otf/Glyph;
    .local v13, "result":Lcom/itextpdf/layout/layout/TextLayoutResult;
    .local v14, "containsPossibleBreak":Z
    .local v38, "currentLineAscender":F
    .restart local v58    # "currentLineDescender":F
    :goto_31
    const/16 v18, 0x0

    .line 646
    .local v18, "isPlacingForcedWhileNothing":Z
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_57

    .line 647
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static/range {v51 .. v51}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/property/OverflowPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 648
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v3, v78

    const/4 v1, 0x1

    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v3, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v0, v3, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 649
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v2, v85

    .end local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v2, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v6, v0, v2, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 650
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v3, v82

    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v3, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v0, v3, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 651
    move-object/from16 v1, v90

    .end local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v1, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v22

    .line 652
    .restart local v22    # "startsEnds":[Z
    new-instance v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    const/16 v23, 0x3

    move-object/from16 v81, v1

    .end local v1    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/16 v25, 0x0

    move-object/from16 v29, v0

    move-object/from16 v40, v1

    move-object/from16 v91, v81

    .end local v81    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v91, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    move/from16 v1, v23

    move-object/from16 v92, v2

    .end local v2    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v92, "borders":[Lcom/itextpdf/layout/borders/Border;
    move-object/from16 v2, v40

    move-object/from16 v93, v3

    move-object/from16 v94, v78

    .end local v3    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v93, "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v94, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    move-object/from16 v3, v25

    move/from16 v95, v4

    .end local v4    # "currentLineHeight":F
    .local v95, "currentLineHeight":F
    move-object/from16 v4, p0

    move-object/from16 v76, v11

    move v11, v5

    .end local v5    # "isSplitForcedByNewLine":Z
    .local v11, "isSplitForcedByNewLine":Z
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 654
    invoke-virtual {v0, v14}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, v22, v1

    .line 655
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, v22, v1

    .line 656
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    .line 652
    return-object v0

    .line 647
    .end local v22    # "startsEnds":[Z
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v91    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v92    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v93    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v94    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v95    # "currentLineHeight":F
    .restart local v4    # "currentLineHeight":F
    .restart local v5    # "isSplitForcedByNewLine":Z
    .local v11, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    :cond_56
    move/from16 v95, v4

    move-object/from16 v76, v11

    move-object/from16 v94, v78

    move-object/from16 v93, v82

    move-object/from16 v92, v85

    move-object/from16 v91, v90

    move v11, v5

    .line 658
    .end local v4    # "currentLineHeight":F
    .end local v5    # "isSplitForcedByNewLine":Z
    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v11, "isSplitForcedByNewLine":Z
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v91    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v92    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v93    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v94    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v95    # "currentLineHeight":F
    const/16 v18, 0x1

    goto :goto_32

    .line 646
    .end local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .end local v91    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .end local v92    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v93    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v94    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v95    # "currentLineHeight":F
    .restart local v4    # "currentLineHeight":F
    .restart local v5    # "isSplitForcedByNewLine":Z
    .local v11, "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    :cond_57
    move/from16 v95, v4

    move-object/from16 v76, v11

    move-object/from16 v94, v78

    move-object/from16 v93, v82

    move-object/from16 v92, v85

    move-object/from16 v91, v90

    move v11, v5

    .line 662
    .end local v4    # "currentLineHeight":F
    .end local v5    # "isSplitForcedByNewLine":Z
    .end local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v85    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v90    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v11, "isSplitForcedByNewLine":Z
    .restart local v76    # "widthHandler":Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
    .restart local v91    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .restart local v92    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v93    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v94    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v95    # "currentLineHeight":F
    :goto_32
    invoke-virtual/range {v50 .. v50}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    mul-float v0, v0, v38

    div-float v0, v0, v43

    iput v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 664
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move/from16 v1, v95

    .end local v95    # "currentLineHeight":F
    .local v1, "currentLineHeight":F
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 665
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 667
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 668
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 670
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v2, v12

    add-float/2addr v2, v15

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 672
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v2, v94

    const/4 v4, 0x1

    .end local v94    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .local v2, "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v0, v2, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 673
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v5, v92

    .end local v92    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .local v5, "borders":[Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v6, v0, v5, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 674
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v3, v93

    .end local v93    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v3    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v6, v0, v3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 676
    invoke-direct {v6, v2, v5, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->increaseYLineOffset([Lcom/itextpdf/layout/property/UnitValue;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/property/UnitValue;)V

    .line 678
    if-nez v13, :cond_59

    .line 679
    new-instance v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    const/16 v79, 0x1

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/16 v81, 0x0

    const/16 v82, 0x0

    if-eqz v18, :cond_58

    move-object/from16 v83, v6

    goto :goto_33

    :cond_58
    const/16 v83, 0x0

    :goto_33
    move-object/from16 v78, v0

    move-object/from16 v80, v4

    invoke-direct/range {v78 .. v83}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 681
    invoke-virtual {v0, v14}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v13

    move/from16 v95, v1

    move-object/from16 v78, v2

    const/4 v1, 0x1

    goto :goto_36

    .line 684
    :cond_59
    if-nez v52, :cond_5b

    if-eqz v53, :cond_5a

    goto :goto_34

    .line 688
    :cond_5a
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    .local v0, "split":[Lcom/itextpdf/layout/renderer/TextRenderer;
    goto :goto_35

    .line 686
    .end local v0    # "split":[Lcom/itextpdf/layout/renderer/TextRenderer;
    :cond_5b
    :goto_34
    invoke-direct {v6, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->splitIgnoreFirstNewLine(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    .line 690
    .restart local v0    # "split":[Lcom/itextpdf/layout/renderer/TextRenderer;
    :goto_35
    invoke-virtual {v13, v11}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setSplitForcedByNewline(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 691
    move/from16 v95, v1

    const/4 v4, 0x0

    .end local v1    # "currentLineHeight":F
    .restart local v95    # "currentLineHeight":F
    aget-object v1, v0, v4

    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 692
    if-eqz v10, :cond_5c

    .line 693
    aget-object v1, v0, v4

    invoke-direct {v1, v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->saveWordBreakIfNotYetSaved(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 697
    :cond_5c
    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    move-object/from16 v78, v2

    .end local v2    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    .restart local v78    # "paddings":[Lcom/itextpdf/layout/property/UnitValue;
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v4, v2, :cond_5d

    .line 698
    aget-object v2, v0, v1

    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_36

    .line 701
    :cond_5d
    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStatus(I)V

    .line 705
    .end local v0    # "split":[Lcom/itextpdf/layout/renderer/TextRenderer;
    :goto_36
    move-object/from16 v0, v16

    .end local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .local v0, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    invoke-static {v6, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/FloatPropertyValue;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 706
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result v2

    if-ne v2, v1, :cond_5f

    .line 707
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5e

    .line 708
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v2, v17

    .end local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .local v2, "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 707
    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_5e
    move-object/from16 v2, v17

    .end local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    goto :goto_37

    .line 710
    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_5f
    move-object/from16 v2, v17

    .end local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_61

    .line 711
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 705
    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_60
    move-object/from16 v2, v17

    .line 715
    .end local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :cond_61
    :goto_37
    move-object/from16 v1, v77

    .end local v77    # "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .local v1, "countedMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    .line 716
    if-nez v27, :cond_65

    .line 717
    move-object/from16 v16, v0

    move-object/from16 v4, v57

    .end local v0    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v57    # "leftMarginBorderPadding":[F
    .local v4, "leftMarginBorderPadding":[F
    .restart local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    array-length v0, v4

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    :goto_38
    if-ge v2, v0, :cond_62

    aget v23, v4, v2

    .line 718
    .local v23, "dimension":F
    add-float v24, v24, v23

    .line 717
    .end local v23    # "dimension":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 720
    :cond_62
    move-object/from16 v0, v45

    .end local v45    # "rightMarginBorderPadding":[F
    .local v0, "rightMarginBorderPadding":[F
    array-length v2, v0

    move-object/from16 v82, v3

    move-object/from16 v57, v4

    move-object/from16 v80, v5

    move/from16 v4, v24

    move/from16 v5, v49

    const/4 v3, 0x0

    .end local v3    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v24    # "leftMinWidth":F
    .end local v49    # "rightMinWidth":F
    .local v4, "leftMinWidth":F
    .local v5, "rightMinWidth":F
    .restart local v57    # "leftMarginBorderPadding":[F
    .restart local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    :goto_39
    if-ge v3, v2, :cond_64

    aget v23, v0, v3

    .line 721
    .restart local v23    # "dimension":F
    const/16 v22, 0x0

    cmpg-float v24, v5, v22

    if-gez v24, :cond_63

    .line 722
    add-float v4, v4, v23

    goto :goto_3a

    .line 724
    :cond_63
    add-float v5, v5, v23

    .line 720
    .end local v23    # "dimension":F
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 727
    :cond_64
    invoke-virtual {v13, v4}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setLeftMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 728
    invoke-virtual {v13, v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setRightMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move/from16 v24, v4

    move/from16 v49, v5

    goto :goto_3b

    .line 730
    .end local v4    # "leftMinWidth":F
    .end local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .end local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v0, "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v3    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .local v5, "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v24    # "leftMinWidth":F
    .restart local v45    # "rightMarginBorderPadding":[F
    .restart local v49    # "rightMinWidth":F
    :cond_65
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v82, v3

    move-object/from16 v80, v5

    move-object/from16 v0, v45

    .end local v2    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v3    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    .end local v5    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .end local v45    # "rightMarginBorderPadding":[F
    .local v0, "rightMarginBorderPadding":[F
    .restart local v16    # "floatPropertyValue":Lcom/itextpdf/layout/property/FloatPropertyValue;
    .restart local v17    # "floatRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .restart local v80    # "borders":[Lcom/itextpdf/layout/borders/Border;
    .restart local v82    # "margins":[Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setLeftMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 731
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setRightMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 733
    :goto_3b
    move-object/from16 v2, v91

    .end local v91    # "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .local v2, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v3

    .line 734
    .local v3, "startsEnds":[Z
    const/4 v4, 0x0

    aget-boolean v4, v3, v4

    invoke-virtual {v13, v4}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v4

    const/4 v5, 0x1

    aget-boolean v5, v3, v5

    .line 735
    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 736
    return-object v13
.end method

.method public length()I
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected lineLength()I
    .locals 2

    .line 1382
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveYLineTo(F)V
    .locals 4
    .param p1, "y"    # F

    .line 1126
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v0

    .line 1127
    .local v0, "curYLine":F
    sub-float v1, p1, v0

    .line 1128
    .local v1, "delta":F
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1129
    return-void
.end method

.method removeReversedRanges()Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    .line 1263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    .line 1264
    return-object p0
.end method

.method resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 6
    .param p1, "font"    # [Ljava/lang/String;
    .param p2, "provider"    # Lcom/itextpdf/layout/font/FontProvider;
    .param p3, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .param p4, "additionalFonts"    # Lcom/itextpdf/layout/font/FontSet;

    .line 1631
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3, p4}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object v0

    .line 1635
    .local v0, "strategy":Lcom/itextpdf/layout/font/FontSelectorStrategy;
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->endOfText()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1636
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->nextGlyphs()Ljava/util/List;

    move-result-object v1

    .line 1637
    .local v1, "resolvedGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->getCurrentFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    .line 1638
    .local v2, "currentFont":Lcom/itextpdf/kernel/font/PdfFont;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/Glyph;

    .line 1639
    .local v4, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/font/PdfFont;->containsGlyph(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1640
    return-object v2

    .line 1642
    .end local v4    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    .line 1644
    .end local v1    # "resolvedGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    .end local v2    # "currentFont":Lcom/itextpdf/kernel/font/PdfFont;
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method protected resolveFonts(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)Z"
        }
    .end annotation

    .line 1527
    .local p1, "addTo":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 1528
    .local v0, "font":Ljava/lang/Object;
    instance-of v1, v0, Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_0

    .line 1529
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    const/4 v1, 0x0

    return v1

    .line 1531
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1559
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid FONT property value type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1532
    :cond_2
    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1533
    const-class v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1534
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "The \"Property.FONT\" property with values of String type is deprecated, use String[] as property value type instead."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1535
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/layout/font/FontFamilySplitter;->splitFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1536
    .local v2, "splitFontFamily":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1538
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v2    # "splitFontFamily":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/font/FontProvider;

    .line 1539
    .local v1, "provider":Lcom/itextpdf/layout/font/FontProvider;
    const/16 v2, 0x62

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontSet;

    .line 1540
    .local v2, "fontSet":Lcom/itextpdf/layout/font/FontSet;
    invoke-virtual {v1}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 1541
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "FontProvider and FontSet are empty. Cannot resolve font family name (see ElementPropertyContainer#setFontFamily) without initialized FontProvider (see RootElement#setFontProvider)."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1543
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->createFontCharacteristics()Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object v3

    .line 1544
    .local v3, "fc":Lcom/itextpdf/layout/font/FontCharacteristics;
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3, v2}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object v4

    .line 1546
    .local v4, "strategy":Lcom/itextpdf/layout/font/FontSelectorStrategy;
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 1549
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->endOfText()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1550
    new-instance v5, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v4}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->nextGlyphs()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    .line 1551
    .local v5, "nextGlyphs":Lcom/itextpdf/io/font/otf/GlyphLine;
    invoke-virtual {v4}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->getCurrentFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v6

    .line 1552
    .local v6, "currentFont":Lcom/itextpdf/kernel/font/PdfFont;
    invoke-static {v5, v6}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v7

    .line 1553
    .local v7, "newGlyphs":Lcom/itextpdf/io/font/otf/GlyphLine;
    invoke-virtual {p0, v7, v6}, Lcom/itextpdf/layout/renderer/TextRenderer;->createCopy(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v8

    .line 1554
    .local v8, "textRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v5    # "nextGlyphs":Lcom/itextpdf/io/font/otf/GlyphLine;
    .end local v6    # "currentFont":Lcom/itextpdf/kernel/font/PdfFont;
    .end local v7    # "newGlyphs":Lcom/itextpdf/io/font/otf/GlyphLine;
    .end local v8    # "textRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    goto :goto_2

    .line 1547
    :cond_7
    :goto_3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    :cond_8
    const/4 v5, 0x1

    return v5
.end method

.method protected setGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0
    .param p1, "gl"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1570
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1571
    return-void
.end method

.method setIndexOfFirstCharacterToBeForcedToOverflow(I)V
    .locals 0
    .param p1, "indexOfFirstCharacterToBeForcedToOverflow"    # I

    .line 1357
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    .line 1358
    return-void
.end method

.method protected setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 1
    .param p1, "gl"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 1574
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1575
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 1577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 1578
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1579
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1580
    return-void
.end method

.method setSpecialScriptFirstNotFittingIndex(I)V
    .locals 0
    .param p1, "lastFittingIndex"    # I

    .line 1349
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    .line 1350
    return-void
.end method

.method setSpecialScriptsWordBreakPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1341
    .local p1, "specialScriptsWordBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1342
    return-void
.end method

.method public setText(Lcom/itextpdf/io/font/otf/GlyphLine;II)V
    .locals 2
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "leftPos"    # I
    .param p3, "rightPos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1153
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 1154
    .local v0, "newText":Lcom/itextpdf/io/font/otf/GlyphLine;
    iput p2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1155
    iput p3, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 1156
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_0

    .line 1157
    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1160
    return-void
.end method

.method public setText(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 1
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 1169
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 1170
    .local v0, "newText":Lcom/itextpdf/io/font/otf/GlyphLine;
    invoke-static {v0, p2}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    .line 1171
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1172
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 1138
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 1140
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 1141
    return-void
.end method

.method protected split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 9
    .param p1, "initialOverflowTextPos"    # I

    .line 1424
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->createSplitRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    .line 1425
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 1426
    .local v1, "newText":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1427
    iput p1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 1428
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1429
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1430
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1431
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1432
    iget v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    iput v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 1433
    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    iput-boolean v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 1434
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->isLastRendererForModelElement:Z

    .line 1435
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1437
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->createOverflowRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v3

    .line 1438
    .local v3, "overflowRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    new-instance v4, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    move-object v1, v4

    .line 1439
    iput p1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1440
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 1441
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v3, v1, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1442
    iget-boolean v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    iput-boolean v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 1443
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1444
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1446
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1447
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1449
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1450
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1451
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1452
    .local v4, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1455
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1456
    .local v7, "overflow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    invoke-virtual {v3, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1458
    .end local v4    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "overflow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1459
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-static {v4, p1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I

    move-result v4

    .line 1462
    .local v4, "splitIndex":I
    if-le v4, v6, :cond_2

    .line 1463
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    add-int/lit8 v8, v4, 0x1

    .line 1464
    invoke-interface {v7, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 1463
    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1466
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1467
    .local v7, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1471
    .end local v7    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1472
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    .line 1473
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 1472
    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto :goto_1

    .line 1475
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1476
    .restart local v7    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    invoke-virtual {v3, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1482
    .end local v4    # "splitIndex":I
    .end local v7    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/itextpdf/layout/renderer/TextRenderer;

    aput-object v0, v4, v2

    aput-object v3, v4, v5

    return-object v4
.end method

.method textContainsSpecialScriptGlyphs(Z)Z
    .locals 10
    .param p1, "analyzeSpecialScriptsWordBreakPointsOnly"    # Z

    .line 1301
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1302
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 1305
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1306
    return v0

    .line 1309
    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 1311
    .local v2, "splitCharacters":Lcom/itextpdf/layout/splitting/ISplitCharacters;
    instance-of v3, v2, Lcom/itextpdf/layout/splitting/BreakAllSplitCharacters;

    if-eqz v3, :cond_2

    .line 1312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1315
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v3, v4, :cond_6

    .line 1316
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    .line 1317
    .local v4, "unicode":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    .line 1318
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->codePointIsOfSpecialScript(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1319
    return v1

    .line 1322
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v5, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v5

    .line 1323
    .local v5, "chars":[C
    if-eqz v5, :cond_5

    .line 1324
    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-char v8, v5, v7

    .line 1325
    .local v8, "ch":C
    invoke-static {v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->codePointIsOfSpecialScript(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1326
    return v1

    .line 1324
    .end local v8    # "ch":C
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1315
    .end local v4    # "unicode":I
    .end local v5    # "chars":[C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1335
    .end local v3    # "i":I
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1337
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public trimFirst()V
    .locals 4

    .line 1026
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 1028
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1030
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1031
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    move-object v2, v0

    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    goto :goto_0

    .line 1044
    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1045
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ne v0, v3, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1052
    :cond_2
    :goto_1
    return-void
.end method

.method trimLast()F
    .locals 13

    .line 1055
    const/4 v0, 0x0

    .line 1057
    .local v0, "trimmedSpace":F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-gtz v1, :cond_0

    .line 1058
    return v0

    .line 1060
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    .line 1061
    .local v2, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1062
    const-class v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 1063
    .local v3, "logger":Lorg/slf4j/Logger;
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1065
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    .line 1066
    .local v1, "characterSpacing":Ljava/lang/Float;
    const/16 v3, 0x4e

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    .line 1067
    .local v3, "wordSpacing":Ljava/lang/Float;
    const/16 v5, 0x1d

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 1069
    .local v11, "hScale":F
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr v5, v4

    move v4, v5

    .line 1070
    .local v4, "firstNonSpaceCharIndex":I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt v4, v5, :cond_4

    .line 1071
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v12

    .line 1072
    .local v12, "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-static {v12}, Lcom/itextpdf/io/util/TextUtil;->isWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1073
    goto :goto_2

    .line 1075
    :cond_2
    invoke-direct {p0, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->saveWordBreakIfNotYetSaved(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 1077
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object v5, p0

    move-object v6, v12

    move-object v9, v1

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 1078
    .local v5, "currentCharWidth":F
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v7, v7, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-le v4, v7, :cond_3

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v8

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/itextpdf/layout/renderer/TextRenderer;->scaleXAdvance(FFLjava/lang/Float;)F

    move-result v7

    div-float/2addr v7, v6

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    move v6, v7

    .line 1079
    .local v6, "xAdvance":F
    sub-float v7, v5, v6

    add-float/2addr v0, v7

    .line 1080
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    sub-float/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1082
    nop

    .end local v5    # "currentCharWidth":F
    .end local v6    # "xAdvance":F
    .end local v12    # "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    add-int/lit8 v4, v4, -0x1

    .line 1083
    goto :goto_0

    .line 1085
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v6, v4, 0x1

    iput v6, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 1087
    return v0
.end method
