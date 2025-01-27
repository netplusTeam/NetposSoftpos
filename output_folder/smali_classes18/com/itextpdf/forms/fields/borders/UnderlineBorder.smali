.class Lcom/itextpdf/forms/fields/borders/UnderlineBorder;
.super Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.source "UnderlineBorder.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 13
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p7, "borderWidthBefore"    # F
    .param p8, "borderWidthAfter"    # F

    .line 62
    move-object v0, p0

    sget-object v1, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v11, p6

    invoke-virtual {v1, v11}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    cmpg-float v1, p2, p4

    if-gez v1, :cond_0

    .line 64
    iget v1, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    sub-float v1, p2, v1

    .line 65
    .end local p2    # "x1":F
    .local v1, "x1":F
    iget v2, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    add-float v2, p4, v2

    move v12, v2

    .end local p4    # "x2":F
    .local v2, "x2":F
    goto :goto_0

    .line 67
    .end local v1    # "x1":F
    .end local v2    # "x2":F
    .restart local p2    # "x1":F
    .restart local p4    # "x2":F
    :cond_0
    iget v1, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    add-float/2addr v1, p2

    .line 68
    .end local p2    # "x1":F
    .restart local v1    # "x1":F
    iget v2, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    sub-float v2, p4, v2

    move v12, v2

    .line 70
    .end local p4    # "x2":F
    .local v12, "x2":F
    :goto_0
    new-instance v2, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    iget v4, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 71
    .local v2, "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, v1

    move/from16 v5, p3

    move v6, v12

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 62
    .end local v1    # "x1":F
    .end local v2    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .end local v12    # "x2":F
    .restart local p2    # "x1":F
    .restart local p4    # "x2":F
    :cond_1
    move v1, p2

    move/from16 v12, p4

    .line 73
    .end local p2    # "x1":F
    .end local p4    # "x2":F
    .restart local v1    # "x1":F
    .restart local v12    # "x2":F
    :goto_1
    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 88
    const/16 v0, 0x3e9

    return v0
.end method
