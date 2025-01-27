.class Lcom/itextpdf/forms/fields/borders/BeveledBorder;
.super Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.source "BeveledBorder.java"


# instance fields
.field private final backgroundColor:Lcom/itextpdf/kernel/colors/Color;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/colors/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 60
    iput-object p3, p0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 61
    return-void
.end method

.method private getDarkerColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 110
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz v0, :cond_1

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceCmyk;

    move-result-object v0

    return-object v0

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz v0, :cond_2

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceGray;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;

    move-result-object v0

    return-object v0

    .line 117
    :cond_2
    return-object p1
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

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v10, p6

    new-instance v1, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    iget v3, v0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->width:F

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 70
    .local v1, "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->getWidth()F

    move-result v2

    .line 72
    .local v2, "borderWidth":F
    add-float v3, v2, v2

    .line 73
    .local v3, "borderWidthX2":F
    iget-object v4, v0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v4, :cond_0

    invoke-direct {v0, v4}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->getDarkerColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    .line 74
    .local v4, "darkerBackground":Lcom/itextpdf/kernel/colors/Color;
    :goto_0
    sget-object v5, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v5, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v5, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v5, v2}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 76
    .end local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .local v11, "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v14, p3, v2

    sub-float v15, p4, v2

    sub-float v16, p5, v2

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move v13, v3

    move/from16 v18, v2

    move/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto/16 :goto_1

    .line 78
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_1
    sget-object v5, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v5, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-direct {v11, v4, v2}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 80
    .end local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v13, p2, v2

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move v14, v3

    move v15, v3

    move/from16 v16, v3

    move/from16 v18, v2

    move/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 82
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_2
    sget-object v5, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v5, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v5, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v5, v2}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 84
    .end local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v16, p5, v2

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move v13, v3

    move v14, v3

    move v15, v3

    move/from16 v18, v2

    move/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 86
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_3
    sget-object v5, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v5, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-direct {v11, v4, v2}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 88
    .end local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    sub-float v13, p2, v2

    sub-float v14, p3, v2

    sub-float v15, p4, v2

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move/from16 v16, v3

    move/from16 v18, v2

    move/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 86
    .end local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    :cond_4
    move-object v11, v1

    .line 91
    .end local v1    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
    .restart local v11    # "solidBorder":Lcom/itextpdf/layout/borders/SolidBorder;
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

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 106
    const/16 v0, 0x3ea

    return v0
.end method
