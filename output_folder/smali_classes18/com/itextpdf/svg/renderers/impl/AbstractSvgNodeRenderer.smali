.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.super Ljava/lang/Object;
.source "AbstractSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# static fields
.field private static final MARKER_VERTEX_TYPES:[Lcom/itextpdf/svg/MarkerVertexType;


# instance fields
.field protected attributesAndStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field doFill:Z

.field doStroke:Z

.field private parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

.field partOfClipPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/svg/MarkerVertexType;

    sget-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->MARKER_VERTEX_TYPES:[Lcom/itextpdf/svg/MarkerVertexType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doFill:Z

    .line 87
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    return-void
.end method

.method private drawInClipPath(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Z
    .locals 4
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 491
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "clip-path"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    .local v0, "clipPathName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->normalizeLocalUrlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    .line 495
    .local v1, "template":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    instance-of v2, v1, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    if-eqz v2, :cond_0

    .line 496
    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    .line 498
    .local v2, "clipPath":Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 499
    invoke-virtual {v2, p0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->setClippedRenderer(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    .line 500
    invoke-virtual {v2, p1}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 501
    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    .line 504
    .end local v0    # "clipPathName":Ljava/lang/String;
    .end local v1    # "template":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .end local v2    # "clipPath":Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static getAlphaFromRGBA(Ljava/lang/String;)F
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 246
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 248
    .local v0, "exc":Ljava/lang/RuntimeException;
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method private getColorFromAttributeValue(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;FF)Lcom/itextpdf/layout/property/TransparentColor;
    .locals 10
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "rawColorValue"    # Ljava/lang/String;
    .param p3, "objectBoundingBoxMargin"    # F
    .param p4, "parentOpacity"    # F

    .line 446
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 447
    return-object v0

    .line 449
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v1, p2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v2

    .line 451
    .local v2, "token":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    if-nez v2, :cond_1

    .line 452
    return-object v0

    .line 454
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "tokenValue":Ljava/lang/String;
    const-string/jumbo v4, "url(#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    const/4 v4, 0x0

    .line 457
    .local v4, "resolvedColor":Lcom/itextpdf/kernel/colors/Color;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 458
    .local v5, "resolvedOpacity":F
    const/4 v6, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "normalizedName":Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v7

    .line 460
    .local v7, "colorRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    instance-of v8, v7, Lcom/itextpdf/svg/renderers/ISvgPaintServer;

    if-eqz v8, :cond_2

    .line 461
    move-object v8, v7

    check-cast v8, Lcom/itextpdf/svg/renderers/ISvgPaintServer;

    .line 462
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    .line 461
    invoke-interface {v8, p1, v9, p3, p4}, Lcom/itextpdf/svg/renderers/ISvgPaintServer;->createColor(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;FF)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    .line 464
    :cond_2
    if-eqz v4, :cond_3

    .line 465
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-object v0

    .line 467
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v2

    .line 470
    .end local v4    # "resolvedColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v5    # "resolvedOpacity":F
    .end local v6    # "normalizedName":Ljava/lang/String;
    .end local v7    # "colorRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :cond_4
    if-eqz v2, :cond_5

    .line 471
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "value":Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 473
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-static {v4}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBColor(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v5

    .line 474
    invoke-static {v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAlphaFromRGBA(Ljava/lang/String;)F

    move-result v6

    mul-float/2addr v6, p4

    invoke-direct {v0, v5, v6}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 473
    return-object v0

    .line 477
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private getOpacity()F
    .locals 4

    .line 512
    const/high16 v0, 0x3f800000    # 1.0f

    .line 514
    .local v0, "result":F
    const-string v1, "opacity"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "opacityValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v3, :cond_1

    .line 519
    check-cast v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-direct {v2}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacity()F

    move-result v2

    mul-float/2addr v0, v2

    .line 522
    :cond_1
    return v0
.end method

.method private getOpacityByAttributeName(Ljava/lang/String;F)F
    .locals 3
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "generalOpacity"    # F

    .line 481
    move v0, p2

    .line 483
    .local v0, "opacity":F
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "opacityValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v0, v2

    .line 487
    :cond_0
    return v0
.end method

.method private normalizeLocalUrlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 508
    const-string/jumbo v0, "url(#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method calculateViewPortTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 261
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 263
    .local v0, "viewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 264
    .local v1, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    return-object v1
.end method

.method public canConstructViewPort()Z
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected canElementFill()Z
    .locals 1

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method protected deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 2
    .param p1, "deepCopy"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "stylesDeepCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 221
    invoke-interface {p1, v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    .line 223
    :cond_0
    return-void
.end method

.method protected abstract doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
.end method

.method public final draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 154
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "id"

    if-eqz v1, :cond_1

    .line 155
    const-string/jumbo v3, "transform"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "transformString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 159
    .local v3, "transformation":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 164
    .end local v3    # "transformation":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addUsedId(Ljava/lang/String;)V

    .line 172
    .end local v1    # "transformString":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->drawInClipPath(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->removeUsedId(Ljava/lang/String;)V

    .line 181
    :cond_3
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeMapCopy()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, "copy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 138
    return-object v0

    .line 140
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 141
    return-object v0
.end method

.method public getAttributeOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "rawValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getCurrentFontSize()F
    .locals 1

    .line 208
    const-string v0, "font-size"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method

.method protected parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F
    .locals 4
    .param p1, "length"    # Ljava/lang/String;
    .param p2, "percentRelativeValue"    # F
    .param p3, "defaultValue"    # F
    .param p4, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 430
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getCurrentFontSize()F

    move-result v0

    .line 434
    .local v0, "em":F
    invoke-virtual {p4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v1

    .line 435
    .local v1, "rem":F
    invoke-static {p1, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    .line 436
    .local v2, "unitValue":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v3

    return v3

    .line 439
    :cond_1
    return p3
.end method

.method postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 275
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 276
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 279
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->partOfClipPath:Z

    const-string v2, "evenodd"

    if-eqz v1, :cond_1

    .line 280
    nop

    .line 281
    const-string v1, "clip-rule"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoClip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 286
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 288
    :cond_1
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doFill:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->canElementFill()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 289
    const-string v1, "fill-rule"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "fillRuleRawValue":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    iget-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    if-eqz v2, :cond_2

    .line 293
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoFill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 298
    :cond_3
    iget-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    if-eqz v2, :cond_4

    .line 299
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 301
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 304
    .end local v1    # "fillRuleRawValue":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    if-eqz v1, :cond_6

    .line 305
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 306
    :cond_6
    const-class v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 307
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 312
    :cond_7
    :goto_2
    instance-of v1, p0, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    if-eqz v1, :cond_9

    .line 314
    sget-object v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->MARKER_VERTEX_TYPES:[Lcom/itextpdf/svg/MarkerVertexType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 315
    .local v4, "markerVertexType":Lcom/itextpdf/svg/MarkerVertexType;
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/itextpdf/svg/MarkerVertexType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 317
    move-object v5, p0

    check-cast v5, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    invoke-interface {v5, p1, v4}, Lcom/itextpdf/svg/renderers/IMarkerCapable;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V

    .line 318
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 314
    .end local v4    # "markerVertexType":Lcom/itextpdf/svg/MarkerVertexType;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 323
    .end local v0    # "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_9
    return-void
.end method

.method preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 14
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 336
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 337
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 339
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    .line 340
    .local v1, "opacityGraphicsState":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    iget-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->partOfClipPath:Z

    if-nez v2, :cond_9

    .line 341
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacity()F

    move-result v2

    .line 344
    .local v2, "generalOpacity":F
    const-string v3, "fill"

    const-string v4, "black"

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttributeOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "fillRawValue":Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doFill:Z

    .line 347
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->canElementFill()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 348
    const-string v5, "fill-opacity"

    invoke-direct {p0, v5, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacityByAttributeName(Ljava/lang/String;F)F

    move-result v5

    .line 351
    .local v5, "fillOpacity":F
    const/4 v8, 0x0

    .line 352
    .local v8, "fillColor":Lcom/itextpdf/kernel/colors/Color;
    const/4 v9, 0x0

    invoke-direct {p0, p1, v3, v9, v5}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getColorFromAttributeValue(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;FF)Lcom/itextpdf/layout/property/TransparentColor;

    move-result-object v9

    .line 354
    .local v9, "transparentColor":Lcom/itextpdf/layout/property/TransparentColor;
    if-eqz v9, :cond_0

    .line 355
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v8

    .line 356
    invoke-virtual {v9}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v5

    .line 359
    :cond_0
    invoke-static {v5, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v10

    if-nez v10, :cond_1

    .line 360
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 364
    :cond_1
    if-nez v8, :cond_2

    .line 365
    sget-object v8, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    .line 367
    :cond_2
    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 372
    .end local v3    # "fillRawValue":Ljava/lang/String;
    .end local v5    # "fillOpacity":F
    .end local v8    # "fillColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v9    # "transparentColor":Lcom/itextpdf/layout/property/TransparentColor;
    :cond_3
    const-string/jumbo v3, "stroke"

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttributeOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "strokeRawValue":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 376
    const-string/jumbo v4, "stroke-width"

    invoke-virtual {p0, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "strokeWidthRawValue":Ljava/lang/String;
    const/high16 v5, 0x3f400000    # 0.75f

    .line 381
    .local v5, "strokeWidth":F
    if-eqz v4, :cond_4

    .line 382
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 385
    :cond_4
    const-string/jumbo v8, "stroke-opacity"

    invoke-direct {p0, v8, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacityByAttributeName(Ljava/lang/String;F)F

    move-result v8

    .line 388
    .local v8, "strokeOpacity":F
    const/4 v9, 0x0

    .line 389
    .local v9, "strokeColor":Lcom/itextpdf/kernel/colors/Color;
    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-direct {p0, p1, v3, v10, v8}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getColorFromAttributeValue(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;FF)Lcom/itextpdf/layout/property/TransparentColor;

    move-result-object v10

    .line 391
    .local v10, "transparentColor":Lcom/itextpdf/layout/property/TransparentColor;
    if-eqz v10, :cond_5

    .line 392
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v9

    .line 393
    invoke-virtual {v10}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v8

    .line 396
    :cond_5
    invoke-static {v8, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v7

    if-nez v7, :cond_6

    .line 397
    invoke-virtual {v1, v8}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 402
    :cond_6
    if-eqz v9, :cond_7

    .line 403
    invoke-virtual {v0, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 406
    :cond_7
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 407
    iput-boolean v6, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    .line 412
    .end local v3    # "strokeRawValue":Ljava/lang/String;
    .end local v4    # "strokeWidthRawValue":Ljava/lang/String;
    .end local v5    # "strokeWidth":F
    .end local v8    # "strokeOpacity":F
    .end local v9    # "strokeColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v10    # "transparentColor":Lcom/itextpdf/layout/property/TransparentColor;
    :cond_8
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 413
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 418
    .end local v0    # "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v1    # "opacityGraphicsState":Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    .end local v2    # "generalOpacity":F
    :cond_9
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public setAttributesAndStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "attributesAndStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0
    .param p1, "parent"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 93
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 94
    return-void
.end method

.method setPartOfClipPath(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->partOfClipPath:Z

    .line 327
    return-void
.end method
