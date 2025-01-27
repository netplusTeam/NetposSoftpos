.class public Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "PatternSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgPaintServer;


# static fields
.field private static final CONVERT_COEFF:D = 0.75

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private calculateAppliedViewBox(Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5
    .param p1, "viewBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "xStep"    # D
    .param p4, "yStep"    # D

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->retrieveAlignAndMeet()[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "preserveAspectRatio":[Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v2, p2

    double-to-float v3, p4

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 187
    .local v1, "patternRect":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {p1, v1, v2, v3}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    return-object v2
.end method

.method private calculateOriginalPatternRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 36
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "isObjectBoundingBoxInPatternUnits"    # Z

    .line 209
    move-object/from16 v0, p0

    const-string v1, "height"

    const-string/jumbo v2, "width"

    const-string/jumbo v3, "y"

    const-string/jumbo v4, "x"

    if-eqz p2, :cond_0

    .line 210
    nop

    .line 211
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v7, v9

    .line 212
    .local v7, "xOffset":D
    nop

    .line 213
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    .line 214
    .local v3, "yOffset":D
    nop

    .line 215
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    .line 216
    .local v11, "xStep":D
    nop

    .line 217
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v1

    mul-double/2addr v1, v9

    .local v1, "yStep":D
    goto :goto_0

    .line 219
    .end local v1    # "yStep":D
    .end local v3    # "yOffset":D
    .end local v7    # "xOffset":D
    .end local v11    # "xStep":D
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 220
    .local v5, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    float-to-double v14, v6

    .line 221
    .local v14, "viewPortX":D
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    float-to-double v12, v6

    .line 222
    .local v12, "viewPortY":D
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v10, v6

    .line 223
    .local v10, "viewPortWidth":D
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    float-to-double v8, v6

    .line 224
    .local v8, "viewPortHeight":D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getCurrentFontSize()F

    move-result v6

    .line 225
    .local v6, "em":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v25

    .line 227
    .local v25, "rem":F
    nop

    .line 228
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    move-wide/from16 v26, v8

    .end local v8    # "viewPortHeight":D
    .local v26, "viewPortHeight":D
    move-wide v8, v14

    move-wide/from16 v28, v10

    .end local v10    # "viewPortWidth":D
    .local v28, "viewPortWidth":D
    move-wide v10, v14

    move-wide/from16 v30, v12

    .end local v12    # "viewPortY":D
    .local v30, "viewPortY":D
    move-wide/from16 v12, v28

    move-wide/from16 v32, v14

    .end local v14    # "viewPortX":D
    .local v32, "viewPortX":D
    move v14, v6

    move/from16 v15, v25

    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v34

    .line 229
    .local v34, "xOffset":D
    nop

    .line 230
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 229
    move-wide/from16 v17, v30

    move-wide/from16 v19, v30

    move-wide/from16 v21, v26

    move/from16 v23, v6

    move/from16 v24, v25

    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v3

    .line 231
    .restart local v3    # "yOffset":D
    nop

    .line 232
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    move-wide/from16 v8, v32

    move-wide/from16 v10, v32

    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v11

    .line 233
    .restart local v11    # "xStep":D
    nop

    .line 234
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 233
    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v1

    move-wide/from16 v7, v34

    .line 236
    .end local v5    # "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v6    # "em":F
    .end local v25    # "rem":F
    .end local v26    # "viewPortHeight":D
    .end local v28    # "viewPortWidth":D
    .end local v30    # "viewPortY":D
    .end local v32    # "viewPortX":D
    .end local v34    # "xOffset":D
    .restart local v1    # "yStep":D
    .restart local v7    # "xOffset":D
    :goto_0
    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v6, v7

    double-to-float v9, v3

    double-to-float v10, v11

    double-to-float v13, v1

    invoke-direct {v5, v6, v9, v10, v13}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v5
.end method

.method private static createColoredTilingPatternInstance(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    .locals 4
    .param p0, "patternAffineTransform"    # Lcom/itextpdf/kernel/geom/AffineTransform;
    .param p1, "bbox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "xStep"    # D
    .param p4, "yStep"    # D

    .line 264
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    double-to-float v1, p2

    double-to-float v2, p4

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)V

    .line 266
    .local v0, "coloredTilingPattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    invoke-static {v0, p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->setPatternMatrix(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 267
    return-object v0
.end method

.method private createTilingPattern(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    .locals 25
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "objectBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->isObjectBoundingBoxInPatternUnits()Z

    move-result v0

    .line 103
    .local v0, "isObjectBoundingBoxInPatternUnits":Z
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->isObjectBoundingBoxInPatternContentUnits()Z

    move-result v1

    .line 106
    .local v1, "isObjectBoundingBoxInPatternContentUnits":Z
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct {v8, v9, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->calculateOriginalPatternRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 110
    .local v10, "originalPatternRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    .line 111
    .local v2, "xStep":D
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    float-to-double v4, v4

    .line 113
    .local v4, "yStep":D
    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->xStepYStepAreValid(DD)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 114
    return-object v7

    .line 118
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvasTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v15

    .line 120
    .local v15, "patternMatrixTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getPatternTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 126
    :cond_1
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    float-to-double v11, v6

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    float-to-double v13, v6

    invoke-virtual {v15, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v13

    .line 130
    .local v13, "viewBoxValues":[F
    array-length v6, v13

    const/4 v11, 0x4

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    if-ge v6, v11, :cond_4

    .line 131
    if-eq v0, v1, :cond_3

    .line 136
    if-eqz v1, :cond_2

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v6, v6

    div-double v6, v6, v16

    .line 138
    .local v6, "scaleX":D
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    float-to-double v11, v11

    div-double v11, v11, v16

    .local v11, "scaleY":D
    goto :goto_0

    .line 140
    .end local v6    # "scaleX":D
    .end local v11    # "scaleY":D
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v6, v6

    div-double v6, v16, v6

    .line 141
    .restart local v6    # "scaleX":D
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    float-to-double v11, v11

    div-double v11, v16, v11

    .line 143
    .restart local v11    # "scaleY":D
    :goto_0
    invoke-virtual {v15, v6, v7, v11, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 144
    div-double/2addr v2, v6

    .line 145
    div-double/2addr v4, v11

    .line 147
    .end local v6    # "scaleX":D
    .end local v11    # "scaleY":D
    :cond_3
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v7, v2

    double-to-float v11, v4

    const/4 v12, 0x0

    invoke-direct {v6, v12, v12, v7, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move/from16 v18, v0

    move/from16 v19, v1

    move-object/from16 v16, v13

    .local v6, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    goto/16 :goto_2

    .line 149
    .end local v6    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_4
    invoke-static {v13}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->isViewBoxInvalid([F)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    return-object v7

    .line 155
    :cond_5
    if-eqz v0, :cond_6

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v6, v6

    div-double v6, v16, v6

    .line 157
    .local v6, "scaleX":D
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    float-to-double v11, v11

    div-double v11, v16, v11

    .line 158
    .restart local v11    # "scaleY":D
    invoke-virtual {v15, v6, v7, v11, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 159
    div-double/2addr v2, v6

    .line 160
    div-double/2addr v4, v11

    move-wide v11, v2

    move-wide/from16 v16, v4

    goto :goto_1

    .line 155
    .end local v6    # "scaleX":D
    .end local v11    # "scaleY":D
    :cond_6
    move-wide v11, v2

    move-wide/from16 v16, v4

    .line 163
    .end local v2    # "xStep":D
    .end local v4    # "yStep":D
    .local v11, "xStep":D
    .local v16, "yStep":D
    :goto_1
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v4, 0x1

    aget v4, v13, v4

    const/4 v5, 0x2

    aget v5, v13, v5

    const/4 v6, 0x3

    aget v6, v13, v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 164
    .local v3, "viewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object/from16 v2, p0

    move-wide v4, v11

    move-wide/from16 v6, v16

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->calculateAppliedViewBox(Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 166
    .local v2, "appliedViewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v15, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 168
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 169
    .local v4, "scaleX":D
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    move/from16 v18, v0

    move/from16 v19, v1

    .end local v0    # "isObjectBoundingBoxInPatternUnits":Z
    .end local v1    # "isObjectBoundingBoxInPatternContentUnits":Z
    .local v18, "isObjectBoundingBoxInPatternUnits":Z
    .local v19, "isObjectBoundingBoxInPatternContentUnits":Z
    float-to-double v0, v14

    div-double/2addr v6, v0

    .line 170
    .local v6, "scaleY":D
    invoke-virtual {v15, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 171
    div-double v0, v11, v4

    .line 172
    .end local v11    # "xStep":D
    .local v0, "xStep":D
    div-double v11, v16, v6

    .line 174
    .end local v16    # "yStep":D
    .local v11, "yStep":D
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v14

    neg-float v14, v14

    float-to-double v8, v14

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v14

    neg-float v14, v14

    move-object/from16 v16, v13

    .end local v13    # "viewBoxValues":[F
    .local v16, "viewBoxValues":[F
    float-to-double v13, v14

    invoke-virtual {v15, v8, v9, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 176
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v13, v4

    sub-double/2addr v8, v13

    .line 177
    .local v8, "bboxXOriginal":D
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    float-to-double v13, v13

    move-object/from16 v17, v3

    .end local v3    # "viewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v17, "viewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    move-object/from16 v20, v2

    .end local v2    # "appliedViewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v20, "appliedViewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    float-to-double v2, v3

    div-double/2addr v2, v6

    sub-double/2addr v13, v2

    .line 178
    .local v13, "bboxYOriginal":D
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v3, v8

    move-wide/from16 v21, v4

    .end local v4    # "scaleX":D
    .local v21, "scaleX":D
    double-to-float v4, v13

    double-to-float v5, v0

    move-wide/from16 v23, v0

    .end local v0    # "xStep":D
    .local v23, "xStep":D
    double-to-float v0, v11

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v0, v2

    move-object v6, v0

    move-wide v4, v11

    move-wide/from16 v2, v23

    .line 181
    .end local v8    # "bboxXOriginal":D
    .end local v11    # "yStep":D
    .end local v13    # "bboxYOriginal":D
    .end local v17    # "viewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v20    # "appliedViewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v21    # "scaleX":D
    .end local v23    # "xStep":D
    .local v2, "xStep":D
    .local v4, "yStep":D
    .local v6, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_2
    move-object v11, v15

    move-object v12, v6

    move-object/from16 v0, v16

    .end local v16    # "viewBoxValues":[F
    .local v0, "viewBoxValues":[F
    move-wide v13, v2

    move-object v1, v15

    .end local v15    # "patternMatrixTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .local v1, "patternMatrixTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->createColoredTilingPatternInstance(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    move-result-object v7

    return-object v7
.end method

.method private drawPatternContent(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;)V
    .locals 3
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "pattern"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    .line 191
    if-nez p2, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;

    .line 195
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 196
    .local v0, "patternCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 199
    .local v2, "renderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "renderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 203
    throw v1
.end method

.method private getPatternTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 2

    .line 319
    sget-object v0, Lcom/itextpdf/svg/SvgConstants$Attributes;->PATTERN_TRANSFORM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "patternTransform":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-static {v0}, Lcom/itextpdf/svg/utils/TransformUtils;->parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 323
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    return-object v1
.end method

.method private static getTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 7
    .param p0, "objectBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 279
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 280
    .local v0, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 281
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    div-double/2addr v1, v3

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    float-to-double v5, v5

    div-double/2addr v5, v3

    .line 281
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 283
    return-object v0
.end method

.method private isObjectBoundingBoxInPatternContentUnits()Z
    .locals 5

    .line 251
    sget-object v0, Lcom/itextpdf/svg/SvgConstants$Attributes;->PATTERN_CONTENT_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "patternContentUnits":Ljava/lang/String;
    const-string v1, "objectBoundingBox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 253
    return v2

    .line 254
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 255
    const-string/jumbo v3, "userSpaceOnUse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v4, "Could not recognize patternContentUnits value {0}"

    invoke-static {v4, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 259
    :cond_1
    return v1
.end method

.method private isObjectBoundingBoxInPatternUnits()Z
    .locals 5

    .line 240
    sget-object v0, Lcom/itextpdf/svg/SvgConstants$Attributes;->PATTERN_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "patternUnits":Ljava/lang/String;
    const-string/jumbo v1, "userSpaceOnUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 242
    return v2

    .line 243
    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v2, "Could not recognize patternUnits value {0}"

    invoke-static {v2, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 247
    :cond_1
    return v1
.end method

.method private static isViewBoxInvalid([F)Z
    .locals 3
    .param p0, "viewBoxValues"    # [F

    .line 307
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aget v0, p0, v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    return v2

    .line 308
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    new-array v1, v2, [Ljava/lang/Object;

    .line 310
    const-string v2, "The viewBox width or height is zero. The element with this viewBox will not be rendered."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 312
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static setPatternMatrix(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 2
    .param p0, "pattern"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    .param p1, "affineTransform"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 271
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 273
    .local v0, "patternMatrix":[D
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([D)V

    .line 274
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->setMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 276
    .end local v0    # "patternMatrix":[D
    :cond_0
    return-void
.end method

.method private static xStepYStepAreValid(DD)Z
    .locals 4
    .param p0, "xStep"    # D
    .param p2, "yStep"    # D

    .line 287
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_2

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_2
    :goto_0
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    new-array v1, v3, [Ljava/lang/Object;

    .line 296
    const-string v2, "Pattern width or height is zero. This pattern will not be rendered."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 298
    :cond_3
    return v3

    .line 288
    :cond_4
    :goto_1
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 289
    new-array v1, v3, [Ljava/lang/Object;

    .line 290
    const-string v2, "Pattern width or height is negative value. This pattern will not be rendered."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 292
    :cond_5
    return v3
.end method


# virtual methods
.method public createColor(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;FF)Lcom/itextpdf/kernel/colors/Color;
    .locals 2
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "objectBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "objectBoundingBoxMargin"    # F
    .param p4, "parentOpacity"    # F

    .line 87
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushPatternId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 92
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->createTilingPattern(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    move-result-object v0

    .line 93
    .local v0, "tilingPattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->drawPatternContent(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;)V

    .line 94
    if-nez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popPatternId()V

    .line 94
    return-object v1

    .line 96
    .end local v0    # "tilingPattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popPatternId()V

    .line 97
    throw v0
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 78
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;-><init>()V

    .line 79
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 81
    return-object v0
.end method
