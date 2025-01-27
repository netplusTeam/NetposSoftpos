.class Lcom/itextpdf/forms/fields/borders/InsetBorder;
.super Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.source "InsetBorder.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 20
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p7, "borderWidthBefore"    # F
    .param p8, "borderWidthAfter"    # F

    .line 63
    move-object/from16 v9, p6

    new-instance v0, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/borders/InsetBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    move-object/from16 v10, p0

    iget v2, v10, Lcom/itextpdf/forms/fields/borders/InsetBorder;->width:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 64
    .local v0, "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/borders/InsetBorder;->getWidth()F

    move-result v1

    .line 67
    .local v1, "borderWidth":F
    add-float v2, v1, v1

    .line 68
    .local v2, "borderWidthX2":F
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v3, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v3, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v3, v1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 70
    .end local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .local v11, "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v13, p2, v1

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move v14, v2

    move v15, v2

    move/from16 v16, v2

    move/from16 v18, v1

    move/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto/16 :goto_0

    .line 72
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_0
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v3, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v3, Lcom/itextpdf/kernel/colors/ColorConstants;->DARK_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v3, v1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 74
    .end local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v14, p3, v1

    sub-float v15, p4, v1

    sub-float v16, p5, v1

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move v13, v2

    move/from16 v18, v1

    move/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_0

    .line 76
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_1
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v3, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v3, Lcom/itextpdf/kernel/colors/ColorConstants;->DARK_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v3, v1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 78
    .end local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v16, p5, v1

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move v13, v2

    move v14, v2

    move v15, v2

    move/from16 v18, v1

    move/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_0

    .line 80
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_2
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v3, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v3, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v3, v1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 82
    .end local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v13, p2, v1

    sub-float v14, p3, v1

    sub-float v15, p4, v1

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move/from16 v16, v2

    move/from16 v18, v1

    move/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_0

    .line 80
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_3
    move-object v11, v0

    .line 85
    .end local v0    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :goto_0
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

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 100
    const/16 v0, 0x3eb

    return v0
.end method
