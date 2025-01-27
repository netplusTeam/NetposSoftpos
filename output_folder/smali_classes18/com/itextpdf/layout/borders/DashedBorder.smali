.class public Lcom/itextpdf/layout/borders/DashedBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "DashedBorder.java"


# static fields
.field private static final DASH_MODIFIER:F = 5.0f

.field private static final GAP_MODIFIER:F = 3.5f


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "width"    # F

    .line 69
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 91
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 21
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

    .line 126
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    .line 127
    .local v1, "initialGap":F
    iget v2, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    .line 128
    .local v2, "dash":F
    sub-float v16, p4, p2

    .line 129
    .local v16, "dx":F
    sub-float v17, p5, p3

    .line 130
    .local v17, "dy":F
    mul-float v3, v16, v16

    mul-float v4, v17, v17

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 131
    .local v14, "borderLength":D
    add-float v3, v1, v2

    invoke-super {v0, v14, v15, v3}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v3

    .line 132
    .local v3, "adjustedGap":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 133
    sub-float/2addr v3, v2

    move/from16 v18, v3

    goto :goto_0

    .line 132
    :cond_0
    move/from16 v18, v3

    .line 135
    .end local v3    # "adjustedGap":F
    .local v18, "adjustedGap":F
    :goto_0
    new-instance v3, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    iget v6, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getOpacity()F

    move-result v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    add-float v10, v2, v4

    move-object v4, v3

    move v8, v2

    move/from16 v9, v18

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 136
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v19, v14

    .end local v14    # "borderLength":D
    .local v19, "borderLength":D
    move/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 138
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

    .line 107
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    .line 108
    .local v1, "initialGap":F
    iget v2, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    .line 109
    .local v2, "dash":F
    sub-float v12, p4, p2

    .line 110
    .local v12, "dx":F
    sub-float v13, p5, p3

    .line 111
    .local v13, "dy":F
    mul-float v3, v12, v12

    mul-float v4, v13, v13

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 113
    .local v14, "borderLength":D
    add-float v3, v1, v2

    invoke-super {v0, v14, v15, v3}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v3

    .line 114
    .local v3, "adjustedGap":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 115
    sub-float/2addr v3, v2

    move/from16 v16, v3

    goto :goto_0

    .line 114
    :cond_0
    move/from16 v16, v3

    .line 118
    .end local v3    # "adjustedGap":F
    .local v16, "adjustedGap":F
    :goto_0
    new-instance v3, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    iget v6, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getOpacity()F

    move-result v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v16, v4

    add-float v10, v2, v4

    move-object v4, v3

    move v8, v2

    move/from16 v9, v16

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 119
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 120
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

    .line 145
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    .line 146
    .local v1, "initialGap":F
    iget v2, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    .line 147
    .local v2, "dash":F
    sub-float v11, p4, p2

    .line 148
    .local v11, "dx":F
    sub-float v12, p5, p3

    .line 149
    .local v12, "dy":F
    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 151
    .local v13, "borderLength":D
    add-float v3, v1, v2

    invoke-super {v0, v13, v14, v3}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v3

    .line 152
    .local v3, "adjustedGap":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 153
    sub-float/2addr v3, v2

    move v15, v3

    goto :goto_0

    .line 152
    :cond_0
    move v15, v3

    .line 156
    .end local v3    # "adjustedGap":F
    .local v15, "adjustedGap":F
    :goto_0
    new-instance v3, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    iget v6, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getOpacity()F

    move-result v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v15, v4

    add-float v10, v2, v4

    move-object v4, v3

    move v8, v2

    move v9, v15

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 157
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    .line 158
    return-void
.end method

.method protected getDotsGap(DF)F
    .locals 1
    .param p1, "distance"    # D
    .param p3, "initialGap"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 98
    const/4 v0, 0x1

    return v0
.end method
