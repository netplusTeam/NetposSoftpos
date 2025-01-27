.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "AbstractContainerSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 52
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 55
    .local v0, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    .line 56
    .local v1, "portX":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    .line 58
    .local v2, "portY":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    .line 60
    .local v3, "portWidth":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    .line 63
    .local v4, "portHeight":F
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 64
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v6, "x"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 67
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v6, "y"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v6, "width"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 73
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v6, "height"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    .line 78
    :cond_3
    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v5
.end method

.method public canConstructViewPort()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method protected canElementFill()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 41
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 42
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 43
    return-void
.end method
