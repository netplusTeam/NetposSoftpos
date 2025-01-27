.class public Lcom/itextpdf/layout/borders/RoundDotsBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "RoundDotsBorder.java"


# static fields
.field private static final GAP_MODIFIER:F = 2.5f


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

    .line 162
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    iget v0, v8, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v12, v0, v1

    .line 163
    .local v12, "initialGap":F
    sub-float v13, p4, v10

    .line 164
    .local v13, "dx":F
    sub-float v14, p5, v11

    .line 165
    .local v14, "dy":F
    mul-float v0, v13, v13

    mul-float v1, v14, v14

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 166
    .local v6, "borderLength":D
    invoke-super {v8, v6, v7, v12}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v15

    .line 168
    .local v15, "adjustedGap":F
    nop

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, v8, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 170
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 171
    iget-object v0, v8, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 172
    iget v0, v8, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    .line 173
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v15, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 177
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v0, p4, v10

    sub-float v3, p5, v11

    invoke-direct {v2, v10, v11, v0, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 178
    .local v2, "boundingRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p6, v3, v4

    aput p8, v3, v1

    .line 179
    .local v3, "horizontalRadii":[F
    new-array v0, v0, [F

    aput p7, v0, v4

    aput p9, v0, v1

    move-object v4, v0

    .line 181
    .local v4, "verticalRadii":[F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p10

    move-wide/from16 v16, v6

    .end local v6    # "borderLength":D
    .local v16, "borderLength":D
    move/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/borders/RoundDotsBorder;->drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 182
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

    iget v0, v6, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    const/high16 v1, 0x40200000    # 2.5f

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

    .line 108
    .local v11, "borderLength":D
    invoke-super {v6, v11, v12, v8}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v13

    .line 110
    .local v13, "adjustedGap":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/RoundDotsBorder;->getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F

    move-result-object v0

    .line 111
    .local v0, "startingPoints":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 112
    .end local p2    # "x1":F
    .local v1, "x1":F
    const/4 v2, 0x1

    aget v3, v0, v2

    .line 113
    .end local p3    # "y1":F
    .local v3, "y1":F
    const/4 v4, 0x2

    aget v4, v0, v4

    .line 114
    .end local p4    # "x2":F
    .local v4, "x2":F
    const/4 v5, 0x3

    aget v5, v0, v5

    .line 116
    .end local p5    # "y2":F
    .local v5, "y2":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    iget-object v15, v6, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 117
    invoke-virtual {v15}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    iget v15, v6, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    .line 118
    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    .line 119
    invoke-virtual {v14, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 120
    iget-object v2, v6, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v2, v7}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 121
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v13, v2

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v13, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v14, v1

    move-object/from16 v16, v0

    move/from16 p2, v1

    .end local v0    # "startingPoints":[F
    .end local v1    # "x1":F
    .local v16, "startingPoints":[F
    .restart local p2    # "x1":F
    float-to-double v0, v3

    .line 122
    invoke-virtual {v2, v14, v15, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v4

    float-to-double v14, v5

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 125
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

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    iget v5, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v5, v6

    .line 133
    .local v5, "initialGap":F
    sub-float v6, p4, v2

    .line 134
    .local v6, "dx":F
    sub-float v7, v4, v3

    .line 135
    .local v7, "dy":F
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 136
    .local v8, "borderLength":D
    invoke-super {v0, v8, v9, v5}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v10

    .line 137
    .local v10, "adjustedGap":F
    const/4 v11, 0x0

    .line 138
    .local v11, "isHorizontal":Z
    sub-float v12, v4, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3a03126f    # 5.0E-4f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 139
    const/4 v11, 0x1

    .line 142
    :cond_0
    if-eqz v11, :cond_1

    .line 143
    iget v12, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    sub-float v12, p4, v12

    .end local p4    # "x2":F
    .local v12, "x2":F
    goto :goto_0

    .line 142
    .end local v12    # "x2":F
    .restart local p4    # "x2":F
    :cond_1
    move/from16 v12, p4

    .line 145
    .end local p4    # "x2":F
    .restart local v12    # "x2":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 146
    iget-object v13, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v13}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 147
    iget-object v13, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v13, v1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 148
    iget v13, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    invoke-virtual {v1, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 149
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 151
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v10, v14

    invoke-virtual {v1, v13, v10, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v13

    float-to-double v14, v2

    float-to-double v0, v3

    .line 152
    invoke-virtual {v13, v14, v15, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v13, v12

    float-to-double v1, v4

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 155
    return-void
.end method

.method protected getDotsGap(DF)F
    .locals 1
    .param p1, "distance"    # D
    .param p3, "initialGap"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 96
    const/4 v0, 0x4

    return v0
.end method
