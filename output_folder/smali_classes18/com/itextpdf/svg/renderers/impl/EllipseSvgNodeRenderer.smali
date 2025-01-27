.class public Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "EllipseSvgNodeRenderer.java"


# instance fields
.field cx:F

.field cy:F

.field rx:F

.field ry:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 116
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;-><init>()V

    .line 117
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 118
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 19
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 62
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    .line 63
    .local v14, "cv":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const-string v1, "% ellipse\n"

    invoke-virtual {v14, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->setParameters()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget v1, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cx:F

    float-to-double v1, v1

    iget v3, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->rx:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cy:F

    float-to-double v3, v3

    invoke-virtual {v14, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 67
    iget v1, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cx:F

    float-to-double v2, v1

    iget v4, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->rx:F

    float-to-double v5, v4

    sub-double/2addr v2, v5

    iget v5, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cy:F

    float-to-double v6, v5

    iget v8, v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->ry:F

    float-to-double v9, v8

    sub-double/2addr v6, v9

    float-to-double v9, v1

    float-to-double v11, v4

    add-double/2addr v9, v11

    float-to-double v4, v5

    float-to-double v11, v8

    add-double/2addr v11, v4

    const-wide/16 v15, 0x0

    const-wide v17, 0x4076800000000000L    # 360.0

    move-wide v1, v2

    move-wide v3, v6

    move-wide v5, v9

    move-wide v7, v11

    move-wide v9, v15

    move-wide/from16 v11, v17

    move-object v13, v14

    invoke-static/range {v1 .. v13}, Lcom/itextpdf/svg/utils/DrawUtils;->arc(DDDDDDLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 74
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->setParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cx:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->rx:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cy:F

    iget v4, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->ry:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v2

    add-float/2addr v4, v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected setParameters()Z
    .locals 4

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cx:F

    .line 89
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cy:F

    .line 90
    const-string v1, "cx"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cx:F

    .line 93
    :cond_0
    const-string v1, "cy"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->cy:F

    .line 97
    :cond_1
    const-string/jumbo v1, "rx"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 98
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->rx:F

    .line 104
    const-string/jumbo v1, "ry"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 106
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;->ry:F

    .line 111
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_2
    return v3

    .line 102
    :cond_3
    return v3
.end method
