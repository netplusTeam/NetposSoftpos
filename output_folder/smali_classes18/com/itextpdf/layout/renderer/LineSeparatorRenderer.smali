.class public Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "LineSeparatorRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/LineSeparator;)V
    .locals 0
    .param p1, "lineSeparator"    # Lcom/itextpdf/layout/element/LineSeparator;

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 64
    return-void
.end method


# virtual methods
.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 5
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 119
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 120
    .local v0, "lineDrawer":Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 122
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v2

    .line 123
    .local v2, "isTagged":Z
    if-eqz v2, :cond_0

    .line 124
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 128
    .local v3, "area":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 129
    invoke-interface {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 131
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 135
    .end local v1    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v2    # "isTagged":Z
    .end local v3    # "area":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_1
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 111
    new-instance v0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/LineSeparator;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;-><init>(Lcom/itextpdf/layout/element/LineSeparator;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 14
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 71
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 72
    .local v0, "parentBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    const/16 v1, 0x37

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const v3, 0x49742400    # 1000000.0f

    sub-float v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 76
    :cond_0
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 77
    .local v2, "lineDrawer":Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;->getLineWidth()F

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 79
    .local v3, "height":F
    :goto_0
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v4, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 80
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 82
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v4

    .line 83
    .local v4, "calculatedWidth":Ljava/lang/Float;
    if-nez v4, :cond_2

    .line 84
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 86
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    cmpg-float v5, v5, v3

    const/16 v6, 0x1a

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    :cond_3
    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->hasOwnProperty(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 87
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    move-object v11, p0

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1

    .line 90
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    sub-float/2addr v7, v3

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 92
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 94
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 98
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v1

    move-object v12, p0

    move-object v13, p0

    invoke-direct/range {v8 .. v13}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1

    .line 103
    :cond_5
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v6, 0x0

    invoke-direct {v1, v7, v5, p0, v6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1
.end method
