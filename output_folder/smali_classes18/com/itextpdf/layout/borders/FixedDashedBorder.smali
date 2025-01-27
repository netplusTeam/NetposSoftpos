.class public Lcom/itextpdf/layout/borders/FixedDashedBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "FixedDashedBorder.java"


# static fields
.field public static final DEFAULT_UNITS_VALUE:F = 3.0f


# instance fields
.field private final phase:F

.field private final unitsOff:F

.field private final unitsOn:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "width"    # F

    .line 71
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 7
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 92
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FFFF)V
    .locals 7
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "unitsOn"    # F
    .param p4, "unitsOff"    # F
    .param p5, "phase"    # F

    .line 105
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "opacity"    # F
    .param p4, "unitsOn"    # F
    .param p5, "unitsOff"    # F
    .param p6, "phase"    # F

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 120
    iput p4, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOn:F

    .line 121
    iput p5, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOff:F

    .line 122
    iput p6, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->phase:F

    .line 123
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 12
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

    .line 157
    move-object v8, p0

    move-object v9, p1

    move v10, p2

    move v11, p3

    .line 158
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v8, Lcom/itextpdf/layout/borders/FixedDashedBorder;->width:F

    .line 159
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, v8, Lcom/itextpdf/layout/borders/FixedDashedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 160
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 161
    iget-object v0, v8, Lcom/itextpdf/layout/borders/FixedDashedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 162
    iget v0, v8, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOn:F

    iget v1, v8, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOff:F

    iget v2, v8, Lcom/itextpdf/layout/borders/FixedDashedBorder;->phase:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 164
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v0, p4, v10

    sub-float v1, p5, v11

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 165
    .local v2, "boundingRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v1, 0x0

    aput p6, v3, v1

    const/4 v4, 0x1

    aput p8, v3, v4

    .line 166
    .local v3, "horizontalRadii":[F
    new-array v0, v0, [F

    aput p7, v0, v1

    aput p9, v0, v4

    move-object v4, v0

    .line 168
    .local v4, "verticalRadii":[F
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 170
    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 6
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p7, "borderWidthBefore"    # F
    .param p8, "borderWidthAfter"    # F

    .line 131
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F

    move-result-object v0

    .line 133
    .local v0, "startingPoints":[F
    const/4 v1, 0x0

    aget p2, v0, v1

    .line 134
    const/4 v1, 0x1

    aget p3, v0, v1

    .line 135
    const/4 v1, 0x2

    aget p4, v0, v1

    .line 136
    const/4 v1, 0x3

    aget p5, v0, v1

    .line 138
    nop

    .line 139
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->width:F

    .line 140
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 141
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    iget-object v1, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 143
    iget v1, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOn:F

    iget v2, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOff:F

    iget v3, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->phase:F

    .line 144
    invoke-virtual {p1, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, p2

    float-to-double v4, p3

    .line 145
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, p4

    float-to-double v4, p5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 148
    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 5
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 177
    nop

    .line 178
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 179
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 180
    iget-object v0, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 181
    iget v0, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOn:F

    iget v1, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->unitsOff:F

    iget v2, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->phase:F

    .line 182
    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;->width:F

    .line 183
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, p2

    float-to-double v3, p3

    .line 184
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, p4

    float-to-double v3, p5

    .line 185
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 188
    return-void
.end method

.method public getType()I
    .locals 1

    .line 195
    const/16 v0, 0x9

    return v0
.end method
