.class Lcom/itextpdf/layout/renderer/LineHeightHelper;
.super Ljava/lang/Object;
.source "LineHeightHelper.java"


# static fields
.field private static DEFAULT_LINE_HEIGHT_COEFF:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const v0, 0x3f933333    # 1.15f

    sput v0, Lcom/itextpdf/layout/renderer/LineHeightHelper;->DEFAULT_LINE_HEIGHT_COEFF:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static calculateLineHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 6
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 58
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/LineHeight;

    .line 59
    .local v0, "lineHeight":Lcom/itextpdf/layout/property/LineHeight;
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    .line 61
    .local v1, "fontSize":F
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/LineHeight;->isNormalValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/LineHeight;->getValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/LineHeight;->isFixedValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/LineHeight;->getValue()F

    move-result v2

    .local v2, "lineHeightValue":F
    goto :goto_1

    .line 72
    .end local v2    # "lineHeightValue":F
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/LineHeight;->getValue()F

    move-result v2

    mul-float/2addr v2, v1

    .restart local v2    # "lineHeightValue":F
    goto :goto_1

    .line 62
    .end local v2    # "lineHeightValue":F
    :cond_2
    :goto_0
    sget v2, Lcom/itextpdf/layout/renderer/LineHeightHelper;->DEFAULT_LINE_HEIGHT_COEFF:F

    mul-float/2addr v2, v1

    .line 63
    .restart local v2    # "lineHeightValue":F
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getFontAscenderDescenderNormalized(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object v3

    .line 64
    .local v3, "fontAscenderDescender":[F
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    sub-float/2addr v4, v5

    .line 65
    .local v4, "fontAscenderDescenderSum":F
    cmpl-float v5, v4, v2

    if-lez v5, :cond_3

    .line 66
    move v2, v4

    .line 68
    .end local v3    # "fontAscenderDescender":[F
    .end local v4    # "fontAscenderDescenderSum":F
    :cond_3
    nop

    .line 75
    :goto_1
    return v2
.end method

.method static getActualAscenderDescender(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F
    .locals 8
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 40
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->calculateLineHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v0

    .line 41
    .local v0, "lineHeight":F
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getFontAscenderDescenderNormalized(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object v1

    .line 42
    .local v1, "fontAscenderDescender":[F
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    sub-float/2addr v3, v5

    sub-float v3, v0, v3

    .line 43
    .local v3, "leading":F
    aget v5, v1, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v3, v6

    add-float/2addr v5, v7

    .line 44
    .local v5, "ascender":F
    aget v7, v1, v4

    div-float v6, v3, v6

    sub-float/2addr v7, v6

    .line 45
    .local v7, "descender":F
    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v5, v6, v2

    aput v7, v6, v4

    return-object v6
.end method

.method static getFontAscenderDescenderNormalized(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F
    .locals 8
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 49
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 50
    .local v0, "font":Lcom/itextpdf/kernel/font/PdfFont;
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    .line 51
    .local v1, "fontSize":F
    sget-object v2, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    invoke-static {v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/property/RenderingMode;)[F

    move-result-object v2

    .line 52
    .local v2, "fontAscenderDescenderFromMetrics":[F
    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v1

    .line 53
    .local v4, "fontAscender":F
    const/4 v6, 0x1

    aget v7, v2, v6

    div-float/2addr v7, v5

    mul-float/2addr v7, v1

    .line 54
    .local v7, "fontDescender":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v4, v5, v3

    aput v7, v5, v6

    return-object v5
.end method
