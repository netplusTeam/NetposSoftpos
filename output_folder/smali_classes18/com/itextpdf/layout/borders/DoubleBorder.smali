.class public Lcom/itextpdf/layout/borders/DoubleBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "DoubleBorder.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "width"    # F

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 76
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

    .line 104
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const/4 v12, 0x0

    .local v12, "x3":F
    const/4 v13, 0x0

    .line 105
    .local v13, "y3":F
    const/4 v14, 0x0

    .local v14, "x4":F
    const/4 v15, 0x0

    .line 106
    .local v15, "y4":F
    iget v0, v6, Lcom/itextpdf/layout/borders/DoubleBorder;->width:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float v16, v0, v1

    .line 107
    .local v16, "thirdOfWidth":F
    div-float v17, p7, v1

    .line 108
    .local v17, "thirdOfWidthBefore":F
    div-float v18, p8, v1

    .line 110
    .local v18, "thirdOfWidthAfter":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/DoubleBorder;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 112
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v1, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    sub-float v12, v10, v16

    .line 133
    add-float v13, v11, v18

    .line 134
    sub-float v14, v8, v16

    .line 135
    sub-float v15, v9, v17

    goto :goto_0

    .line 126
    :pswitch_1
    sub-float v12, v10, v18

    .line 127
    sub-float v13, v11, v16

    .line 128
    add-float v14, v8, v17

    .line 129
    sub-float v15, v9, v16

    .line 130
    goto :goto_0

    .line 120
    :pswitch_2
    add-float v12, v10, v16

    .line 121
    sub-float v13, v11, v18

    .line 122
    add-float v14, v8, v16

    .line 123
    add-float v15, v9, v17

    .line 124
    goto :goto_0

    .line 114
    :pswitch_3
    add-float v12, v10, v18

    .line 115
    add-float v13, v11, v16

    .line 116
    sub-float v14, v8, v17

    .line 117
    add-float v15, v9, v16

    .line 118
    nop

    .line 139
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v2, v6, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 140
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 141
    iget-object v1, v6, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v1, v7}, Lcom/itextpdf/layout/property/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 142
    float-to-double v1, v8

    float-to-double v3, v9

    .line 143
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

    .line 145
    sget-object v1, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_1

    move v4, v8

    move v2, v9

    move v1, v10

    move v3, v11

    goto :goto_1

    .line 177
    :pswitch_4
    mul-float v1, v16, v2

    sub-float v1, v10, v1

    .line 178
    .end local p4    # "x2":F
    .local v1, "x2":F
    mul-float v3, v18, v2

    add-float/2addr v3, v11

    .line 179
    .end local p5    # "y2":F
    .local v3, "y2":F
    mul-float v4, v16, v2

    sub-float/2addr v12, v4

    .line 180
    mul-float v4, v18, v2

    add-float/2addr v13, v4

    .line 181
    mul-float v4, v16, v2

    sub-float/2addr v14, v4

    .line 182
    mul-float v4, v17, v2

    sub-float/2addr v15, v4

    .line 183
    mul-float v4, v16, v2

    sub-float v4, v8, v4

    .line 184
    .end local p2    # "x1":F
    .local v4, "x1":F
    mul-float v2, v2, v17

    sub-float v2, v9, v2

    .end local p3    # "y1":F
    .local v2, "y1":F
    goto :goto_1

    .line 167
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    .end local v4    # "x1":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :pswitch_5
    mul-float v1, v18, v2

    sub-float v1, v10, v1

    .line 168
    .end local p4    # "x2":F
    .restart local v1    # "x2":F
    mul-float v3, v16, v2

    sub-float v3, v11, v3

    .line 169
    .end local p5    # "y2":F
    .restart local v3    # "y2":F
    mul-float v4, v18, v2

    sub-float/2addr v12, v4

    .line 170
    mul-float v4, v16, v2

    sub-float/2addr v13, v4

    .line 171
    mul-float v4, v17, v2

    add-float/2addr v14, v4

    .line 172
    mul-float v4, v16, v2

    sub-float/2addr v15, v4

    .line 173
    mul-float v4, v17, v2

    add-float/2addr v4, v8

    .line 174
    .end local p2    # "x1":F
    .restart local v4    # "x1":F
    mul-float v2, v2, v16

    sub-float v2, v9, v2

    .line 175
    .end local p3    # "y1":F
    .restart local v2    # "y1":F
    goto :goto_1

    .line 157
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    .end local v4    # "x1":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :pswitch_6
    mul-float v1, v16, v2

    add-float/2addr v1, v10

    .line 158
    .end local p4    # "x2":F
    .restart local v1    # "x2":F
    mul-float v3, v18, v2

    sub-float v3, v11, v3

    .line 159
    .end local p5    # "y2":F
    .restart local v3    # "y2":F
    mul-float v4, v16, v2

    add-float/2addr v12, v4

    .line 160
    mul-float v4, v18, v2

    sub-float/2addr v13, v4

    .line 161
    mul-float v4, v16, v2

    add-float/2addr v14, v4

    .line 162
    mul-float v4, v17, v2

    add-float/2addr v15, v4

    .line 163
    mul-float v4, v16, v2

    add-float/2addr v4, v8

    .line 164
    .end local p2    # "x1":F
    .restart local v4    # "x1":F
    mul-float v2, v2, v17

    add-float/2addr v2, v9

    .line 165
    .end local p3    # "y1":F
    .restart local v2    # "y1":F
    goto :goto_1

    .line 147
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    .end local v4    # "x1":F
    .restart local p2    # "x1":F
    .restart local p3    # "y1":F
    .restart local p4    # "x2":F
    .restart local p5    # "y2":F
    :pswitch_7
    mul-float v1, v18, v2

    add-float/2addr v1, v10

    .line 148
    .end local p4    # "x2":F
    .restart local v1    # "x2":F
    mul-float v3, v16, v2

    add-float/2addr v3, v11

    .line 149
    .end local p5    # "y2":F
    .restart local v3    # "y2":F
    mul-float v4, v18, v2

    add-float/2addr v12, v4

    .line 150
    mul-float v4, v16, v2

    add-float/2addr v13, v4

    .line 151
    mul-float v4, v17, v2

    sub-float/2addr v14, v4

    .line 152
    mul-float v4, v16, v2

    add-float/2addr v15, v4

    .line 153
    mul-float v4, v17, v2

    sub-float v4, v8, v4

    .line 154
    .end local p2    # "x1":F
    .restart local v4    # "x1":F
    mul-float v2, v2, v16

    add-float/2addr v2, v9

    .line 155
    .end local p3    # "y1":F
    .restart local v2    # "y1":F
    nop

    .line 188
    :goto_1
    float-to-double v8, v4

    float-to-double v10, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    float-to-double v8, v1

    float-to-double v10, v3

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

    float-to-double v8, v4

    float-to-double v10, v2

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 190
    return-void

    nop

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
    .locals 7
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 197
    iget v0, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->width:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 199
    .local v0, "thirdOfWidth":F
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/layout/borders/DoubleBorder;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v1

    .line 201
    .local v1, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v2, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    goto :goto_0

    .line 207
    :pswitch_1
    sub-float/2addr p2, v0

    .line 208
    sub-float/2addr p4, v0

    .line 209
    add-float/2addr p3, v0

    .line 210
    sub-float/2addr p5, v0

    .line 211
    goto :goto_0

    .line 203
    :pswitch_2
    sub-float/2addr p3, v0

    .line 204
    move p5, p3

    .line 205
    nop

    .line 218
    :goto_0
    nop

    .line 219
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 221
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 222
    iget-object v2, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 223
    float-to-double v2, p2

    float-to-double v4, p3

    .line 224
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v3, p4

    float-to-double v5, p5

    .line 225
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 229
    sget-object v2, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 247
    :pswitch_3
    mul-float v2, v0, v3

    add-float/2addr p5, v2

    .line 248
    mul-float v2, v0, v3

    sub-float/2addr p2, v2

    .line 249
    mul-float/2addr v3, v0

    sub-float/2addr p3, v3

    goto :goto_1

    .line 241
    :pswitch_4
    mul-float v2, v0, v3

    sub-float/2addr p4, v2

    .line 242
    mul-float v2, v0, v3

    sub-float/2addr p5, v2

    .line 243
    mul-float v2, v0, v3

    add-float/2addr p2, v2

    .line 244
    mul-float/2addr v3, v0

    sub-float/2addr p3, v3

    .line 245
    goto :goto_1

    .line 236
    :pswitch_5
    mul-float v2, v0, v3

    add-float/2addr p4, v2

    .line 237
    mul-float/2addr v3, v0

    add-float/2addr p2, v3

    .line 239
    goto :goto_1

    .line 232
    :pswitch_6
    mul-float v2, v0, v3

    add-float/2addr p5, v2

    .line 233
    mul-float/2addr v3, v0

    add-float/2addr p3, v3

    .line 234
    nop

    .line 253
    :goto_1
    nop

    .line 254
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 256
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 257
    iget-object v2, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/property/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 258
    float-to-double v2, p2

    float-to-double v4, p3

    .line 259
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v3, p4

    float-to-double v5, p5

    .line 260
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 263
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .line 96
    const/4 v0, 0x3

    return v0
.end method
