.class final Lcom/itextpdf/layout/renderer/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 14
    .param p0, "minMaxWidth"    # Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 73
    new-instance v0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 74
    .local v0, "backup":Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeFloatProperty(I)Ljava/lang/Float;

    move-result-object v2

    .line 75
    .local v2, "rotation":Ljava/lang/Float;
    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 78
    .local v3, "angle":F
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v4

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v5

    add-float/2addr v4, v5

    .line 79
    .local v4, "layoutWidth":F
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v7, 0x1

    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    const v9, 0x49742400    # 1000000.0f

    invoke-direct {v8, v4, v9}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 80
    .local v5, "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 81
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 82
    .local v6, "layoutBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->isEqual(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 84
    float-to-double v7, v3

    invoke-static {v6, v7, v8}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 85
    .local v1, "rotatedWidth":F
    new-instance v7, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v1, v8}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    return-object v7

    .line 87
    .end local v1    # "rotatedWidth":F
    :cond_0
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    .line 88
    .local v7, "area":D
    float-to-double v9, v3

    invoke-static {v9, v10, v7, v8, p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculate(DDLcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-result-object v9

    .line 89
    .local v9, "rotationMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMinWidthOrigin()D

    move-result-wide v10

    double-to-float v10, v10

    float-to-double v11, v3

    invoke-static {p1, v10, v6, v11, v12}, Lcom/itextpdf/layout/renderer/RotationUtils;->getLayoutRotatedWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;FLcom/itextpdf/kernel/geom/Rectangle;D)Ljava/lang/Float;

    move-result-object v10

    .line 90
    .local v10, "rotatedMinWidth":Ljava/lang/Float;
    if-eqz v10, :cond_3

    .line 91
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidth()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 92
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMinWidth(F)V

    .line 93
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidthOrigin()D

    move-result-wide v11

    double-to-float v11, v11

    float-to-double v12, v3

    invoke-static {p1, v11, v6, v12, v13}, Lcom/itextpdf/layout/renderer/RotationUtils;->getLayoutRotatedWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;FLcom/itextpdf/kernel/geom/Rectangle;D)Ljava/lang/Float;

    move-result-object v11

    .line 94
    .local v11, "rotatedMaxWidth":Ljava/lang/Float;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 95
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v9, v12}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v9, v12}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMaxWidth(F)V

    .line 99
    .end local v11    # "rotatedMaxWidth":Ljava/lang/Float;
    :goto_0
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMinWidth(F)V

    .line 102
    :goto_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 103
    return-object v9

    .line 107
    .end local v3    # "angle":F
    .end local v4    # "layoutWidth":F
    .end local v5    # "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v6    # "layoutBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v7    # "area":D
    .end local v9    # "rotationMinMaxWidth":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    .end local v10    # "rotatedMinWidth":Ljava/lang/Float;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 108
    return-object p0
.end method

.method private static getLayoutRotatedWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;FLcom/itextpdf/kernel/geom/Rectangle;D)Ljava/lang/Float;
    .locals 6
    .param p0, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p1, "availableWidth"    # F
    .param p2, "previousBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "angle"    # D

    .line 162
    float-to-double v0, p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->isEqual(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p2, p3, p4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x1

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v4

    add-float/2addr v4, p1

    const v5, 0x49742400    # 1000000.0f

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 166
    .local v0, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 169
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static retrieveRotatedLayoutWidth(FLcom/itextpdf/layout/renderer/AbstractRenderer;)Ljava/lang/Float;
    .locals 21
    .param p0, "availableWidth"    # F
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 123
    move/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;

    invoke-direct {v2, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 124
    .local v2, "backup":Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;
    const/16 v3, 0x37

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeFloatProperty(I)Ljava/lang/Float;

    move-result-object v4

    .line 125
    .local v4, "rotation":Ljava/lang/Float;
    if-eqz v4, :cond_2

    const/16 v5, 0x4d

    invoke-virtual {v1, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 126
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 127
    .local v5, "angle":F
    const/16 v6, 0x1b

    invoke-virtual {v2, v6}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeProperty(I)Ljava/lang/Object;

    .line 128
    const/16 v7, 0x55

    invoke-virtual {v2, v7}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeProperty(I)Ljava/lang/Object;

    .line 129
    const/16 v8, 0x54

    invoke-virtual {v2, v8}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeProperty(I)Ljava/lang/Object;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v16

    .line 132
    .local v16, "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v10

    add-float v14, v9, v10

    .line 133
    .local v14, "length":F
    new-instance v9, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v10, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v11, Lcom/itextpdf/kernel/geom/Rectangle;

    const v12, 0x49742400    # 1000000.0f

    invoke-direct {v11, v14, v12}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v12, 0x1

    invoke-direct {v10, v12, v11}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v9, v10}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v17

    .line 134
    .local v17, "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v2, v6}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 135
    invoke-virtual {v2, v7}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 136
    invoke-virtual {v2, v8}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 138
    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 139
    .local v6, "additions":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v1, v6, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 140
    invoke-virtual {v1, v6, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 141
    invoke-virtual {v1, v6, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 143
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 144
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    .line 145
    .local v7, "area":D
    float-to-double v9, v5

    float-to-double v11, v0

    move-wide/from16 v18, v11

    move-wide v11, v7

    move-object/from16 v13, v16

    move/from16 v20, v14

    .end local v14    # "length":F
    .local v20, "length":F
    move-wide/from16 v14, v18

    invoke-static/range {v9 .. v15}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculate(DDLcom/itextpdf/layout/minmaxwidth/MinMaxWidth;D)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-result-object v9

    .line 146
    .local v9, "result":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    if-eqz v9, :cond_2

    .line 147
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 148
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidthHeight()D

    move-result-wide v10

    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMinWidthHeight()D

    move-result-wide v12

    cmpl-double v3, v10, v12

    if-lez v3, :cond_0

    .line 149
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMinWidthOrigin()D

    move-result-wide v10

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v12, v3

    sub-double/2addr v10, v12

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v3

    float-to-double v12, v3

    add-double/2addr v10, v12

    double-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 151
    :cond_0
    invoke-virtual {v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidthOrigin()D

    move-result-wide v10

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v12, v3

    sub-double/2addr v10, v12

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v3

    float-to-double v12, v3

    add-double/2addr v10, v12

    double-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 143
    .end local v7    # "area":D
    .end local v9    # "result":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    .end local v20    # "length":F
    .restart local v14    # "length":F
    :cond_1
    move/from16 v20, v14

    .line 156
    .end local v5    # "angle":F
    .end local v6    # "additions":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v14    # "length":F
    .end local v16    # "minMaxWidth":Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .end local v17    # "layoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :cond_2
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3
.end method
