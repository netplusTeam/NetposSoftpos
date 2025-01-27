.class public Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "ImageSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 61
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;-><init>()V

    .line 62
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 63
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 19
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 68
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v1

    .line 70
    .local v1, "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 73
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v3, "xlink:href"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveImageExtended(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v11

    .line 76
    .local v11, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    if-nez v11, :cond_1

    .line 77
    return-void

    .line 79
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    .line 81
    .local v12, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const/4 v3, 0x0

    .line 82
    .local v3, "x":F
    iget-object v4, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v5, "x"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 86
    :cond_2
    const/4 v4, 0x0

    .line 87
    .local v4, "y":F
    iget-object v5, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v6, "y"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    iget-object v5, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    .line 91
    :cond_3
    const/4 v5, 0x0

    .line 93
    .local v5, "width":F
    iget-object v6, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v7, "width"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    iget-object v6, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 97
    :cond_4
    const/4 v6, 0x0

    .line 99
    .local v6, "height":F
    iget-object v7, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v8, "height"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 100
    iget-object v7, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    .line 103
    :cond_5
    const-string v7, ""

    .line 105
    .local v7, "preserveAspectRatio":Ljava/lang/String;
    iget-object v8, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v9, Lcom/itextpdf/svg/SvgConstants$Attributes;->PRESERVE_ASPECT_RATIO:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 106
    iget-object v8, v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v9, Lcom/itextpdf/svg/SvgConstants$Attributes;->PRESERVE_ASPECT_RATIO:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 109
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 110
    .end local v7    # "preserveAspectRatio":Ljava/lang/String;
    .local v13, "preserveAspectRatio":Ljava/lang/String;
    const-string v7, "none"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_9

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_9

    .line 113
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v7

    div-float/2addr v7, v5

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v8

    div-float/2addr v8, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 114
    move v7, v5

    .line 115
    .local v7, "normalizedWidth":F
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v8

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v5

    .local v8, "normalizedHeight":F
    goto :goto_0

    .line 117
    .end local v7    # "normalizedWidth":F
    .end local v8    # "normalizedHeight":F
    :cond_7
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v7

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v6

    .line 118
    .restart local v7    # "normalizedWidth":F
    move v8, v6

    .line 121
    .restart local v8    # "normalizedHeight":F
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_8
    goto :goto_1

    :sswitch_0
    const-string/jumbo v14, "xminymin"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v14, "xminymid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v14, "xminymax"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v14, "xmidymin"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v14, "xmidymid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v10, 0x8

    goto :goto_1

    :sswitch_5
    const-string/jumbo v14, "xmidymax"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v14, "xmaxymin"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x5

    goto :goto_1

    :sswitch_7
    const-string/jumbo v14, "xmaxymid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x6

    goto :goto_1

    :sswitch_8
    const-string/jumbo v14, "xmaxymax"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x7

    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v10, :pswitch_data_0

    .line 150
    sub-float v10, v7, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    add-float/2addr v3, v10

    .line 151
    sub-float v10, v8, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    add-float/2addr v4, v10

    goto :goto_2

    .line 145
    :pswitch_0
    sub-float v9, v7, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v3, v9

    .line 146
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v4, v9

    .line 147
    goto :goto_2

    .line 141
    :pswitch_1
    sub-float v10, v7, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v3, v10

    .line 142
    sub-float v10, v8, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    add-float/2addr v4, v10

    .line 143
    goto :goto_2

    .line 138
    :pswitch_2
    sub-float v9, v7, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v3, v9

    .line 139
    goto :goto_2

    .line 134
    :pswitch_3
    sub-float v10, v7, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    add-float/2addr v3, v10

    .line 135
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v4, v9

    .line 136
    goto :goto_2

    .line 131
    :pswitch_4
    sub-float v10, v7, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    add-float/2addr v3, v10

    .line 132
    goto :goto_2

    .line 128
    :pswitch_5
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v4, v9

    .line 129
    goto :goto_2

    .line 125
    :pswitch_6
    sub-float v10, v8, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    add-float/2addr v4, v10

    .line 126
    goto :goto_2

    .line 123
    :pswitch_7
    nop

    .line 155
    :goto_2
    move v5, v7

    .line 156
    move v6, v8

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move v10, v6

    goto :goto_3

    .line 159
    .end local v7    # "normalizedWidth":F
    .end local v8    # "normalizedHeight":F
    :cond_9
    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move v10, v6

    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "width":F
    .end local v6    # "height":F
    .local v10, "height":F
    .local v14, "x":F
    .local v15, "y":F
    .local v16, "width":F
    :goto_3
    add-float v17, v15, v10

    .line 160
    .local v17, "v":F
    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float v8, v10

    move-object v3, v12

    move-object v4, v11

    move/from16 v5, v16

    move v9, v14

    move/from16 v18, v10

    .end local v10    # "height":F
    .local v18, "height":F
    move/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 161
    return-void

    .line 71
    .end local v2    # "uri":Ljava/lang/String;
    .end local v11    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .end local v12    # "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v13    # "preserveAspectRatio":Ljava/lang/String;
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v16    # "width":F
    .end local v17    # "v":F
    .end local v18    # "height":F
    :cond_a
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1c11fdc9 -> :sswitch_8
        -0x1c11fce5 -> :sswitch_7
        -0x1c11fcdb -> :sswitch_6
        -0xf850ee5 -> :sswitch_5
        -0xf850e01 -> :sswitch_4
        -0xf850df7 -> :sswitch_3
        -0xef823db -> :sswitch_2
        -0xef822f7 -> :sswitch_1
        -0xef822ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
