.class public Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;
.source "LinearGradientSvgNodeRenderer.java"


# static fields
.field private static final CONVERT_COEFF:D = 0.75


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private getCoordinates(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)[Lcom/itextpdf/kernel/geom/Point;
    .locals 35
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "isObjectBoundingBox"    # Z

    .line 139
    move-object/from16 v0, p0

    const-string/jumbo v1, "y2"

    const-string/jumbo v2, "x2"

    const-string/jumbo v3, "y1"

    const-string/jumbo v4, "x1"

    if-eqz p2, :cond_0

    .line 143
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    .line 144
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    .line 146
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v3, v6, v7}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    invoke-direct {v5, v8, v9, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v3, v5

    .line 147
    .local v3, "start":Lcom/itextpdf/kernel/geom/Point;
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    .line 148
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 147
    invoke-static {v2, v8, v9}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    .line 150
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1, v6, v7}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v1

    mul-double/2addr v1, v10

    invoke-direct {v4, v8, v9, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v1, v4

    .local v1, "end":Lcom/itextpdf/kernel/geom/Point;
    goto/16 :goto_0

    .line 152
    .end local v1    # "end":Lcom/itextpdf/kernel/geom/Point;
    .end local v3    # "start":Lcom/itextpdf/kernel/geom/Point;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 153
    .local v5, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    float-to-double v14, v6

    .line 154
    .local v14, "x":D
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    float-to-double v12, v6

    .line 155
    .local v12, "y":D
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v10, v6

    .line 156
    .local v10, "width":D
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    float-to-double v8, v6

    .line 157
    .local v8, "height":D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getCurrentFontSize()F

    move-result v6

    .line 158
    .local v6, "em":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v25

    .line 159
    .local v25, "rem":F
    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    .line 161
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    move-object/from16 v26, v5

    move-object v5, v7

    .end local v5    # "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    .local v26, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    move-object v7, v4

    move-wide/from16 v27, v8

    .end local v8    # "height":D
    .local v27, "height":D
    move-wide v8, v14

    move-wide/from16 v29, v10

    .end local v10    # "width":D
    .local v29, "width":D
    move-wide v10, v14

    move-wide/from16 v31, v12

    .end local v12    # "y":D
    .local v31, "y":D
    move-wide/from16 v12, v29

    move-wide/from16 v33, v14

    .end local v14    # "x":D
    .local v33, "x":D
    move v14, v6

    move/from16 v15, v25

    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v7

    .line 163
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 162
    move-wide/from16 v17, v31

    move-wide/from16 v19, v31

    move-wide/from16 v21, v27

    move/from16 v23, v6

    move/from16 v24, v25

    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v3

    invoke-direct {v5, v7, v8, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v3, v5

    .line 164
    .restart local v3    # "start":Lcom/itextpdf/kernel/geom/Point;
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    .line 166
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-double v8, v33, v29

    .line 165
    move-wide/from16 v10, v33

    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v7

    .line 168
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 167
    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v1

    invoke-direct {v4, v7, v8, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v1, v4

    .line 171
    .end local v6    # "em":F
    .end local v25    # "rem":F
    .end local v26    # "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v27    # "height":D
    .end local v29    # "width":D
    .end local v31    # "y":D
    .end local v33    # "x":D
    .restart local v1    # "end":Lcom/itextpdf/kernel/geom/Point;
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/itextpdf/kernel/geom/Point;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    return-object v2
.end method

.method private getGradientTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 7
    .param p1, "objectBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "isObjectBoundingBox"    # Z

    .line 114
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 115
    .local v0, "gradientTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 125
    nop

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    div-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    float-to-double v5, v5

    div-double/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getGradientTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 130
    .local v1, "svgGradientTransformation":Lcom/itextpdf/kernel/geom/AffineTransform;
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 133
    :cond_1
    return-object v0
.end method

.method private parseStops(F)Ljava/util/List;
    .locals 8
    .param p1, "parentOpacity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "stopsList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getChildStopRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    .line 93
    .local v2, "stopRenderer":Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;
    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getStopColor()[F

    move-result-object v3

    .line 94
    .local v3, "stopColor":[F
    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getOffset()D

    move-result-wide v4

    .line 95
    .local v4, "offset":D
    new-instance v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v6, v3, v4, v5, v7}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "stopRenderer":Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;
    .end local v3    # "stopColor":[F
    .end local v4    # "offset":D
    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 100
    .local v2, "firstStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 101
    new-instance v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v3, v2, v5, v6, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 105
    .local v1, "lastStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 106
    new-instance v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v3, v1, v5, v6, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v1    # "lastStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v2    # "firstStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public createColor(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;FF)Lcom/itextpdf/kernel/colors/Color;
    .locals 18
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "objectBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "objectBoundingBoxMargin"    # F
    .param p4, "parentOpacity"    # F

    .line 51
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    if-nez v7, :cond_0

    .line 52
    const/4 v1, 0x0

    return-object v1

    .line 55
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;

    invoke-direct {v1}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;-><init>()V

    move-object v6, v1

    .line 57
    .local v6, "builder":Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;
    move/from16 v5, p4

    invoke-direct {v0, v5}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->parseStops(F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 58
    .local v2, "stopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v6, v2}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 59
    .end local v2    # "stopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->parseSpreadMethod()Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->setSpreadMethod(Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->isObjectBoundingBoxUnits()Z

    move-result v4

    .line 64
    .local v4, "isObjectBoundingBox":Z
    move-object/from16 v3, p1

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getCoordinates(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v17

    .line 66
    .local v17, "coordinates":[Lcom/itextpdf/kernel/geom/Point;
    const/4 v1, 0x0

    aget-object v2, v17, v1

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    aget-object v1, v17, v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    const/4 v1, 0x1

    aget-object v2, v17, v1

    .line 67
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v13

    aget-object v1, v17, v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v15

    .line 66
    move-object v8, v6

    invoke-virtual/range {v8 .. v16}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->setGradientVector(DDDD)Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;

    .line 69
    invoke-direct {v0, v7, v4}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getGradientTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v8

    .line 72
    .local v8, "gradientTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->setCurrentSpaceToGradientVectorSpaceTransformation(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;

    .line 74
    const/4 v9, 0x1

    .line 75
    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move v10, v4

    .end local v4    # "isObjectBoundingBox":Z
    .local v10, "isObjectBoundingBox":Z
    move/from16 v4, p3

    move/from16 v5, p3

    move-object v11, v6

    .end local v6    # "builder":Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;
    .local v11, "builder":Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;
    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvasTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    .line 74
    invoke-virtual {v11, v1, v2, v3}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->buildColor(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    return-object v1
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 82
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;-><init>()V

    .line 83
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 85
    return-object v0
.end method
