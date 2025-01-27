.class public Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "UseSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private isValidHref(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 133
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;-><init>()V

    .line 134
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 135
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 13
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 65
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 66
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v1, "xlink:href"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "elementToReUse":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "href"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 72
    :cond_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->isValidHref(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->filterReferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "normalizedName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->isIdUsedByUseTagBefore(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 75
    invoke-virtual {p1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    .line 77
    .local v2, "template":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v4

    .line 79
    .local v4, "namedObject":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 81
    if-eqz v4, :cond_7

    .line 82
    instance-of v5, v4, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v5, :cond_2

    .line 83
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    iget-boolean v6, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->partOfClipPath:Z

    invoke-virtual {v5, v6}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    .line 87
    .local v5, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const/4 v6, 0x0

    .line 88
    .local v6, "x":F
    const/4 v7, 0x0

    .line 90
    .local v7, "y":F
    iget-object v8, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v9, "x"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    iget-object v8, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    .line 94
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v9, "y"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 95
    iget-object v8, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v7

    .line 97
    :cond_4
    const/4 v8, 0x0

    .line 98
    .local v8, "inverseMatrix":Lcom/itextpdf/kernel/geom/AffineTransform;
    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v7, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v9

    if-nez v9, :cond_6

    .line 99
    :cond_5
    float-to-double v9, v6

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v9

    .line 100
    .local v9, "translation":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v5, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 101
    iget-boolean v10, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->partOfClipPath:Z

    if-eqz v10, :cond_6

    .line 103
    :try_start_0
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v10
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v10

    .line 107
    goto :goto_1

    .line 104
    :catch_0
    move-exception v10

    .line 105
    .local v10, "ex":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    const-class v11, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;

    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v11

    .line 106
    const-string v12, "Non-invertible transformation matrix was used in a clipping path context. Clipped elements may show undefined behavior."

    invoke-interface {v11, v12, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v9    # "translation":Lcom/itextpdf/kernel/geom/AffineTransform;
    .end local v10    # "ex":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    :cond_6
    :goto_1
    invoke-interface {v4, p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 113
    invoke-interface {v4, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 115
    invoke-interface {v4, v3}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 116
    if-eqz v8, :cond_7

    .line 117
    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 123
    .end local v0    # "elementToReUse":Ljava/lang/String;
    .end local v1    # "normalizedName":Ljava/lang/String;
    .end local v2    # "template":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .end local v4    # "namedObject":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .end local v5    # "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "inverseMatrix":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_7
    return-void
.end method

.method postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 125
    return-void
.end method
