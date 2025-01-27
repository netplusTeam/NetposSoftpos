.class public Lcom/itextpdf/svg/utils/SvgCoordinateUtils;
.super Ljava/lang/Object;
.source "SvgCoordinateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 26
    .param p0, "viewBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "currentViewPort"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "align"    # Ljava/lang/String;
    .param p3, "meetOrSlice"    # Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_5

    .line 173
    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    .line 177
    const-string v4, "meet"

    const-string/jumbo v5, "xmidymid"

    if-eqz v2, :cond_3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "slice"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v11, v1

    move-object v12, v4

    goto/16 :goto_3

    .line 185
    :cond_0
    const-string v6, "none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v7, v9

    .line 187
    .local v7, "scaleWidth":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    float-to-double v11, v11

    div-double/2addr v9, v11

    .local v9, "scaleHeight":D
    goto :goto_0

    .line 189
    .end local v7    # "scaleWidth":D
    .end local v9    # "scaleHeight":D
    :cond_1
    invoke-static {v0, v1, v3}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getScaleWidthHeight(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)D

    move-result-wide v7

    .line 190
    .local v7, "scale":D
    move-wide v9, v7

    .line 191
    .local v9, "scaleWidth":D
    move-wide v11, v7

    move-wide v9, v11

    .line 195
    .local v7, "scaleWidth":D
    .local v9, "scaleHeight":D
    :goto_0
    new-instance v11, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    float-to-double v14, v14

    mul-double/2addr v14, v7

    double-to-float v14, v14

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v15

    float-to-double v2, v15

    mul-double/2addr v2, v9

    double-to-float v2, v2

    invoke-direct {v11, v12, v13, v14, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v2, v11

    .line 199
    .local v2, "appliedViewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    float-to-double v11, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    float-to-double v13, v3

    sub-double/2addr v11, v13

    .line 200
    .local v11, "minXOffset":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v13, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    move-wide v15, v7

    .end local v7    # "scaleWidth":D
    .local v15, "scaleWidth":D
    float-to-double v7, v3

    sub-double/2addr v13, v7

    .line 202
    .local v13, "minYOffset":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    move-wide/from16 v17, v9

    .end local v9    # "scaleHeight":D
    .local v17, "scaleHeight":D
    float-to-double v9, v3

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v9, v9, v19

    add-double/2addr v7, v9

    .line 203
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    float-to-double v9, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v0, v3

    div-double v0, v0, v19

    add-double/2addr v9, v0

    sub-double/2addr v7, v9

    .line 204
    .local v7, "midXOffset":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    float-to-double v9, v3

    div-double v9, v9, v19

    add-double/2addr v0, v9

    .line 205
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v9, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    move-object/from16 v21, v4

    float-to-double v3, v3

    div-double v3, v3, v19

    add-double/2addr v9, v3

    sub-double/2addr v0, v9

    .line 207
    .local v0, "midYOffset":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    float-to-double v9, v9

    add-double/2addr v3, v9

    .line 208
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v9

    float-to-double v9, v9

    move-wide/from16 v19, v15

    .end local v15    # "scaleWidth":D
    .local v19, "scaleWidth":D
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v15

    move-wide/from16 v22, v11

    .end local v11    # "minXOffset":D
    .local v22, "minXOffset":D
    float-to-double v11, v15

    add-double/2addr v9, v11

    sub-double/2addr v3, v9

    .line 209
    .local v3, "maxXOffset":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    float-to-double v11, v11

    add-double/2addr v9, v11

    .line 210
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v15

    move-wide/from16 v24, v13

    .end local v13    # "minYOffset":D
    .local v24, "minYOffset":D
    float-to-double v13, v15

    add-double/2addr v11, v13

    sub-double/2addr v9, v11

    .line 215
    .local v9, "maxYOffset":D
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_2
    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "xminymin"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "xminymid"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "xminymax"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "xmidymin"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x4

    goto :goto_1

    :sswitch_5
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v12, 0x9

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "xmidymax"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x5

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "xmaxymin"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x6

    goto :goto_1

    :sswitch_8
    const-string/jumbo v6, "xmaxymid"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x7

    goto :goto_1

    :sswitch_9
    const-string/jumbo v6, "xmaxymax"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v12, 0x8

    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 254
    move-object/from16 v6, p0

    move-object/from16 v11, p1

    move-object/from16 v12, v21

    invoke-static {v6, v11, v5, v12}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    return-object v5

    .line 250
    :pswitch_0
    move-wide v5, v7

    .line 251
    .local v5, "xOffset":D
    move-wide v11, v0

    .line 252
    .local v11, "yOffset":D
    goto :goto_2

    .line 246
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_1
    move-wide v5, v3

    .line 247
    .restart local v5    # "xOffset":D
    move-wide v11, v9

    .line 248
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 242
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_2
    move-wide v5, v3

    .line 243
    .restart local v5    # "xOffset":D
    move-wide v11, v0

    .line 244
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 238
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_3
    move-wide v5, v3

    .line 239
    .restart local v5    # "xOffset":D
    move-wide/from16 v11, v24

    .line 240
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 234
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_4
    move-wide v5, v7

    .line 235
    .restart local v5    # "xOffset":D
    move-wide v11, v9

    .line 236
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 230
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_5
    move-wide v5, v7

    .line 231
    .restart local v5    # "xOffset":D
    move-wide/from16 v11, v24

    .line 232
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 226
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_6
    move-wide/from16 v5, v22

    .line 227
    .restart local v5    # "xOffset":D
    move-wide v11, v9

    .line 228
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 222
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_7
    move-wide/from16 v5, v22

    .line 223
    .restart local v5    # "xOffset":D
    move-wide v11, v0

    .line 224
    .restart local v11    # "yOffset":D
    goto :goto_2

    .line 218
    .end local v5    # "xOffset":D
    .end local v11    # "yOffset":D
    :pswitch_8
    move-wide/from16 v5, v22

    .line 219
    .restart local v5    # "xOffset":D
    move-wide/from16 v11, v24

    .line 220
    .restart local v11    # "yOffset":D
    nop

    .line 258
    :goto_2
    double-to-float v13, v5

    invoke-virtual {v2, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 259
    double-to-float v13, v11

    invoke-virtual {v2, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 261
    return-object v2

    .line 177
    .end local v0    # "midYOffset":D
    .end local v2    # "appliedViewBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v3    # "maxXOffset":D
    .end local v5    # "xOffset":D
    .end local v7    # "midXOffset":D
    .end local v9    # "maxYOffset":D
    .end local v11    # "yOffset":D
    .end local v17    # "scaleHeight":D
    .end local v19    # "scaleWidth":D
    .end local v22    # "minXOffset":D
    .end local v24    # "minYOffset":D
    :cond_3
    move-object v6, v0

    move-object v11, v1

    move-object v12, v4

    .line 180
    :goto_3
    invoke-static {v6, v11, v5, v12}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 173
    :cond_4
    move-object v6, v0

    move-object v11, v1

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The viewBox is incorrect. The viewBox applying could not be processed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_5
    move-object v6, v0

    move-object v11, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The current viewport is null. The viewBox applying could not be processed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1c11fdc9 -> :sswitch_9
        -0x1c11fce5 -> :sswitch_8
        -0x1c11fcdb -> :sswitch_7
        -0xf850ee5 -> :sswitch_6
        -0xf850e01 -> :sswitch_5
        -0xf850df7 -> :sswitch_4
        -0xef823db -> :sswitch_3
        -0xef822f7 -> :sswitch_2
        -0xef822ed -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D
    .locals 6
    .param p0, "vectorA"    # Lcom/itextpdf/kernel/geom/Vector;
    .param p1, "vectorB"    # Lcom/itextpdf/kernel/geom/Vector;

    .line 93
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Vector;->dot(Lcom/itextpdf/kernel/geom/Vector;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D
    .locals 3
    .param p0, "attributeValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 131
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->determinePositionBetweenValueAndUnit(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "unitsPosition":I
    if-lez v0, :cond_2

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 144
    return-wide v1

    .line 148
    .end local v0    # "unitsPosition":I
    :cond_2
    return-wide p1
.end method

.method public static getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D
    .locals 5
    .param p0, "attributeValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D
    .param p3, "start"    # D
    .param p5, "length"    # D
    .param p7, "em"    # F
    .param p8, "rem"    # F

    .line 110
    invoke-static {p0, p7, p8}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 111
    .local v0, "unitValue":Lcom/itextpdf/layout/property/UnitValue;
    if-nez v0, :cond_0

    .line 112
    move-wide v1, p1

    .local v1, "absoluteValue":D
    goto :goto_0

    .line 113
    .end local v1    # "absoluteValue":D
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getUnitType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    float-to-double v1, v1

    mul-double/2addr v1, p5

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    add-double/2addr v1, p3

    .restart local v1    # "absoluteValue":D
    goto :goto_0

    .line 116
    .end local v1    # "absoluteValue":D
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v1

    float-to-double v1, v1

    .line 118
    .restart local v1    # "absoluteValue":D
    :goto_0
    return-wide v1
.end method

.method private static getScaleWidthHeight(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)D
    .locals 6
    .param p0, "viewBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "currentViewPort"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "meetOrSlice"    # Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 267
    .local v0, "scaleWidth":D
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    .line 268
    .local v2, "scaleHeight":D
    const-string/jumbo v4, "slice"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    return-wide v4

    .line 270
    :cond_0
    const-string v4, "meet"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "The meetOrSlice argument is incorrect. It must be `meet`, `slice` or null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 271
    :cond_2
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static makeRelativeOperatorCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;
    .locals 7
    .param p0, "relativeCoordinates"    # [Ljava/lang/String;
    .param p1, "currentCoordinates"    # [D

    .line 68
    array-length v0, p0

    array-length v1, p1

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 72
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    .local v0, "absoluteOperators":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 75
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 76
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 77
    .local v3, "relativeDouble":D
    aget-wide v5, p1, v2

    add-double/2addr v3, v5

    .line 78
    invoke-static {v3, v4}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 75
    .end local v3    # "relativeDouble":D
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "j":I
    :cond_0
    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 69
    .end local v0    # "absoluteOperators":[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of current coordinates must have length that is divisible by the length of the array with current coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
