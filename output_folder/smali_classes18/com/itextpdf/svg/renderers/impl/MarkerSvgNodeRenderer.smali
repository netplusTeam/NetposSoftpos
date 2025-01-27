.class public Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "MarkerSvgNodeRenderer.java"


# static fields
.field private static final DEFAULT_MARKER_HEIGHT:F = 2.25f

.field private static final DEFAULT_MARKER_WIDTH:F = 2.25f

.field private static final DEFAULT_REF_X:F

.field private static final DEFAULT_REF_Y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private applyCoordinatesTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 9
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    .local v0, "xScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 209
    .local v1, "yScale":F
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v2

    .line 210
    .local v2, "viewBox":[F
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    const/4 v4, 0x2

    aget v4, v2, v4

    div-float v0, v3, v4

    .line 212
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    const/4 v4, 0x3

    aget v4, v2, v4

    div-float v1, v3, v4

    .line 214
    :cond_0
    const/4 v3, 0x0

    .line 215
    .local v3, "moveX":F
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v5, Lcom/itextpdf/svg/SvgConstants$Attributes;->REFX:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v6, Lcom/itextpdf/svg/SvgConstants$Attributes;->REFX:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 217
    .local v4, "refX":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual {p0, v4, v6, v3, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v3

    .line 219
    mul-float v6, v0, v5

    mul-float/2addr v3, v6

    .line 221
    .end local v4    # "refX":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 222
    .local v4, "moveY":F
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v7, Lcom/itextpdf/svg/SvgConstants$Attributes;->REFY:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v7, Lcom/itextpdf/svg/SvgConstants$Attributes;->REFY:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 224
    .local v6, "refY":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-virtual {p0, v6, v7, v4, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v4

    .line 225
    mul-float/2addr v5, v1

    mul-float/2addr v4, v5

    .line 227
    .end local v6    # "refY":Ljava/lang/String;
    :cond_2
    float-to-double v5, v3

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    .line 228
    .local v5, "translation":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_3

    .line 229
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 231
    :cond_3
    return-void
.end method

.method private applyRotation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 8
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 165
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "orient"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "orient":Ljava/lang/String;
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 171
    .local v2, "rotAngle":D
    const-string v4, "auto"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "auto-start-reverse"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "marker"

    const-string v7, "marker-start"

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 173
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 176
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    const/4 v4, 0x1

    invoke-interface {v1, p0, v4}, Lcom/itextpdf/svg/renderers/IMarkerCapable;->getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D

    move-result-wide v2

    goto :goto_1

    .line 178
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isAngleValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    goto :goto_1

    .line 174
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    const/4 v4, 0x0

    invoke-interface {v1, p0, v4}, Lcom/itextpdf/svg/renderers/IMarkerCapable;->getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D

    move-result-wide v2

    .line 181
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_5

    .line 182
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 185
    .end local v0    # "orient":Ljava/lang/String;
    .end local v2    # "rotAngle":D
    :cond_5
    return-void
.end method

.method private applyUserSpaceScaling(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 13
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 188
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_UNITS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_UNITS:Ljava/lang/String;

    .line 190
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "strokeWidth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    const-string/jumbo v1, "stroke-width"

    invoke-interface {v0, v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "parentValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    float-to-double v1, v1

    .line 195
    .local v1, "rootViewPortHeight":D
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v3, v3

    .line 196
    .local v3, "rootViewPortWidth":D
    mul-double v5, v1, v1

    mul-double v7, v3, v3

    add-double/2addr v5, v7

    .line 197
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 196
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    .line 198
    .local v5, "viewBoxDiagonalLength":D
    double-to-float v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {p0, v0, v7, v8, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPtsToPx(F)F

    move-result v7

    .line 200
    .local v7, "strokeWidthScale":F
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    float-to-double v9, v7

    float-to-double v11, v7

    .line 201
    invoke-static {v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 204
    .end local v0    # "parentValue":Ljava/lang/String;
    .end local v1    # "rootViewPortHeight":D
    .end local v3    # "rootViewPortWidth":D
    .end local v5    # "viewBoxDiagonalLength":D
    .end local v7    # "strokeWidthScale":F
    :cond_1
    return-void
.end method

.method static drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V
    .locals 7
    .param p0, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p1, "moveX"    # Ljava/lang/String;
    .param p2, "moveY"    # Ljava/lang/String;
    .param p3, "markerToUse"    # Lcom/itextpdf/svg/MarkerVertexType;
    .param p4, "parent"    # Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    .line 91
    iget-object v0, p4, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/itextpdf/svg/MarkerVertexType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "elementToReUse":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->filterReferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "normalizedName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    .line 95
    .local v2, "template":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v4

    .line 96
    .local v4, "namedObject":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :goto_0
    instance-of v5, v4, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    .line 98
    invoke-static {v5}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->markerWidthHeightAreCorrect(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    invoke-interface {v4, p4}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 101
    invoke-virtual {p3}, Lcom/itextpdf/svg/MarkerVertexType;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "marker"

    invoke-interface {v4, v6, v5}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v5, "x"

    invoke-interface {v4, v5, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v5, "y"

    invoke-interface {v4, v5, p2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v4, p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 106
    invoke-interface {v4, v3}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 108
    :cond_1
    return-void
.end method

.method private getMarkerWidthHeightValues()[F
    .locals 4

    .line 123
    const/high16 v0, 0x40100000    # 2.25f

    .line 124
    .local v0, "markerWidth":F
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v2, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_WIDTH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v2, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_WIDTH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, "markerWidthRawValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 128
    .end local v1    # "markerWidthRawValue":Ljava/lang/String;
    :cond_0
    const/high16 v1, 0x40100000    # 2.25f

    .line 129
    .local v1, "markerHeight":F
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v3, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_HEIGHT:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v3, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_HEIGHT:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "markerHeightRawValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 133
    .end local v2    # "markerHeightRawValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private getViewBoxValues(FF)[F
    .locals 4
    .param p1, "defaultWidth"    # F
    .param p2, "defaultHeight"    # F

    .line 234
    invoke-super {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v0

    .line 235
    .local v0, "values":[F
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 237
    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    aput p2, v1, v2

    return-object v1

    .line 240
    :cond_0
    return-object v0
.end method

.method private static markerWidthHeightAreCorrect(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;)Z
    .locals 7
    .param p0, "namedObject"    # Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    .line 137
    const-class v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 138
    .local v0, "log":Lorg/slf4j/Logger;
    sget-object v1, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_WIDTH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "markerWidth":Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/svg/SvgConstants$Attributes;->MARKER_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "markerHeight":Ljava/lang/String;
    const/4 v3, 0x1

    .line 141
    .local v3, "isCorrect":Z
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 142
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 143
    .local v5, "absoluteMarkerWidthValue":F
    cmpl-float v6, v5, v4

    if-nez v6, :cond_0

    .line 144
    const-string v6, "markerWidth has zero value. Marker will not be rendered."

    invoke-interface {v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 145
    const/4 v3, 0x0

    goto :goto_0

    .line 146
    :cond_0
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 147
    const-string v6, "markerWidth has negative value. Marker will not be rendered."

    invoke-interface {v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 148
    const/4 v3, 0x0

    .line 151
    .end local v5    # "absoluteMarkerWidthValue":F
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 152
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 153
    .local v5, "absoluteMarkerHeightValue":F
    cmpl-float v6, v5, v4

    if-nez v6, :cond_2

    .line 154
    const-string v4, "markerHeight has zero value. Marker will not be rendered."

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    goto :goto_1

    .line 156
    :cond_2
    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    .line 157
    const-string v4, "markerHeight has negative value. Marker will not be rendered."

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 158
    const/4 v3, 0x0

    .line 161
    .end local v5    # "absoluteMarkerHeightValue":F
    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method applyMarkerAttributes(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 84
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyRotation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyUserSpaceScaling(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyCoordinatesTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 87
    return-void
.end method

.method protected applyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 112
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getMarkerWidthHeightValues()[F

    move-result-object v0

    .line 114
    .local v0, "markerWidthHeight":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 115
    .local v1, "markerWidth":F
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 116
    .local v2, "markerHeight":F
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getViewBoxValues(FF)[F

    move-result-object v3

    .line 117
    .local v3, "values":[F
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 118
    .local v4, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-super {p0, p1, v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 120
    .end local v0    # "markerWidthHeight":[F
    .end local v1    # "markerWidth":F
    .end local v2    # "markerHeight":F
    .end local v3    # "values":[F
    .end local v4    # "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    return-void
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 63
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;-><init>()V

    .line 64
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 66
    return-object v0
.end method

.method preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 8
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 71
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getMarkerWidthHeightValues()[F

    move-result-object v0

    .line 73
    .local v0, "markerWidthHeight":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 74
    .local v1, "markerWidth":F
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 75
    .local v2, "markerHeight":F
    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "xAttribute":Ljava/lang/String;
    const-string/jumbo v4, "y"

    invoke-virtual {p0, v4}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "yAttribute":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    .line 78
    .local v6, "x":F
    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 79
    .local v5, "y":F
    :cond_1
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v7, v6, v5, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 80
    .local v7, "markerViewport":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p1, v7}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 81
    return-void
.end method
