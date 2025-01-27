.class public Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "PolylineSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IMarkerCapable;


# instance fields
.field protected points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 162
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;-><init>()V

    .line 163
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 164
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 8
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 144
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "points"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "pointsAttribute":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->setPoints(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 149
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const-string v2, "% polyline\n"

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 150
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 151
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 152
    .local v2, "currentPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 153
    const/4 v3, 0x1

    .local v3, "x":I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 155
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "currentPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v3    # "x":I
    :cond_1
    return-void
.end method

.method public drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V
    .locals 4
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "markerVertexType"    # Lcom/itextpdf/svg/MarkerVertexType;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "point":Lcom/itextpdf/kernel/geom/Point;
    sget-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v1, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    goto :goto_0

    .line 172
    :cond_0
    sget-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v1, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 175
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 176
    iget-wide v1, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPtsToPx(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "moveX":Ljava/lang/String;
    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPtsToPx(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "moveY":Ljava/lang/String;
    invoke-static {p1, v1, v2, p2, p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    .line 180
    .end local v1    # "moveX":Ljava/lang/String;
    .end local v2    # "moveY":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D
    .locals 11
    .param p1, "marker"    # Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;
    .param p2, "reverse"    # Z

    .line 184
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 185
    new-instance v0, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 186
    .local v0, "v":Lcom/itextpdf/kernel/geom/Vector;
    iget-object v3, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "marker"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "marker-end"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Point;

    .line 188
    .local v3, "lastPoint":Lcom/itextpdf/kernel/geom/Point;
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Point;

    .line 189
    .local v4, "secondToLastPoint":Lcom/itextpdf/kernel/geom/Point;
    new-instance v5, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v6, v6

    .line 190
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    invoke-direct {v5, v6, v7, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    move-object v0, v5

    .line 191
    .end local v3    # "lastPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v4    # "secondToLastPoint":Lcom/itextpdf/kernel/geom/Point;
    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 192
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "marker-start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Point;

    .line 194
    .local v3, "firstPoint":Lcom/itextpdf/kernel/geom/Point;
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Point;

    .line 195
    .local v4, "secondPoint":Lcom/itextpdf/kernel/geom/Point;
    new-instance v5, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v6, v6

    .line 196
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    invoke-direct {v5, v6, v7, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    move-object v0, v5

    .line 198
    .end local v3    # "firstPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v4    # "secondPoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_1
    :goto_0
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 199
    .local v3, "xAxis":Lcom/itextpdf/kernel/geom/Vector;
    invoke-static {v3, v0}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D

    move-result-wide v4

    .line 200
    .local v4, "rotAngle":D
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    if-nez p2, :cond_2

    move-wide v1, v4

    goto :goto_1

    :cond_2
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    mul-double/2addr v1, v4

    :goto_1
    return-wide v1

    .line 202
    .end local v0    # "v":Lcom/itextpdf/kernel/geom/Vector;
    .end local v3    # "xAxis":Lcom/itextpdf/kernel/geom/Vector;
    .end local v4    # "rotAngle":D
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 19
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 108
    move-object/from16 v0, p0

    const-string v1, "points"

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->setPoints(Ljava/lang/String;)V

    .line 109
    iget-object v1, v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 110
    iget-object v1, v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 111
    .local v1, "firstPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    .line 112
    .local v2, "minX":D
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    .line 113
    .local v4, "minY":D
    move-wide v6, v2

    .line 114
    .local v6, "maxX":D
    move-wide v8, v4

    .line 116
    .local v8, "maxY":D
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    iget-object v11, v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 117
    iget-object v11, v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/geom/Point;

    .line 119
    .local v11, "current":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v12

    .line 120
    .local v12, "currentX":D
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 121
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 123
    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v14

    .line 124
    .local v14, "currentY":D
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 125
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 116
    .end local v11    # "current":Lcom/itextpdf/kernel/geom/Point;
    .end local v12    # "currentX":D
    .end local v14    # "currentY":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 128
    .end local v10    # "i":I
    :cond_0
    sub-double v10, v6, v2

    .line 129
    .local v10, "width":D
    sub-double v12, v8, v4

    .line 131
    .local v12, "height":D
    new-instance v14, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v15, v2

    double-to-float v0, v4

    move-object/from16 v16, v1

    .end local v1    # "firstPoint":Lcom/itextpdf/kernel/geom/Point;
    .local v16, "firstPoint":Lcom/itextpdf/kernel/geom/Point;
    double-to-float v1, v10

    move-wide/from16 v17, v2

    .end local v2    # "minX":D
    .local v17, "minX":D
    double-to-float v2, v12

    invoke-direct {v14, v15, v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v14

    .line 133
    .end local v4    # "minY":D
    .end local v6    # "maxX":D
    .end local v8    # "maxY":D
    .end local v10    # "width":D
    .end local v12    # "height":D
    .end local v16    # "firstPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v17    # "minX":D
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    return-object v0
.end method

.method protected setPoints(Ljava/lang/String;)V
    .locals 10
    .param p1, "pointsAttribute"    # Ljava/lang/String;

    .line 87
    if-nez p1, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 101
    .local v2, "x":F
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 102
    .local v3, "y":F
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v6, v2

    float-to-double v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    return-void

    .line 93
    :cond_2
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Points attribute {0} on polyline tag does not contain a valid set of points"

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 94
    invoke-virtual {v1, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method
