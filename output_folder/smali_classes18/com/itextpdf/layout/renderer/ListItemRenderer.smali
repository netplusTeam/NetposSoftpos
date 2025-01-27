.class public Lcom/itextpdf/layout/renderer/ListItemRenderer;
.super Lcom/itextpdf/layout/renderer/DivRenderer;
.source "ListItemRenderer.java"


# instance fields
.field private symbolAddedInside:Z

.field protected symbolAreaWidth:F

.field protected symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/ListItem;)V
    .locals 0
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/ListItem;

    .line 79
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    .line 80
    return-void
.end method

.method private applyListSymbolPosition()V
    .locals 13

    .line 263
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x53

    invoke-static {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ListSymbolPosition;

    .line 265
    .local v0, "symbolPosition":Lcom/itextpdf/layout/property/ListSymbolPosition;
    sget-object v1, Lcom/itextpdf/layout/property/ListSymbolPosition;->INSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;

    if-ne v0, v1, :cond_a

    .line 266
    sget-object v1, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/property/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 267
    .local v1, "isRtl":Z
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x27

    const/16 v6, 0x2d

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    if-eqz v2, :cond_6

    .line 268
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    .line 269
    .local v2, "paragraphRenderer":Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v9

    .line 271
    .local v9, "symbolIndent":Ljava/lang/Float;
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v11, v10, Lcom/itextpdf/layout/renderer/LineRenderer;

    const/16 v12, 0x2c

    if-eqz v11, :cond_3

    .line 272
    if-eqz v9, :cond_1

    .line 273
    invoke-interface {v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v12, v6

    :goto_0
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 275
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 276
    .local v11, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    iget-object v12, v2, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v12, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 277
    .end local v11    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_1

    :cond_2
    goto :goto_3

    .line 279
    :cond_3
    if-eqz v9, :cond_5

    .line 280
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v12, v6

    :goto_2
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 282
    :cond_5
    iget-object v10, v2, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    iget-object v11, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v10, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 284
    :goto_3
    iput-boolean v7, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    .end local v2    # "paragraphRenderer":Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .end local v9    # "symbolIndent":Ljava/lang/Float;
    goto :goto_4

    .line 285
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz v2, :cond_8

    .line 286
    new-instance v2, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v2}, Lcom/itextpdf/layout/element/Paragraph;-><init>()V

    .line 287
    .local v2, "p":Lcom/itextpdf/layout/element/Paragraph;
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Paragraph;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 288
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    .line 289
    .local v9, "paragraphRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v10

    .line 290
    .local v10, "symbolIndent":Ljava/lang/Float;
    if-eqz v10, :cond_7

    .line 291
    iget-object v11, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v12

    invoke-interface {v11, v6, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 293
    :cond_7
    iget-object v11, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v9, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 294
    iget-object v11, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v9, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 295
    iget-object v11, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v11, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    iput-boolean v7, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    goto :goto_5

    .line 285
    .end local v2    # "p":Lcom/itextpdf/layout/element/Paragraph;
    .end local v9    # "paragraphRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v10    # "symbolIndent":Ljava/lang/Float;
    :cond_8
    :goto_4
    nop

    .line 298
    :goto_5
    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    if-nez v2, :cond_a

    .line 299
    new-instance v2, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v2}, Lcom/itextpdf/layout/element/Paragraph;-><init>()V

    .line 300
    .restart local v2    # "p":Lcom/itextpdf/layout/element/Paragraph;
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Paragraph;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 301
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    .line 302
    .local v3, "paragraphRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    .line 303
    .local v4, "symbolIndent":Ljava/lang/Float;
    if-eqz v4, :cond_9

    .line 304
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 306
    :cond_9
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 307
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v5, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    iput-boolean v7, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    .line 312
    .end local v0    # "symbolPosition":Lcom/itextpdf/layout/property/ListSymbolPosition;
    .end local v1    # "isRtl":Z
    .end local v2    # "p":Lcom/itextpdf/layout/element/Paragraph;
    .end local v3    # "paragraphRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v4    # "symbolIndent":Ljava/lang/Float;
    :cond_a
    return-void
.end method

.method private calculateAscenderDescender()[F
    .locals 8

    .line 324
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 325
    .local v0, "listItemFont":Lcom/itextpdf/kernel/font/PdfFont;
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    .line 326
    .local v2, "fontSize":Lcom/itextpdf/layout/property/UnitValue;
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 327
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 328
    const-class v4, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 329
    .local v4, "logger":Lorg/slf4j/Logger;
    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 331
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;)[F

    move-result-object v1

    .line 332
    .local v1, "ascenderDescender":[F
    new-array v3, v3, [F

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    aget v7, v1, v6

    mul-float/2addr v4, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v4, v7

    aput v4, v3, v6

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    aget v6, v1, v5

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    aput v4, v3, v5

    return-object v3

    .line 334
    .end local v1    # "ascenderDescender":[F
    :cond_1
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isListSymbolEmpty(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 3
    .param p1, "listSymbolRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 315
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 317
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v0, :cond_3

    .line 318
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 320
    :cond_3
    return v2
.end method


# virtual methods
.method public addSymbolRenderer(Lcom/itextpdf/layout/renderer/IRenderer;F)V
    .locals 0
    .param p1, "symbolRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "symbolAreaWidth"    # F

    .line 83
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 84
    iput p2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    .line 85
    return-void
.end method

.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2
    .param p1, "layoutResult"    # I

    .line 251
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    .line 252
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/ListItemRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 253
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 254
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 256
    iget v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 259
    return-object v0
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2
    .param p1, "layoutResult"    # I

    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    .line 237
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/ListItemRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 238
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 239
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->isLastRendererForModelElement:Z

    .line 241
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 243
    iget v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 246
    return-object v0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 12
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 104
    const-class v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 105
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 106
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Drawing won\'t be performed."

    aput-object v3, v1, v2

    const-string v2, "Occupied area has not been initialized. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 111
    .local v1, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v1, :cond_4

    .line 112
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v4, :cond_1

    .line 113
    invoke-static {v1, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 115
    :cond_1
    invoke-virtual {v1, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v4

    .line 119
    .local v4, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v5

    .line 120
    .local v5, "parentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v6

    invoke-interface {v6}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LI"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 121
    new-instance v6, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    invoke-direct {v6, v7}, Lcom/itextpdf/layout/tagging/TaggingDummyElement;-><init>(Ljava/lang/String;)V

    .line 122
    .local v6, "listItemIntermediate":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    invoke-static {v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 123
    .local v7, "intermediateKid":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-virtual {v1, v4, v7}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->replaceKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;)I

    .line 124
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v8, :cond_3

    .line 125
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 127
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 133
    .end local v1    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v4    # "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v5    # "parentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v6    # "listItemIntermediate":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    .end local v7    # "intermediateKid":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 136
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    if-nez v1, :cond_18

    .line 137
    sget-object v1, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/property/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 138
    .local v1, "isRtl":Z
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v4, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 139
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    .line 140
    .local v4, "x":F
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v6, 0x53

    invoke-static {p0, v5, v6}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/property/ListSymbolPosition;

    .line 141
    .local v5, "symbolPosition":Lcom/itextpdf/layout/property/ListSymbolPosition;
    sget-object v6, Lcom/itextpdf/layout/property/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/property/ListSymbolPosition;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_c

    .line 142
    const/16 v6, 0x27

    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v6

    .line 143
    .local v6, "symbolIndent":Ljava/lang/Float;
    if-eqz v1, :cond_7

    .line 144
    iget v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    if-nez v6, :cond_6

    move v9, v7

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_2
    add-float/2addr v8, v9

    add-float/2addr v4, v8

    goto :goto_4

    .line 146
    :cond_7
    iget v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    if-nez v6, :cond_8

    move v9, v7

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_3
    add-float/2addr v8, v9

    sub-float/2addr v4, v8

    .line 148
    :goto_4
    sget-object v8, Lcom/itextpdf/layout/property/ListSymbolPosition;->OUTSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;

    if-ne v5, v8, :cond_c

    .line 149
    const-string v8, "Property {0} in percents is not supported"

    if-eqz v1, :cond_a

    .line 150
    const/16 v9, 0x2d

    invoke-virtual {p0, v9}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v10

    .line 151
    .local v10, "marginRightUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v11

    if-nez v11, :cond_9

    .line 152
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 153
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v2

    invoke-static {v8, v11}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 155
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_9
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    sub-float/2addr v4, v0

    .line 156
    .end local v10    # "marginRightUV":Lcom/itextpdf/layout/property/UnitValue;
    goto :goto_5

    .line 157
    :cond_a
    const/16 v9, 0x2c

    invoke-virtual {p0, v9}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v10

    .line 158
    .local v10, "marginLeftUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v11

    if-nez v11, :cond_b

    .line 159
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 160
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v2

    invoke-static {v8, v11}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 162
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_b
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v0

    add-float/2addr v4, v0

    .line 166
    .end local v6    # "symbolIndent":Ljava/lang/Float;
    .end local v10    # "marginLeftUV":Lcom/itextpdf/layout/property/UnitValue;
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 167
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 168
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "yLine":Ljava/lang/Float;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 171
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 172
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getFirstYLineRecursively()Ljava/lang/Float;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_d

    .line 174
    goto :goto_7

    .line 170
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 178
    .end local v2    # "i":I
    :cond_e
    :goto_7
    if-eqz v0, :cond_10

    .line 179
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v6, v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v6, :cond_f

    .line 180
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v8, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-interface {v2, v7, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_8

    .line 182
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v8}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-interface {v2, v7, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_8

    .line 185
    :cond_10
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float/2addr v6, v8

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 186
    invoke-interface {v8}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    sub-float/2addr v6, v8

    .line 185
    invoke-interface {v2, v7, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 188
    .end local v0    # "yLine":Ljava/lang/Float;
    :goto_8
    goto :goto_9

    .line 189
    :cond_11
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v6, v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v6, :cond_12

    .line 190
    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float/2addr v6, v8

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->calculateAscenderDescender()[F

    move-result-object v8

    aget v2, v8, v2

    sub-float/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/TextRenderer;->moveYLineTo(F)V

    goto :goto_9

    .line 192
    :cond_12
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 193
    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    .line 192
    invoke-interface {v0, v7, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 196
    :goto_9
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 197
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 199
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x26

    if-eqz v1, :cond_13

    sget-object v3, Lcom/itextpdf/layout/property/ListSymbolAlignment;->LEFT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

    goto :goto_a

    :cond_13
    sget-object v3, Lcom/itextpdf/layout/property/ListSymbolAlignment;->RIGHT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

    :goto_a
    invoke-interface {v0, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ListSymbolAlignment;

    .line 201
    .local v0, "listSymbolAlignment":Lcom/itextpdf/layout/property/ListSymbolAlignment;
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    sub-float v2, v4, v2

    .line 202
    .local v2, "dxPosition":F
    sget-object v3, Lcom/itextpdf/layout/property/ListSymbolAlignment;->RIGHT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

    if-ne v0, v3, :cond_14

    .line 203
    if-nez v1, :cond_15

    .line 204
    iget v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    add-float/2addr v2, v3

    goto :goto_b

    .line 206
    :cond_14
    sget-object v3, Lcom/itextpdf/layout/property/ListSymbolAlignment;->LEFT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

    if-ne v0, v3, :cond_15

    .line 207
    if-eqz v1, :cond_15

    .line 208
    iget v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 211
    :cond_15
    :goto_b
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v6, v3, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v6, :cond_17

    .line 212
    if-eqz v1, :cond_16

    .line 213
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    sub-float v6, v2, v6

    invoke-interface {v3, v6, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_c

    .line 215
    :cond_16
    invoke-interface {v3, v2, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_c

    .line 218
    :cond_17
    invoke-interface {v3, v2, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 221
    :goto_c
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18

    .line 222
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 223
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 227
    .end local v0    # "listSymbolAlignment":Lcom/itextpdf/layout/property/ListSymbolAlignment;
    .end local v1    # "isRtl":Z
    .end local v2    # "dxPosition":F
    .end local v4    # "x":F
    .end local v5    # "symbolPosition":Lcom/itextpdf/layout/property/ListSymbolPosition;
    :cond_18
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 231
    new-instance v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/ListItem;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;-><init>(Lcom/itextpdf/layout/element/ListItem;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 4
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 89
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->isListSymbolEmpty(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->calculateAscenderDescender()[F

    move-result-object v0

    .line 91
    .local v0, "ascenderDescender":[F
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 92
    .local v1, "minHeight":F
    invoke-static {v1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->updateMinHeight(Lcom/itextpdf/layout/property/UnitValue;)V

    .line 94
    .end local v0    # "ascenderDescender":[F
    .end local v1    # "minHeight":F
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyListSymbolPosition()V

    .line 95
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 96
    .local v0, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    const/16 v2, 0x55

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 99
    :cond_1
    return-object v0
.end method
