.class public Lcom/itextpdf/layout/borders/SolidBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "SolidBorder.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "width"    # F

    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 83
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 24
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

    .line 143
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const/4 v12, 0x0

    .local v12, "x3":F
    const/4 v13, 0x0

    .line 144
    .local v13, "y3":F
    const/4 v14, 0x0

    .local v14, "x4":F
    const/4 v15, 0x0

    .line 151
    .local v15, "y4":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/SolidBorder;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 152
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v1, Lcom/itextpdf/layout/borders/SolidBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v20, v0

    move v1, v8

    move v3, v9

    move v7, v10

    move v0, v11

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v20, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    move v1, v7

    goto/16 :goto_4

    .line 236
    .end local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    :pswitch_0
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v12, v10, v1

    .line 237
    add-float v13, v11, p12

    .line 238
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v14, v8, v1

    .line 239
    sub-float v15, v9, p11

    .line 241
    sub-float v1, p7, p11

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 242
    .local v1, "innerRadiusBefore":F
    iget v3, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v3, p6, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 243
    .local v3, "innerRadiusFirst":F
    iget v4, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v4, p8, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 244
    .local v4, "innerRadiusSecond":F
    sub-float v5, p9, p12

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 246
    .local v5, "innerRadiusAfter":F
    cmpl-float v16, v3, v1

    if-lez v16, :cond_0

    .line 247
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v17, v12

    move/from16 v18, v13

    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .local v17, "x3":F
    .local v18, "y3":F
    float-to-double v12, v8

    float-to-double v10, v9

    invoke-direct {v2, v12, v13, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v14

    move v13, v4

    move/from16 v19, v5

    .end local v4    # "innerRadiusSecond":F
    .end local v5    # "innerRadiusAfter":F
    .local v13, "innerRadiusSecond":F
    .local v19, "innerRadiusAfter":F
    float-to-double v4, v15

    invoke-direct {v10, v11, v12, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v8

    add-float v5, v9, v1

    move/from16 v21, v13

    move/from16 v20, v14

    .end local v13    # "innerRadiusSecond":F
    .end local v14    # "x4":F
    .local v20, "x4":F
    .local v21, "innerRadiusSecond":F
    float-to-double v13, v5

    invoke-direct {v4, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    add-float v11, v8, v3

    float-to-double v11, v11

    add-float v13, v9, v1

    float-to-double v13, v13

    invoke-direct {v5, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v2, v10, v4, v5}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    double-to-float v2, v4

    .line 248
    .end local p2    # "x1":F
    .local v2, "x1":F
    add-float v4, v9, v1

    move/from16 v22, v1

    move v8, v2

    move/from16 v5, v20

    move-object/from16 v20, v0

    .end local p3    # "y1":F
    .local v4, "y1":F
    goto :goto_0

    .line 249
    .end local v2    # "x1":F
    .end local v17    # "x3":F
    .end local v18    # "y3":F
    .end local v19    # "innerRadiusAfter":F
    .end local v20    # "x4":F
    .end local v21    # "innerRadiusSecond":F
    .local v4, "innerRadiusSecond":F
    .restart local v5    # "innerRadiusAfter":F
    .restart local v12    # "x3":F
    .local v13, "y3":F
    .restart local v14    # "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_0
    move/from16 v21, v4

    move/from16 v19, v5

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v20, v14

    .end local v4    # "innerRadiusSecond":F
    .end local v5    # "innerRadiusAfter":F
    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .end local v14    # "x4":F
    .restart local v17    # "x3":F
    .restart local v18    # "y3":F
    .restart local v19    # "innerRadiusAfter":F
    .restart local v20    # "x4":F
    .restart local v21    # "innerRadiusSecond":F
    const/4 v2, 0x0

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1

    .line 250
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v4, v8

    float-to-double v10, v9

    invoke-direct {v2, v4, v5, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v5, v20

    .end local v20    # "x4":F
    .local v5, "x4":F
    float-to-double v10, v5

    float-to-double v12, v15

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    add-float v11, v8, v3

    float-to-double v11, v11

    float-to-double v13, v9

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    add-float v12, v8, v3

    float-to-double v12, v12

    add-float v14, v9, v1

    move-object/from16 v20, v0

    move/from16 v22, v1

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v1    # "innerRadiusBefore":F
    .local v20, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v22, "innerRadiusBefore":F
    float-to-double v0, v14

    invoke-direct {v11, v12, v13, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v2, v4, v10, v11}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    .line 251
    .end local p3    # "y1":F
    .local v0, "y1":F
    add-float v1, v8, v3

    move v4, v0

    move v8, v1

    .end local p2    # "x1":F
    .local v1, "x1":F
    goto :goto_0

    .line 249
    .end local v5    # "x4":F
    .end local v22    # "innerRadiusBefore":F
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v1, "innerRadiusBefore":F
    .local v20, "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_1
    move/from16 v22, v1

    move/from16 v5, v20

    move-object/from16 v20, v0

    .line 254
    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v1    # "innerRadiusBefore":F
    .restart local v5    # "x4":F
    .local v20, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v22    # "innerRadiusBefore":F
    move v4, v9

    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .local v4, "y1":F
    .local v8, "x1":F
    :goto_0
    cmpl-float v0, v19, v21

    if-lez v0, :cond_2

    .line 255
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v1, p4

    float-to-double v9, v1

    move/from16 v2, p5

    float-to-double v11, v2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v10, v17

    .end local v17    # "x3":F
    .local v10, "x3":F
    float-to-double v11, v10

    move v14, v3

    move/from16 p2, v4

    move/from16 v13, v18

    .end local v3    # "innerRadiusFirst":F
    .end local v4    # "y1":F
    .end local v18    # "y3":F
    .restart local v13    # "y3":F
    .local v14, "innerRadiusFirst":F
    .local p2, "y1":F
    float-to-double v3, v13

    invoke-direct {v9, v11, v12, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    add-float v4, v1, v21

    float-to-double v11, v4

    move/from16 v17, v5

    .end local v5    # "x4":F
    .local v17, "x4":F
    float-to-double v4, v2

    invoke-direct {v3, v11, v12, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    add-float v5, v1, v21

    float-to-double v11, v5

    sub-float v5, v2, v19

    move/from16 p3, v14

    move/from16 v18, v15

    .end local v14    # "innerRadiusFirst":F
    .end local v15    # "y4":F
    .local v18, "y4":F
    .local p3, "innerRadiusFirst":F
    float-to-double v14, v5

    invoke-direct {v4, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v0, v9, v3, v4}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v0, v3

    .line 256
    .end local p5    # "y2":F
    .local v0, "y2":F
    add-float v1, v1, v21

    move/from16 v3, p2

    move v12, v10

    move/from16 v14, v17

    move/from16 v15, v18

    .end local p4    # "x2":F
    .local v1, "x2":F
    goto/16 :goto_4

    .line 257
    .end local v0    # "y2":F
    .end local v1    # "x2":F
    .end local v10    # "x3":F
    .end local v13    # "y3":F
    .end local p2    # "y1":F
    .end local p3    # "innerRadiusFirst":F
    .restart local v3    # "innerRadiusFirst":F
    .restart local v4    # "y1":F
    .restart local v5    # "x4":F
    .restart local v15    # "y4":F
    .local v17, "x3":F
    .local v18, "y3":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_2
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 p3, v3

    move/from16 p2, v4

    move/from16 v10, v17

    move/from16 v13, v18

    move/from16 v17, v5

    move/from16 v18, v15

    .end local v3    # "innerRadiusFirst":F
    .end local v4    # "y1":F
    .end local v5    # "x4":F
    .end local v15    # "y4":F
    .restart local v10    # "x3":F
    .restart local v13    # "y3":F
    .local v17, "x4":F
    .local v18, "y4":F
    .restart local p2    # "y1":F
    .restart local p3    # "innerRadiusFirst":F
    const/4 v0, 0x0

    cmpl-float v3, v0, v19

    if-eqz v3, :cond_3

    cmpl-float v0, v0, v21

    if-eqz v0, :cond_3

    .line 258
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v3, v1

    float-to-double v11, v2

    invoke-direct {v0, v3, v4, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v4, v10

    float-to-double v11, v13

    invoke-direct {v3, v4, v5, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v1

    sub-float v5, v2, v19

    float-to-double v14, v5

    invoke-direct {v4, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    add-float v9, v1, v21

    float-to-double v11, v9

    sub-float v9, v2, v19

    float-to-double v14, v9

    invoke-direct {v5, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    double-to-float v0, v3

    .line 259
    .end local p4    # "x2":F
    .local v0, "x2":F
    sub-float v1, v2, v19

    move/from16 v3, p2

    move v12, v10

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v23, v1

    move v1, v0

    move/from16 v0, v23

    .end local p5    # "y2":F
    .local v1, "y2":F
    goto/16 :goto_4

    .line 264
    .end local v0    # "x2":F
    .end local v1    # "y2":F
    .end local v19    # "innerRadiusAfter":F
    .end local v21    # "innerRadiusSecond":F
    .end local v22    # "innerRadiusBefore":F
    .end local p3    # "innerRadiusFirst":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_3
    move/from16 v3, p2

    move v0, v2

    move v12, v10

    move/from16 v14, v17

    move/from16 v15, v18

    goto/16 :goto_4

    .line 209
    .end local v8    # "x1":F
    .end local v10    # "x3":F
    .end local v17    # "x4":F
    .end local v18    # "y4":F
    .end local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v12    # "x3":F
    .local v14, "x4":F
    .restart local v15    # "y4":F
    .local p2, "x1":F
    .local p3, "y1":F
    :pswitch_1
    move-object/from16 v20, v0

    move v1, v10

    move v2, v11

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sub-float v12, v1, p12

    .line 210
    iget v0, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v13, v2, v0

    .line 211
    add-float v14, v8, p11

    .line 212
    iget v0, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v15, v9, v0

    .line 214
    sub-float v0, p6, p11

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 215
    .local v0, "innerRadiusBefore":F
    iget v4, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v4, p7, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 216
    .local v4, "innerRadiusFirst":F
    iget v5, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v5, p9, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 217
    .local v5, "innerRadiusSecond":F
    sub-float v10, p8, p12

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 219
    .local v10, "innerRadiusAfter":F
    cmpl-float v3, v4, v0

    if-lez v3, :cond_4

    .line 220
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v17, v12

    .end local v12    # "x3":F
    .local v17, "x3":F
    float-to-double v11, v8

    float-to-double v1, v9

    invoke-direct {v3, v11, v12, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v14

    move v2, v13

    move/from16 v18, v14

    .end local v13    # "y3":F
    .end local v14    # "x4":F
    .local v2, "y3":F
    .local v18, "x4":F
    float-to-double v13, v15

    invoke-direct {v1, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    sub-float v12, v8, v0

    float-to-double v12, v12

    move/from16 v19, v15

    .end local v15    # "y4":F
    .local v19, "y4":F
    float-to-double v14, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v12, Lcom/itextpdf/kernel/geom/Point;

    sub-float v13, v8, v0

    float-to-double v13, v13

    add-float v15, v9, v4

    move/from16 v21, v10

    .end local v10    # "innerRadiusAfter":F
    .local v21, "innerRadiusAfter":F
    float-to-double v9, v15

    invoke-direct {v12, v13, v14, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v3, v1, v11, v12}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    double-to-float v1, v9

    .line 221
    .end local p3    # "y1":F
    .local v1, "y1":F
    sub-float v3, v8, v0

    move/from16 v10, v18

    .end local p2    # "x1":F
    .local v3, "x1":F
    goto :goto_1

    .line 222
    .end local v1    # "y1":F
    .end local v2    # "y3":F
    .end local v3    # "x1":F
    .end local v17    # "x3":F
    .end local v18    # "x4":F
    .end local v19    # "y4":F
    .end local v21    # "innerRadiusAfter":F
    .restart local v10    # "innerRadiusAfter":F
    .restart local v12    # "x3":F
    .restart local v13    # "y3":F
    .restart local v14    # "x4":F
    .restart local v15    # "y4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_4
    move/from16 v21, v10

    move/from16 v17, v12

    move v2, v13

    move/from16 v18, v14

    move/from16 v19, v15

    .end local v10    # "innerRadiusAfter":F
    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .end local v14    # "x4":F
    .end local v15    # "y4":F
    .restart local v2    # "y3":F
    .restart local v17    # "x3":F
    .restart local v18    # "x4":F
    .restart local v19    # "y4":F
    .restart local v21    # "innerRadiusAfter":F
    const/4 v1, 0x0

    cmpl-float v3, v1, v0

    if-eqz v3, :cond_5

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_5

    .line 223
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v9, v8

    move/from16 v3, p3

    float-to-double v11, v3

    invoke-direct {v1, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v10, v18

    .end local v18    # "x4":F
    .local v10, "x4":F
    float-to-double v11, v10

    move/from16 v13, v19

    .end local v19    # "y4":F
    .local v13, "y4":F
    float-to-double v14, v13

    invoke-direct {v9, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v14, v8

    add-float v12, v3, v4

    .end local v13    # "y4":F
    .restart local v19    # "y4":F
    float-to-double v12, v12

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v12, Lcom/itextpdf/kernel/geom/Point;

    sub-float v13, v8, v0

    float-to-double v13, v13

    add-float v15, v3, v4

    float-to-double v7, v15

    invoke-direct {v12, v13, v14, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v1, v9, v11, v12}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    double-to-float v1, v7

    .line 224
    .end local p2    # "x1":F
    .local v1, "x1":F
    add-float/2addr v3, v4

    move/from16 v23, v3

    move v3, v1

    move/from16 v1, v23

    .end local p3    # "y1":F
    .local v3, "y1":F
    goto :goto_1

    .line 222
    .end local v1    # "x1":F
    .end local v3    # "y1":F
    .end local v10    # "x4":F
    .restart local v18    # "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_5
    move/from16 v3, p3

    move/from16 v10, v18

    .line 227
    .end local v18    # "x4":F
    .restart local v10    # "x4":F
    move v1, v3

    move/from16 v3, p2

    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .local v1, "y1":F
    .local v3, "x1":F
    :goto_1
    cmpl-float v7, v21, v5

    if-lez v7, :cond_6

    .line 228
    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v8, p4

    float-to-double v11, v8

    move/from16 v9, p5

    float-to-double v13, v9

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v12, v17

    .end local v17    # "x3":F
    .restart local v12    # "x3":F
    float-to-double v13, v12

    move v15, v0

    move/from16 p2, v1

    .end local v0    # "innerRadiusBefore":F
    .end local v1    # "y1":F
    .local v15, "innerRadiusBefore":F
    .local p2, "y1":F
    float-to-double v0, v2

    invoke-direct {v11, v13, v14, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v8

    add-float v1, v9, v5

    move/from16 p3, v3

    move/from16 v17, v4

    .end local v3    # "x1":F
    .end local v4    # "innerRadiusFirst":F
    .local v17, "innerRadiusFirst":F
    .local p3, "x1":F
    float-to-double v3, v1

    invoke-direct {v0, v13, v14, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    add-float v3, v8, v21

    float-to-double v3, v3

    add-float v13, v9, v5

    float-to-double v13, v13

    invoke-direct {v1, v3, v4, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v7, v11, v0, v1}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    .line 229
    .end local p4    # "x2":F
    .local v0, "x2":F
    add-float v1, v9, v5

    move/from16 v3, p2

    move/from16 v8, p3

    move v13, v2

    move v14, v10

    move/from16 v15, v19

    move/from16 v23, v1

    move v1, v0

    move/from16 v0, v23

    .end local p5    # "y2":F
    .local v1, "y2":F
    goto/16 :goto_4

    .line 230
    .end local v12    # "x3":F
    .end local v15    # "innerRadiusBefore":F
    .end local p2    # "y1":F
    .end local p3    # "x1":F
    .local v0, "innerRadiusBefore":F
    .local v1, "y1":F
    .restart local v3    # "x1":F
    .restart local v4    # "innerRadiusFirst":F
    .local v17, "x3":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_6
    move/from16 v8, p4

    move/from16 v9, p5

    move v15, v0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 v12, v17

    move/from16 v17, v4

    .end local v0    # "innerRadiusBefore":F
    .end local v1    # "y1":F
    .end local v3    # "x1":F
    .end local v4    # "innerRadiusFirst":F
    .restart local v12    # "x3":F
    .restart local v15    # "innerRadiusBefore":F
    .local v17, "innerRadiusFirst":F
    .restart local p2    # "y1":F
    .restart local p3    # "x1":F
    const/4 v0, 0x0

    cmpl-float v1, v0, v21

    if-eqz v1, :cond_7

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_7

    .line 231
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v3, v8

    float-to-double v13, v9

    invoke-direct {v0, v3, v4, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v3, v12

    float-to-double v13, v2

    invoke-direct {v1, v3, v4, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    add-float v4, v8, v21

    float-to-double v13, v4

    move/from16 v18, v10

    .end local v10    # "x4":F
    .restart local v18    # "x4":F
    float-to-double v10, v9

    invoke-direct {v3, v13, v14, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    add-float v7, v8, v21

    float-to-double v10, v7

    add-float v7, v9, v5

    float-to-double v13, v7

    invoke-direct {v4, v10, v11, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v0, v1, v3, v4}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    .line 232
    .end local p5    # "y2":F
    .local v0, "y2":F
    add-float v1, v8, v21

    move/from16 v3, p2

    move/from16 v8, p3

    move v13, v2

    move/from16 v14, v18

    move/from16 v15, v19

    .end local p4    # "x2":F
    .local v1, "x2":F
    goto/16 :goto_4

    .line 230
    .end local v0    # "y2":F
    .end local v1    # "x2":F
    .end local v18    # "x4":F
    .restart local v10    # "x4":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_7
    move/from16 v18, v10

    .line 264
    .end local v5    # "innerRadiusSecond":F
    .end local v10    # "x4":F
    .end local v15    # "innerRadiusBefore":F
    .end local v17    # "innerRadiusFirst":F
    .end local v21    # "innerRadiusAfter":F
    .restart local v18    # "x4":F
    move/from16 v3, p2

    move v13, v2

    move v1, v8

    move v0, v9

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v8, p3

    goto/16 :goto_4

    .line 181
    .end local v2    # "y3":F
    .end local v18    # "x4":F
    .end local v19    # "y4":F
    .end local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v13, "y3":F
    .restart local v14    # "x4":F
    .local v15, "y4":F
    .local p2, "x1":F
    .local p3, "y1":F
    :pswitch_2
    move-object/from16 v20, v0

    move v3, v9

    move v8, v10

    move v9, v11

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    iget v0, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v12, v8, v0

    .line 182
    sub-float v13, v9, p12

    .line 183
    iget v0, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    move/from16 v1, p2

    add-float v14, v1, v0

    .line 184
    add-float v15, v3, p11

    .line 186
    sub-float v0, p7, p11

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 187
    .local v0, "innerRadiusBefore":F
    iget v4, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v4, p6, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 188
    .restart local v4    # "innerRadiusFirst":F
    iget v5, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v5, p8, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 189
    .restart local v5    # "innerRadiusSecond":F
    sub-float v7, p9, p12

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 191
    .local v7, "innerRadiusAfter":F
    cmpl-float v2, v4, v0

    if-lez v2, :cond_8

    .line 192
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v10, v1

    move/from16 v17, v12

    move/from16 v18, v13

    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .local v17, "x3":F
    .local v18, "y3":F
    float-to-double v12, v3

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v14

    float-to-double v8, v15

    invoke-direct {v10, v11, v12, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v1

    sub-float v9, v3, v0

    move/from16 v19, v14

    .end local v14    # "x4":F
    .local v19, "x4":F
    float-to-double v13, v9

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    sub-float v11, v1, v4

    float-to-double v11, v11

    sub-float v13, v3, v0

    float-to-double v13, v13

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v2, v10, v8, v9}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    double-to-float v1, v8

    .line 193
    .end local p2    # "x1":F
    .local v1, "x1":F
    sub-float v2, v3, v0

    move/from16 v9, v19

    move/from16 v19, v15

    .end local p3    # "y1":F
    .local v2, "y1":F
    goto :goto_2

    .line 194
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    .end local v17    # "x3":F
    .end local v18    # "y3":F
    .end local v19    # "x4":F
    .restart local v12    # "x3":F
    .restart local v13    # "y3":F
    .restart local v14    # "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_8
    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .end local v14    # "x4":F
    .restart local v17    # "x3":F
    .restart local v18    # "y3":F
    .restart local v19    # "x4":F
    const/4 v2, 0x0

    cmpl-float v8, v2, v0

    if-eqz v8, :cond_9

    cmpl-float v8, v2, v4

    if-eqz v8, :cond_9

    .line 195
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v8, v1

    float-to-double v10, v3

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v9, v19

    .end local v19    # "x4":F
    .local v9, "x4":F
    float-to-double v10, v9

    float-to-double v12, v15

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    sub-float v11, v1, v4

    float-to-double v11, v11

    float-to-double v13, v3

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    sub-float v12, v1, v4

    float-to-double v12, v12

    sub-float v14, v3, v0

    move/from16 v19, v15

    .end local v15    # "y4":F
    .local v19, "y4":F
    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v2, v8, v10, v11}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    double-to-float v2, v10

    .line 196
    .end local p3    # "y1":F
    .restart local v2    # "y1":F
    sub-float/2addr v1, v4

    .end local p2    # "x1":F
    .restart local v1    # "x1":F
    goto :goto_2

    .line 194
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    .end local v9    # "x4":F
    .restart local v15    # "y4":F
    .local v19, "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_9
    move/from16 v9, v19

    move/from16 v19, v15

    .line 199
    .end local v15    # "y4":F
    .restart local v9    # "x4":F
    .local v19, "y4":F
    move v2, v3

    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .restart local v1    # "x1":F
    .restart local v2    # "y1":F
    :goto_2
    cmpl-float v3, v7, v5

    if-lez v3, :cond_a

    .line 200
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v8, p4

    float-to-double v10, v8

    move/from16 v12, p5

    float-to-double v13, v12

    invoke-direct {v3, v10, v11, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v11, v17

    .end local v17    # "x3":F
    .local v11, "x3":F
    float-to-double v13, v11

    move/from16 v17, v0

    move/from16 p2, v1

    move/from16 v15, v18

    .end local v0    # "innerRadiusBefore":F
    .end local v1    # "x1":F
    .end local v18    # "y3":F
    .local v15, "y3":F
    .local v17, "innerRadiusBefore":F
    .restart local p2    # "x1":F
    float-to-double v0, v15

    invoke-direct {v10, v13, v14, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    sub-float v1, v8, v5

    float-to-double v13, v1

    move/from16 p3, v2

    .end local v2    # "y1":F
    .restart local p3    # "y1":F
    float-to-double v1, v12

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    sub-float v2, v8, v5

    float-to-double v13, v2

    add-float v2, v12, v7

    move/from16 v18, v11

    .end local v11    # "x3":F
    .local v18, "x3":F
    float-to-double v11, v2

    invoke-direct {v1, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v3, v10, v0, v1}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    .line 201
    .end local p5    # "y2":F
    .local v0, "y2":F
    sub-float v1, v8, v5

    move/from16 v8, p2

    move/from16 v3, p3

    move v14, v9

    move v13, v15

    move/from16 v12, v18

    move/from16 v15, v19

    .end local p4    # "x2":F
    .local v1, "x2":F
    goto/16 :goto_4

    .line 202
    .end local v15    # "y3":F
    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .local v0, "innerRadiusBefore":F
    .local v1, "x1":F
    .restart local v2    # "y1":F
    .local v17, "x3":F
    .local v18, "y3":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_a
    move/from16 v8, p4

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 v15, v18

    move/from16 v18, v17

    move/from16 v17, v0

    .end local v0    # "innerRadiusBefore":F
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    .restart local v15    # "y3":F
    .local v17, "innerRadiusBefore":F
    .local v18, "x3":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    const/4 v0, 0x0

    cmpl-float v1, v0, v7

    if-eqz v1, :cond_b

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_b

    .line 203
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, v8

    move/from16 v3, p5

    float-to-double v10, v3

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v2, v18

    .end local v18    # "x3":F
    .local v2, "x3":F
    float-to-double v10, v2

    float-to-double v12, v15

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v8

    add-float v13, v3, v7

    float-to-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    sub-float v12, v8, v5

    float-to-double v12, v12

    add-float v14, v3, v7

    move/from16 v16, v4

    move/from16 v18, v5

    .end local v4    # "innerRadiusFirst":F
    .end local v5    # "innerRadiusSecond":F
    .local v16, "innerRadiusFirst":F
    .local v18, "innerRadiusSecond":F
    float-to-double v4, v14

    invoke-direct {v11, v12, v13, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v0, v1, v10, v11}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    .line 204
    .end local p4    # "x2":F
    .local v0, "x2":F
    add-float v1, v3, v7

    move/from16 v8, p2

    move/from16 v3, p3

    move v12, v2

    move v14, v9

    move v13, v15

    move/from16 v15, v19

    move/from16 v23, v1

    move v1, v0

    move/from16 v0, v23

    .end local p5    # "y2":F
    .local v1, "y2":F
    goto/16 :goto_4

    .line 202
    .end local v0    # "x2":F
    .end local v1    # "y2":F
    .end local v2    # "x3":F
    .end local v16    # "innerRadiusFirst":F
    .restart local v4    # "innerRadiusFirst":F
    .restart local v5    # "innerRadiusSecond":F
    .local v18, "x3":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_b
    move/from16 v3, p5

    move/from16 v16, v4

    move/from16 v2, v18

    move/from16 v18, v5

    .line 264
    .end local v4    # "innerRadiusFirst":F
    .end local v5    # "innerRadiusSecond":F
    .end local v7    # "innerRadiusAfter":F
    .end local v17    # "innerRadiusBefore":F
    .end local v18    # "x3":F
    .restart local v2    # "x3":F
    move v12, v2

    move v0, v3

    move v1, v8

    move v14, v9

    move v13, v15

    move/from16 v15, v19

    move/from16 v8, p2

    move/from16 v3, p3

    goto/16 :goto_4

    .line 154
    .end local v2    # "x3":F
    .end local v9    # "x4":F
    .end local v19    # "y4":F
    .end local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v12    # "x3":F
    .restart local v13    # "y3":F
    .restart local v14    # "x4":F
    .local v15, "y4":F
    :pswitch_3
    move-object/from16 v20, v0

    move v1, v8

    move v3, v9

    move v8, v10

    move v0, v11

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v20    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    add-float v12, v8, p12

    .line 155
    iget v2, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v13, v0, v2

    .line 156
    sub-float v14, v1, p11

    .line 157
    iget v2, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v15, v3, v2

    .line 159
    sub-float v2, p6, p11

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 160
    .local v2, "innerRadiusBefore":F
    iget v5, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v5, p7, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 161
    .local v5, "innerRadiusFirst":F
    iget v7, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v7, p9, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 162
    .local v7, "innerRadiusSecond":F
    sub-float v9, p8, p12

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 164
    .local v9, "innerRadiusAfter":F
    cmpl-float v4, v2, v5

    if-lez v4, :cond_c

    .line 165
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v10, v1

    move/from16 v17, v12

    move/from16 v18, v13

    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .local v17, "x3":F
    .local v18, "y3":F
    float-to-double v12, v3

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v14

    move v13, v7

    .end local v7    # "innerRadiusSecond":F
    .local v13, "innerRadiusSecond":F
    float-to-double v7, v15

    invoke-direct {v10, v11, v12, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v14

    sub-float v8, v3, v5

    move/from16 v19, v9

    .end local v9    # "innerRadiusAfter":F
    .local v19, "innerRadiusAfter":F
    float-to-double v8, v8

    invoke-direct {v7, v11, v12, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    add-float v9, v1, v2

    float-to-double v11, v9

    sub-float v9, v3, v5

    move/from16 v22, v13

    move/from16 v21, v14

    .end local v13    # "innerRadiusSecond":F
    .end local v14    # "x4":F
    .local v21, "x4":F
    .local v22, "innerRadiusSecond":F
    float-to-double v13, v9

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v4, v10, v7, v8}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    double-to-float v1, v7

    .line 166
    .end local p2    # "x1":F
    .local v1, "x1":F
    sub-float/2addr v3, v5

    move/from16 v8, v21

    .end local p3    # "y1":F
    .local v3, "y1":F
    goto :goto_3

    .line 167
    .end local v1    # "x1":F
    .end local v3    # "y1":F
    .end local v17    # "x3":F
    .end local v18    # "y3":F
    .end local v19    # "innerRadiusAfter":F
    .end local v21    # "x4":F
    .end local v22    # "innerRadiusSecond":F
    .restart local v7    # "innerRadiusSecond":F
    .restart local v9    # "innerRadiusAfter":F
    .restart local v12    # "x3":F
    .local v13, "y3":F
    .restart local v14    # "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_c
    move/from16 v22, v7

    move/from16 v19, v9

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v21, v14

    .end local v7    # "innerRadiusSecond":F
    .end local v9    # "innerRadiusAfter":F
    .end local v12    # "x3":F
    .end local v13    # "y3":F
    .end local v14    # "x4":F
    .restart local v17    # "x3":F
    .restart local v18    # "y3":F
    .restart local v19    # "innerRadiusAfter":F
    .restart local v21    # "x4":F
    .restart local v22    # "innerRadiusSecond":F
    const/4 v4, 0x0

    cmpl-float v7, v4, v2

    if-eqz v7, :cond_d

    cmpl-float v7, v4, v5

    if-eqz v7, :cond_d

    .line 168
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v7, v1

    float-to-double v9, v3

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v8, v21

    .end local v21    # "x4":F
    .local v8, "x4":F
    float-to-double v9, v8

    float-to-double v11, v15

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    add-float v10, v1, v2

    float-to-double v10, v10

    float-to-double v12, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    add-float v11, v1, v2

    float-to-double v11, v11

    sub-float v13, v3, v5

    float-to-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v4, v7, v9, v10}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    double-to-float v3, v9

    .line 169
    .end local p3    # "y1":F
    .restart local v3    # "y1":F
    add-float/2addr v1, v2

    .end local p2    # "x1":F
    .restart local v1    # "x1":F
    goto :goto_3

    .line 167
    .end local v1    # "x1":F
    .end local v3    # "y1":F
    .end local v8    # "x4":F
    .restart local v21    # "x4":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    :cond_d
    move/from16 v8, v21

    .line 171
    .end local v21    # "x4":F
    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .restart local v1    # "x1":F
    .restart local v3    # "y1":F
    .restart local v8    # "x4":F
    :goto_3
    cmpl-float v4, v19, v22

    if-lez v4, :cond_e

    .line 172
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v7, p4

    float-to-double v9, v7

    float-to-double v11, v0

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v10, v17

    .end local v17    # "x3":F
    .local v10, "x3":F
    float-to-double v11, v10

    move/from16 p2, v1

    move v14, v2

    move/from16 v13, v18

    .end local v1    # "x1":F
    .end local v2    # "innerRadiusBefore":F
    .end local v18    # "y3":F
    .restart local v13    # "y3":F
    .local v14, "innerRadiusBefore":F
    .restart local p2    # "x1":F
    float-to-double v1, v13

    invoke-direct {v9, v11, v12, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v7

    sub-float v2, v0, v22

    move/from16 p3, v3

    .end local v3    # "y1":F
    .restart local p3    # "y1":F
    float-to-double v2, v2

    invoke-direct {v1, v11, v12, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    sub-float v3, v7, v19

    float-to-double v11, v3

    sub-float v3, v0, v22

    move/from16 v18, v14

    move/from16 v17, v15

    .end local v14    # "innerRadiusBefore":F
    .end local v15    # "y4":F
    .local v17, "y4":F
    .local v18, "innerRadiusBefore":F
    float-to-double v14, v3

    invoke-direct {v2, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v4, v9, v1, v2}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    .line 173
    .end local p4    # "x2":F
    .local v1, "x2":F
    sub-float v0, v0, v22

    move/from16 v3, p3

    move v14, v8

    move v12, v10

    move/from16 v15, v17

    move/from16 v8, p2

    .end local p5    # "y2":F
    .local v0, "y2":F
    goto :goto_4

    .line 174
    .end local v0    # "y2":F
    .end local v10    # "x3":F
    .end local v13    # "y3":F
    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .local v1, "x1":F
    .restart local v2    # "innerRadiusBefore":F
    .restart local v3    # "y1":F
    .restart local v15    # "y4":F
    .local v17, "x3":F
    .local v18, "y3":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_e
    move/from16 v7, p4

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 v10, v17

    move/from16 v13, v18

    move/from16 v18, v2

    move/from16 v17, v15

    .end local v1    # "x1":F
    .end local v2    # "innerRadiusBefore":F
    .end local v3    # "y1":F
    .end local v15    # "y4":F
    .restart local v10    # "x3":F
    .restart local v13    # "y3":F
    .local v17, "y4":F
    .local v18, "innerRadiusBefore":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    const/4 v1, 0x0

    cmpl-float v2, v1, v19

    if-eqz v2, :cond_f

    cmpl-float v1, v1, v22

    if-eqz v1, :cond_f

    .line 175
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v2, v7

    float-to-double v11, v0

    invoke-direct {v1, v2, v3, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v3, v10

    float-to-double v11, v13

    invoke-direct {v2, v3, v4, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    sub-float v4, v7, v19

    float-to-double v11, v4

    float-to-double v14, v0

    invoke-direct {v3, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    sub-float v9, v7, v19

    float-to-double v11, v9

    sub-float v9, v0, v22

    float-to-double v14, v9

    invoke-direct {v4, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/itextpdf/layout/borders/SolidBorder;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    double-to-float v0, v1

    .line 176
    .end local p5    # "y2":F
    .restart local v0    # "y2":F
    sub-float v1, v7, v19

    move/from16 v3, p3

    move v14, v8

    move v12, v10

    move/from16 v15, v17

    move/from16 v8, p2

    .end local p4    # "x2":F
    .local v1, "x2":F
    goto :goto_4

    .line 264
    .end local v0    # "y2":F
    .end local v1    # "x2":F
    .end local v5    # "innerRadiusFirst":F
    .end local v18    # "innerRadiusBefore":F
    .end local v19    # "innerRadiusAfter":F
    .end local v22    # "innerRadiusSecond":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :cond_f
    move/from16 v3, p3

    move v1, v7

    move v14, v8

    move v12, v10

    move/from16 v15, v17

    move/from16 v8, p2

    .end local v10    # "x3":F
    .end local v17    # "y4":F
    .end local p2    # "x1":F
    .end local p3    # "y1":F
    .end local p4    # "x2":F
    .end local p5    # "y2":F
    .restart local v0    # "y2":F
    .restart local v1    # "x2":F
    .restart local v3    # "y1":F
    .local v8, "x1":F
    .restart local v12    # "x3":F
    .local v14, "x4":F
    .restart local v15    # "y4":F
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-object v4, v6, Lcom/itextpdf/layout/borders/SolidBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 265
    invoke-virtual {v4}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 266
    iget-object v2, v6, Lcom/itextpdf/layout/borders/SolidBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/property/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 267
    float-to-double v9, v8

    float-to-double v5, v3

    .line 268
    invoke-virtual {v4, v9, v10, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v5, v1

    float-to-double v9, v0

    invoke-virtual {v2, v5, v6, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v5, v12

    float-to-double v9, v13

    invoke-virtual {v2, v5, v6, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v5, v14

    float-to-double v9, v15

    invoke-virtual {v2, v5, v6, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v5, v8

    float-to-double v9, v3

    invoke-virtual {v2, v5, v6, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 269
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 270
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 16
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p7, "borderWidthBefore"    # F
    .param p8, "borderWidthAfter"    # F

    .line 99
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const/4 v12, 0x0

    .local v12, "x3":F
    const/4 v13, 0x0

    .line 100
    .local v13, "y3":F
    const/4 v14, 0x0

    .local v14, "x4":F
    const/4 v15, 0x0

    .line 102
    .local v15, "y4":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/SolidBorder;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 103
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v1, Lcom/itextpdf/layout/borders/SolidBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v12, v10, v1

    .line 124
    add-float v13, v11, p8

    .line 125
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v14, v8, v1

    .line 126
    sub-float v15, v9, p7

    goto :goto_0

    .line 117
    :pswitch_1
    sub-float v12, v10, p8

    .line 118
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v13, v11, v1

    .line 119
    add-float v14, v8, p7

    .line 120
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    sub-float v15, v9, v1

    .line 121
    goto :goto_0

    .line 111
    :pswitch_2
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v12, v10, v1

    .line 112
    sub-float v13, v11, p8

    .line 113
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v14, v8, v1

    .line 114
    add-float v15, v9, p7

    .line 115
    goto :goto_0

    .line 105
    :pswitch_3
    add-float v12, v10, p8

    .line 106
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v13, v11, v1

    .line 107
    sub-float v14, v8, p7

    .line 108
    iget v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    add-float v15, v9, v1

    .line 109
    nop

    .line 130
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v2, v6, Lcom/itextpdf/layout/borders/SolidBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 131
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 132
    iget-object v1, v6, Lcom/itextpdf/layout/borders/SolidBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/property/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 133
    float-to-double v1, v8

    float-to-double v3, v9

    .line 134
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v10

    float-to-double v4, v11

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v12

    float-to-double v4, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v14

    float-to-double v4, v15

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v8

    float-to-double v4, v9

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 136
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 5
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 277
    nop

    .line 278
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/borders/SolidBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 279
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 280
    iget-object v0, p0, Lcom/itextpdf/layout/borders/SolidBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 281
    iget v0, p0, Lcom/itextpdf/layout/borders/SolidBorder;->width:F

    .line 282
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, p2

    float-to-double v3, p3

    .line 283
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, p4

    float-to-double v3, p5

    .line 284
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 287
    return-void
.end method

.method public getType()I
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method
