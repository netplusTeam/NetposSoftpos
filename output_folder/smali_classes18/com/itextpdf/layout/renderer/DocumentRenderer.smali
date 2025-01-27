.class public Lcom/itextpdf/layout/renderer/DocumentRenderer;
.super Lcom/itextpdf/layout/renderer/RootRenderer;
.source "DocumentRenderer.java"


# instance fields
.field protected document:Lcom/itextpdf/layout/Document;

.field protected targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

.field protected wrappedContentPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/Document;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/layout/Document;

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Document;Z)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/layout/Document;
    .param p2, "immediateFlush"    # Z

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->wrappedContentPage:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    .line 76
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    .line 77
    iput-boolean p2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->immediateFlush:Z

    .line 78
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 79
    return-void
.end method

.method private ensureDocumentHasNPages(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;
    .locals 2
    .param p1, "n"    # I
    .param p2, "customPageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "lastPageSize":Lcom/itextpdf/kernel/geom/PageSize;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 186
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    return-object v0
.end method

.method private getCurrentPageEffectiveArea(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9
    .param p1, "pageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 192
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 193
    .local v0, "leftMargin":F
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 194
    .local v1, "bottomMargin":F
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 195
    .local v2, "topMargin":F
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 196
    .local v3, "rightMargin":F
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getLeft()F

    move-result v5

    add-float/2addr v5, v0

    .line 197
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getBottom()F

    move-result v6

    add-float/2addr v6, v1

    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getWidth()F

    move-result v7

    sub-float/2addr v7, v0

    sub-float/2addr v7, v3

    .line 199
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getHeight()F

    move-result v8

    sub-float/2addr v8, v1

    sub-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 196
    return-object v4
.end method

.method private moveToNextPage()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->immediateFlush:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    if-le v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iget v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flush()V

    .line 208
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    .line 209
    return-void
.end method


# virtual methods
.method protected addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;
    .locals 1
    .param p1, "customPageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 176
    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 8
    .param p1, "resultRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 140
    const/16 v0, 0x35

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/Transform;

    .line 141
    .local v0, "transformProp":Lcom/itextpdf/layout/property/Transform;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/property/Transform;Ljava/util/List;)V

    .line 143
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 149
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v1

    .line 151
    .local v1, "pageNum":I
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v2}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    .line 152
    .local v2, "pdfDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->ensureDocumentHasNPages(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;

    .line 153
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 154
    .local v3, "correspondingPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 158
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->wrappedContentPage:Ljava/util/List;

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    if-lt v4, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 161
    .local v4, "wrapOldContent":Z
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->wrappedContentPage:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 166
    :cond_3
    new-instance v5, Lcom/itextpdf/layout/renderer/DrawContext;

    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v6, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v7

    invoke-direct {v5, v2, v6, v7}, Lcom/itextpdf/layout/renderer/DrawContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    invoke-interface {p1, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_1

    .line 155
    .end local v4    # "wrapOldContent":Z
    :cond_4
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Cannot draw elements on already flushed pages."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    .end local v1    # "pageNum":I
    .end local v2    # "pdfDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .end local v3    # "correspondingPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_5
    :goto_1
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 111
    new-instance v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->immediateFlush:Z

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not applicable for DocumentRenderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetCounterHandler()Lcom/itextpdf/layout/renderer/TargetCounterHandler;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    return-object v0
.end method

.method public isRelayoutRequired()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->isRelayoutRequired()Z

    move-result v0

    return v0
.end method

.method protected updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 7
    .param p1, "overflowResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->flushWaitingDrawingElements(Z)V

    .line 116
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 117
    .local v0, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseFinishedHints()V

    .line 120
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 121
    .local v2, "areaBreak":Lcom/itextpdf/layout/element/AreaBreak;
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/AreaBreak;->getType()Lcom/itextpdf/layout/property/AreaBreakType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/layout/property/AreaBreakType;->LAST_PAGE:Lcom/itextpdf/layout/property/AreaBreakType;

    if-ne v3, v4, :cond_2

    .line 122
    :goto_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 123
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->moveToNextPage()V

    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->moveToNextPage()V

    .line 128
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/AreaBreak;->getPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v1

    .line 129
    .local v1, "customPageSize":Lcom/itextpdf/kernel/geom/PageSize;
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v3}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    iget v4, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    if-lt v3, v4, :cond_5

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v3}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    iget v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    goto :goto_2

    .line 132
    :cond_5
    iget v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    invoke-direct {p0, v3, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->ensureDocumentHasNPages(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v3

    .line 133
    .local v3, "lastPageSize":Lcom/itextpdf/kernel/geom/PageSize;
    if-nez v3, :cond_6

    .line 134
    new-instance v4, Lcom/itextpdf/kernel/geom/PageSize;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v5}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    iget v6, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getTrimBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v3, v4

    .line 136
    :cond_6
    new-instance v4, Lcom/itextpdf/layout/layout/RootLayoutArea;

    iget v5, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentPageNumber:I

    invoke-direct {p0, v3}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getCurrentPageEffectiveArea(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v4, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object v4
.end method
