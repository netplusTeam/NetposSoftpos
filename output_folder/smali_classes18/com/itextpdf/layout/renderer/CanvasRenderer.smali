.class public Lcom/itextpdf/layout/renderer/CanvasRenderer;
.super Lcom/itextpdf/layout/renderer/RootRenderer;
.source "CanvasRenderer.java"


# instance fields
.field protected canvas:Lcom/itextpdf/layout/Canvas;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/layout/Canvas;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/CanvasRenderer;-><init>(Lcom/itextpdf/layout/Canvas;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Canvas;Z)V
    .locals 0
    .param p1, "canvas"    # Lcom/itextpdf/layout/Canvas;
    .param p2, "immediateFlush"    # Z

    .line 78
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    .line 80
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 81
    iput-boolean p2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->immediateFlush:Z

    .line 82
    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 86
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-class v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Canvas is already full. Element will be skipped."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 92
    :goto_0
    return-void
.end method

.method protected flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 7
    .param p1, "resultRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 99
    const/16 v0, 0x35

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/Transform;

    .line 100
    .local v0, "transformProp":Lcom/itextpdf/layout/property/Transform;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/Transform;Ljava/util/List;)V

    .line 102
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->isAutoTaggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 108
    .local v1, "toTag":Z
    :goto_0
    const/4 v3, 0x0

    .line 109
    .local v3, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    if-eqz v1, :cond_5

    .line 110
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, "pageStream":Z
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v5}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 115
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v2}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v6}, Lcom/itextpdf/layout/Canvas;->getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const/4 v4, 0x1

    .line 117
    goto :goto_2

    .line 114
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 120
    .end local v5    # "i":I
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 121
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v2}, Lcom/itextpdf/layout/Canvas;->getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setContentStreamForTagging(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 124
    .end local v4    # "pageStream":Z
    :cond_5
    new-instance v2, Lcom/itextpdf/layout/renderer/DrawContext;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v5}, Lcom/itextpdf/layout/Canvas;->getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1}, Lcom/itextpdf/layout/renderer/DrawContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    invoke-interface {p1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 125
    if-eqz v1, :cond_6

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setContentStreamForTagging(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 129
    .end local v1    # "toTag":Z
    .end local v3    # "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    :cond_6
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 153
    new-instance v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->immediateFlush:Z

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/renderer/CanvasRenderer;-><init>(Lcom/itextpdf/layout/Canvas;Z)V

    return-object v0
.end method

.method protected updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 3
    .param p1, "overflowResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 136
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->isCanvasOfPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    .local v0, "pageNumber":I
    :goto_0
    new-instance v1, Lcom/itextpdf/layout/layout/RootLayoutArea;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v2}, Lcom/itextpdf/layout/Canvas;->getRootArea()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 139
    .end local v0    # "pageNumber":I
    goto :goto_1

    .line 140
    :cond_1
    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->setProperty(ILjava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object v0
.end method
