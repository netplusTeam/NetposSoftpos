.class public abstract Lcom/itextpdf/layout/borders/Border3D;
.super Lcom/itextpdf/layout/borders/Border;
.source "Border3D.java"


# static fields
.field private static final GRAY:Lcom/itextpdf/kernel/colors/DeviceRgb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v1, 0xd4

    const/16 v2, 0xd0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/layout/borders/Border3D;->GRAY:Lcom/itextpdf/kernel/colors/DeviceRgb;

    return-void
.end method

.method protected constructor <init>(F)V
    .locals 1
    .param p1, "width"    # F

    .line 68
    sget-object v0, Lcom/itextpdf/layout/borders/Border3D;->GRAY:Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .param p2, "width"    # F

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceGray;
    .param p2, "width"    # F

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 99
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceGray;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 132
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceRgb;
    .param p2, "width"    # F

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceRgb;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    .line 110
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 19
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p7, "borderWidthBefore"    # F
    .param p8, "borderWidthAfter"    # F

    .line 139
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const/4 v12, 0x0

    .local v12, "x3":F
    const/4 v13, 0x0

    .line 140
    .local v13, "y3":F
    const/4 v14, 0x0

    .local v14, "x4":F
    const/4 v15, 0x0

    .line 141
    .local v15, "y4":F
    iget v0, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v16, v0, v1

    .line 142
    .local v16, "widthHalf":F
    div-float v17, p7, v1

    .line 143
    .local v17, "halfOfWidthBefore":F
    div-float v18, p8, v1

    .line 145
    .local v18, "halfOfWidthAfter":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/Border3D;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 146
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v1, Lcom/itextpdf/layout/borders/Border3D$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    sub-float v12, v10, v16

    .line 167
    add-float v13, v11, v18

    .line 168
    sub-float v14, v8, v16

    .line 169
    sub-float v15, v9, v17

    goto :goto_0

    .line 160
    :pswitch_1
    sub-float v12, v10, v18

    .line 161
    sub-float v13, v11, v16

    .line 162
    add-float v14, v8, v17

    .line 163
    sub-float v15, v9, v16

    .line 164
    goto :goto_0

    .line 154
    :pswitch_2
    add-float v12, v10, v16

    .line 155
    sub-float v13, v11, v18

    .line 156
    add-float v14, v8, v16

    .line 157
    add-float v15, v9, v17

    .line 158
    goto :goto_0

    .line 148
    :pswitch_3
    add-float v12, v10, v18

    .line 149
    add-float v13, v11, v16

    .line 150
    sub-float v14, v8, v17

    .line 151
    add-float v15, v9, v16

    .line 152
    nop

    .line 173
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 174
    iget-object v1, v6, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/property/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 175
    invoke-virtual {v6, v7, v0}, Lcom/itextpdf/layout/borders/Border3D;->setInnerHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V

    .line 176
    float-to-double v1, v8

    float-to-double v3, v9

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

    .line 178
    sget-object v1, Lcom/itextpdf/layout/borders/Border3D$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    move v3, v8

    move v4, v9

    move v1, v10

    move v2, v11

    goto :goto_1

    .line 198
    :pswitch_4
    iget v1, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v1, v10, v1

    .line 199
    .end local p4    # "x2":F
    .local v1, "x2":F
    add-float v2, v11, p8

    .line 200
    .end local p5    # "y2":F
    .local v2, "y2":F
    iget v3, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v3, v8, v3

    .line 201
    .end local p2    # "x1":F
    .local v3, "x1":F
    sub-float v4, v9, p7

    .end local p3    # "y1":F
    .local v4, "y1":F
    goto :goto_1

    .line 192
    .end local v1    # "x2":F
    .end local v2    # "y2":F
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :pswitch_5
    sub-float v1, v10, p8

    .line 193
    .end local p4    # "x2":F
    .restart local v1    # "x2":F
    iget v2, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v2, v11, v2

    .line 194
    .end local p5    # "y2":F
    .restart local v2    # "y2":F
    add-float v3, v8, p7

    .line 195
    .end local p2    # "x1":F
    .restart local v3    # "x1":F
    iget v4, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v4, v9, v4

    .line 196
    .end local p3    # "y1":F
    .restart local v4    # "y1":F
    goto :goto_1

    .line 186
    .end local v1    # "x2":F
    .end local v2    # "y2":F
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :pswitch_6
    iget v1, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float/2addr v1, v10

    .line 187
    .end local p4    # "x2":F
    .restart local v1    # "x2":F
    sub-float v2, v11, p8

    .line 188
    .end local p5    # "y2":F
    .restart local v2    # "y2":F
    iget v3, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float/2addr v3, v8

    .line 189
    .end local p2    # "x1":F
    .restart local v3    # "x1":F
    add-float v4, v9, p7

    .line 190
    .end local p3    # "y1":F
    .restart local v4    # "y1":F
    goto :goto_1

    .line 180
    .end local v1    # "x2":F
    .end local v2    # "y2":F
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :pswitch_7
    add-float v1, v10, p8

    .line 181
    .end local p4    # "x2":F
    .restart local v1    # "x2":F
    iget v2, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float/2addr v2, v11

    .line 182
    .end local p5    # "y2":F
    .restart local v2    # "y2":F
    sub-float v3, v8, p7

    .line 183
    .end local p2    # "x1":F
    .restart local v3    # "x1":F
    iget v4, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float/2addr v4, v9

    .line 184
    .end local p3    # "y1":F
    .restart local v4    # "y1":F
    nop

    .line 205
    :goto_1
    invoke-virtual {v6, v7, v0}, Lcom/itextpdf/layout/borders/Border3D;->setOuterHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V

    .line 206
    float-to-double v8, v3

    float-to-double v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    float-to-double v8, v1

    float-to-double v10, v2

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    float-to-double v8, v12

    float-to-double v10, v13

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    float-to-double v8, v14

    float-to-double v10, v15

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    float-to-double v8, v3

    float-to-double v10, v4

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 208
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
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

    .line 215
    nop

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 217
    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 218
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 219
    iget v0, p0, Lcom/itextpdf/layout/borders/Border3D;->width:F

    .line 220
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, p2

    float-to-double v3, p3

    .line 221
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, p4

    float-to-double v3, p5

    .line 222
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 225
    return-void
.end method

.method protected getDarkerColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    .line 233
    .local v0, "color":Lcom/itextpdf/kernel/colors/Color;
    instance-of v1, v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v1, :cond_0

    .line 234
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v1

    return-object v1

    .line 235
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz v1, :cond_1

    .line 236
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceCmyk;

    move-result-object v1

    return-object v1

    .line 237
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz v1, :cond_2

    .line 238
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/DeviceGray;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;

    move-result-object v1

    return-object v1

    .line 240
    :cond_2
    return-object v0
.end method

.method protected abstract setInnerHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
.end method

.method protected abstract setOuterHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
.end method
