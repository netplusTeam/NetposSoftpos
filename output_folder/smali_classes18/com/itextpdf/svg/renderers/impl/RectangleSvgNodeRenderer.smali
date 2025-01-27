.class public Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "RectangleSvgNodeRenderer.java"


# instance fields
.field private height:F

.field private rx:F

.field private rxPresent:Z

.field private ry:F

.field private ryPresent:Z

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    .line 61
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rxPresent:Z

    .line 65
    iput-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    .line 66
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    .line 67
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 74
    return-void
.end method

.method private arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 29
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "startAng"    # F
    .param p6, "extent"    # F
    .param p7, "cv"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 151
    move/from16 v0, p1

    float-to-double v1, v0

    move/from16 v13, p2

    float-to-double v3, v13

    move/from16 v14, p3

    float-to-double v5, v14

    move/from16 v15, p4

    float-to-double v7, v15

    move/from16 v11, p5

    float-to-double v9, v11

    move/from16 v12, p6

    float-to-double v13, v12

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 156
    .local v3, "pt":[D
    const/4 v4, 0x2

    aget-wide v17, v3, v4

    const/4 v4, 0x3

    aget-wide v19, v3, v4

    const/4 v4, 0x4

    aget-wide v21, v3, v4

    const/4 v4, 0x5

    aget-wide v23, v3, v4

    const/4 v4, 0x6

    aget-wide v25, v3, v4

    const/4 v4, 0x7

    aget-wide v27, v3, v4

    move-object/from16 v16, p7

    invoke-virtual/range {v16 .. v28}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "k":I
    .end local v3    # "pt":[D
    :cond_0
    return-void
.end method

.method private setParameters()V
    .locals 3

    .line 131
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    .line 134
    :cond_0
    const-string/jumbo v0, "y"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    .line 137
    :cond_1
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    .line 138
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    .line 140
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v1, "rx"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->checkRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    .line 142
    iput-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rxPresent:Z

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v1, "ry"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->checkRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    .line 146
    iput-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    .line 148
    :cond_3
    return-void
.end method


# virtual methods
.method checkRadius(FF)F
    .locals 2
    .param p1, "radius"    # F
    .param p2, "distance"    # F

    .line 168
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 169
    return v0

    .line 171
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 172
    div-float v0, p2, v0

    return v0

    .line 174
    :cond_1
    return p1
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 195
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;-><init>()V

    .line 196
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 197
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 14
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    .line 79
    .local v11, "cv":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const-string v0, "% rect\n"

    invoke-virtual {v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->setParameters()V

    .line 81
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rxPresent:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v12, v1

    .line 83
    .local v12, "singleValuePresent":Z
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    if-nez v0, :cond_3

    .line 84
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    float-to-double v1, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v3, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    float-to-double v5, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    float-to-double v7, v0

    move-object v0, v11

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_1

    .line 85
    :cond_3
    if-eqz v12, :cond_4

    .line 86
    const-string v0, "% circle rounded rect\n"

    invoke-virtual {v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 88
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->findCircularRadius(FFFF)F

    move-result v13

    .line 89
    .local v13, "radius":F
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    float-to-double v1, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v3, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    float-to-double v5, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    float-to-double v7, v0

    float-to-double v9, v13

    move-object v0, v11

    invoke-virtual/range {v0 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->roundRectangle(DDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 90
    .end local v13    # "radius":F
    goto/16 :goto_1

    .line 91
    :cond_4
    const-string v0, "% ellipse rounded rect\n"

    invoke-virtual {v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 111
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v2, v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 112
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v2, v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 113
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float v2, v0, v1

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    add-float v4, v0, v1

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v0, v8

    add-float v5, v3, v0

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 114
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 115
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float v2, v0, v1

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v4, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float v5, v3, v4

    iget v6, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    mul-float/2addr v1, v8

    sub-float v6, v0, v1

    add-float/2addr v4, v3

    const/4 v7, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    move-object v0, p0

    move v1, v2

    move v2, v5

    move v3, v6

    move v5, v7

    move v6, v9

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 116
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 117
    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    mul-float/2addr v0, v8

    add-float v1, v3, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float v4, v0, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v2, v8

    sub-float v5, v0, v2

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 118
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 119
    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v4, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v0, v8

    add-float v2, v4, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    mul-float/2addr v0, v8

    add-float v3, v1, v0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 120
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 122
    :goto_1
    return-void
.end method

.method findCircularRadius(FFFF)F
    .locals 3
    .param p1, "rx"    # F
    .param p2, "ry"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 188
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 189
    .local v0, "maxRadius":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 190
    .local v1, "biggestRadius":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 126
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->setParameters()V

    .line 127
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    iget v4, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method
