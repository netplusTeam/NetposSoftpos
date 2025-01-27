.class public Lcom/itextpdf/layout/borders/DottedBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "DottedBorder.java"


# static fields
.field private static final GAP_MODIFIER:F = 1.5f


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "width"    # F

    .line 67
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 89
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 18
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "horizontalRadius1"    # F
    .param p7, "verticalRadius1"    # F
    .param p8, "horizontalRadius2"    # F
    .param p9, "verticalRadius2"    # F
    .param p10, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p11, "borderWidthBefore"    # F
    .param p12, "borderWidthAfter"    # F

    .line 138
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    iget v0, v8, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v12, v0, v1

    .line 139
    .local v12, "initialGap":F
    sub-float v13, p4, v10

    .line 140
    .local v13, "dx":F
    sub-float v14, p5, v11

    .line 141
    .local v14, "dy":F
    mul-float v0, v13, v13

    mul-float v1, v14, v14

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 142
    .local v6, "borderLength":D
    invoke-super {v8, v6, v7, v12}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v0

    .line 143
    .local v0, "adjustedGap":F
    iget v1, v8, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 144
    iget v1, v8, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    sub-float/2addr v0, v1

    move v15, v0

    goto :goto_0

    .line 143
    :cond_0
    move v15, v0

    .line 147
    .end local v0    # "adjustedGap":F
    .local v15, "adjustedGap":F
    :goto_0
    nop

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v8, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    .line 149
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, v8, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 150
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 151
    iget-object v0, v8, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 152
    iget v0, v8, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    iget v1, v8, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v1, v2

    invoke-virtual {v9, v0, v15, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 154
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v0, p4, v10

    sub-float v1, p5, v11

    invoke-direct {v2, v10, v11, v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 155
    .local v2, "boundingRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v1, 0x0

    aput p6, v3, v1

    const/4 v4, 0x1

    aput p8, v3, v4

    .line 156
    .local v3, "horizontalRadii":[F
    new-array v0, v0, [F

    aput p7, v0, v1

    aput p9, v0, v4

    move-object v4, v0

    .line 158
    .local v4, "verticalRadii":[F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p10

    move-wide/from16 v16, v6

    .end local v6    # "borderLength":D
    .local v16, "borderLength":D
    move/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/borders/DottedBorder;->drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 159
    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 17
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p7, "borderWidthBefore"    # F
    .param p8, "borderWidthAfter"    # F

    .line 104
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v8, v0, v1

    .line 105
    .local v8, "initialGap":F
    sub-float v9, p4, p2

    .line 106
    .local v9, "dx":F
    sub-float v10, p5, p3

    .line 107
    .local v10, "dy":F
    mul-float v0, v9, v9

    mul-float v1, v10, v10

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 109
    .local v11, "borderLength":D
    iget v0, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    add-float/2addr v0, v8

    invoke-super {v6, v11, v12, v0}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v0

    .line 110
    .local v0, "adjustedGap":F
    iget v1, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 111
    iget v1, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    sub-float/2addr v0, v1

    move v13, v0

    goto :goto_0

    .line 110
    :cond_0
    move v13, v0

    .line 114
    .end local v0    # "adjustedGap":F
    .local v13, "adjustedGap":F
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/DottedBorder;->getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F

    move-result-object v0

    .line 115
    .local v0, "startingPoints":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 116
    .end local p2    # "x1":F
    .local v1, "x1":F
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 117
    .end local p3    # "y1":F
    .local v2, "y1":F
    const/4 v3, 0x2

    aget v3, v0, v3

    .line 118
    .end local p4    # "x2":F
    .local v3, "x2":F
    const/4 v4, 0x3

    aget v4, v0, v4

    .line 120
    .end local p5    # "y2":F
    .local v4, "y2":F
    nop

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget v14, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    .line 122
    invoke-virtual {v5, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-object v14, v6, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 123
    invoke-virtual {v14}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 124
    iget-object v5, v6, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v5, v7}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 125
    iget v5, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    iget v14, v6, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v13, v15

    add-float/2addr v14, v15

    .line 126
    invoke-virtual {v7, v5, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    float-to-double v14, v1

    move-object/from16 v16, v0

    move/from16 p2, v1

    .end local v0    # "startingPoints":[F
    .end local v1    # "x1":F
    .local v16, "startingPoints":[F
    .restart local p2    # "x1":F
    float-to-double v0, v2

    .line 127
    invoke-virtual {v5, v14, v15, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v14, v3

    move/from16 p3, v2

    .end local v2    # "y1":F
    .restart local p3    # "y1":F
    float-to-double v1, v4

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 131
    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 16
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iget v6, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    .line 167
    .local v6, "initialGap":F
    sub-float v7, v4, v2

    .line 168
    .local v7, "dx":F
    sub-float v8, v5, v3

    .line 169
    .local v8, "dy":F
    mul-float v9, v7, v7

    mul-float v10, v8, v8

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 171
    .local v9, "borderLength":D
    iget v11, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    add-float/2addr v11, v6

    invoke-super {v0, v9, v10, v11}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v11

    .line 172
    .local v11, "adjustedGap":F
    iget v12, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_0

    .line 173
    iget v12, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    sub-float/2addr v11, v12

    .line 176
    :cond_0
    nop

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    iget v13, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    .line 178
    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    iget-object v13, v0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 179
    invoke-virtual {v13}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 180
    iget-object v12, v0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v12, v1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 181
    iget v12, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    iget v13, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v11, v14

    add-float/2addr v13, v14

    .line 182
    invoke-virtual {v1, v12, v11, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    float-to-double v13, v2

    float-to-double v0, v3

    .line 183
    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v12, v4

    float-to-double v14, v5

    .line 184
    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 187
    return-void
.end method

.method protected getDotsGap(DF)F
    .locals 1
    .param p1, "distance"    # D
    .param p3, "initialGap"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 96
    const/4 v0, 0x2

    return v0
.end method
