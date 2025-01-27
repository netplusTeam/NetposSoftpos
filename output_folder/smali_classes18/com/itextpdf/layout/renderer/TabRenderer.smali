.class public Lcom/itextpdf/layout/renderer/TabRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "TabRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/itextpdf/layout/element/Tab;

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 69
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 4
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 86
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v0, :cond_0

    .line 87
    const-class v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 88
    .local v0, "logger":Lorg/slf4j/Logger;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Drawing won\'t be performed."

    aput-object v3, v1, v2

    const-string v2, "Occupied area has not been initialized. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TabRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 92
    .local v0, "leader":Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;
    if-nez v0, :cond_1

    .line 93
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v1

    .line 96
    .local v1, "isTagged":Z
    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 100
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TabRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TabRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 104
    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 107
    :cond_3
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 111
    new-instance v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Tab;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/TabRenderer;-><init>(Lcom/itextpdf/layout/element/Tab;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 10
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 74
    .local v0, "area":Lcom/itextpdf/layout/layout/LayoutArea;
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TabRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v1

    .line 75
    .local v1, "width":Ljava/lang/Float;
    const/16 v2, 0x55

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TabRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/property/UnitValue;

    .line 76
    .local v2, "height":Lcom/itextpdf/layout/property/UnitValue;
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v4

    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 77
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v3, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 79
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 81
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutResult;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6, v6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v3
.end method
