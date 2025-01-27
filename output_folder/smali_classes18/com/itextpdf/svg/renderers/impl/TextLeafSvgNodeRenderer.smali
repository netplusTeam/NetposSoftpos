.class public Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "TextLeafSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
.implements Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected canElementFill()Z
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public containsAbsolutePositionChange()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public containsRelativeMove()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 65
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;-><init>()V

    .line 66
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 67
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 6
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 125
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v1, "text_content"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 128
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTextMove()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTextMove()[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 129
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 131
    .end local v0    # "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_0
    return-void
.end method

.method public getAbsolutePositionChanges()[[F
    .locals 4

    .line 100
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 101
    .local v1, "part":[F
    const/4 v2, 0x2

    new-array v2, v2, [[F

    aput-object v1, v2, v3

    aput-object v1, v2, v0

    return-object v2
.end method

.method public getRelativeTranslation()[F
    .locals 1

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F
    .locals 4
    .param p1, "parentFontSize"    # F
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "contentLength":F
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v2, "text_content"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p0, p1}, Lcom/itextpdf/svg/utils/SvgTextUtil;->resolveFontSize(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;F)F

    move-result v1

    .line 77
    .local v1, "fontSize":F
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p2, v2, v1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    .line 80
    .end local v1    # "fontSize":F
    .end local v2    # "content":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;
    .locals 15
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "basePoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 106
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getCurrentFontSize()F

    move-result v0

    .line 108
    .local v0, "parentFontSize":F
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    .line 109
    .local v1, "parentFont":Lcom/itextpdf/kernel/font/PdfFont;
    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F

    move-result v9

    .line 110
    .local v9, "textLength":F
    sget-object v3, Lcom/itextpdf/layout/property/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/property/RenderingMode;

    .line 111
    invoke-static {v1, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/property/RenderingMode;)[F

    move-result-object v10

    .line 112
    .local v10, "fontAscenderDescenderFromMetrics":[F
    const/4 v3, 0x0

    aget v3, v10, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    mul-float v11, v3, v0

    .line 113
    .local v11, "fontAscender":F
    const/4 v3, 0x1

    aget v3, v10, v3

    div-float/2addr v3, v4

    mul-float v12, v3, v0

    .line 115
    .local v12, "fontDescender":F
    sub-float v13, v11, v12

    .line 116
    .local v13, "textHeight":F
    new-instance v14, Lcom/itextpdf/svg/utils/TextRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    double-to-float v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    double-to-float v3, v5

    sub-float v5, v3, v11

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    double-to-float v8, v6

    move-object v3, v14

    move v6, v9

    move v7, v13

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/svg/utils/TextRectangle;-><init>(FFFFF)V

    .line 116
    return-object v14

    .line 106
    .end local v0    # "parentFontSize":F
    .end local v1    # "parentFont":Lcom/itextpdf/kernel/font/PdfFont;
    .end local v9    # "textLength":F
    .end local v10    # "fontAscenderDescenderFromMetrics":[F
    .end local v11    # "fontAscender":F
    .end local v12    # "fontDescender":F
    .end local v13    # "textHeight":F
    :cond_0
    move-object v2, p0

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method
