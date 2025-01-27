.class public Lcom/itextpdf/layout/ColumnDocumentRenderer;
.super Lcom/itextpdf/layout/renderer/DocumentRenderer;
.source "ColumnDocumentRenderer.java"


# instance fields
.field protected columns:[Lcom/itextpdf/kernel/geom/Rectangle;

.field protected nextAreaNumber:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/Document;Z[Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/layout/Document;
    .param p2, "immediateFlush"    # Z
    .param p3, "columns"    # [Lcom/itextpdf/kernel/geom/Rectangle;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    .line 87
    iput-object p3, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->columns:[Lcom/itextpdf/kernel/geom/Rectangle;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Document;[Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/layout/Document;
    .param p2, "columns"    # [Lcom/itextpdf/kernel/geom/Rectangle;

    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;)V

    .line 72
    iput-object p2, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->columns:[Lcom/itextpdf/kernel/geom/Rectangle;

    .line 73
    return-void
.end method


# virtual methods
.method public getNextAreaNumber()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->nextAreaNumber:I

    return v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 4

    .line 101
    new-instance v0, Lcom/itextpdf/layout/ColumnDocumentRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    iget-boolean v2, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->immediateFlush:Z

    iget-object v3, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->columns:[Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/layout/ColumnDocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z[Lcom/itextpdf/kernel/geom/Rectangle;)V

    return-object v0
.end method

.method protected updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 5
    .param p1, "overflowResult"    # Lcom/itextpdf/layout/layout/LayoutResult;

    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/AreaBreak;->getType()Lcom/itextpdf/layout/property/AreaBreakType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/layout/property/AreaBreakType;->NEXT_AREA:Lcom/itextpdf/layout/property/AreaBreakType;

    if-eq v0, v1, :cond_0

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->nextAreaNumber:I

    .line 109
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->nextAreaNumber:I

    iget-object v1, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->columns:[Lcom/itextpdf/kernel/geom/Rectangle;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 110
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;

    .line 112
    :cond_1
    new-instance v0, Lcom/itextpdf/layout/layout/RootLayoutArea;

    iget v1, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->currentPageNumber:I

    iget-object v2, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->columns:[Lcom/itextpdf/kernel/geom/Rectangle;

    iget v3, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->nextAreaNumber:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->nextAreaNumber:I

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/layout/ColumnDocumentRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object v0
.end method
